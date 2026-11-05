import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:material_ui/material_ui.dart';
import 'package:zumi/core/utils/sys_init/sys_init.dart';
import 'package:zumi/zumi_app.dart';

Future<void> main() async {
  await SysInit.initializeCriticalServices();
  runApp(ZumiApp());
  SchedulerBinding.instance.addPostFrameCallback(
    (_) => unawaited(SysInit.initializeDeferredServices()),
  );
}
