import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/modules/ai/data/repositories/local_ai_settings.dart';
import 'package:kuymo/modules/ai/domain/entities/ai_cancellation.dart';
import 'package:kuymo/modules/ai/domain/entities/ai_models.dart';
import 'package:kuymo/modules/ai/presentation/cubit/ai_chat_cubit.dart';

import 'support/fake_ai_services.dart';
import 'support/memory_preference_storage.dart';

class RecordingRuntime extends Runtime {
  String? prompt;
  AiDocument? document;
  bool blocking = false;
  AiToolProposal? proposal;
  @override
  Stream<AiReplyDelta> reply(
    List<AiMessage> history,
    String prompt, {
    AiDocument? attachment,
    AiDocument? toolDocument,
    bool structured = false,
    AiCancellation? token,
  }) async* {
    this.prompt = prompt;
    document = toolDocument;
    if (blocking) {
      await token!.whenCancelled;
      token.check();
    }
    yield AiReplyDelta(text: 'Real test reply', proposal: proposal);
  }
}

class PickingMedia extends Media {
  @override
  Future<AiDocument?> pickAttachment() async => const AiDocument(
    uri: 'content://selected/file',
    name: 'video.mp4',
    bytes: 10,
  );
}

class RecordingTools extends Tools {
  int executions = 0;
  @override
  Future<String> execute(
    AiDocument doc,
    AiToolOperation operation, {
    int startMs = 0,
    int endMs = 0,
  }) async {
    executions++;
    return '/copy.mp4';
  }
}

void main() {
  test(
    'an attached file contributes local context and a reply is retained',
    () async {
      final runtime = RecordingRuntime();
      final history = Conversations();
      final cubit = AiChatCubit(
        runtime,
        history,
        PickingMedia(),
        Tools(),
        LocalAiToolSettings(MemoryPreferenceStorage()),
      );
      await cubit.attach();
      await cubit.send('Summarize');
      expect(runtime.prompt, contains('Test media description'));
      expect(runtime.document?.uri, 'content://selected/file');
      expect(cubit.stateValue.messages.last.text, 'Real test reply');
      expect(cubit.stateValue.messages.first.context, 'Test media description');
      expect(history.messages.length, 2);
      await cubit.close();
    },
  );
  test('tool proposals await approval and are executed at most once', () async {
    const proposal = AiToolProposal(
      document: AiDocument(
        uri: 'content://chosen',
        name: 'clip.mp4',
        bytes: 10,
      ),
      operation: AiToolOperation.trim,
      endMs: 1000,
    );
    final runtime = RecordingRuntime()..proposal = proposal;
    final tools = RecordingTools();
    final cubit = AiChatCubit(
      runtime,
      Conversations(),
      Media(),
      tools,
      LocalAiToolSettings(MemoryPreferenceStorage()),
    );
    await cubit.send('Trim this clip');
    expect(tools.executions, 0);
    expect(cubit.stateValue.proposals, [proposal]);
    await cubit.execute(proposal);
    await cubit.execute(proposal);
    expect(tools.executions, 1);
    expect(cubit.stateValue.proposals, isEmpty);
    await cubit.close();
  });
  test(
    'cancelling a request releases busy state without reporting a failure',
    () async {
      final runtime = RecordingRuntime()..blocking = true;
      final cubit = AiChatCubit(
        runtime,
        Conversations(),
        Media(),
        Tools(),
        LocalAiToolSettings(MemoryPreferenceStorage()),
      );
      final sending = cubit.send('Question');
      await Future<void>.delayed(Duration.zero);
      expect(cubit.stateValue.busy, isTrue);
      await cubit.cancel();
      await sending;
      expect(cubit.stateValue.busy, isFalse);
      expect(cubit.stateValue.failed, isFalse);
      await cubit.close();
    },
  );
}
