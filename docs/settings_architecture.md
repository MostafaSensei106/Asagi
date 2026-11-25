# Durable settings and local AI

Each durable preference group has one repository. Screens observe that repository through `SettingsCubit<T>`; application services depend on the same domain contract. Opening a settings page does not initialize an AI engine.

## Presentation

Keep the established page compositions, cards, grouped tiles, spacing and typography. Reset is an `IconButtonComponent` in the page app-bar actions, not a content tile or footer. Added workbenches use the existing bottom-sheet, form-field, button and card components.

Home is the root route of one navigator. Settings and compression history open from home app-bar actions. Shared compression and notification state is provided above the navigator, so opening or closing these pages preserves the current job. There is no branched shell or bottom navigation bar.

Compression Defaults intentionally uses separate visible cards for resolution, frame rate, audio, video bitrate, strictness and HDR. The single-video setup retains its existing collapsible advanced controls.

## Storage and state ownership

- `LocalSettingsRepository<T>` owns a loaded immutable snapshot, deduplicates loads, serializes functional updates, and emits only after a successful write.
- Each record contains `version` and `value` under its own key. Corrupt records use safe defaults and remain intact until an explicit edit/reset. A newer unsupported version cannot be overwritten.
- `StorageFacade` selects ordinary preferences or secure storage at the infrastructure boundary. Widgets never choose storage keys or backends.
- `HydratedCubitSignal` remains appropriate for independent presentation state such as the theme. Services must not consume hydrated cubits as a settings API.
- Language uses a repository because UI and services share it. Migration prefers the former active hydrated locale over the older language key and deletes legacy values only after the replacement is durable.
- Compression defaults are separate from job state. A newly picked video reads the current defaults, presets then replace choices, and explicit edits affect that job. In-flight encoding keeps its request snapshot. Revoking metadata preservation before publication also strips the output.
- Notification preferences retain their existing v2 format and legacy migration, separate from permissions, update-check state, and compression-alert runtime metadata.
- Model files, conversations, selected document references and search vectors live in dedicated application directories, never in the preference snapshots.

## Privacy and diagnostics

Crashlytics and Firebase Performance have separate opt-in flags, both false by default. Native Android and iOS configuration disables automatic collection before Dart starts. Deferred startup loads the saved consent and applies each SDK flag independently. A failed settings read keeps both disabled.

The consent coordinator reports SDK application failures separately from saved values. Revocation disables collection and deletes pending Crashlytics reports. The app error boundary sends only explicitly classified `E_*` codes; media, conversation contents, file paths and exception messages are not sent through it. SDK flags are applied using Firebase's collection APIs; already transmitted reports are not recalled by a local opt-out.

Conversation history is separately opt-in and off by default. Disabling it stops subsequent saves without deleting existing history; the chat clear action deletes the local history. Temporary AI workspaces protect active operations from cleanup. Model downloads require a user action.

## Local AI and resource ownership

- The supported catalog comes from the registered SDK engines. Installation reports progress, supports cancellation, and verifies downloaded artifact digests. Import validates a complete LiteRT-LM inference container before committing its inventory record.
- User selection is separate from installed-file discovery. Chat and embeddings select their own models. Removing an active model clears its selection.
- Feature domain contracts expose app entities, not SDK model/session handles. The data layer owns SDK installation, native media access and LiteRT-LM engine lifecycle.
- Runtime preferences configure CPU threads, backend selection, generation sampling and a resource budget. The budget is an admission estimate, not an OS-enforced RSS ceiling. Automatic backend selection can fall back to CPU; an explicit GPU selection reports its failure.
- Heavy work uses `MediaWorkScheduler`: an active operation finishes before the next starts, and queued encoding precedes queued AI. Pending AI work can be cancelled without releasing another operation's lease. Memory pressure and app backgrounding request model release after the active turn.
- File access uses Android's system picker, not a broad media-library permission. Permission state is queried again on resume and is never persisted as a grant.
- Semantic indexing is opt-in, limited to selected files, respects the charging preference, and stores its embedding-model identity. Changing models requires rebuilding. Cached hits are checked for file access before display.
- Video analysis selects bounded scene samples and streams audio into WAV chunks. Text, image descriptions and transcripts are embedded locally.
- AI compression advice is explicitly requested and still passes through the existing planner and size verifier. Noise attenuation and leading/trailing silence removal use the native media pipeline when enabled.
- Media tools create new exports. Function-call proposals can target only the attached document and allowed operations with validated ranges. Confirmation is enabled by default. Arbitrary paths or model-generated commands are not executed.

## Validation

Run `flutter analyze`, `flutter test`, and, from `android/`, `./gradlew :app:testDebugUnitTest`. Regenerate Freezed and DI using `dart run build_runner build`; regenerate all three Pigeon bindings using `dart run pigeon --input pigeons/messages.dart`.

Device validation should cover SAF providers, revoked access, low memory, backend fallback, real downloaded/imported models and process death. Unit tests cannot establish the model-specific accuracy of scene interpretation, transcription or compression advice.
