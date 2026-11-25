import { expect, test } from '@playwright/test';
import AxeBuilder from '@axe-core/playwright';
import screenCatalog from '../../src/features/product/data/screen-catalog.json' with { type: 'json' };
import { launch, storeUrl } from '../../src/features/product/data/product';

const locales = ['en', 'ar'];
const sections = [
  '',
  'features/',
  'features/target-size/',
  'features/sharing/',
  'features/on-device/',
  'screenshots/',
  'about/',
  'developer/',
  'download/',
];
const base = `/${process.env.BASE_PATH?.replace(/^\/+|\/+$/g, '') ?? ''}`.replace(/\/$/, '');
const path = (locale: string, section = '') =>
  `${base}/${locale === 'en' ? '' : `${locale}/`}${section}`;

test('store link is absent until the official listing is explicitly live', () => {
  expect(storeUrl(launch)).toBeUndefined();
  expect(
    storeUrl({
      status: 'live',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=com.mostafa.sensei.kuymo',
    }),
  ).toContain('com.mostafa.sensei.kuymo');
  expect(() =>
    storeUrl({
      status: 'live',
      playStoreUrl: 'https://play.google.com/store/apps/details?id=other',
    }),
  ).toThrow();
});
for (const locale of locales) {
  test(`${locale}: public pages, accurate launch state and language alternates`, async ({
    page,
    request,
  }) => {
    for (const section of sections) {
      const response = await page.goto(path(locale, section));
      expect(response?.status()).toBe(200);
      await expect(page.locator('html')).toHaveAttribute('lang', locale);
      await expect(page.locator('html')).toHaveAttribute('dir', locale === 'ar' ? 'rtl' : 'ltr');
      await expect(page.locator('h1')).toHaveCount(1);
      await expect(page.locator('h1')).not.toBeEmpty();
      await expect(page.locator('link[rel=alternate][hreflang]')).toHaveCount(3);
      expect(await page.locator('a[href*="play.google.com"]').count()).toBe(0);
    }
    await page.locator('.language-picker summary').click();
    await expect(page.locator('.language-list a')).toHaveCount(2);
    for (const other of ['de', 'ja', 'ar-EG', 'zh-TW'])
      expect((await request.get(`${base}/${other}/`)).status()).toBe(404);
  });
  for (const width of [375, 768, 1024, 1440]) {
    test(`${locale}: responsive layout at ${width}px`, async ({ page }) => {
      await page.setViewportSize({ width, height: 900 });
      await page.emulateMedia({ reducedMotion: 'reduce' });
      await page.goto(path(locale));
      expect(await page.evaluate(() => document.documentElement.scrollWidth <= innerWidth)).toBe(
        true,
      );
      await expect(page.locator('.hero-actions .ds-action').first()).toBeInViewport();
      await page.locator('.gallery-section').scrollIntoViewIfNeeded();
      for (const image of await page.locator('.gallery-grid img').all())
        await image.scrollIntoViewIfNeeded();
      await expect
        .poll(() =>
          page
            .locator('.gallery-grid img')
            .evaluateAll((images) =>
              images.every(
                (image) =>
                  image instanceof HTMLImageElement && image.complete && image.naturalWidth > 0,
              ),
            ),
        )
        .toBe(true);
      const header = await page.locator('.floating-bar').boundingBox();
      expect(header?.y).toBeGreaterThan(0);
    });
  }
  test(`${locale}: light/dark accessibility, gallery keyboard flow and theme persistence`, async ({
    page,
  }) => {
    const errors: string[] = [];
    page.on('pageerror', (error) => errors.push(error.message));
    await page.setViewportSize({ width: 390, height: 844 });
    await page.emulateMedia({ reducedMotion: 'reduce', colorScheme: 'light' });
    await page.goto(path(locale, 'screenshots/'));
    await expect(page.locator('html')).not.toHaveClass(/dark/);
    for (const dark of [false, true]) {
      if (dark) await page.locator('[data-product-theme]').click();
      const report = await new AxeBuilder({ page }).withTags(['wcag2a', 'wcag2aa']).analyze();
      expect(report.violations).toEqual([]);
    }
    await page.reload();
    await expect(page.locator('html')).toHaveClass(/dark/);
    await page.locator('[data-gallery-filter="compression"]').click();
    await expect(page.locator('[data-gallery-item]:visible')).toHaveCount(6);
    await page.locator('[data-gallery-filter="all"]').click();
    await expect(page.locator('[data-gallery-item]:visible')).toHaveCount(40);
    await expect(page.locator('[data-gallery-count]')).toHaveText('40 / 40');
    const first = page.locator('[data-gallery-item]:visible [data-gallery-link]').first();
    await first.click();
    await expect(page.locator('dialog')).toBeVisible();
    await expect(page.locator('[data-dialog-count]')).toHaveText('1 / 2');
    await page.keyboard.press(locale === 'ar' ? 'ArrowLeft' : 'ArrowRight');
    await expect(page.locator('[data-dialog-count]')).toHaveText('2 / 2');
    const dialogReport = await new AxeBuilder({ page }).withTags(['wcag2a', 'wcag2aa']).analyze();
    expect(dialogReport.violations).toEqual([]);
    await page.keyboard.press('Escape');
    await expect(page.locator('dialog')).not.toBeVisible();
    await expect(first).toBeFocused();
    expect(errors).toEqual([]);
  });
}

