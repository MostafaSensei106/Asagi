# Repository Guidelines

## Project Structure & Module Organization

Zumi is a Flutter app with a Rust compression core and native Android/iOS integrations. Most Dart code lives in `lib/`: shared platform services and widgets are under `lib/core/`, feature screens and flows are grouped in `lib/modules/<feature>/`, and translations are in `lib/l10n/`. Tests are in `test/`. Images, icons, and generated launcher assets are under `assets/`. Rust source is in `rust/src/`; the Flutter Rust bridge plugin and build support are in `rust_builder/`. Platform projects are in `android/`, `ios/`, and `web/`.

## Build, Test, and Development Commands

- `flutter pub get` resolves Dart and Flutter dependencies.
- `flutter run` launches the app on a connected device or configured emulator.
- `flutter analyze` runs the analyzer using `analysis_options.yaml` and Flutter lints.
- `flutter test` runs the Dart unit, architecture, and widget tests in `test/`.
- `cargo test --manifest-path rust/Cargo.toml` runs Rust core tests.

Run commands from the repository root. Native builds require the relevant Android SDK or Xcode setup. When changing Rust bridge APIs, keep generated bindings and their source definitions in sync.

## Coding Style & Naming Conventions

Follow `analysis_options.yaml`: use two-space Dart indentation, single-quoted strings, relative imports where appropriate, and `lower_snake_case.dart` file names. Use `UpperCamelCase` for types and `lowerCamelCase` for members. Prefer immutable fields, const widgets, and explicit return types. Keep feature-specific UI in its module and reusable behavior in `lib/core/`. Format Dart changes with `dart format <paths>`.

Rust code should follow standard `rustfmt` formatting and Rust naming conventions (`snake_case` functions/modules, `UpperCamelCase` types). Keep platform-independent compression decisions in the Rust domain layer; native code should handle platform encoding and metadata.

## Testing Guidelines

Add or update tests under `test/` for Dart behavior; name files `*_test.dart`. Keep planner, retry, and verification behavior covered at the relevant layer. Rust tests belong beside the implementation or in Rust test modules and run with the command above. Run the analyzer and the relevant test suites before submitting changes.

## Commit & Pull Request Guidelines

Recent history uses short Conventional Commit prefixes such as `feat:`, `chore:`, and `refactor:`. Use an imperative, focused summary (for example, `fix: handle cancelled compression`). Pull requests should explain the user-visible change and design impact, link related issues when available, and include test or analyzer results. Add screenshots for visual changes and note any native platform or generated-binding updates.

## Security & Configuration

Keep compression and media processing on device. Do not commit credentials, signing keys, local build outputs, or machine-specific configuration. Review platform permission changes and keep generated files clearly distinguished from their source definitions.
