/**
 * Site-wide presentation metadata. Legal content itself lives in
 * `src/content/legal/` so that adding an app never requires touching this file.
 */
export const siteConfig = {
  name: 'Kuymo Legal',
  title: 'Kuymo Legal  Privacy & Terms',
  description:
    'Privacy policies and terms for Kuymo and other apps by MostafaSensei106. On-device processing, plain language, no accounts.',
  locale: 'en',
  author: {
    name: 'MostafaSensei106',
    url: 'https://github.com/MostafaSensei106',
  },
  repository: 'https://github.com/MostafaSensei106/Kuymo',
  license: {
    name: 'GPL-3.0-only',
    url: 'https://www.gnu.org/licenses/gpl-3.0.html',
  },
  defaultOgImage: '/branding/og-default.png',
} as const;

export type SiteConfig = typeof siteConfig;
