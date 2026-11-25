import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/preferences/domain/entities/privacy_settings.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/repositories/ai_conversation_repository.dart';

@LazySingleton(as: AiConversationRepository)
final class FileAiConversationRepository implements AiConversationRepository {
  FileAiConversationRepository(this._privacy);
  final SettingsRepository<PrivacySettings> _privacy;
  Future<void> _writes = Future<void>.value();
  Future<File> _file() async => File(
    '${(await getApplicationSupportDirectory()).path}/ai_conversations/current.json',
  );
  @override
  Future<List<AiMessage>> load() async {
    await _writes;
    if (!(await _privacy.load()).saveChatHistory) return [];
    final file = await _file();
    if (!await file.exists()) return [];
    final json = jsonDecode(await file.readAsString()) as List<dynamic>;
    return json.map((item) {
      final row = item as Map<String, dynamic>;
      return AiMessage(
        text: row['text'] as String,
        user: row['user'] as bool,
        context: row['context'] as String? ?? '',
      );
    }).toList();
  }

  @override
  Future<void> save(List<AiMessage> messages) {
    final snapshot = List<AiMessage>.of(messages);
    final task = _writes.then((_) async {
      if (!(await _privacy.load()).saveChatHistory) return;
      final file = await _file();
      await file.parent.create(recursive: true);
      final partial = File('${file.path}.partial');
      await partial.writeAsString(
        jsonEncode(
          snapshot
              .map(
                (m) => {'text': m.text, 'user': m.user, 'context': m.context},
              )
              .toList(),
        ),
        flush: true,
      );
      if (!_privacy.current.saveChatHistory) {
        await partial.delete();
        return;
      }
      await partial.rename(file.path);
    });
    _writes = task.then<void>((_) {}, onError: (Object _, StackTrace _) {});
    return task;
  }

  @override
  Future<void> clear() {
    final task = _writes.then((_) async {
      final file = await _file();
      if (await file.exists()) await file.delete();
    });
    _writes = task.then<void>((_) {}, onError: (Object _, StackTrace _) {});
    return task;
  }
}
