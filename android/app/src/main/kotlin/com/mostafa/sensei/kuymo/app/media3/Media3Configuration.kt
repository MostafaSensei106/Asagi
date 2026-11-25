package com.mostafa.sensei.kuymo.app.media3

import android.content.Context
import android.net.Uri
import androidx.media3.common.MediaItem
import androidx.media3.common.util.UnstableApi
import androidx.media3.effect.Presentation
import androidx.media3.effect.FrameDropEffect
import androidx.media3.transformer.*
import com.google.common.collect.ImmutableList
import com.mostafa.sensei.kuymo.app.contracts.EncodeConfiguration

@UnstableApi
object Media3Configuration {
    fun encoderFactory(context: Context, request: EncodeConfiguration, encoderNames: Set<String>): Codec.EncoderFactory {
        val builder = DefaultEncoderFactory.Builder(context)
            .setEnableFallback(true)
            .setRequestedVideoEncoderSettings(VideoEncoderSettings.Builder()
                .setBitrate(request.targetVideoBitrateBps.toInt()).setiFrameIntervalSeconds(2f).build())
            .setRequestedAudioEncoderSettings(AudioEncoderSettings.Builder()
                .setBitrate(request.targetAudioBitrateBps.coerceAtLeast(32000).toInt()).build())
        builder.setVideoEncoderSelector { mimeType ->
            ImmutableList.copyOf(EncoderUtil.getSupportedEncoders(mimeType).filter {
                it.name in encoderNames
            })
        }
        val factory = builder.build()
        return object : Codec.EncoderFactory by factory {
            override fun audioNeedsEncoding() = true
            override fun videoNeedsEncoding() = true
        }
    }
    fun composition(request: EncodeConfiguration, preserve: Boolean): Composition {
        val source = request.inputPath
        val item = EditedMediaItem.Builder(MediaItem.fromUri(if (source.startsWith("content://")) Uri.parse(source) else Uri.fromFile(java.io.File(source))))
            .setRemoveAudio(request.targetAudioBitrateBps == 0L)
            .setEffects(Effects(emptyList(), listOf(
                Presentation.createForWidthAndHeight(request.targetWidth.toInt(), request.targetHeight.toInt(), Presentation.LAYOUT_SCALE_TO_FIT),
                FrameDropEffect.createDefaultFrameDropEffect(request.frameRate.toFloat())
            ))).build()
        return Composition.Builder(EditedMediaItemSequence.Builder(item).build())
            .setHdrMode(if (preserve) Composition.HDR_MODE_KEEP_HDR else Composition.HDR_MODE_TONE_MAP_HDR_TO_SDR_USING_OPEN_GL).build()
    }
}
