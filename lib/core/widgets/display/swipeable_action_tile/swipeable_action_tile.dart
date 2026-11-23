// ignore_for_file: discarded_futures

import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

import 'models/swipe_action.dart';
import 'models/swipeable_action_tile_style.dart';

/// A premium, physics-based swipeable tile that reveals actions underneath.
/// Follows Emil design principles for spring animations and momentum scrolling.
class SwipeableActionTile extends HookWidget {
  /// Creates a swipeable action tile.
  const SwipeableActionTile({
    required this.child,
    super.key,
    this.startActions = const [],
    this.endActions = const [],
    this.style = const SwipeableActionTileStyle(),
    this.onSwipeStateChanged,
    this.onTap,
  });

  /// The main content of the tile (e.g. a message row).
  final Widget child;

  /// Callback when the tile itself is tapped (only triggered if not currently swiped open).
  final VoidCallback? onTap;

  /// Actions revealed when swiping left-to-right.
  final List<SwipeAction> startActions;

  /// Actions revealed when swiping right-to-left.
  final List<SwipeAction> endActions;

  /// The style configuration for the tile.
  final SwipeableActionTileStyle style;

  /// Callback when the swipe state changes (true if swiping/opened, false if closed/idle).
  final ValueChanged<bool>? onSwipeStateChanged;

