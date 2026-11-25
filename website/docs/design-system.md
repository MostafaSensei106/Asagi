# Kuymo web design system v1

## Intent and boundaries

A calm Android video tool, presented through expressive typography and natural interaction inside a precise Retro Japanese editorial frame. The mark and the app itself are unchanged. This is not a Material component port, nor a claim of Japanese origin. The 余白 accent means visual breathing room and stays decorative.

Open `/design-system/` to inspect the actual components, fonts, theme and RTL link. It is deliberately noindex and excluded from the sitemap. Marketing pages currently publish English and Arabic only. Existing legal pages remain in their published English.

## Foundations

Canonical brand colors are imported from `brand/kuymo/tokens.css`. Web semantic roles live in `src/design-system/tokens.css`. Use a semantic role rather than introducing a component hex value.

| Role                  | Light   | Dark / rule                                                    |
| --------------------- | ------- | -------------------------------------------------------------- |
| Paper/canvas          | #F5F1E8 | Existing dark canvas semantic token                            |
| Ink                   | #283D50 | #F5F1E8                                                        |
| Accent/action         | #C64B36 | #FFB5A4 with dark paired text                                  |
| Small accent text     | #A73926 | #FFB5A4; distinct from decorative accent to retain AA on paper |
| Supporting wash       | #E3E8EB | #263B4C                                                        |
| Inverse feature panel | #283D50 | Keeps the same indigo, paired with paper text                  |

The 60/30/10 proportions guide hierarchy, not a pixel quota. One interaction accent; status colors mean status. Never convey a selected state or error by color alone.

Spacing is a 4px scale. Container width is 1280px; viewport gutters are fluid. All CSS lengths used by shared UI should reference the scale or an explicit documented content measure. Default control corner is 4px. Screen captures have phone-shaped frames because they depict the app; this is not a second button/card radius personality. Default action height is 48px, minimum target is 44px. The header floats at a safe-area-aware inset with a dedicated content offset; menus/dialogs use the named layer scale.

## Typography and font delivery

The public aliases match the owner's requested API exactly:

```css
--font-display: var(--font-display-google), var(--font-jp-google), sans-serif;
--font-body: var(--font-body-google), system-ui, sans-serif;
--font-mono: var(--font-mono-google), ui-monospace, monospace;
--font-jp: var(--font-jp-brush-google), var(--font-jp-google), sans-serif;
--font-jp-brush: var(--font-jp-brush-google), var(--font-jp-google), serif;
```

Display = Google Sans Flex; body = Google Sans; mono = Google Sans Code; Japanese = Noto Sans JP; brush = Yuji Boku. Arabic overrides display/body to Noto Sans Arabic, with natural line height and no extra tracking. Brush is only for the short decorative 余白 phrase, not body text.

Display 48–104px, heading 32–68px, title 20–28px, body 16px, secondary 14px, label 12px. Do not shrink the body to fit a translation. Wrap or adapt the layout.

All font resources are local WOFF2. Google Fonts' unicode-range subsets ensure a visitor loads applicable scripts rather than a full CJK family. Yuji Boku is subset to the decorative phrase. `scripts/vendor_fonts.py` is an explicit maintenance action, never a network step during builds. Licenses sit with font assets. `font-display: swap` keeps text available; performance measurement must still check font-related layout movement.

## Component contracts

- `ActionLink`: real href, primary/outline/text variant, optional arrow, standard anchor attributes and class override. It performs navigation, never a pretend button action.
- `StatusBadge`: brief availability/status label, optional quiet treatment. A status is text plus an indicator, not a color-only signal.
- `SectionHeading`: eyebrow, title, optional description/id/slot. It owns consistent section rhythm.
- `ProductHeader`: typed locale and section; real active-route state, native mobile menu, locale counterpart links, theme control. Never hides content behind its fixed frame.
- `AppScreenshot`: typed screenshot metadata, meaningful alt text, Astro-generated WebP/srcset, reserved dimensions, original-image link and local retry feedback.
- `ScreenshotGallery`: actual screenshot collection, explicit language/theme filters, selected aria-pressed state and live count. The native dialog supports Escape, arrows, focus return and unmodified image links without JS.
- Page sections combine these primitives; individual pages select sections rather than doing file reads, URL policy or copy selection in markup.

