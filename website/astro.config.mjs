import { existsSync, readdirSync, readFileSync } from 'node:fs';
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
const base =
  `/${(process.env.BASE_PATH ?? '').replace(/^\/+|\/+$/g, '')}`.replace(/\/$/, '') || '/';

const contentDirectory = fileURLToPath(new URL('./src/content/legal/', import.meta.url));

/**
 * Collect legal documents marked as drafts so they can be kept out of the
 * sitemap while still being built for preview. An app whose documents are all
 * drafts gets its index page excluded as well.
 */
function collectLegalDocuments(directory = contentDirectory, prefix = '') {
  const documents = [];

  if (!existsSync(directory)) return documents;

  for (const entry of readdirSync(directory, { withFileTypes: true })) {
    if (entry.isDirectory()) {
      documents.push(
        ...collectLegalDocuments(`${directory}${entry.name}/`, `${prefix}${entry.name}/`),
      );
      continue;
    }

    if (!entry.name.endsWith('.md')) continue;

    const source = readFileSync(`${directory}${entry.name}`, 'utf8');

    documents.push({
      app: prefix.replace(/\/$/, ''),
      path: `${prefix}${entry.name.replace(/\.md$/, '')}`,
      draft: /^draft:\s*true$/m.test(source),
    });
  }

  return documents;
}

const legalDocuments = collectLegalDocuments();
const draftPaths = new Set(
  legalDocuments.filter((document) => document.draft).map((document) => document.path),
);

for (const app of new Set(legalDocuments.map((document) => document.app))) {
  const documents = legalDocuments.filter((document) => document.app === app);

  if (documents.length > 0 && documents.every((document) => document.draft)) {
    draftPaths.add(app);
  }
}

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

        return relative !== '404' && relative !== 'design-system' && !draftPaths.has(relative);
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
    resolve: {
      // Mirror the `@/*` path mapping from tsconfig.json so Vite resolves the
      // alias in Astro components, scripts, and tests alike.
      alias: {
        '@': fileURLToPath(new URL('./src/', import.meta.url)),
      },
    },
  },
});
