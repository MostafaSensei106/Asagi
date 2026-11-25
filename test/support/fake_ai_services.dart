import 'package:kuymo/core/di/di.dart';
import 'package:kuymo/core/preferences/application/telemetry_consent_coordinator.dart';
import 'package:kuymo/core/preferences/data/repositories/compression_defaults_repository.dart';
import 'package:kuymo/core/preferences/data/repositories/privacy_settings_repository.dart';
import 'package:kuymo/core/preferences/domain/entities/compression_defaults.dart';
import 'package:kuymo/core/preferences/domain/entities/privacy_settings.dart';
import 'package:kuymo/core/preferences/domain/repositories/settings_repository.dart';
import 'package:kuymo/core/preferences/domain/repositories/telemetry_adapter.dart';
import 'package:kuymo/modules/ai/data/repositories/local_ai_settings.dart';
import 'package:kuymo/modules/ai/domain/entities/ai_cancellation.dart';
import 'package:kuymo/modules/ai/domain/entities/ai_models.dart';
import 'package:kuymo/modules/ai/domain/entities/ai_settings.dart';
import 'package:kuymo/modules/ai/domain/repositories/ai_conversation_repository.dart';
import 'package:kuymo/modules/ai/domain/repositories/ai_media_repository.dart';
import 'package:kuymo/modules/ai/domain/repositories/ai_model_repository.dart';
import 'package:kuymo/modules/ai/domain/repositories/ai_runtime_repository.dart';
import 'package:kuymo/modules/ai/domain/repositories/ai_search_repository.dart';
import 'package:kuymo/modules/ai/domain/repositories/ai_tool_repository.dart';
import 'package:kuymo/modules/privacy/domain/repositories/scratchpad_repository.dart';

import 'memory_preference_storage.dart';

class Models implements AiModelRepository {
  @override
  Future<List<AiModelChoice>> list() async => const [
    AiModelChoice(
      id: 'test',
      name: 'Installed test model',
      bytes: 1000,
      installed: true,
    ),
  ];
  @override
  Future<void> install(
    String id, {
    required void Function(int) onProgress,
  }) async {
    onProgress(100);
  }

  @override
  void cancelInstall() {}
  @override
  Future<AiModelChoice?> importModel() async => null;
  @override
  Future<AiDocument?> pickImportFile() async => null;
  @override
  Future<AiModelChoice> importFile(AiDocument document) async => AiModelChoice(
    id: document.uri,
    name: document.name,
    bytes: document.bytes,
    installed: true,
  );
  @override
  Future<void> select(AiModelChoice model) async {}
  @override
  Future<void> remove(AiModelChoice model) async {}
}

class Runtime implements AiRuntimeRepository {
  @override
  Stream<AiReplyDelta> reply(
    List<AiMessage> history,
    String prompt, {
    AiDocument? attachment,
    AiDocument? toolDocument,
    bool structured = false,
    AiCancellation? token,
  }) async* {
    yield const AiReplyDelta(text: 'Reply');
  }

  @override
  Future<void> cancel() async {}
  @override
  Future<void> unload() async {}
  @override
  Future<int> benchmark() async => 42;
  @override
  Future<void> dispose() async {}
  @override
  void releaseWhenIdle() {}
}

class Search implements AiSearchRepository {
  @override
  Future<({int documents, int bytes})> statistics() async =>
      (documents: 0, bytes: 0);
  @override
  Future<int> selectDocuments() async => 0;
  @override
  Future<void> rebuild(void Function(int, int) onProgress) async {}
  @override
  Future<List<AiSearchHit>> search(String query) async => [];
  @override
  Future<void> clear() async {}
  @override
  void cancel() {}
}

class Tools implements AiToolRepository {
  @override
  Future<AiDocument?> pick() async => null;
  @override
  Future<String> execute(
    AiDocument doc,
    AiToolOperation operation, {
    int startMs = 0,
    int endMs = 0,
  }) async => '/test/output.mp4';
  @override
  Future<void> cancel() async {}
}

class Media implements AiMediaRepository {
  @override
  Future<String> describe(AiDocument document, {AiCancellation? token}) async =>
      'Test media description';
  @override
  Future<AiDocument?> pickAttachment() async => null;
}

class NoTelemetry implements TelemetryAdapter {
  @override
  Future<void> initialize() async {}
  @override
  Future<void> setCrashCollection(bool enabled) async {}
  @override
  Future<void> setPerformanceCollection(bool enabled) async {}
  @override
  Future<void> deletePendingCrashReports() async {}
  @override
  Future<void> recordFailure(String code, {required bool fatal}) async {}
}
class Scratchpad implements ScratchpadRepository {
  @override
  Future<String> createWorkspace({bool temporary = true}) async =>
      '/test/scratchpad';
  @override
  void release(String path) {}
  @override
  Future<void> clear() async {}
}

class Conversations implements AiConversationRepository {
  List<AiMessage> messages = [];
  @override
  Future<List<AiMessage>> load() async => List.of(messages);
  @override
  Future<void> save(List<AiMessage> value) async {
    messages = List.of(value);
  }

  @override
  Future<void> clear() async {
    messages = [];
  }
}

Future<MemoryPreferenceStorage> registerFakeAiDependencies() async {
  await getIt.reset();
  final storage = MemoryPreferenceStorage();
  getIt.registerSingleton<SettingsRepository<PrivacySettings>>(
    PrivacySettingsRepository(storage),
  );
  getIt.registerSingleton<SettingsRepository<CompressionDefaults>>(
    CompressionDefaultsRepository(storage),
  );
  getIt.registerSingleton<ScratchpadRepository>(Scratchpad());
  getIt.registerSingleton<TelemetryConsentCoordinator>(TelemetryConsentCoordinator(getIt<SettingsRepository<PrivacySettings>>(), NoTelemetry()));
  getIt.registerSingleton<SettingsRepository<AiChatSettings>>(
    LocalAiChatSettings(storage),
  );
  getIt.registerSingleton<SettingsRepository<AiMediaSettings>>(
    LocalAiMediaSettings(storage),
  );
  getIt.registerSingleton<SettingsRepository<AiFeatureSettings>>(
    LocalAiFeatureSettings(storage),
  );
  getIt.registerSingleton<SettingsRepository<AiToolSettings>>(
    LocalAiToolSettings(storage),
  );
  getIt.registerSingleton<SettingsRepository<AiSearchSettings>>(
    LocalAiSearchSettings(storage),
  );
  getIt.registerSingleton<SettingsRepository<AiRuntimeSettings>>(
    LocalAiRuntimeSettings(storage),
  );
  getIt.registerSingleton<SettingsRepository<AiModelSettings>>(
    LocalAiModelSettings(storage),
  );
  getIt.registerSingleton<AiModelRepository>(Models());
  getIt.registerSingleton<AiRuntimeRepository>(Runtime());
  getIt.registerSingleton<AiSearchRepository>(Search());
  getIt.registerSingleton<AiToolRepository>(Tools());
  getIt.registerSingleton<AiMediaRepository>(Media());
  getIt.registerSingleton<AiConversationRepository>(Conversations());
  await Future<void>.delayed(Duration.zero);
  return storage;
}
