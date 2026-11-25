import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../constants/kuymo_icons.dart';
import '../../extensions/extensions.dart';
import '../../widgets/widgets.dart';
import '../domain/repositories/settings_repository.dart';
import 'settings_cubit.dart';

final class SettingsView<T> extends StatelessWidget {
  const SettingsView({
    required this.repository,
    required this.builder,
    super.key,
  });
  final SettingsRepository<T> repository;
  final Widget Function(BuildContext, T, Future<void> Function(T Function(T)))
  builder;
  @override
  Widget build(BuildContext context) => BlocSignalProvider(
    create: (_) => SettingsCubit<T>(repository),
    child: BlocSignalListener<SettingsCubit<T>, SettingsState<T>>(
      listenWhen: (previous, current) =>
          (current.phase == SettingsPhase.failure &&
              previous.phase != current.phase) ||
          (!previous.recovered && current.recovered),
      listener: (context, state) => context.toast.showError(
        context,
        state.recovered
            ? context.localeKeys.settingsRecovered
            : context.localeKeys.settingsSaveFailed,
      ),
      child: BlocSignalBuilder<SettingsCubit<T>, SettingsState<T>>(
        builder: (context, state) => builder(
          context,
          state.value,
          BlocSignalProvider.of<SettingsCubit<T>>(context).update,
        ),
      ),
    ),
  );
}

/// Settings reset stays in the page's app-bar actions, using the app's button.
final class SettingsResetAction<T> extends StatelessWidget {
  const SettingsResetAction({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = BlocSignalProvider.of<SettingsCubit<T>>(context);
    return IconButtonComponent(
      icon: KuymoIcons.settingsReset,
      tooltip: context.localeKeys.resetSettingsGroup,
      onPressed:
          cubit.stateValue.phase == SettingsPhase.loading ||
              cubit.stateValue.phase == SettingsPhase.saving
          ? null
          : () => unawaited(cubit.reset()),
    );
  }
}
