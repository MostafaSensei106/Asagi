import Flutter
import Foundation

/// Pigeon/EventChannel adapter; AVFoundation implementation lives behind contracts.
final class NativeVideoEngine: NSObject, NativeMediaApi, FlutterStreamHandler {
  private let metadata: VideoMetadataReading
  private let backend: VideoEncodingBackend
  private let progress: NativeProgressRelay
  override convenience init() {
    let progress = NativeProgressRelay()
    self.init(metadata: AVVideoMetadataReader(), backend: AVFoundationVideoEncoder(onProgress: progress.emit), progress: progress)
  }
  private init(metadata: VideoMetadataReading, backend: VideoEncodingBackend, progress: NativeProgressRelay) {
    self.metadata = metadata; self.backend = backend; self.progress = progress
    super.init()
  }
  func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? { progress.sink = events; return nil }
  func onCancel(withArguments arguments: Any?) -> FlutterError? { progress.sink = nil; return nil }
  func extractVideoMetadata(inputPath: String) async throws -> NativeVideoMetadata {
    let m = try await withCheckedThrowingContinuation { (done: CheckedContinuation<SourceMetadata, Error>) in
      DispatchQueue.global(qos: .userInitiated).async {
        do { done.resume(returning: try self.metadata.read(path: inputPath)) }
        catch { done.resume(throwing: error) }
      }
    }
    return NativeVideoMetadata(path: inputPath, durationSeconds: m.durationSeconds,
      width: m.width, height: m.height, rotation: m.rotation, bitrateBps: m.bitrateBps,
      frameRate: m.frameRate, hasAudio: m.hasAudio, fileSizeBytes: m.fileSizeBytes,
      isHdr: m.isHdr, colorTransfer: m.colorTransfer)
  }
  func startHardwareEncoding(request: NativeCompressRequest) async throws -> Bool {
    guard let source = request.inputPath, let output = request.outputPath,
      let video = request.targetVideoBitrateBps, let audio = request.targetAudioBitrateBps,
      let width = request.targetWidth, let height = request.targetHeight else { throw videoFailure("E_INVALID_INPUT") }
    return try await backend.encode(EncodeConfiguration(inputPath: source, outputPath: output,
      targetVideoBitrateBps: video, targetAudioBitrateBps: audio, targetWidth: width,
      targetHeight: height, frameRate: request.frameRate ?? 30,
      hdrMode: request.hdrMode == .preserve ? .preserve : .toneMapToSdr))
  }
  func pauseEncoding() async throws { try await backend.pause() }
  func resumeEncoding() async throws { try await backend.resume() }
  func cancelEncoding() async throws { try await backend.cancel() }
}

private final class NativeProgressRelay {
  var sink: FlutterEventSink?
  func emit(_ fraction: Double) { DispatchQueue.main.async { self.sink?(fraction) } }
}
