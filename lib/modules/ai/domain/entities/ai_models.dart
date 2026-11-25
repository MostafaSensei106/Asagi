import 'package:freezed_annotation/freezed_annotation.dart';
part 'ai_models.freezed.dart';

enum AiToolOperation { trim, extractAudio, stripMetadata }

@freezed
sealed class AiModelChoice with _$AiModelChoice {
  const factory AiModelChoice({
    required String id,
    required String name,
    required int bytes,
    @Default(false) bool installed,
    @Default(true) bool supported,
    @Default(false) bool embedding,
  }) = _AiModelChoice;
}

@freezed
sealed class AiDocument with _$AiDocument {
  const factory AiDocument({
    required String uri,
    required String name,
    required int bytes,
  }) = _AiDocument;
}

@freezed
sealed class AiMessage with _$AiMessage {
  const factory AiMessage({
    required String text,
    @Default(true) bool user,
    @Default('') String context,
    @Default('') String thinking,
  }) = _AiMessage;
}

@freezed
sealed class AiReplyDelta with _$AiReplyDelta {
  const factory AiReplyDelta({
    @Default('') String text,
    @Default('') String thinking,
    AiToolProposal? proposal,
  }) = _AiReplyDelta;
}

@freezed
sealed class AiSearchHit with _$AiSearchHit {
  const factory AiSearchHit({
    required AiDocument document,
    required double score,
    required String description,
  }) = _AiSearchHit;
}

@freezed
sealed class AiToolProposal with _$AiToolProposal {
  const factory AiToolProposal({
    required AiDocument document,
    required AiToolOperation operation,
    @Default(0) int startMs,
    @Default(0) int endMs,
  }) = _AiToolProposal;
}
