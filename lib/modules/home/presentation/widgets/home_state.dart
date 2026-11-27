import '../../../compression/presentation/cubit/compression_state.dart';

extension HomeCompressionState on CompressionState {
  bool get isWorking =>
      phase == CompressionPhase.running ||
      phase == CompressionPhase.paused ||
      phase == CompressionPhase.saving;
  bool get isPicking => phase == CompressionPhase.picking;
  bool get hasResult => phase == CompressionPhase.completed && output != null;
  bool get canStart =>
      video != null &&
      !isWorking &&
      !isPicking &&
      !planning &&
      previewPlan != null &&
      !previewPlan!.isInfeasible;
}
