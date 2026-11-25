# Kuymo product website

Static Astro site with product, feature and download pages. Existing legal URLs
remain available at `/kuymo/privacy`, `/kuymo/terms` and the app indexes; `/legal/`
is the legal directory. Legal documents remain in their published language.

## Languages

`src/features/product/locales.ts` reads every base and regional ARB in
`../lib/l10n` at build time. English lives at `/`; other locales use BCP 47 paths
such as `/ar-EG/` and `/zh-TW/`. Each locale has the same six product routes.
The language picker preserves the current route. Canonical and alternate links
respect `BASE_PATH`; English is the x-default locale.

Product labels come from merged base/regional app catalogs. Website-specific
marketing copy lives in `copy.ts`, and missing app messages are translated in
`messages.ts`. New languages require both catalogs; a missing translation fails
the build rather than silently presenting an English page. Regional variants
inherit their language's marketing copy, with Brazilian Portuguese and
Traditional Chinese overrides. Native-speaker editorial review is recommended.
App captures are English and Arabic and are illustrations of the actual UI.

## Develop and verify

Use Node >=22.12 and the pinned pnpm version in package.json:

```sh
pnpm install --frozen-lockfile
pnpm dev
pnpm verify
pnpm test:e2e
```

The browser suite uses the installed Chrome at `/opt/google/chrome/chrome` when
present; otherwise install Playwright Chromium with `pnpm test:e2e:install`.
Tests cover every locale/feature route, locale-preserving navigation, existing
legal links, mobile overflow, loaded images, the illustrative size slider,
theme persistence, reduced motion and light/dark WCAG AA checks.

```sh
BASE_PATH=/Kuymo pnpm build
BASE_PATH=/Kuymo pnpm exec playwright test
```

Set `SITE_URL` to the final origin at deployment. The repository's existing
placeholder origin is retained until a real deployment domain is chosen.
No site has been deployed by this change. Compression never runs in the website;
the interactive preview is explicitly labelled as an illustration.

## Brand assets

Run `python3 tool/refresh_brand_delivery.py` from the app root after regenerating
identity masters and Flutter captures. See `../brand/kuymo/README.md` for the full
sequence. This refreshes favicons, social artwork and screenshots without
recreating removed Flutter web assets.