All common parts expose `data-slot` where appropriate; Astro props and class:list are the project's equivalents of React-only conventions. The stack remains Astro/Tailwind/Lucide. Icons use a consistent line style; no emoji icon set is mixed in.

## Content, launch and images

`domain/product.ts` contains framework-free contracts. `data/` supplies catalog loading, maintained website copy, product claims, launch state and screenshot metadata. `presentation/` owns composition. `scripts/` owns behavior. `locales.ts` remains a compatibility facade.

The active website locale allowlist is EN/AR. The broader ARB catalog remains discoverable for future work; enabling another language also requires complete website-specific copy and editorial review. No public route or hreflang advertises an inactive locale.

The `Launch` union distinguishes prelaunch from live and requires the official Play URL for a live state. `storeUrl` validates the app identifier. Until a listing is verified, the site presents “coming soon”, exploration and release-following. No automatic network poll changes availability.

The screenshot manifest records source, intrinsic dimensions, language, theme, alt key and actual feature. Current images are only welcome screens. Add source PNGs and manifest entries when real captures arrive; do not reuse welcome screenshots under feature-screen captions. Astro optimizes imports. Original URLs come from the asset pipeline and must not be manually prefixed twice under BASE_PATH.

## Motion and feedback

Motion 14 is the only added runtime library. The shared JavaScript module uses `motion/mini` with a restrained spring personality; it introduces no React runtime. Entrance 450ms, low bounce; press 220ms. Content is present and visible before JS. No autoplay, endless ambient animation, parallax or scroll hijacking. Reduced-motion preference disables future animation and completes active entrance animation.

Loading images retain their final geometry. Empty/error/ready examples are visible in the system reference; real marketing sections do not show artificial skeletons or fake success toasts. Failed screenshots provide a local retry while neighboring content remains available. No account, form or backend loading flow is invented for a static site.

## Validation and maintenance

Run format, lint, Astro check/build and Playwright. Cover EN/AR at 375, 768, 1024 and 1440px; light/dark contrast; dialog keyboard/focus; failed image/retry; reduced motion; no-JS links; local fonts; root and subpath deployments. Browser lab performance data lives in the review report with its test conditions, not an unexplained “fast” claim.

Do not change the legal text to resolve a release-state disagreement. Record the discrepancy, verify the release, and keep marketing conservative until evidence exists. Maintain the capabilities audit alongside the product context.

## Owner-editable screenshot catalog and store button

`src/features/product/data/screen-catalog.json` is the complete page inventory. Each entry has an id, category, EN/AR title/subtitle/description, optional image filename and optional Arabic image filename, preview status and source references. Drop an actual image into `src/assets/product/`, then replace `image: null` with its exact filename. `imageAr` optionally supplies an Arabic capture; otherwise the shared image is used. Leave missing images null: the site shows an honest placeholder, not a broken image. Captures are listed once per page; there is no light/dark duplicate gallery. The homepage shows six highlighted entries and links to the full catalog. Category filters preserve the complete no-JS list.

The owner requested a distinct Google Play action even before adding the URL. `playStoreUrl` in `data/product.ts` starts as an empty string. The site renders an explicitly disabled, clearly labelled Coming soon button, never a hidden GitHub redirect. Paste the verified public listing URL into that one field to activate the store action; validation checks the official app ID. GitHub remains a secondary source/releases link.

Decorative brush text is outlined into SVG paths by `scripts/build_brush.py`. It stays decorative and avoids presenting low-contrast letterforms as readable content. The live brush font remains available in the typography reference. The custom 404 has descriptive recovery links and replaces Astro's development-oriented default content.
