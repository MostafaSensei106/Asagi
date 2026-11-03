import AVFoundation

final class AVVideoMetadataReader: VideoMetadataReading {
  static func transfer(_ track: AVAssetTrack) -> String {
    guard let raw = track.formatDescriptions.first else { return "unknown" }
    let format = raw as! CMFormatDescription
    if let atoms = CMFormatDescriptionGetExtension(format, extensionKey: kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms) as? [String: Any],
      atoms["dvcC"] != nil || atoms["dvvC"] != nil { return "dolbyVision" }
    let transfer = CMFormatDescriptionGetExtension(format, extensionKey: kCMFormatDescriptionExtension_TransferFunction) as? String
    switch transfer {
    case AVVideoTransferFunction_ITU_R_2100_HLG: return "hlg"
    case AVVideoTransferFunction_SMPTE_ST_2084_PQ: return "pq"
    default: return "sdr"
    }
  }
  func read(path: String) throws -> SourceMetadata {
    let asset = AVURLAsset(url: URL(fileURLWithPath: path))
    guard let track = asset.tracks(withMediaType: .video).first else { throw videoFailure("E_NO_VIDEO") }
    let t = track.preferredTransform
    let rotation = (Int((atan2(t.b, t.a) * 180 / .pi).rounded()) + 360) % 360
    let bytes = (try FileManager.default.attributesOfItem(atPath: path)[.size] as? NSNumber)?.int64Value ?? 0
    let transfer = Self.transfer(track)
    return SourceMetadata(durationSeconds: asset.duration.seconds,
      width: Int64(abs(track.naturalSize.width)), height: Int64(abs(track.naturalSize.height)),
      rotation: Int64(rotation), bitrateBps: Int64(track.estimatedDataRate), frameRate: Double(track.nominalFrameRate),
      hasAudio: !asset.tracks(withMediaType: .audio).isEmpty, fileSizeBytes: bytes,
      isHdr: ["hlg", "pq", "dolbyVision"].contains(transfer), colorTransfer: transfer)
  }
}
