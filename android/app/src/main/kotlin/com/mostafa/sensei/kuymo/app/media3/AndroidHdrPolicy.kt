package com.mostafa.sensei.kuymo.app.media3

import android.media.MediaCodecList
import android.media.MediaCodecInfo
import com.mostafa.sensei.kuymo.app.contracts.*

class AndroidHdrPolicy : HdrConfigurationPolicy {
    override fun preserve(request: EncodeConfiguration, source: SourceMetadata): Boolean {
        if (request.hdrMode != HdrMode.PRESERVE || !source.isHdr) return false
        check(source.colorTransfer != "dolbyVision") { "E_HDR_DYNAMIC_METADATA_UNSUPPORTED" }
        check(android.os.Build.VERSION.SDK_INT >= 33 && MediaCodecList(MediaCodecList.REGULAR_CODECS).codecInfos.any { codec ->
            codec.isEncoder && codec.supportedTypes.any { it.equals("video/hevc", true) } &&
                codec.getCapabilitiesForType("video/hevc").profileLevels.any {
                    it.profile == MediaCodecInfo.CodecProfileLevel.HEVCProfileMain10 ||
                    it.profile == MediaCodecInfo.CodecProfileLevel.HEVCProfileMain10HDR10
                }
        }) { "E_HDR_UNSUPPORTED" }
        return true
    }
}
