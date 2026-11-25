import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

final class PrivacyTelemetrySection extends StatelessWidget {
  const PrivacyTelemetrySection({
    required this.crashReports,
    required this.performanceTelemetry,
    required this.onCrashReportsChanged,
    required this.onPerformanceTelemetryChanged,
    super.key,
  });

  final bool crashReports;
  final bool performanceTelemetry;
  final ValueChanged<bool> onCrashReportsChanged;
  final ValueChanged<bool> onPerformanceTelemetryChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return Column(
      children: [
        ExpressiveSectionHeader(title: l10n.diagnosticsTelemetry),
        ListTileGroup(
          children: [
            ListTileIconComponent.top(
              leading: KuymoIcons.developer,
              title: l10n.anonymousCrashReports,
              subtitle: l10n.crashReportsSummary,
              onTap: () => onCrashReportsChanged(!crashReports),
              onLongPress: () => context.showInfoBottomSheet(
                title: l10n.anonymousCrashReports,
                description: l10n.anonymousCrashReportsDescription,
                icon: KuymoIcons.developer,
                illustrationKind: InfoIllustrationKind.crashReports,
              ),
              trailing: SwitchComponent(
                value: crashReports,
                onChanged: onCrashReportsChanged,
              ),
            ),
            ListTileIconComponent.bottom(
              leading: KuymoIcons.developer,
              title: l10n.encoderPerformanceTelemetry,
              subtitle: l10n.encoderTelemetrySummary,
              onTap: () => onPerformanceTelemetryChanged(!performanceTelemetry),
              onLongPress: () => context.showInfoBottomSheet(
                title: l10n.encoderPerformanceTelemetry,
                description: l10n.encoderPerformanceTelemetryDescription,
                icon: KuymoIcons.developer,
                illustrationKind: InfoIllustrationKind.encoderTelemetry,
              ),
              trailing: SwitchComponent(
                value: performanceTelemetry,
                onChanged: onPerformanceTelemetryChanged,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
