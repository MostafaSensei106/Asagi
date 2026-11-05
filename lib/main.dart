import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:material_ui/material_ui.dart';

import 'core/utils/sys_init/sys_init.dart';
import 'zumi_app.dart';

Future<void> main() async {
  await SysInit.initializeCriticalServices();
  runApp(const ZumiApp());
  SchedulerBinding.instance.addPostFrameCallback(
    (_) => unawaited(SysInit.initializeDeferredServices()),
  );
}
