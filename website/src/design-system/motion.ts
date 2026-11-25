import { animate } from 'motion/mini';
import { spring } from 'motion';

/** One expressive spring personality. Content is always visible without JS. */
export const motionTokens = {
  entrance: { type: spring, duration: 0.45, bounce: 0.12 },
  press: { type: spring, duration: 0.22, bounce: 0.08 },
};
export function initMotion(): void {
  const reduced = matchMedia('(prefers-reduced-motion: reduce)');
  if (reduced.matches) return;
  const animations = new Set<ReturnType<typeof animate>>();
  const reveal = (node: Element) => {
    const animation = animate(
      node,
      { opacity: [0.7, 1], transform: ['translateY(12px)', 'translateY(0)'] },
      motionTokens.entrance,
    );
    animations.add(animation);
    void animation.then(() => animations.delete(animation));
  };
  const observer = new IntersectionObserver(
    (entries) =>
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          reveal(entry.target);
          observer.unobserve(entry.target);
        }
      }),
    { threshold: 0.08 },
  );
  document.querySelectorAll('[data-reveal]').forEach((node) => observer.observe(node));
  document.querySelectorAll<HTMLElement>('.ds-action, .icon-button').forEach((node) => {
    const reset = () => {
      if (!reduced.matches) animate(node, { transform: 'scale(1)' }, motionTokens.press);
    };
    node.addEventListener('pointerdown', () => {
      if (!reduced.matches) animate(node, { transform: 'scale(.97)' }, motionTokens.press);
    });
    node.addEventListener('pointerup', reset);
    node.addEventListener('pointercancel', reset);
    node.addEventListener('pointerleave', reset);
  });
  reduced.addEventListener('change', () => {
    if (reduced.matches) {
      observer.disconnect();
      animations.forEach((animation) => animation.complete());
    }
  });
}
