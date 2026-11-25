import type { Section } from '../domain/product';
import { marketingCopy } from '../copy';
import { websiteMessages } from '../messages';

// Resolve ARBs at build time; avoid source-relative filesystem paths in bundled code.
const sources = import.meta.glob<string>('../../../../../lib/l10n/app_*.arb', {
  eager: true,
  query: '?raw',
  import: 'default',
});
const catalogs = Object.fromEntries(
  Object.entries(sources).flatMap(([path, source]) => {
    const match = /app_([a-z]{2}(?:_[A-Z]{2})?)\.arb$/.exec(path);
    return match
      ? [[match[1]!.replace('_', '-'), JSON.parse(source) as Record<string, string>]]
      : [];
  }),
);
export const availableAppLocales = Object.keys(catalogs).sort();
/** Launch the website in two editorially maintained languages; the app is unchanged. */
export const locales = ['en', 'ar'] as const;
export { sections } from '../domain/product';
export type { Section } from '../domain/product';
export function localePath(locale: string, section: Section = ''): string {
  return `/${locale === 'en' ? '' : `${locale}/`}${section}${section ? '/' : ''}`;
}
export function catalog(locale: string) {
  if (!catalogs[locale]) throw new Error(`Unsupported locale: ${locale}`);
  return { ...catalogs[locale.split('-')[0]!], ...catalogs[locale] };
}
export function content(locale: string) {
  const messages = { ...catalog(locale), ...websiteMessages(locale) };
  messages.theme = messages.appearance!;
  const t = (key: string): string => {
    const value = messages[key];
    if (typeof value !== 'string' || value.includes('{'))
      throw new Error(`Missing plain message ${locale}/${key}`);
    return value;
  };
  return { t, copy: marketingCopy(locale), rtl: locale.startsWith('ar') };
}
export function localeName(locale: string): string {
  const name = catalog(locale).languageName;
  if (!name) throw new Error(`Missing language name: ${locale}`);
  const region = locale.split('-')[1];
  return region ? `${name} (${region})` : name;
}
