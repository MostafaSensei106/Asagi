import Foundation

enum HdrMode { case preserve, toneMapToSdr }
struct SourceMetadata {
  let durationSeconds: Double
  let width: Int64, height: Int64, rotation: Int64, bitrateBps: Int64
  let frameRate: Double
  let hasAudio: Bool
  let fileSizeBytes: Int64
  let isHdr: Bool
  let colorTransfer: String
  /// Stored pixels per displayed pixel; 1.0 means square pixels.
  let pixelAspectRatio: Double
}
struct EncodeConfiguration {
  let inputPath: String, outputPath: String
  let targetVideoBitrateBps: Int64, targetAudioBitrateBps: Int64
  let targetWidth: Int64, targetHeight: Int64
  let frameRate: Double
  let hdrMode: HdrMode
}
protocol VideoMetadataReading { func read(path: String) throws -> SourceMetadata }
protocol VideoEncodingBackend {
  func encode(_ request: EncodeConfiguration) async throws -> Bool
  func pause() async throws
  func resume() async throws
  func cancel() async throws
}
func videoFailure(_ code: String) -> NSError {
  NSError(domain: "Kuymo", code: 1, userInfo: [NSLocalizedDescriptionKey: code])
}
