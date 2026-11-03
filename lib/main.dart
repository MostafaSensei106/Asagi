import 'core/native/rust/frb_generated.dart';

/// The host application can initialize this before mounting its own UI.
Future<void> main() => RustLib.init();
