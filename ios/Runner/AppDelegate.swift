import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)
    if let registrar = engineBridge.pluginRegistry.registrar(forPlugin: "AsagiNativeVideo") {
      let native = NativeVideoEngine()
      NativeMediaApiSetup.setUp(binaryMessenger: registrar.messenger(), api: native)
      FlutterEventChannel(name: "asagi/encoding_progress", binaryMessenger: registrar.messenger()).setStreamHandler(native)
    }
  }
}
