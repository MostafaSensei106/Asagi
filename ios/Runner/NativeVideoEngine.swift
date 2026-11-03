import AVFoundation
import Flutter

/// Bounded-memory reader/writer pipeline. The caller owns output cleanup.
final class NativeVideoEngine: NSObject, NativeMediaApi, FlutterStreamHandler {
  private var events: FlutterEventSink?
  private var cancelOperation: (() -> Void)?
  func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? { self.events = events; return nil }
  func onCancel(withArguments arguments: Any?) -> FlutterError? { events = nil; return nil }
  private let queue = DispatchQueue(label: "zumi.encoding")
  private var reader: AVAssetReader?
  private var writer: AVAssetWriter?

  func extractVideoMetadata(inputPath: String) async throws -> NativeVideoMetadata {
    let asset = AVURLAsset(url: URL(fileURLWithPath: inputPath))
    guard let track = asset.tracks(withMediaType: .video).first else { throw failure("E_NO_VIDEO") }
    let size = track.naturalSize
    let t = track.preferredTransform
    let rotation = (Int((atan2(t.b, t.a) * 180 / .pi).rounded()) + 360) % 360
    let bytes = (try FileManager.default.attributesOfItem(atPath: inputPath)[.size] as? NSNumber)?.int64Value ?? 0
    return NativeVideoMetadata(path: inputPath, durationSeconds: asset.duration.seconds,
      width: Int64(abs(size.width)), height: Int64(abs(size.height)), rotation: Int64(rotation),
      bitrateBps: Int64(track.estimatedDataRate), frameRate: Double(track.nominalFrameRate),
      hasAudio: !asset.tracks(withMediaType: .audio).isEmpty, fileSizeBytes: bytes)
  }
  private func failure(_ code: String) -> NSError { NSError(domain: "Zumi", code: 1, userInfo: [NSLocalizedDescriptionKey: code]) }

  func cancelEncoding() async throws {
    await withCheckedContinuation { (done: CheckedContinuation<Void, Never>) in
      queue.async { self.cancelOperation?(); done.resume() }
    }
  }

