import { readdirSync, readFileSync } from 'node:fs';
import { fileURLToPath } from 'node:url';

import sitemap from '@astrojs/sitemap';
import tailwindcss from '@tailwindcss/vite';
import { defineConfig } from 'astro/config';

/** Origin used for canonical URLs, Open Graph and the sitemap. */
const site = (process.env.SITE_URL ?? 'https://legal.yourdomain.com').replace(/\/+$/, '');

/**
 * Sub-path the site is served from. Keep `/` for a dedicated domain and use
 * `/repository-name` for a GitHub Pages project site.
 */
const base = `/${(process.env.BASE_PATH ?? '').replace(/^\/+|\/+$/g, '')}`.replace(/\/$/, '') || '/';

const contentDirectory = fileURLToPath(new URL('./src/content/legal/', import.meta.url));

/**
 * Collect legal documents marked as drafts so they can be kept out of the
 * sitemap while still being built for preview.
 */
function collectDraftPaths(directory = contentDirectory, prefix = '') {
  const paths = new Set();

  for (const entry of readdirSync(directory, { withFileTypes: true })) {
    if (entry.isDirectory()) {
      for (const nested of collectDraftPaths(`${directory}${entry.name}/`, `${prefix}${entry.name}/`)) {
        paths.add(nested);
      }
      continue;
    }

    if (!entry.name.endsWith('.md')) continue;

    const source = readFileSync(`${directory}${entry.name}`, 'utf8');
    if (/^draft:\s*true$/m.test(source)) {
      paths.add(`${prefix}${entry.name.replace(/\.md$/, '')}`);
    }
  }

  return paths;
}

const draftPaths = collectDraftPaths();

export default defineConfig({
  site,
  base,
  output: 'static',
  trailingSlash: 'ignore',
  build: {
    format: 'directory',
  },
  integrations: [
    sitemap({
      filter: (page) => {
        const pathname = new URL(page).pathname.replace(/\/+$/, '');
        const relative = pathname.replace(base === '/' ? '' : base, '').replace(/^\//, '');

        return relative !== '404' && !draftPaths.has(relative);
      },
    }),
  ],
  markdown: {
    shikiConfig: {
      theme: 'github-light',
    },
  },
  vite: {
    plugins: [tailwindcss()],
  },
});
