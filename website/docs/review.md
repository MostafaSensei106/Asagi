# Kuymo website  design and validation review

26 November 2026. **Score: Pass for the completed website checks.** Owner-supplied screenshot assets and marketing-plan editorial approval remain intentionally pending.

## Scope and evidence

Website-only redesign: foundations, floating navigation, section composition, product copy, page gallery, EN/AR localization, launch presentation and developer information. App implementation and its supported locales were not modified.

- Astro check: 0 errors, 0 warnings, 0 hints.
- Static build: 27 pages, including existing legal routes, internal design-system reference and custom 404.
- Root Playwright run: 30 passed. Subpath `/Kuymo` run: 29 passed before the final additional generic-link audit; the same routing and image pipeline passed.
- Format check, ESLint and `git diff --check` pass.
- EN/AR responsive checks at 375, 768, 1024 and 1440px.
- WCAG AA automated checks on gallery, native dialog, homepage, target-size detail, developer and launch layouts, in light/dark themes.
- Keyboard arrows/Escape/focus return, theme persistence, category filtering, local image failure/retry, reduced motion, no-JS navigation and actual local font loading pass.
- Page-catalog test covers all 40 existing Dart page files. Forty page entries are rendered; home and assistant preview have captures, 38 entries have explicit placeholders.
- Missing pages return 404 with descriptive recovery links; no Astro docs link remains in generated home/404 HTML. Dev toolbar is disabled for consistent development audits.

## Findings resolved

| Finding                                                    | Fix / source                                                                                                                     |
| ---------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| Small vermilion text missed AA on paper                    | Separate accessible small-text token in `src/design-system/tokens.css:16`; decorative/action vermilion remains the brand color   |
| Workflow eyebrow inherited muted text on an inverse panel  | Explicit inverse foreground in `src/features/product/styles/sections.css`                                                        |
| Low-contrast `launch-brush` letterforms flagged as text    | Decorative brush converted to SVG outlines with empty alt; readable typography specimens keep the actual brush font              |
| Generic Astro recovery/documentation link                  | Custom `src/pages/404.astro` with meaningful home, gallery and Arabic recovery actions; development toolbar disabled             |
| Gallery only repeated light/dark welcome captures          | Owner-editable full page inventory, category filters, one image per screen, subtitle/description and honest missing-image states |
| Store action led to GitHub                                 | Separate Google Play control; empty `playStoreUrl` yields an explicitly disabled Coming soon button, never a redirect            |
| Large body-font transfers and Arabic font-swap movement    | Local script subsets, early Arabic font preloads and stable mobile heading space                                                 |
| Source documentation mixed proposals with current behavior | Capability audit distinguishes historical docs.md targets, current Android code, preview AI pages and future Play availability   |

## Measured performance

These are local Chrome lab observations from three fresh contexts per locale. Viewport 390×844; CPU 4× slowdown; simulated 1.6 Mbps down / 0.75 Mbps up / 150ms latency; cache disabled; reduced motion. The collector sums non-input layout shifts and reports LCP; it does not claim field INP or guaranteed real-user results.

| Locale | Median LCP | Median CLS | Maximum observed resource transfer |
| ------ | ---------- | ---------- | ---------------------------------- |
| en     | 1.264s     | 0.0193     | 284 KiB                            |
| ar     | 1.912s     | 0.0000     | 413 KiB                            |

Generated external JavaScript totals approximately **6.2 KiB gzip** in this build. HTML, fonts, styles and images are separate resources. The measured samples meet the LCP ≤2.5s / CLS ≤0.1 design targets under the stated lab conditions. Raw samples and attribution are in [performance.json](previews/performance.json).

## Manual visual review

Reviewed the actual desktop and Arabic-mobile renders and the design-system board. Checked the single hero screen, sharp control frame, floating navigation clearance, actual-versus-placeholder gallery treatment, store button availability, content rhythm, RTL order and light/dark contrast. Phone-shaped image frames are content, while controls retain a consistent sharp radius.

[English desktop](previews/home-en-desktop.png) · [Arabic mobile](previews/home-ar-mobile.png) · [Gallery](previews/gallery-mobile.png) · [Design system](previews/design-system.png).

## Remaining owner inputs

1. Supply real screenshots using [the editing guide](screenshot-editing.md). Preserve page identity and preview labels; do not add a guessed image path before its file exists.
2. Add the verified Google Play URL to `playStoreUrl` when published; until then the clearly marked button is intentionally inactive.
3. Set the real production `SITE_URL` before deployment; the old placeholder origin is not a published address.
4. Review the [marketing plan draft](marketing/final_plan.md), Arabic editorial tone and release-validated AI status. Source-level integration does not itself validate a model/device experience.

No site deployment, campaign publishing, email collection or behavioral tracking was performed. Automated accessibility checks are complemented by the listed visual/keyboard review; they are not a universal accessibility certification.
