import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/placeholder/app_placeholder_page.dart';

/// Placeholder for the CompressionHistory destination.
///
/// The navigation contract is final; the real screen lands in a later
/// milestone without changing this route or its public constructor.
final class CompressionHistoryPage extends StatelessWidget {
  const CompressionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPlaceholderPage(
      title: context.localeKeys.compressionHistoryTitle,
      description: context.localeKeys.compressionHistoryDescription,
      icon: ZumiIcons.compressionHistory,
    );
  }
}
