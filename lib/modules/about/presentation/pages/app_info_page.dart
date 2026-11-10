import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/services/app_info/interface/base_app_info_service.dart';
import '../../data/about_app_repsitory.dart';
import '../../logic/cubit/about_app_cubit.dart';
import 'about_app_page.dart';

final class AppInfoPage extends StatelessWidget {
  const AppInfoPage({super.key});

  @override
  Widget build(BuildContext context) => BlocSignalProvider<AboutAppCubit>(
    create: (_) =>
        AboutAppCubit(AboutAppRepsitory(getIt<BaseAppInfoService>())),
    child: const AboutAppPage(),
  );
}
