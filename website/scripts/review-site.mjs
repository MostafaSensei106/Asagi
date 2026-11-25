import { chromium } from '@playwright/test';
import { existsSync, mkdirSync, writeFileSync } from 'node:fs';
import { fileURLToPath } from 'node:url';
import { gzipSync } from 'node:zlib';
import { readdirSync, readFileSync } from 'node:fs';

const root = fileURLToPath(new URL('../', import.meta.url));
const output = `${root}docs/previews`;
mkdirSync(output, { recursive: true });
const origin = process.env.REVIEW_ORIGIN ?? 'http://127.0.0.1:4388';
const base = (process.env.BASE_PATH ?? '').replace(/^\/+|\/+$/g, '');
const url = (route = '') => `${origin}/${base ? `${base}/` : ''}${route}`;
const browser = await chromium.launch({
  ...(existsSync('/opt/google/chrome/chrome')
    ? { executablePath: '/opt/google/chrome/chrome' }
    : {}),
  args: ['--no-sandbox'],
});
const page = await browser.newPage({
  viewport: { width: 1440, height: 1000 },
  reducedMotion: 'reduce',
  colorScheme: 'light',
});
const captures = [
  ['home-en-desktop', '', 1440, 'light'],
  ['home-ar-desktop', 'ar/', 1440, 'light'],
  ['home-en-mobile', '', 390, 'light'],
  ['home-ar-mobile', 'ar/', 390, 'light'],
  ['home-en-dark', '', 1440, 'dark'],
  ['gallery-mobile', 'screenshots/', 390, 'light'],
  ['design-system', 'design-system/', 1440, 'light'],
];
for (const [name, route, width, theme] of captures) {
  await page.setViewportSize({ width, height: 1000 });
  await page.emulateMedia({ colorScheme: theme });
  await page.goto(url(route));
  await page.evaluate(() => localStorage.removeItem('kuymo-theme'));
  await page.reload();
  // Native lazy images load when scrolled into view, not merely on a full-page shot.
  for (const image of await page.locator('main img').all()) {
    await image.scrollIntoViewIfNeeded();
    await image.evaluate((node) => node.decode().catch(() => {}));
  }
  await page.evaluate(() => document.fonts.ready);
  await page.evaluate(() => scrollTo(0, 0));
  await page.screenshot({ path: `${output}/${name}.png`, fullPage: true });
}
const measurements = [];
for (const route of ['', 'ar/']) {
  for (let run = 1; run <= 3; run++) {
    const context = await browser.newContext({
      viewport: { width: 390, height: 844 },
      reducedMotion: 'reduce',
      colorScheme: 'light',
    });
    const sample = await context.newPage();
    const session = await context.newCDPSession(sample);
    await session.send('Network.enable');
    await session.send('Network.setCacheDisabled', { cacheDisabled: true });
    await session.send('Network.emulateNetworkConditions', {
      offline: false,
      latency: 150,
      downloadThroughput: 1_600_000 / 8,
      uploadThroughput: 750_000 / 8,
    });
    await session.send('Emulation.setCPUThrottlingRate', { rate: 4 });
    await sample.addInitScript(() => {
      window.__kuymoMetrics = { lcp: 0, cls: 0, shifts: [] };
      new PerformanceObserver((list) => {
        for (const entry of list.getEntries()) window.__kuymoMetrics.lcp = entry.startTime;
      }).observe({ type: 'largest-contentful-paint', buffered: true });
      new PerformanceObserver((list) => {
        for (const entry of list.getEntries())
          if (!entry.hadRecentInput) {
            window.__kuymoMetrics.cls += entry.value;
            window.__kuymoMetrics.shifts.push({
              value: entry.value,
              time: entry.startTime,
              sources: entry.sources.map(
                (source) => source.node?.className || source.node?.nodeName,
              ),
            });
          }
      }).observe({ type: 'layout-shift', buffered: true });
    });
    await sample.goto(url(route), { waitUntil: 'networkidle' });
    await sample.evaluate(() => document.fonts.ready);
    const metrics = await sample.evaluate(() => ({
      ...window.__kuymoMetrics,
      fonts: document.fonts.status,
      transferred: performance
        .getEntriesByType('resource')
        .reduce((total, entry) => total + entry.transferSize, 0),
    }));
    measurements.push({ locale: route ? 'ar' : 'en', run, ...metrics });
    await context.close();
  }
}
const assets = `${root}dist/_astro`;
const scripts = readdirSync(assets)
  .filter((name) => name.endsWith('.js'))
  .map((name) => {
    const source = readFileSync(`${assets}/${name}`);
    return { name, bytes: source.length, gzipBytes: gzipSync(source).length };
  });
writeFileSync(
  `${output}/performance.json`,
  JSON.stringify(
    {
      date: new Date().toISOString(),
      conditions: {
        origin,
        path: base || '/',
        viewport: '390×844',
        cpu: '4× slowdown',
        connection: '1.6 Mbps down / 0.75 Mbps up / 150ms latency',
        cache: 'disabled; fresh context per sample',
        motion: 'reduced',
        runsPerLocale: 3,
      },
      measurements,
      scripts,
      limitations:
        'Local browser-lab LCP/CLS, not field Core Web Vitals. No field INP is claimed. Layout shifts summed without recent input; inspect traces for further attribution.',
    },
    null,
    2,
  ),
);
await browser.close();
console.log(`Review captures and measured lab data written to ${output}`);
