import { readdirSync } from 'node:fs';
import { expect, test } from '@playwright/test';
import AxeBuilder from '@axe-core/playwright';

const locales = readdirSync(new URL('../../../lib/l10n/', import.meta.url))
  .filter((file) => /^app_[a-z]{2}(?:_[A-Z]{2})?\.arb$/.test(file))
  .map((file) => file.slice(4, -4).replace('_', '-'));
const base = `/${process.env.BASE_PATH?.replace(/^\/+|\/+$/g, '') ?? ''}`.replace(/\/$/, '');
const path = (locale: string, section = '') =>
  `${base}/${locale === 'en' ? '' : `${locale}/`}${section}`;

for (const locale of locales) {
  test(`${locale}: app locale has complete product pages and matching alternates`, async ({
    page,
    request,
  }) => {
    const response = await page.goto(path(locale));
    expect(response?.status()).toBe(200);
    await expect(page.locator('html')).toHaveAttribute('lang', locale);
    await expect(page.locator('html')).toHaveAttribute(
      'dir',
      locale.startsWith('ar') ? 'rtl' : 'ltr',
    );
    await expect(page.locator('h1')).not.toBeEmpty();
    await expect(page.locator('link[rel=alternate][hreflang]')).toHaveCount(locales.length + 1);
    await page.locator('.language-picker summary').click();
    await expect(page.locator('.language-list a')).toHaveCount(locales.length);
    for (const section of [
      'features/',
      'features/target-size/',
      'features/sharing/',
      'features/on-device/',
      'download/',
    ]) {
      const result = await request.get(path(locale, section));
      expect(result.status(), `${locale}/${section}`).toBe(200);
    }
  });
}

for (const locale of ['en', 'ar', 'ja', 'zh-TW']) {
  test(`${locale}: mobile layout, dark mode, slider, accessibility`, async ({ page }) => {
    await page.setViewportSize({ width: 390, height: 844 });
    await page.emulateMedia({ reducedMotion: 'reduce', colorScheme: 'light' });
    const errors: string[] = [];
    page.on('pageerror', (error) => errors.push(error.message));
    await page.goto(path(locale));
    await expect(page.locator('html')).not.toHaveClass(/dark/);
    await page.locator('[data-product-theme]').click();
    await expect(page.locator('html')).toHaveClass(/dark/);
    await page.reload();
    await expect(page.locator('html')).toHaveClass(/dark/);
    await page.locator('[data-product-theme]').click();
    const slider = page.locator('input[type=range]');
    await slider.focus();
    await page.keyboard.press('Home');
    await expect(page.locator('[data-size-output]')).toHaveText('8 MB');
    expect(await page.evaluate(() => document.documentElement.scrollWidth <= innerWidth)).toBe(
      true,
    );
    expect(await page.locator('.will-reveal').count()).toBe(0);
    await page.locator('.screen-stack').scrollIntoViewIfNeeded();
    await expect
      .poll(() =>
        page
          .locator('img')
          .evaluateAll((images) =>
            images.every(
              (image) =>
                image instanceof HTMLImageElement && image.complete && image.naturalWidth > 0,
            ),
          ),
      )
      .toBe(true);
    const light = await new AxeBuilder({ page }).withTags(['wcag2a', 'wcag2aa']).analyze();
    expect(light.violations).toEqual([]);
    await page.locator('[data-product-theme]').click();
    const dark = await new AxeBuilder({ page }).withTags(['wcag2a', 'wcag2aa']).analyze();
    expect(dark.violations).toEqual([]);
    expect(errors).toEqual([]);
  });
}

test('language selection keeps the feature and legal links resolve', async ({ page, request }) => {
  await page.goto(path('en', 'features/sharing/'));
  await page.locator('.language-picker summary').click();
  await page.locator('.language-list a[lang=ja]').click();
  await expect(page).toHaveURL(new RegExp('/ja/features/sharing/?$'));
  for (const href of [
    `${base}/legal/`,
    `${base}/kuymo/privacy`,
    `${base}/kuymo/terms`,
    `${base}/kuymo/`,
    `${base}/ejary-pro/`,
  ]) {
    expect((await request.get(href)).status()).toBe(200);
  }
});

test('product content and navigation work without JavaScript', async ({ browser }) => {
  const context = await browser.newContext({ javaScriptEnabled: false });
  const page = await context.newPage();
  const origin = 'http://127.0.0.1:4387';
  await page.goto(`${origin}${path('ar')}`);
  await expect(page.locator('h1')).not.toBeEmpty();
  await page.locator('.language-picker summary').click();
  await page.locator('.language-list a[lang=ja]').click();
  await expect(page.locator('html')).toHaveAttribute('lang', 'ja');
  await page.locator('.hero-actions .product-button').click();
  await expect(page).toHaveURL(/\/ja\/download\/?$/);
  await expect(page.locator('a[href$="/Kuymo/releases"]')).toBeVisible();
  await context.close();
});
