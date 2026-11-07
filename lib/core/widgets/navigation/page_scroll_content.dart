import 'dart:math' as math;

import 'package:material_ui/material_ui.dart';

import '../../constants/design_system/tokens/tokens.dart';
import '../../extensions/extensions.dart';

/// Shared scrolling, subtitle, and insets for application pages.
final class PageScrollContent extends StatelessWidget {
  const PageScrollContent({
    required this.slivers,
    required this.padded,
    this.subtitle,
    this.headerSlivers = const [],
    super.key,
  });

  final List<Widget> headerSlivers;
  final List<Widget> slivers;
  final bool padded;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final contentSlivers = <Widget>[
      if (subtitle != null)
        SliverToBoxAdapter(
          child: Padding(
            padding: padded
                ? const EdgeInsets.only(bottom: AppSpacing.medium)
                : const EdgeInsetsDirectional.fromSTEB(
                    AppSpacing.large,
                    AppSpacing.small,
                    AppSpacing.large,
                    AppSpacing.medium,
                  ),
            child: Text(
              subtitle!,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
      ...slivers,
    ];

    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        ...headerSlivers,
        if (padded)
          SliverPadding(
            padding: EdgeInsetsDirectional.fromSTEB(
              AppSpacing.large,
              AppSpacing.small,
              AppSpacing.large,
              math.max(
                AppSpacing.xxLarge,
                MediaQuery.paddingOf(context).bottom + AppSpacing.medium,
              ),
            ),
            sliver: SliverMainAxisGroup(slivers: contentSlivers),
          )
        else
          ...contentSlivers,
      ],
    );
  }
}
