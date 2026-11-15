import 'dart:async';
import 'dart:io';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';
import '../widgets/compression_advanced_controls.dart';

final class CompressionDefaultsPage extends HookWidget {
  const CompressionDefaultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocSignalProvider.of<CompressionCubit>(context);
    final controller = useTextEditingController(
      text: '${cubit.stateValue.targetMb}',
    );
    final valid = useState(true);
    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: context.localeKeys.compressionDefaults,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(context.localeKeys.defaultResolutionBitrateAndOutputFormat),
          const SizedBox(height: 24),
          TextField(
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(
              labelText: context.localeKeys.targetSizeMB,
              errorText: valid.value
                  ? null
                  : context.localeKeys.enterATargetSizeGreaterThanZero,
              border: const OutlineInputBorder(),
            ),
            onChanged: (text) {
              final value = double.tryParse(text.replaceAll(',', '.'));
              valid.value = value != null && value.isFinite && value > 0;
            },
          ),
          const SizedBox(height: 24),
          if (Platform.isAndroid)
            BlocSignalBuilder<CompressionCubit, CompressionState>(
              builder: (context, state) => CompressionAdvancedControls(
                preferences: state.preferences,
                sourceShortEdge: 16384,
                onChanged: (value) => unawaited(cubit.setPreferences(value)),
              ),
            ),
          FilledButton(
            onPressed: valid.value
                ? () async {
                    final value = double.parse(
                      controller.text.replaceAll(',', '.'),
                    );
                    await cubit.saveDefaultTarget(value);
                    if (context.mounted) Navigator.of(context).pop();
                  }
                : null,
            child: Text(context.localeKeys.confirm),
          ),
        ],
      ),
    );
  }
}
