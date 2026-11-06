import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/placeholder/app_placeholder_page.dart';

/// Placeholder for the DeleteAccount destination.
///
/// The navigation contract is final; the real screen lands in a later
/// milestone without changing this route or its public constructor.
final class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPlaceholderPage(
      title: context.localeKeys.profileDeleteTitle,
      description: context.localeKeys.profileDeleteDescription,
      icon: ZumiIcons.deleteAccount,
    );
  }
}
