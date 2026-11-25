import { expect, test } from '@playwright/test';
import AxeBuilder from '@axe-core/playwright';

const base = `/${process.env.BASE_PATH?.replace(/^\/+|\/+$/g, '') ?? ''}`.replace(/\/$/, '');

for (const documentId of ['privacy', 'terms']) {
  test(`${documentId}: product chrome, accessible reading, contents and print`, async ({
    page,
  }) => {
    await page.setViewportSize({ width: 390, height: 844 });
    await page.emulateMedia({ reducedMotion: 'reduce', colorScheme: 'light' });
    await page.goto(`${base}/kuymo/${documentId}/`);
    await expect(page.locator('.floating-header')).toBeVisible();
    await expect(page.locator('.site-footer')).toHaveCount(1);
    await expect(page.locator('html')).toHaveAttribute('lang', 'en');
    await expect(page.locator('link[rel=alternate][hreflang]')).toHaveCount(0);
    await expect(page.locator('meta[property="og:type"]')).toHaveAttribute('content', 'article');
    await expect(page.locator('.document-meta time')).toHaveCount(2);
    await expect(page.locator('.legal-prose h2').first()).toBeVisible();
    for (const dark of [false, true]) {
      if (dark) await page.locator('[data-product-theme]').click();
      expect(
        (await new AxeBuilder({ page }).withTags(['wcag2a', 'wcag2aa']).analyze()).violations,
      ).toEqual([]);
    }
    for (const width of [375, 1440]) {
      await page.setViewportSize({ width, height: 900 });
      expect(await page.evaluate(() => document.documentElement.scrollWidth <= innerWidth)).toBe(
        true,
      );
    }
    const anchor = page.locator('.document-toc a').first();
    const id = (await anchor.getAttribute('href'))!.slice(1);
    await anchor.click();
    const top = await page
      .locator(`[id="${id}"]`)
      .evaluate((heading) => heading.getBoundingClientRect().top);
    expect(top).toBeGreaterThanOrEqual(100);
    await page.evaluate(() => {
      window.print = () => document.body.setAttribute('data-printed', 'true');
    });
    await page.locator('[data-print-document]').click();
    await expect(page.locator('body')).toHaveAttribute('data-printed', 'true');
    await page.emulateMedia({ media: 'print' });
    await expect(page.locator('.floating-header')).not.toBeVisible();
    await expect(page.locator('.legal-prose')).toBeVisible();
    await page.emulateMedia({ media: 'screen' });
    await page.locator('.language-picker summary').click();
    await expect(page.locator('.language-list a[lang=en]')).toHaveAttribute(
      'href',
      `${base}/kuymo/${documentId}`,
    );
    await page.locator('.language-list a[lang=ar]').click();
    await expect(page.locator('html')).toHaveAttribute('lang', 'ar');
    await expect(page.locator('html')).toHaveClass(/dark/);
  });
}

test('legal directories share the product shell and draft documents remain unindexed', async ({
  page,
}) => {
  for (const route of ['legal/', 'kuymo/', 'ejary-pro/privacy/']) {
    await page.goto(`${base}/${route}`);
    await expect(page.locator('.floating-header')).toBeVisible();
    await expect(page.locator('h1')).toHaveCount(1);
    expect(
      (await new AxeBuilder({ page }).withTags(['wcag2a', 'wcag2aa']).analyze()).violations,
    ).toEqual([]);
  }
  await expect(page.locator('meta[name=robots]')).toHaveAttribute('content', 'noindex, nofollow');
  await expect(page.locator('.legal-draft')).toContainText('not in force');
});
