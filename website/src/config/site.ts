/**
 * Site-wide presentation metadata. Legal content itself lives in
 * `src/content/legal/` so that adding an app never requires touching this file.
 */
export const siteConfig = {
  name: 'Kuymo',
  title: 'Kuymo · More room for your moments.',
  description:
    'Kuymo helps you compress videos on your Android device, choose a target size, and make room for your moments.',
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
