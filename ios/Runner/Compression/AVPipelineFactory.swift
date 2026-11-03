import AVFoundation

struct AVEncodingPipeline {
  let reader: AVAssetReader, writer: AVAssetWriter
  let video: AVAssetReaderOutput
  let pairs: [(AVAssetReaderOutput, AVAssetWriterInput)]
  let duration: Double
}
protocol EncodingPipelineFactory { func make(_ request: EncodeConfiguration) throws -> AVEncodingPipeline }

struct AVPipelineFactory: EncodingPipelineFactory {
  let hdrPolicy: HdrConfigurationPolicy
  init(hdrPolicy: HdrConfigurationPolicy = AVHdrPolicy()) { self.hdrPolicy = hdrPolicy }
  func make(_ request: EncodeConfiguration) throws -> AVEncodingPipeline {
    guard request.inputPath != request.outputPath, !FileManager.default.fileExists(atPath: request.outputPath),
      request.targetWidth >= 2, request.targetHeight >= 2, request.targetVideoBitrateBps > 0,
      request.frameRate.isFinite, (1...30).contains(request.frameRate) else { throw videoFailure("E_INVALID_INPUT") }
    let asset = AVURLAsset(url: URL(fileURLWithPath: request.inputPath))
    guard let track = asset.tracks(withMediaType: .video).first else { throw videoFailure("E_NO_VIDEO") }
    guard asset.duration.seconds.isFinite, asset.duration.seconds > 0 else { throw videoFailure("E_INVALID_INPUT") }
    let parent = URL(fileURLWithPath: request.outputPath).deletingLastPathComponent()
    let available = try parent.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey]).volumeAvailableCapacityForImportantUsage ?? 0
    let required = Double(request.targetVideoBitrateBps + request.targetAudioBitrateBps) * asset.duration.seconds / 8 * 1.2 + 50_000_000
    guard Double(available) >= required else { throw videoFailure("E_NO_SPACE") }
    let hdr = try hdrPolicy.configuration(track: track, mode: request.hdrMode, bitrate: request.targetVideoBitrateBps)
    let reader = try AVAssetReader(asset: asset)
    let writer = try AVAssetWriter(outputURL: URL(fileURLWithPath: request.outputPath), fileType: .mp4)
    writer.shouldOptimizeForNetworkUse = true
    let composition = makeComposition(track: track, asset: asset, request: request, colors: hdr.colors)
    let video = AVAssetReaderVideoCompositionOutput(videoTracks: [track], videoSettings: [
      kCVPixelBufferPixelFormatTypeKey as String: hdr.pixelFormat,
      AVVideoAllowWideColorKey: hdr.codec == .hevc])
    video.videoComposition = composition; video.alwaysCopiesSampleData = false
    let settings: [String: Any] = [AVVideoCodecKey: hdr.codec, AVVideoWidthKey: request.targetWidth,
      AVVideoHeightKey: request.targetHeight, AVVideoColorPropertiesKey: hdr.colors,
      AVVideoCompressionPropertiesKey: hdr.compression]
    guard writer.canApply(outputSettings: settings, forMediaType: .video) else { throw videoFailure("E_HDR_UNSUPPORTED") }
    let input = AVAssetWriterInput(mediaType: .video, outputSettings: settings)
    var pairs: [(AVAssetReaderOutput, AVAssetWriterInput)] = [(video, input)]
    if let audio = asset.tracks(withMediaType: .audio).first, request.targetAudioBitrateBps > 0 {
      let output = AVAssetReaderTrackOutput(track: audio, outputSettings: [AVFormatIDKey: kAudioFormatLinearPCM])
      output.alwaysCopiesSampleData = false
      let audioInput = AVAssetWriterInput(mediaType: .audio, outputSettings: [AVFormatIDKey: kAudioFormatMPEG4AAC,
        AVSampleRateKey: 44100, AVNumberOfChannelsKey: 2, AVEncoderBitRateKey: request.targetAudioBitrateBps])
      pairs.append((output, audioInput))
    }
    for (output, input) in pairs {
      guard reader.canAdd(output), writer.canAdd(input) else { throw videoFailure("E_UNSUPPORTED") }
      reader.add(output); writer.add(input)
    }
    return AVEncodingPipeline(reader: reader, writer: writer, video: video, pairs: pairs, duration: asset.duration.seconds)
  }
  private func makeComposition(track: AVAssetTrack, asset: AVAsset, request: EncodeConfiguration, colors: [String: Any]) -> AVMutableVideoComposition {
    let composition = AVMutableVideoComposition()
    composition.renderSize = CGSize(width: CGFloat(request.targetWidth), height: CGFloat(request.targetHeight))
    composition.frameDuration = CMTime(seconds: 1 / request.frameRate, preferredTimescale: 60000)
    let instruction = AVMutableVideoCompositionInstruction()
    instruction.timeRange = CMTimeRange(start: .zero, duration: asset.duration)
    let layer = AVMutableVideoCompositionLayerInstruction(assetTrack: track)
    let rect = CGRect(origin: .zero, size: track.naturalSize).applying(track.preferredTransform)
    let transform = track.preferredTransform.concatenating(CGAffineTransform(translationX: -rect.minX, y: -rect.minY))
      .concatenating(CGAffineTransform(scaleX: CGFloat(request.targetWidth) / rect.width, y: CGFloat(request.targetHeight) / rect.height))
    layer.setTransform(transform, at: .zero)
    instruction.layerInstructions = [layer]; composition.instructions = [instruction]
    composition.colorPrimaries = colors[AVVideoColorPrimariesKey] as? String
    composition.colorTransferFunction = colors[AVVideoTransferFunctionKey] as? String
    composition.colorYCbCrMatrix = colors[AVVideoYCbCrMatrixKey] as? String
    return composition
  }
}