  @override
  Widget build(BuildContext context) {
    final vsync = useSingleTickerProvider();
    final controller = useMemoized(
      () => AnimationController.unbounded(vsync: vsync),
      [vsync],
    );
    useEffect(() => controller.dispose, [controller]);

    final dragOffset = useState(0.0);
    final isTriggerReady = useState(false);

    useEffect(() {
      void onTick() {
        final wasZero = dragOffset.value == 0.0;
        dragOffset.value = controller.value;
        final isZero = dragOffset.value == 0.0;
        if (wasZero != isZero) {
          onSwipeStateChanged?.call(!isZero);
        }
      }

      controller.addListener(onTick);
      return () => controller.removeListener(onTick);
    }, [controller]);

    double actionsWidth(List<SwipeAction> actions) {
      if (actions.isEmpty) return 0.0;
      final buttonSize = style.actionButtonSize;
      return actions.length * (buttonSize + 6.0) + 6.0;
    }

    void runSpringSimulation(double velocity, double target) {
      final simulation = SpringSimulation(
        style.springDescription,
        dragOffset.value,
        target,
        velocity,
      );
      controller.animateWith(simulation).then((_) {
        if (target == 0.0 && context.mounted) {
          dragOffset.value = 0.0;
          controller.value = 0.0;
          isTriggerReady.value = false;
          onSwipeStateChanged?.call(false);
        }
      });
    }

    void close() {
      if (style.enableHaptics) {
        HapticFeedback.lightImpact();
      }
      runSpringSimulation(0, 0);
    }

    void onHorizontalDragStart(DragStartDetails details) {
      if (controller.isAnimating) {
        controller.stop();
      }
      onSwipeStateChanged?.call(true);
    }

    void onHorizontalDragUpdate(DragUpdateDetails details) {
      final wasZero = dragOffset.value == 0.0;
      var delta = details.delta.dx;
      final maxStartOffset = actionsWidth(startActions);
      final minEndOffset = -actionsWidth(endActions);

      if (dragOffset.value > 0 && startActions.isEmpty) {
        delta *= 0.1;
      } else if (dragOffset.value < 0 && endActions.isEmpty) {
        delta *= 0.1;
      } else if (dragOffset.value > maxStartOffset && delta > 0) {
        final overscroll = dragOffset.value - maxStartOffset;
        delta *= (1.0 / (1.0 + overscroll * 0.05));
      } else if (dragOffset.value < minEndOffset && delta < 0) {
        final overscroll = minEndOffset - dragOffset.value;
        delta *= (1.0 / (1.0 + overscroll * 0.05));
      }

      dragOffset.value += delta;

      final isZero = dragOffset.value == 0.0;
      if (wasZero != isZero) {
        onSwipeStateChanged?.call(!isZero);
      }

      // Check if we swiped past the trigger threshold (actions width + 60px)
      final absDrag = dragOffset.value.abs();
      final width = actionsWidth(
        dragOffset.value > 0 ? startActions : endActions,
      );
      final threshold = width + 60.0;
      final isReady = absDrag > threshold;

      if (isReady != isTriggerReady.value) {
        isTriggerReady.value = isReady;
        if (isReady && style.enableHaptics) {
          HapticFeedback.vibrate(); // Dynamic haptic tick when trigger is active
        }
      }
    }

    void onHorizontalDragEnd(DragEndDetails details) {
      final velocity = details.velocity.pixelsPerSecond.dx;

      final maxStartOffset = actionsWidth(startActions);
      final minEndOffset = -actionsWidth(endActions);

      if (isTriggerReady.value) {
        // Swipe-to-trigger activated
        final primaryAction = dragOffset.value > 0
            ? startActions.first
            : endActions.last;

        primaryAction.onTap();
        close();
        isTriggerReady.value = false;
        return;
      }

      var targetOffset = 0.0;

      if (dragOffset.value > 0 && startActions.isNotEmpty) {
        if (velocity > 500 ||
            dragOffset.value > maxStartOffset * style.swipeThreshold) {
          targetOffset = maxStartOffset;
        }
      } else if (dragOffset.value < 0 && endActions.isNotEmpty) {
        if (velocity < -500 ||
            dragOffset.value < minEndOffset * style.swipeThreshold) {
          targetOffset = minEndOffset;
        }
      }

      if (targetOffset != 0 && style.enableHaptics) {
        HapticFeedback.lightImpact();
      }

      runSpringSimulation(velocity, targetOffset);
    }

    Widget buildAction(SwipeAction action, int index, bool isStartAction) {
      final buttonSize = style.actionButtonSize;

      // Determine exposure order
      final exposureIndex = isStartAction
          ? index
          : (endActions.length - 1) - index;

      // Introduce a delay threshold so actions only start appearing after slot is partially uncovered
      final startOffset = exposureIndex * (buttonSize + 6.0) + 16.0;
      final revealRange = buttonSize - 12.0; // Faster popping range (36px)

      // Calculate progress (0.0 to 1.0) based on drag offset
      var progress = 0.0;
      if (isStartAction) {
        if (dragOffset.value > 0) {
          progress = ((dragOffset.value - startOffset) / revealRange).clamp(
            0.0,
            1.0,
          );
        }
      } else {
        if (dragOffset.value < 0) {
          final absDrag = dragOffset.value.abs();
          progress = ((absDrag - startOffset) / revealRange).clamp(0.0, 1.0);
        }
      }

      // Apply a subtle ease-out curve so it pops in smoothly
      final curvedProgress = Curves.easeOut.transform(progress);

      // Calculate overscroll stretching / full trigger size
      final isExpanding = isStartAction
          ? index == 0
          : index == endActions.length - 1;

      var dynamicWidth = buttonSize;
      final absDrag = dragOffset.value.abs();

      // Calculate the physical space available for this button to prevent overlap
      // Accounts for the 6.0px padding on the outer edge of the button
      final buttonEdge = exposureIndex * (buttonSize + 6.0) + 6.0;
      final availableSpace = absDrag - buttonEdge - 6.0;
      final maxAllowedWidth = availableSpace.clamp(0.0, buttonSize);

      if (isExpanding) {
        if (isTriggerReady.value) {
          dynamicWidth = absDrag - 12.0; // Fills the entire drag area
        } else {
          final maxOffset = actionsWidth(
            isStartAction ? startActions : endActions,
          );
          if (absDrag > maxOffset) {
            dynamicWidth = buttonSize + (absDrag - maxOffset);
          } else {
            dynamicWidth = (curvedProgress * buttonSize).clamp(
              0.0,
              maxAllowedWidth,
            );
          }
        }
      } else {
        // Non-expanding buttons shrink to width 0 when trigger is active
        dynamicWidth = isTriggerReady.value
            ? 0.0
            : (curvedProgress * buttonSize).clamp(0.0, maxAllowedWidth);
      }

      final dynamicHeight =
          (isExpanding && isTriggerReady.value) ||
              (isExpanding &&
                  absDrag >
                      actionsWidth(isStartAction ? startActions : endActions))
          ? buttonSize
          : dynamicWidth;

      final currentRadius =
          (isExpanding && isTriggerReady.value) ||
              (isExpanding &&
                  absDrag >
                      actionsWidth(isStartAction ? startActions : endActions))
          ? buttonSize / 2
          : dynamicWidth / 2;

      return Semantics(
        button: true,
        label: action.label,
        onTap: () {
          action.onTap();
          close();
        },
        child: GestureDetector(
          onTap: () {
            action.onTap();
            close();
          },
          behavior: HitTestBehavior.opaque,
          child: Opacity(
            opacity: isTriggerReady.value && !isExpanding
                ? 0.0
                : curvedProgress,
            child: Container(
              width: dynamicWidth,
              height: dynamicHeight,
              decoration: BoxDecoration(
                color: action.backgroundColor,
                borderRadius: BorderRadius.circular(currentRadius),
              ),
              alignment: isTriggerReady.value && isExpanding
                  ? (isStartAction
                        ? Alignment.centerRight
                        : Alignment.centerLeft)
                  : Alignment.center,
              padding: isTriggerReady.value && isExpanding
                  ? (isStartAction
                        ? const EdgeInsets.only(right: 20.0)
                        : const EdgeInsets.only(left: 20.0))
                  : EdgeInsets.zero,
              child: dynamicWidth < 16.0
                  ? const SizedBox.shrink()
                  : SizedBox(
                      width: dynamicWidth * 0.5,
                      height: dynamicHeight * 0.5,
                      child: FittedBox(child: action.icon),
                    ),
            ),
          ),
        ),
      );
    }

    // Interpolate cornerRadius and shadow based on drag distance
    final dragProgress = (dragOffset.value.abs() / 16.0).clamp(0.0, 1.0);
    final currentRadius = style.cornerRadius * dragProgress;

    final currentShadow = style.tileShadow?.map((shadow) {
      return BoxShadow(
        color: shadow.color.withValues(alpha: shadow.color.a * dragProgress),
        blurRadius: shadow.blurRadius,
        spreadRadius: shadow.spreadRadius,
        offset: shadow.offset * dragProgress,
      );
    }).toList();

    // Interpolate card background color
    final idleColor = style.idleCardColor;
    final Color currentColor;
    if (idleColor != null) {
      currentColor = Color.lerp(idleColor, style.cardColor, dragProgress)!;
    } else {
      currentColor = style.cardColor;
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Background Actions
        Positioned.fill(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Row(
              children: [
                // Start actions (left to right) - only rendered when swiping right
                if (dragOffset.value > 0 && startActions.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Row(
                      children: startActions.asMap().entries.map((entry) {
                        final isExpanding = entry.key == 0;
                        return Container(
                          padding: EdgeInsets.only(
                            right: isTriggerReady.value && !isExpanding
                                ? 0.0
                                : 6.0,
                          ),
                          child: buildAction(entry.value, entry.key, true),
                        );
                      }).toList(),
                    ),
                  ),
                const Spacer(),
                // End actions (left to right on the right side) - only rendered when swiping left
                if (dragOffset.value < 0 && endActions.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Row(
                      children: endActions.asMap().entries.map((entry) {
                        final isExpanding = entry.key == endActions.length - 1;
                        return Container(
                          padding: EdgeInsets.only(
                            left: isTriggerReady.value && !isExpanding
                                ? 0.0
                                : 6.0,
                          ),
                          child: buildAction(entry.value, entry.key, false),
                        );
                      }).toList(),
                    ),
                  ),
              ],
            ),
          ),
        ),
        // Foreground child
        Transform.translate(
          offset: Offset(dragOffset.value, 0),
          child: GestureDetector(
            onHorizontalDragStart: onHorizontalDragStart,
            onHorizontalDragUpdate: onHorizontalDragUpdate,
            onHorizontalDragEnd: onHorizontalDragEnd,
            onTap: () {
              if (dragOffset.value != 0) {
                close();
              } else if (onTap != null) {
                if (style.enableHaptics) {
                  HapticFeedback.lightImpact();
                }
                onTap!();
              }
            },
            behavior: HitTestBehavior.opaque,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(currentRadius),
                boxShadow: currentShadow,
                color: currentColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(currentRadius),
                child: child,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
