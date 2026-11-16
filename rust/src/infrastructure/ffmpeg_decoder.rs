//! Software decode/filter fallback for Android.
//!
//! The sink boundary is where the Android MediaCodec adapter queues each
//! NV12 frame into the platform H.264 encoder. This module never encodes or
//! muxes video with FFmpeg.

use std::ffi::CString;

use rsmpeg::{
    avcodec::AVCodecContext,
    avfilter::{AVFilter, AVFilterGraph, AVFilterInOut},
    avformat::AVFormatContextInput,
    error::RsmpegError,
    ffi,
};

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum RawFrameLayout {
    Nv12,
    I420,
}

#[derive(Debug)]
pub struct RawYuvFrame {
    pub width: u32,
    pub height: u32,
    pub presentation_timestamp: i64,
    pub time_base_num: i32,
    pub time_base_den: i32,
    pub layout: RawFrameLayout,
    pub bytes: Vec<u8>,
}

#[derive(Debug, Clone, Copy)]
pub struct DecodeFilterOptions {
    pub output_width: u32,
    pub output_height: u32,
    pub max_fps: u32,
    pub tone_map_hdr: bool,
    pub output_layout: RawFrameLayout,
}

pub trait RawFrameSink {
    /// Implementations should synchronously queue this frame to MediaCodec or
    /// copy it into a bounded queue. Retaining unbounded frame buffers is unsafe
    /// for long videos.
    fn push_frame(&mut self, frame: RawYuvFrame) -> Result<(), String>;
}

/// Decode a single video stream and feed filtered raw frames to `sink`.
///
/// The caller owns audio handling and the MediaCodec output muxer. Dimensions
/// must be the dimensions selected by the Rust planner.
pub fn decode_filter_to_sink(
    input_path: &str,
    options: DecodeFilterOptions,
    sink: &mut dyn RawFrameSink,
) -> Result<(), String> {
    validate_options(options)?;
    let input_url = CString::new(input_path).map_err(|_| "E_INVALID_INPUT")?;
    let mut format_options = None;
    let mut input = AVFormatContextInput::open(&input_url, None, &mut format_options)
        .map_err(|error| format_error("E_FFMPEG_OPEN", error))?;
    let (stream_index, decoder_codec) = input
        .find_best_stream(ffi::AVMEDIA_TYPE_VIDEO)
        .map_err(|error| format_error("E_FFMPEG_STREAM", error))?
        .ok_or("E_VIDEO_STREAM_MISSING")?;

    let (mut decoder, source_time_base) = {
        let stream = input
            .streams()
            .get(stream_index)
            .ok_or("E_VIDEO_STREAM_MISSING")?;
        let mut decoder = AVCodecContext::new(&decoder_codec);
        decoder
            .apply_codecpar(&stream.codecpar())
            .map_err(|error| format_error("E_FFMPEG_DECODER", error))?;
        (decoder, stream.time_base)
    };
    decoder
        .open(None)
        .map_err(|error| format_error("E_FFMPEG_DECODER", error))?;

    let mut graph = create_filter_graph(&decoder, source_time_base, options)?;
    while let Some(packet) = input
        .read_packet()
        .map_err(|error| format_error("E_FFMPEG_DEMUX", error))?
    {
        if packet.stream_index as usize != stream_index {
            continue;
        }
        decoder
            .send_packet(Some(&packet))
            .map_err(|error| format_error("E_FFMPEG_DECODE", error))?;
        drain_decoder(&mut decoder, &mut graph, options.output_layout, sink)?;
    }

    decoder
        .send_packet(None)
        .map_err(|error| format_error("E_FFMPEG_FLUSH", error))?;
    drain_decoder(&mut decoder, &mut graph, options.output_layout, sink)?;
    push_eof(&mut graph)?;
    drain_filter(&mut graph, options.output_layout, sink)
}

fn validate_options(options: DecodeFilterOptions) -> Result<(), String> {
    if options.tone_map_hdr {
        // This LGPL build intentionally omits libzimg/zscale. Do not claim an
        // HDR-to-SDR conversion with an incomplete transfer-function pipeline.
        return Err("E_HDR_FILTER_UNAVAILABLE".into());
    }
    if options.output_width < 2
        || options.output_height < 2
        || options.output_width % 2 != 0
        || options.output_height % 2 != 0
        || !matches!(options.max_fps, 24 | 25 | 30 | 60 | 120)
    {
        return Err("E_INVALID_INPUT".into());
    }
    Ok(())
}

