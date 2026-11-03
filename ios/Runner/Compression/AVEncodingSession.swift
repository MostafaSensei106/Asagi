import AVFoundation

/// Reader/writer lifetime and transport control, confined to one serial queue.
final class AVEncodingSession {
  private let pipeline: AVEncodingPipeline, queue: DispatchQueue
  private let onProgress: (Double) -> Void, onComplete: (Result<Bool, Error>) -> Void
  private var pumps: [AVTrackPump] = []
  private var finished = false, remaining = 0, lastProgress = -1
  init(pipeline: AVEncodingPipeline, queue: DispatchQueue,
       onProgress: @escaping (Double) -> Void, onComplete: @escaping (Result<Bool, Error>) -> Void) {
    self.pipeline = pipeline; self.queue = queue
    self.onProgress = onProgress; self.onComplete = onComplete
  }
  func start() throws {
    guard pipeline.writer.startWriting(), pipeline.reader.startReading() else {
      pipeline.reader.cancelReading(); pipeline.writer.cancelWriting()
      throw pipeline.reader.error ?? pipeline.writer.error ?? videoFailure("E_ENCODING")
    }
    pipeline.writer.startSession(atSourceTime: .zero)
    remaining = pipeline.pairs.count
    for (output, input) in pipeline.pairs {
      let pump = AVTrackPump(output: output, input: input, queue: queue, onSample: { [weak self] sample in
        guard let self = self, output === self.pipeline.video else { return }
        let fraction = CMSampleBufferGetPresentationTimeStamp(sample).seconds / self.pipeline.duration
        guard fraction.isFinite else { return }
        let percent = Int(max(0, min(1, fraction)) * 100)
        if percent > self.lastProgress { self.lastProgress = percent; self.onProgress(Double(percent) / 100) }
      }, onEnd: { [weak self] error in self?.trackEnded(error) })
      pumps.append(pump); pump.start()
    }
  }
  func pause() { guard !finished else { return }; pumps.forEach { $0.pause() } }
  func resume() { guard !finished else { return }; pumps.forEach { $0.start() } }
  func cancel() {
    guard !finished else { return }
    pipeline.reader.cancelReading(); pipeline.writer.cancelWriting()
    complete(.failure(videoFailure("E_CANCELLED")))
  }
  private func trackEnded(_ error: Error?) {
    guard !finished else { return }
    if let error = error ?? pipeline.reader.error ?? pipeline.writer.error {
      pipeline.reader.cancelReading(); pipeline.writer.cancelWriting()
      complete(.failure(error)); return
    }
    remaining -= 1
    if remaining == 0 {
      pipeline.writer.finishWriting { [weak self] in
        guard let self = self else { return }
        self.queue.async {
          if self.pipeline.writer.status == .completed { self.onProgress(1); self.complete(.success(true)) }
          else { self.complete(.failure(self.pipeline.writer.error ?? videoFailure("E_ENCODING"))) }
        }
      }
    }
  }
  private func complete(_ result: Result<Bool, Error>) {
    guard !finished else { return }
    finished = true
    pumps.forEach { $0.stop() }; pumps.removeAll()
    onComplete(result)
  }
}
