import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/app_metadata.dart';

final class LicensesPage extends StatelessWidget {
  const LicensesPage({super.key});

  @override
  Widget build(BuildContext context) =>
      const LicensePage(applicationName: AppMetadata.name);
}
