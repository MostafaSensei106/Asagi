import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';

class MaintenanceModePage extends StatelessWidget {
  const MaintenanceModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.build, size: 80, color: Colors.orange),
              const SizedBox(height: 24),
              Text(
                context.localeKeys.maintenanceInProgress,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                context
                    .localeKeys
                    .zumiIsTemporarilyUnavailablePleaseTryAgainLater,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
