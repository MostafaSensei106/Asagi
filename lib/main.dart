import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:material_ui/material_ui.dart';

import 'asagi_app.dart';
import 'core/utils/sys_init/sys_init.dart';

Future<void> main() async {
  await SysInit.initializeCriticalServices();
  runApp(const AsagiApp());
  SchedulerBinding.instance.addPostFrameCallback(
    (_) => unawaited(SysInit.initializeDeferredServices()),
  );
}
