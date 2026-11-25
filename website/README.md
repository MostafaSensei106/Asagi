# Kuymo product website

Astro product site with an Expressive × Retro Japanese design system, real app
screenshots and a floating navbar. The website is currently **English and Arabic
only**; the application's other locales are unchanged. Google Play is coming
soon; the site does not imply an available store download.

## Run and verify

Use Node >=22.12 and pnpm 10.34.9 (pinned in package.json):

```sh
pnpm install --frozen-lockfile
pnpm dev
pnpm verify
pnpm test:e2e
```

If pnpm is not on PATH, use `npx --yes pnpm@10.34.9` in its place. Browser tests
use local Chrome at `/opt/google/chrome/chrome` if available; otherwise install
Playwright Chromium with `pnpm test:e2e:install`.

```sh
BASE_PATH=/Kuymo pnpm build
BASE_PATH=/Kuymo pnpm exec playwright test
```

Set `SITE_URL` to the real origin before deployment. The old placeholder origin
has deliberately not been replaced with an invented domain. No deployment or
external campaign is part of this change.

## Product routes

English lives at `/`; Arabic at `/ar/`. Each has features, three feature detail
pages, screenshots, about, developer and download pages. The language picker
preserves the current section. Existing `/kuymo/privacy`, `/kuymo/terms`, app
indexes and `/legal/` remain available in their published language.

`/design-system/` is a noindex component/foundation reference, excluded from the
sitemap. It shares actual production components rather than a separate mock UI.

## Responsibility boundaries

- `src/design-system/`: semantic tokens and shared motion personality.
- `src/components/site/`: reusable site primitives.
- `src/features/product/domain/`: framework-free product and image contracts.
- `src/features/product/data/`: product/launch policy, ARB catalogs, EN/AR copy,
  and screenshot manifest. The active locale allowlist is explicit.
- `src/features/product/presentation/`: independently composable page sections.
- `src/features/product/scripts/`: theme, menu and gallery behavior.
- `src/features/product/styles/`: focused navigation, layout, gallery and demo styles.

Application ARBs are read via a build-time glob. Locale availability is broader
than the active website list; adding a language requires complete website copy
and review, not just a new dropdown option. Marketing claims do not depend on
app settings copy being suitable as advertising language.

## Assets, fonts and launch

The screenshot manifest imports source PNGs from `src/assets/product/`. Astro
emits WebP/srcset and preserves original image links. Current images represent the welcome screen and an AI preview. The gallery has 40 page entries, one image per page, and clear placeholders for missing images. Add real source
images and metadata to expand the gallery; do not fabricate feature captures.

Fonts are self-hosted WOFF2 with unicode-range subsets. To intentionally refresh
them, run `python3 scripts/vendor_fonts.py`; this is not a build/network hook.
Google Fonts OFL files and existing font licenses are retained. Visitors make no
Google Fonts requests. The brush font is subset to the decorative 余白 phrase.

`data/product.ts` contains the single editable `playStoreUrl` field. Paste the
verified official listing URL there when ready; leave it empty for the explicit
Coming soon button. The URL validator requires the Kuymo app
ID. Before that, the primary action explores screenshots and the secondary
path follows releases. No email signup, tracking, fake ratings or pricing tiers
are introduced.

## Reference and review

- [Design-system guide](docs/design-system.md)
- [Capability/claim audit](docs/capabilities-audit.md)
- [إضافة الصور ورابط Google Play](docs/screenshot-editing.md)
- [Marketing context](docs/marketing/product-marketing-context.md)
- [12-month marketing plan  draft](docs/marketing/final_plan.md)
- [Ethical choice architecture](docs/marketing/persuasion.md)

For visual/performance review against a running preview:

```sh
node scripts/review-site.mjs
```

`REVIEW_ORIGIN` defaults to `http://127.0.0.1:4388`; `BASE_PATH` is supported.
The script writes screenshots and measured browser-lab data to `docs/previews/`.
Read the report's conditions before interpreting a metric; these are local lab
observations, not field INP or a guaranteed mobile-network result.

## GitHub Pages deployment

The workflow is at **`.github/workflows/deploy-website.yml` in the repository
root**. It runs on relevant pushes to `main` and can also be started manually
from Actions. Manual runs from other branches build but do not publish.

One-time setup on GitHub: **Settings → Pages → Build and deployment → Source →
GitHub Actions**. Then push the workflow and website files to `main`, or run
“Deploy Kuymo website to GitHub Pages” from the Actions tab.

The workflow uses Node 24, the pnpm version pinned in `website/package.json`,
locked dependency installation, format/lint/type checks and an Astro static
build. It uploads only `website/dist` and publishes through the `github-pages`
environment using the normal repository token; no personal token is required.

`SITE_URL` and `BASE_PATH` come from GitHub's `configure-pages` outputs, so the
actual repository name (currently `Zumi` in the local origin), user-site hosting
or a configured custom domain is handled without hardcoding `/Kuymo/`. For the
current project-site layout the expected address is
`https://mostafasensei106.github.io/Zumi/`; the deployed URL is shown on the
workflow's deployment summary. This change creates the workflow locally; it does
not itself push commits or trigger a remote deployment.

Reference: [GitHub's Pages deployment setup](https://docs.github.com/en/get-started/start-your-journey/deploying-your-website-automatically).