fn create_filter_graph(
    decoder: &AVCodecContext,
    time_base: ffi::AVRational,
    options: DecodeFilterOptions,
) -> Result<AVFilterGraph, String> {
    let buffer = AVFilter::get_by_name(c"buffer").ok_or("E_FFMPEG_FILTER_MISSING")?;
    let buffer_sink = AVFilter::get_by_name(c"buffersink").ok_or("E_FFMPEG_FILTER_MISSING")?;
    let graph = AVFilterGraph::new();
    let sar_num = if decoder.sample_aspect_ratio.num > 0 {
        decoder.sample_aspect_ratio.num
    } else {
        1
    };
    let sar_den = if decoder.sample_aspect_ratio.den > 0 {
        decoder.sample_aspect_ratio.den
    } else {
        1
    };
    let source_args = CString::new(format!(
        "video_size={}x{}:pix_fmt={}:time_base={}/{}:pixel_aspect={}/{}",
        decoder.width,
        decoder.height,
        decoder.pix_fmt as i32,
        time_base.num,
        time_base.den,
        sar_num,
        sar_den,
    ))
    .map_err(|_| "E_FFMPEG_FILTER_CONFIG")?;
    let mut source = graph
        .create_filter_context(&buffer, c"in", Some(&source_args))
        .map_err(|error| format_error("E_FFMPEG_FILTER_CONFIG", error))?;
    let mut output = graph
        .create_filter_context(&buffer_sink, c"out", None)
        .map_err(|error| format_error("E_FFMPEG_FILTER_CONFIG", error))?;

    let format = match options.output_layout {
        RawFrameLayout::Nv12 => "nv12",
        RawFrameLayout::I420 => "yuv420p",
    };
    let filter_description = CString::new(format!(
        "scale={}:{}:force_original_aspect_ratio=decrease:force_divisible_by=2,pad={}:{}:(ow-iw)/2:(oh-ih)/2,setsar=1,fps={}/{},format=pix_fmts={format}",
        options.output_width,
        options.output_height,
        options.output_width,
        options.output_height,
        options.max_fps,
        1,
    ))
    .map_err(|_| "E_FFMPEG_FILTER_CONFIG")?;

    let inputs = AVFilterInOut::new(c"out", &mut output, 0);
    let outputs = AVFilterInOut::new(c"in", &mut source, 0);
    graph
        .parse_ptr(&filter_description, Some(inputs), Some(outputs))
        .map_err(|error| format_error("E_FFMPEG_FILTER_CONFIG", error))?;
    graph
        .config()
        .map_err(|error| format_error("E_FFMPEG_FILTER_CONFIG", error))?;
    drop(source);
    drop(output);
    Ok(graph)
}

fn drain_decoder(
    decoder: &mut AVCodecContext,
    graph: &mut AVFilterGraph,
    layout: RawFrameLayout,
    sink: &mut dyn RawFrameSink,
) -> Result<(), String> {
    loop {
        let frame = match decoder.receive_frame() {
            Ok(frame) => frame,
            Err(RsmpegError::DecoderDrainError | RsmpegError::DecoderFlushedError) => break,
            Err(error) => return Err(format_error("E_FFMPEG_DECODE", error)),
        };
        let mut frame = frame;
        frame.set_pts(frame.best_effort_timestamp);
        {
            let mut source = graph.get_filter(c"in").ok_or("E_FFMPEG_FILTER_MISSING")?;
            source
                .buffersrc_add_frame(Some(frame), Some(ffi::AV_BUFFERSRC_FLAG_KEEP_REF as i32))
                .map_err(|error| format_error("E_FFMPEG_FILTER", error))?;
        }
        drain_filter(graph, layout, sink)?;
    }
    Ok(())
}

fn push_eof(graph: &mut AVFilterGraph) -> Result<(), String> {
    graph
        .get_filter(c"in")
        .ok_or("E_FFMPEG_FILTER_MISSING")?
        .buffersrc_add_frame(None, None)
        .map_err(|error| format_error("E_FFMPEG_FILTER", error))
}

fn drain_filter(
    graph: &mut AVFilterGraph,
    layout: RawFrameLayout,
    sink: &mut dyn RawFrameSink,
) -> Result<(), String> {
    loop {
        let mut output = graph.get_filter(c"out").ok_or("E_FFMPEG_FILTER_MISSING")?;
        let time_base = output.get_time_base();
        let frame = match output.buffersink_get_frame(None) {
            Ok(frame) => frame,
            Err(RsmpegError::BufferSinkDrainError | RsmpegError::BufferSinkEofError) => break,
            Err(error) => return Err(format_error("E_FFMPEG_FILTER", error)),
        };
        let size = frame
            .image_get_buffer_size(1)
            .map_err(|error| format_error("E_FFMPEG_FRAME", error))?;
        let mut bytes = vec![0; size];
        let written = frame
            .image_copy_to_buffer(&mut bytes, 1)
            .map_err(|error| format_error("E_FFMPEG_FRAME", error))?;
        bytes.truncate(written);
        sink.push_frame(RawYuvFrame {
            width: frame.width as u32,
            height: frame.height as u32,
            presentation_timestamp: frame.pts,
            time_base_num: time_base.num,
            time_base_den: time_base.den,
            layout,
            bytes,
        })?;
    }
    Ok(())
}

fn format_error(prefix: &str, error: RsmpegError) -> String {
    format!("{prefix}: {error}")
}