test('switching language preserves the current feature', async ({ page }) => {
  await page.goto(path('en', 'features/sharing/'));
  await page.locator('.language-picker summary').click();
  await page.locator('.language-list a[lang=ar]').click();
  await expect(page).toHaveURL(/\/ar\/features\/sharing\/?$/);
});

test('illustrative size control stays on the relevant feature page', async ({ page }) => {
  await page.goto(path('en', 'features/target-size/'));
  const slider = page.locator('input[type=range]');
  await slider.focus();
  await page.keyboard.press('Home');
  await expect(page.locator('[data-size-output]')).toHaveText('8 MB');
  await expect(page.locator('.demo-note')).toContainText('illustration');
});

test('image failure is local and the retry action can recover', async ({ page }) => {
  let fail = true;
  await page.route(/home-en-light.*\.webp/, (route) => (fail ? route.abort() : route.continue()));
  await page.goto(path('en', 'screenshots/'));
  const card = page.locator('[data-gallery-item][data-screen-id=home]');
  await card.scrollIntoViewIfNeeded();
  await expect(card.locator('.image-failure')).toBeVisible();
  expect(await page.locator('.image-failure:visible').count()).toBe(1);
  fail = false;
  await card.locator('[data-retry-image]').click();
  await expect
    .poll(() =>
      card
        .locator('img')
        .evaluate((image: HTMLImageElement) => image.complete && image.naturalWidth > 0),
    )
    .toBe(true);
  await expect(card.locator('.image-failure')).not.toBeVisible();
});

test('legal routes survive; internal design system is noindex and outside sitemap', async ({
  page,
  request,
}) => {
  for (const href of ['legal/', 'kuymo/privacy', 'kuymo/terms', 'kuymo/', 'ejary-pro/'])
    expect((await request.get(`${base}/${href}`)).status()).toBe(200);
  await page.goto(`${base}/design-system/`);
  await expect(page.locator('meta[name=robots]')).toHaveAttribute('content', 'noindex, nofollow');
  expect(await (await request.get(`${base}/sitemap-0.xml`)).text()).not.toContain('/design-system');
});

test('core content and image sources remain usable without JavaScript', async ({ browser }) => {
  const context = await browser.newContext({ javaScriptEnabled: false });
  const page = await context.newPage();
  await page.goto(`http://127.0.0.1:4387${path('ar')}`);
  await page.locator('.language-picker summary').click();
  await page.locator('.language-list a[lang=en]').click();
  await expect(page.locator('html')).toHaveAttribute('lang', 'en');
  await page.locator('.hero-actions .ds-action').first().click();
  await expect(page).toHaveURL(/\/screenshots\/?$/);
  await expect(page.locator('[data-gallery-controls]')).not.toBeVisible();
  await expect(page.locator('[data-gallery-item]')).toHaveCount(40);
  expect(await page.locator('[data-gallery-link]').first().getAttribute('href')).toContain('.png');
  await context.close();
});

