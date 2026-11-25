import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:material_ui/material_ui.dart';

import 'core/utils/sys_init/sys_init.dart';
import 'core/utils/theme/font_licenses.dart';
import 'kuymo_app.dart';

Future<void> main() async {
  registerBrandFontLicenses();
  await SysInit.initializeCriticalServices();
  runApp(const KuymoApp());
  SchedulerBinding.instance.addPostFrameCallback(
    (_) => unawaited(SysInit.initializeDeferredServices()),
  );
}
