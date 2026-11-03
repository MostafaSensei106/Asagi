import AVFoundation

/// Moves a bounded number of samples per queue turn so controls never starve.
final class AVTrackPump {
  private let output: AVAssetReaderOutput, input: AVAssetWriterInput
  private let queue: DispatchQueue
  private let onSample: (CMSampleBuffer) -> Void
  private let onEnd: (Error?) -> Void
  private var paused = false, ended = false
  init(output: AVAssetReaderOutput, input: AVAssetWriterInput, queue: DispatchQueue,
       onSample: @escaping (CMSampleBuffer) -> Void, onEnd: @escaping (Error?) -> Void) {
    self.output = output; self.input = input; self.queue = queue
    self.onSample = onSample; self.onEnd = onEnd
  }
  func start() {
    guard !ended else { return }
    paused = false
    input.requestMediaDataWhenReady(on: queue) { [weak self] in self?.drain() }
  }
  func pause() { paused = true; input.stopRequestingMediaData() }
  func stop() { ended = true; input.stopRequestingMediaData() }
  private func drain() {
    guard !paused && !ended else { return }
    for _ in 0..<16 {
      guard input.isReadyForMoreMediaData, !paused, !ended else { return }
      guard let sample = output.copyNextSampleBuffer() else {
        ended = true; input.markAsFinished(); onEnd(nil); return
      }
      guard input.append(sample) else {
        ended = true; input.markAsFinished(); onEnd(videoFailure("E_ENCODING")); return
      }
      onSample(sample)
    }
    queue.async { [weak self] in self?.drain() }
  }
}