test('fonts are served locally and the requested families really load', async ({ page }) => {
  const remoteFonts: string[] = [];
  page.on('request', (request) => {
    if (/fonts\.(googleapis|gstatic)\.com/.test(request.url())) remoteFonts.push(request.url());
  });
  await page.goto(path('en'));
  const loaded = await page.evaluate(async () => {
    await document.fonts.load('700 28px "Google Sans Flex"');
    await document.fonts.load('400 16px "Google Sans"');
    await document.fonts.load('400 12px "Google Sans Code"');
    return ['Google Sans Flex', 'Google Sans', 'Google Sans Code'].every((family) =>
      document.fonts.check(`400 16px "${family}"`),
    );
  });
  expect(loaded).toBe(true);
  expect(remoteFonts).toEqual([]);
});

for (const locale of locales) {
  for (const section of ['', 'features/target-size/', 'developer/', 'download/']) {
    test(`${locale}/${section}: shared page patterns meet AA in both themes`, async ({ page }) => {
      await page.setViewportSize({ width: 390, height: 844 });
      await page.emulateMedia({ reducedMotion: 'reduce', colorScheme: 'light' });
      await page.goto(path(locale, section));
      for (const dark of [false, true]) {
        if (dark) await page.locator('[data-product-theme]').click();
        expect(
          (await new AxeBuilder({ page }).withTags(['wcag2a', 'wcag2aa']).analyze()).violations,
        ).toEqual([]);
      }
    });
  }
}

test('screen inventory covers the existing app page files and uses explicit placeholders', async ({
  page,
}) => {
  const { readdirSync } = await import('node:fs');
  const files = readdirSync(new URL('../../../lib/modules/', import.meta.url), {
    recursive: true,
  }) as string[];
  const pages = files
    .filter((file) => file.includes('/pages/') && file.endsWith('_page.dart'))
    .map((file) => `lib/modules/${file}`);
  const covered = new Set(screenCatalog.flatMap((screen) => screen.sources));
  expect(pages.filter((file) => !covered.has(file))).toEqual([]);
  await page.goto(path('en', 'screenshots/'));
  await expect(page.locator('[data-screen-placeholder]')).toHaveCount(38);
  await expect(page.locator('[data-gallery-link]')).toHaveCount(2);
  await expect(page.locator('[data-screen-id=ai-chat] .preview-label')).toBeVisible();
  await page.goto(path('en', 'download/'));
  await expect(page.locator('.launch-actions [data-slot=google-play-action]')).toBeDisabled();
  await expect(page.locator('.launch-actions [data-slot=google-play-action]')).toContainText(
    'Google Play',
  );
});

test('missing pages have descriptive recovery links and no Astro boilerplate', async ({ page }) => {
  const response = await page.goto(`${base}/not-a-kuymo-page/`);
  expect(response?.status()).toBe(404);
  await expect(page.getByRole('link', { name: 'Return to Kuymo home', exact: true })).toBeVisible();
  await expect(page.locator('a[href*="docs.astro.build"]')).toHaveCount(0);
});

test('public links have meaningful names rather than bare generic link text', async ({ page }) => {
  for (const route of ['', 'developer/', 'download/', 'missing-page/']) {
    await page.goto(path('en', route));
    const vague = await page.locator('a').evaluateAll((links) =>
      links
        .filter((link) => {
          const label = (
            link.getAttribute('aria-label') ||
            link.textContent ||
            link.querySelector('img')?.alt ||
            ''
          ).trim();
          return !label || /^(click here|learn more|read more|here|more|link|↗)$/i.test(label);
        })
        .map((link) => link.outerHTML),
    );
    expect(vague).toEqual([]);
  }
});
