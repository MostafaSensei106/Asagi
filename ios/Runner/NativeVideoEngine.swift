import AVFoundation
import Flutter

/// Bounded-memory reader/writer pipeline. The caller owns output cleanup.
final class NativeVideoEngine: NativeMediaApi {
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
      queue.async { self.reader?.cancelReading(); self.writer?.cancelWriting(); done.resume() }
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
          var remaining = pairs.count
          for (output, input) in pairs {
            var ended = false
            input.requestMediaDataWhenReady(on: self.queue) {
              guard !ended else { return }
              while input.isReadyForMoreMediaData {
                if reader.status == .reading, let sample = output.copyNextSampleBuffer() {
                  if input.append(sample) { continue }
                  reader.cancelReading()
                }
                ended = true; input.markAsFinished(); remaining -= 1
                if remaining == 0 {
                  if reader.status == .failed || reader.status == .cancelled || writer.status == .failed || writer.status == .cancelled {
                    writer.cancelWriting(); self.reader = nil; self.writer = nil
                    done.resume(throwing: reader.error ?? writer.error ?? self.failure("E_CANCELLED"))
                  } else {
                    writer.finishWriting {
                      self.queue.async {
                        self.reader = nil; self.writer = nil
                        if writer.status == .completed { done.resume(returning: true) }
                        else { done.resume(throwing: writer.error ?? self.failure("E_ENCODING")) }
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
