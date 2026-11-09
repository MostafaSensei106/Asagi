# Repository Guidelines

## Engineering Role

Act as a senior Flutter engineer. Read the surrounding feature and shared code before changing it, preserve the app's established patterns, and make focused, maintainable changes. Apply SOLID and Clean Architecture with practical judgment: give each class one clear responsibility, depend on abstractions, and keep the simplest design that handles the real requirements and edge cases. Favor explicit, readable code in the spirit of the Zen of Python. Consider user experience, accessibility, localization, error and loading states, and Android/iOS behavior when relevant. Explain meaningful architectural tradeoffs and verify the affected behavior.

## Project Structure & Module Organization

Zumi is a Flutter app with a Rust compression core and native Android/iOS integrations. Most Dart code lives in `lib/`: shared platform services and widgets are under `lib/core/`, feature screens and flows are grouped in `lib/modules/<feature>/`, and translations are in `lib/l10n/`. Tests are in `test/`. Images, icons, and generated launcher assets are under `assets/`. Rust source is in `rust/src/`; the Flutter Rust bridge plugin and build support are in `rust_builder/`. Platform projects are in `android/`, `ios/`, and `web/`.

## Clean Architecture & Dependency Direction

- Keep each feature in `lib/modules/<feature>/`. For features with business logic or data access, use `presentation/`, `domain/`, and `data/`: presentation holds pages, small widgets, and state management; domain holds entities, value objects, use cases when needed, and abstract repository contracts; data holds repository implementations, data sources, and DTOs. A purely presentational feature does not need empty layers.
- Make dependencies point inward: presentation depends on domain contracts; data implements those contracts and maps external DTOs to domain entities; domain must not depend on Flutter widgets, plugins, platform APIs, or data implementations. Keep the repository interface in `domain/` and its concrete implementation in `data/`. Inject dependencies through constructors or the existing `lib/core/di/` setup instead of creating them inside UI widgets.
- Define new immutable domain entities and value objects with `@freezed sealed class` by default so equality and copying stay consistent; use a regular class only when behavior or identity makes that clearer. Keep transport and persistence fields in data models; map them at the data/domain boundary. Do not expose a plugin response or raw DTO as a domain entity.
- Keep shared, platform-independent compression rules in `lib/core/compression/domain/` and orchestration in `lib/core/compression/application/`. Keep Rust, native encoder, and file storage adapters in `lib/core/compression/infrastructure/`. Platform-specific code belongs at the boundary.
- Keep widgets focused on rendering and user interaction. Put asynchronous workflows and state transitions in the feature's state manager, and keep persistence and native calls in repositories or adapters. Choose Cubit for straightforward commands and state changes; choose Bloc when explicit events, event sequencing, or event handling make the feature clearer. Follow the existing `bloc_signals` pattern where it applies.
- Use `@freezed` with `sealed class` for feature state and, when using Bloc, its event types. Represent distinct loading, success, empty, and failure cases explicitly when they need different behavior; keep the state shape appropriate to the feature. Handle cancellation, retries, stale async results, and errors where relevant. Do not move feature-specific behavior into `lib/core/` merely to share it within one feature.

## Shared Core Components & UI

- Before adding a widget, service, token, or helper, inspect `lib/core/` for an existing component. Reuse the components exposed by `lib/core/widgets/widgets.dart` for buttons, inputs, list tiles, feedback, navigation, and layout when they fit. Use the existing design tokens under `lib/core/widgets/design_system/tokens/` and the app theme instead of repeating colors, spacing, radii, or control sizes.
- Keep feature-specific composition in its `presentation/` folder. Move a component into `lib/core/` only when it has a genuinely reusable API and no feature dependency; export reusable widgets from the core widget barrel. Do not duplicate a core component with a local lookalike.
- Follow existing Material 3, `material_ui`, `kaisel`, routing, and localization patterns in the affected screen. Use localized strings from `lib/l10n/` for user-facing text and support both light and dark themes and right-to-left layouts where applicable.

## Build, Test, and Development Commands

- `flutter pub get` resolves Dart and Flutter dependencies.
- `flutter run` launches the app on a connected device or configured emulator.
- `flutter analyze` runs the analyzer using `analysis_options.yaml` and Flutter lints.
- `flutter test` runs the Dart unit, architecture, and widget tests in `test/`.
- `cargo test --manifest-path rust/Cargo.toml` runs Rust core tests.

Run commands from the repository root. Native builds require the relevant Android SDK or Xcode setup. When changing Rust bridge APIs, keep generated bindings and their source definitions in sync.

## Coding Style & Naming Conventions

Follow `analysis_options.yaml`: use two-space Dart indentation, single-quoted strings, relative imports within `lib/`, ordered import groups, and `lower_snake_case.dart` file names. Use `UpperCamelCase` for types and `lowerCamelCase` for members. Prefer immutable fields, `final` locals and fields, const widgets, and explicit return types. Follow the nearby file's constructor and widget structure; keep build methods readable by extracting meaningful widgets or helpers. Format Dart changes with `dart format <paths>`.

Split code into focused files and small widgets at natural responsibility boundaries so it is easy to read and change. Avoid repeated logic, oversized pages or state managers, and abstractions that add complexity without solving a real problem. Keep straightforward code straightforward while covering important edge cases. Before adding a third-party package, check whether an existing dependency or SDK API already solves the need; if a new one is justified, choose a compatible package published on [pub.dev](https://pub.dev), declare it in `pubspec.yaml`, and commit the resulting lockfile change when applicable. Keep generated Freezed files in sync with their source declarations.

Rust code should follow standard `rustfmt` formatting and Rust naming conventions (`snake_case` functions/modules, `UpperCamelCase` types). Keep platform-independent compression decisions in the Rust domain layer; native code should handle platform encoding and metadata.

## Testing Guidelines

Add or update tests under `test/` for Dart behavior; name files `*_test.dart`. Keep planner, retry, and verification behavior covered at the relevant layer. Rust tests belong beside the implementation or in Rust test modules and run with the command above. Run the analyzer and the relevant test suites before submitting changes.

## Commit & Pull Request Guidelines

Recent history uses short Conventional Commit prefixes such as `feat:`, `chore:`, and `refactor:`. Use an imperative, focused summary (for example, `fix: handle cancelled compression`). Pull requests should explain the user-visible change and design impact, link related issues when available, and include test or analyzer results. Add screenshots for visual changes and note any native platform or generated-binding updates.

## Security & Configuration

Keep compression and media processing on device. Do not commit credentials, signing keys, local build outputs, or machine-specific configuration. Review platform permission changes and keep generated files clearly distinguished from their source definitions.
