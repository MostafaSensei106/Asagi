import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/share_preset.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import 'platform_presets_bar.dart';

/// Interactive Zumi Mascot Feedback Card that explains the algorithmic tuning
/// and warns about quality degradation or infeasible limits.
class ZumiPresetFeedbackCard extends StatelessWidget {
  const ZumiPresetFeedbackCard({
    required this.selectedPresetId,
    required this.presetPlan,
    required this.isLoading,
    super.key,
  });

  final SharePresetId? selectedPresetId;
  final SharePresetPlan? presetPlan;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    if (isLoading) {
      return Card(
        color: scheme.surfaceContainerLow,
        child: const Padding(
          padding: EdgeInsets.all(AppSpacing.medium),
          child: Row(
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              SizedBox(width: AppSpacing.medium),
              Expanded(
                child: Text(
                  '🐾 Zumi يقوم بدراسة خوارزمية المنصة وحساب الميزانية...',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (selectedPresetId == null) {
      // Custom mode
      return Card(
        color: scheme.surfaceContainerLow,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.medium),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(LucideIcons.sliders, size: 20, color: scheme.primary),
              const SizedBox(width: AppSpacing.medium),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'وضع التحكم المخصص',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'أنت تحدد حجم الهدف يدوياً. سيطبق المحرك أقصى دقة وجودة ممكنة داخل هذا السقف.',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    final descriptor = PresetDescriptor.of(selectedPresetId!);
    final plan = presetPlan;

    // Check Zumi expressions based on plan result
    if (plan != null &&
        (plan.plan.isInfeasible ||
            plan.tier == SharePresetTier.unsatisfiable)) {
      // Infeasible
      return Card(
        color: scheme.errorContainer,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.medium),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('🐾', style: TextStyle(fontSize: 22)),
              const SizedBox(width: AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Zumi في حيرة (هدف غير ممكن لسقف ${descriptor.name})',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: scheme.onErrorContainer,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'مدة الفيديو طويلة جداً بحيث لا يمكن استيعابها في سقف ${descriptor.sizeBadge} دون تشويه تام للصورة. ننصح بقص الفيديو أو اختيار منصة أخرى بسقف أعلى.',
                      style: TextStyle(
                        fontSize: 12,
                        color: scheme.onErrorContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (plan != null && plan.tier == SharePresetTier.reducedQuality) {
      // Reduced Quality Warning
      return Card(
        color: Colors.amber.shade900.withValues(alpha: 0.15),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.medium),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('🐾', style: TextStyle(fontSize: 22)),
              const SizedBox(width: AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'تنبيه Zumi: حماية الجودة من التشوّه',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: scheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'حجم ميزانية ${descriptor.name} ضيق بالنسبة للمدة، لذا خفّضنا الدقة إلى ${plan.plan.targetWidth}×${plan.plan.targetHeight} لمنع تشتت البكسلات ولضمان سلاسة العرض.',
                      style: TextStyle(
                        fontSize: 12,
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (plan != null && plan.tier == SharePresetTier.relaxedSize) {
      // Relaxed size
      return Card(
        color: scheme.secondaryContainer.withValues(alpha: 0.7),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.medium),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('🐾', style: TextStyle(fontSize: 22)),
              const SizedBox(width: AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'تعديل السقف لـ ${descriptor.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: scheme.onSecondaryContainer,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'السقف الأساسي ضيق جداً، فتم رفع الهدف تلقائياً إلى ${plan.effectiveTargetMb} MB لتحقيق فيديو واضح ومقبول.',
                      style: TextStyle(
                        fontSize: 12,
                        color: scheme.onSecondaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Exact Match (Happy Zumi)
    return Card(
      color: scheme.surfaceContainerLow,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.medium),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('🐾', style: TextStyle(fontSize: 22)),
            const SizedBox(width: AppSpacing.medium),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'مضبوط لخوارزمية ${descriptor.name}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 1,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'تطابق تام',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    descriptor.description,
                    style: TextStyle(
                      fontSize: 12,
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
