# Staged fallback video (`.zf`) format

Version 1 stores filtered **video only**. It does not contain audio, encode a
codec, or mux a media container. The native fallback must retain or decode the
audio track from the original source separately and preserve its original
timestamps when combining it with these video frames.

All integer fields are little-endian. The file is written incrementally to a
`.partial` sibling and renamed to the requested `.zf` path only after a
successful decode and flush. A failed decode removes the partial file.

## Header (36 bytes)

| Offset | Size | Field |
| ---: | ---: | --- |
| 0 | 8 | Magic bytes `ZUMIYUV\0` |
| 8 | 2 | Version, `1` |
| 10 | 2 | Header size, `36` |
| 12 | 4 | Output width in pixels (even) |
| 16 | 4 | Output height in pixels (even) |
| 20 | 4 | Requested output frame rate |
| 24 | 4 | Pixel layout, `1` means NV12 |
| 28 | 8 | Number of frame records |

## Frame record

Each record has a 20-byte header followed by the frame payload:

| Record offset | Size | Field |
| ---: | ---: | --- |
| 0 | 4 | Tag bytes `FRM1` |
| 4 | 8 | Presentation timestamp in microseconds, unsigned |
| 12 | 8 | Payload size in bytes |
| 20 | variable | Tightly packed NV12 payload |

For NV12, the payload is `width * height` bytes of Y followed by
`width * height / 2` bytes of interleaved UV. PTS values are nonnegative and
monotonic; equal timestamps are permitted. The decoder writes one record at a
time and retains no frame queue in memory.

The format intentionally has no audio records in v1. A consumer must not infer
that audio was staged or silently discard it. FFmpeg remains decode/filter
only; final audio/video encoding and muxing belong to Android's platform path.
