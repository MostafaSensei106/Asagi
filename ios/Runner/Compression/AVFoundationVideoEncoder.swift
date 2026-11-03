import Foundation

final class AVFoundationVideoEncoder: VideoEncodingBackend {
  private let queue = DispatchQueue(label: "zumi.encoding")
  private let factory: EncodingPipelineFactory
  private let onProgress: (Double) -> Void
  private var session: AVEncodingSession?
  init(factory: EncodingPipelineFactory = AVPipelineFactory(), onProgress: @escaping (Double) -> Void) {
    self.factory = factory; self.onProgress = onProgress
  }
  func encode(_ request: EncodeConfiguration) async throws -> Bool {
    try await withCheckedThrowingContinuation { done in
      queue.async {
        do {
          guard self.session == nil else { throw videoFailure("E_BUSY") }
          let pipeline = try self.factory.make(request)
          let session = AVEncodingSession(pipeline: pipeline, queue: self.queue, onProgress: self.onProgress) { result in
            self.session = nil
            done.resume(with: result)
          }
          self.session = session
          do { try session.start() } catch { self.session = nil; throw error }
        } catch { done.resume(throwing: error) }
      }
    }
  }
  private func control(_ action: @escaping (AVEncodingSession) -> Void) async {
    await withCheckedContinuation { (done: CheckedContinuation<Void, Never>) in
      queue.async { if let session = self.session { action(session) }; done.resume() }
    }
  }
  func pause() async throws { await control { $0.pause() } }
  func resume() async throws { await control { $0.resume() } }
  func cancel() async throws { await control { $0.cancel() } }
}
