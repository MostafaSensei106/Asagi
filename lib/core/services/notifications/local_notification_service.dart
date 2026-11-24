import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import 'base_local_notification_service.dart';
import 'notification_request.dart';

@LazySingleton(as: BaseLocalNotificationService)
final class LocalNotificationService implements BaseLocalNotificationService {
  LocalNotificationService();
  final _plugin = FlutterLocalNotificationsPlugin();
  static const _native = MethodChannel('asagi/notifications');
  final _interactions = StreamController<void>.broadcast();
  final List<String> _pending = [];
  Future<void>? _initialization;
  bool get _supported => Platform.isAndroid;

  @override
  Stream<void> get interactions => _interactions.stream;
  @override
  List<String> takePendingInteractions() {
    final values = List<String>.of(_pending);
    _pending.clear();
    return values;
  }

  void _receive(String? payload) {
    if (payload == null || payload.isEmpty) return;
    _pending.add(payload);
    _interactions.add(null);
  }

  @override
  Future<void> initialize() =>
      _initialization ??= _initialize().catchError((Object error) {
        _initialization = null;
        throw StateError('E_NOTIFICATION_INITIALIZATION');
      });

  Future<void> _initialize() async {
    if (!_supported) return;
    await _plugin.initialize(
      settings: const InitializationSettings(
        android: AndroidInitializationSettings('ic_notification'),
      ),
      onDidReceiveNotificationResponse: (response) =>
          _receive(response.payload),
    );
    _native.setMethodCallHandler((call) async {
      if (call.method == 'notificationTap') _receive(call.arguments as String?);
    });
    final launch = await _plugin.getNotificationAppLaunchDetails();
    if (launch?.didNotificationLaunchApp == true) {
      _receive(launch?.notificationResponse?.payload);
    }
    _receive(await _native.invokeMethod<String>('takeLaunchPayload'));
  }

  @override
  Future<bool> enabled() async {
    if (!_supported) return false;
    return await _plugin
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.areNotificationsEnabled() ??
        false;
  }

  @override
  Future<bool> show(LocalNotificationRequest request) async {
    await initialize();
    if (!await enabled()) return false;
    final android = _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()!;
    final channel = request.channel;
    await android.createNotificationChannel(
      AndroidNotificationChannel(
        channel.id,
        channel.name,
        description: channel.description,
        importance: channel.urgent
            ? Importance.high
            : Importance.defaultImportance,
        playSound: channel.sound,
        enableVibration: channel.vibration,
      ),
    );
    if ((await blockedChannels()).contains(channel.id)) return false;
    await _plugin.show(
      id: request.id,
      title: request.title,
      body: request.body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          importance: channel.urgent
              ? Importance.high
              : Importance.defaultImportance,
          priority: channel.urgent ? Priority.high : Priority.defaultPriority,
          playSound: channel.sound,
          enableVibration: channel.vibration,
          styleInformation: BigTextStyleInformation(request.body),
        ),
      ),
      payload: request.payload,
    );
    return true;
  }

  @override
  Future<Set<String>> blockedChannels() async {
    if (!_supported) return {};
    final channels = await _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.getNotificationChannels();
    return {
      for (final channel in channels ?? <AndroidNotificationChannel>[])
        if (channel.importance == Importance.none) channel.id,
    };
  }

  @override
  Future<void> openChannelSettings(String channelId) async {
    if (_supported) {
      await _native.invokeMethod<void>('openChannelSettings', channelId);
    }
  }

  @override
  Future<void> configureProgress(Map<String, Object?> configuration) async {
    if (_supported) {
      await _native.invokeMethod<void>('configureProgress', configuration);
    }
  }
}