  func startHardwareEncoding(request: NativeCompressRequest) async throws -> Bool {
    try await withCheckedThrowingContinuation { done in
      queue.async {
        do {
          guard self.writer == nil else { throw self.failure("E_BUSY") }
          guard let source = request.inputPath, let destination = request.outputPath,
            source != destination, !FileManager.default.fileExists(atPath: destination),
            let width = request.targetWidth, let height = request.targetHeight,
            let bitrate = request.targetVideoBitrateBps else { throw self.failure("E_INVALID_INPUT") }
          let asset = AVURLAsset(url: URL(fileURLWithPath: source))
          guard let track = asset.tracks(withMediaType: .video).first else { throw self.failure("E_NO_VIDEO") }
          guard width >= 2, height >= 2, bitrate > 0,
            (request.frameRate ?? 30).isFinite, (1...30).contains(request.frameRate ?? 30),
            asset.duration.seconds.isFinite, asset.duration.seconds > 0 else { throw self.failure("E_INVALID_INPUT") }
          let parent = URL(fileURLWithPath: destination).deletingLastPathComponent()
          let available = try parent.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey]).volumeAvailableCapacityForImportantUsage ?? 0
          let required = Double(bitrate + (request.targetAudioBitrateBps ?? 0)) * asset.duration.seconds / 8 * 1.2 + 50_000_000
          guard Double(available) >= required else { throw self.failure("E_NO_SPACE") }
          let reader = try AVAssetReader(asset: asset)
          let writer = try AVAssetWriter(outputURL: URL(fileURLWithPath: destination), fileType: .mp4)
          writer.shouldOptimizeForNetworkUse = true
          let composition = AVMutableVideoComposition()
          composition.renderSize = CGSize(width: CGFloat(width), height: CGFloat(height))
          composition.frameDuration = CMTime(value: 1, timescale: Int32(request.frameRate ?? 30))
          let instruction = AVMutableVideoCompositionInstruction()
          instruction.timeRange = CMTimeRange(start: .zero, duration: asset.duration)
          let layer = AVMutableVideoCompositionLayerInstruction(assetTrack: track)
          let rect = CGRect(origin: .zero, size: track.naturalSize).applying(track.preferredTransform)
          let transform = track.preferredTransform.concatenating(CGAffineTransform(translationX: -rect.minX, y: -rect.minY))
            .concatenating(CGAffineTransform(scaleX: CGFloat(width) / rect.width, y: CGFloat(height) / rect.height))
          layer.setTransform(transform, at: .zero)
          instruction.layerInstructions = [layer]; composition.instructions = [instruction]
          composition.colorPrimaries = AVVideoColorPrimaries_ITU_R_709_2
          composition.colorTransferFunction = AVVideoTransferFunction_ITU_R_709_2
          composition.colorYCbCrMatrix = AVVideoYCbCrMatrix_ITU_R_709_2
          let video = AVAssetReaderVideoCompositionOutput(videoTracks: [track], videoSettings: [kCVPixelBufferPixelFormatTypeKey as String: kCVPixelFormatType_32BGRA])
          video.videoComposition = composition; video.alwaysCopiesSampleData = false
          let input = AVAssetWriterInput(mediaType: .video, outputSettings: [
            AVVideoCodecKey: AVVideoCodecType.h264, AVVideoWidthKey: width, AVVideoHeightKey: height,
            AVVideoCompressionPropertiesKey: [AVVideoAverageBitRateKey: bitrate, AVVideoMaxKeyFrameIntervalDurationKey: 2]])
          var pairs: [(AVAssetReaderOutput, AVAssetWriterInput)] = [(video, input)]
          if let audio = asset.tracks(withMediaType: .audio).first, let rate = request.targetAudioBitrateBps, rate > 0 {
            let output = AVAssetReaderTrackOutput(track: audio, outputSettings: [AVFormatIDKey: kAudioFormatLinearPCM])
            output.alwaysCopiesSampleData = false
            let audioInput = AVAssetWriterInput(mediaType: .audio, outputSettings: [AVFormatIDKey: kAudioFormatMPEG4AAC, AVSampleRateKey: 44100, AVNumberOfChannelsKey: 2, AVEncoderBitRateKey: rate])
            pairs.append((output, audioInput))
          }
          for (output, input) in pairs {
            guard reader.canAdd(output), writer.canAdd(input) else { throw self.failure("E_UNSUPPORTED") }
            reader.add(output); writer.add(input)
          }
          guard writer.startWriting(), reader.startReading() else { throw reader.error ?? writer.error ?? self.failure("E_ENCODING") }
          writer.startSession(atSourceTime: .zero)
          self.reader = reader; self.writer = writer
          var finished = false
          let complete: (Result<Bool, Error>) -> Void = { result in
            guard !finished else { return }
            finished = true
            self.reader = nil; self.writer = nil; self.cancelOperation = nil
            done.resume(with: result)
          }
          self.cancelOperation = {
            reader.cancelReading(); writer.cancelWriting()
            complete(.failure(self.failure("E_CANCELLED")))
          }
          var lastProgress = -1
          var remaining = pairs.count
          for (output, input) in pairs {
            var ended = false
            input.requestMediaDataWhenReady(on: self.queue) {
              guard !ended && !finished else { return }
              while input.isReadyForMoreMediaData {
                if reader.status == .reading, let sample = output.copyNextSampleBuffer() {
                  if input.append(sample) {
                    if output === video {
                      let fraction = CMSampleBufferGetPresentationTimeStamp(sample).seconds / asset.duration.seconds
                      let percent = Int(max(0, min(1, fraction)) * 100)
                      if percent > lastProgress {
                        lastProgress = percent
                        DispatchQueue.main.async { self.events?(Double(percent) / 100) }
                      }
                    }
                    continue
                  }
                  reader.cancelReading()
                }
                ended = true; input.markAsFinished(); remaining -= 1
                if remaining == 0 {
                  if reader.status == .failed || reader.status == .cancelled || writer.status == .failed || writer.status == .cancelled {
                    writer.cancelWriting()
                    complete(.failure(reader.error ?? writer.error ?? self.failure("E_CANCELLED")))
                  } else {
                    writer.finishWriting {
                      self.queue.async {
                        if writer.status == .completed { complete(.success(true)) }
                        else { complete(.failure(writer.error ?? self.failure("E_ENCODING"))) }
                      }
                    }
                  }
                }
                break
              }
            }
          }
        } catch { done.resume(throwing: error) }
      }
    }
  }
}
