import AVFoundation
import VideoToolbox

struct AVHdrConfiguration {
  let codec: AVVideoCodecType
  let pixelFormat: OSType
  let colors: [String: Any]
  let compression: [String: Any]
}
protocol HdrConfigurationPolicy {
  func configuration(track: AVAssetTrack, mode: HdrMode, bitrate: Int64) throws -> AVHdrConfiguration
}
struct AVHdrPolicy: HdrConfigurationPolicy {
  func configuration(track: AVAssetTrack, mode: HdrMode, bitrate: Int64) throws -> AVHdrConfiguration {
    let transfer = AVVideoMetadataReader.transfer(track)
    let hdr = ["hlg", "pq", "dolbyVision"].contains(transfer)
    let preserve = mode == .preserve && hdr
    if preserve && transfer == "dolbyVision" { throw videoFailure("E_HDR_DYNAMIC_METADATA_UNSUPPORTED") }
    if preserve && !VTIsHardwareEncodeSupported(kCMVideoCodecType_HEVC) { throw videoFailure("E_HDR_UNSUPPORTED") }
    var properties: [String: Any] = [AVVideoAverageBitRateKey: bitrate, AVVideoMaxKeyFrameIntervalDurationKey: 2]
    if preserve {
      properties[AVVideoProfileLevelKey] = kVTProfileLevel_HEVC_Main10_AutoLevel
      if let raw = track.formatDescriptions.first {
        let format = raw as! CMFormatDescription
        if let mastering = CMFormatDescriptionGetExtension(format, extensionKey: kCMFormatDescriptionExtension_MasteringDisplayColorVolume) {
          properties[kVTCompressionPropertyKey_MasteringDisplayColorVolume as String] = mastering
        }
        if let light = CMFormatDescriptionGetExtension(format, extensionKey: kCMFormatDescriptionExtension_ContentLightLevelInfo) {
          properties[kVTCompressionPropertyKey_ContentLightLevelInfo as String] = light
        }
      }
    }
    return AVHdrConfiguration(codec: preserve ? .hevc : .h264,
      pixelFormat: preserve ? kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange : kCVPixelFormatType_32BGRA,
      colors: [AVVideoColorPrimariesKey: preserve ? AVVideoColorPrimaries_ITU_R_2020 : AVVideoColorPrimaries_ITU_R_709_2,
        AVVideoTransferFunctionKey: preserve ? (transfer == "hlg" ? AVVideoTransferFunction_ITU_R_2100_HLG : AVVideoTransferFunction_SMPTE_ST_2084_PQ) : AVVideoTransferFunction_ITU_R_709_2,
        AVVideoYCbCrMatrixKey: preserve ? AVVideoYCbCrMatrix_ITU_R_2020 : AVVideoYCbCrMatrix_ITU_R_709_2], compression: properties)
  }
}
