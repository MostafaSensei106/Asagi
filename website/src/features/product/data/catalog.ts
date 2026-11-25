import type { Section } from '../domain/product';
import { readdirSync, readFileSync } from 'node:fs';
import { marketingCopy } from '../copy';
import { websiteMessages } from '../messages';

const directory = new URL('../../../../../lib/l10n/', import.meta.url);
const files = readdirSync(directory).filter((file) =>
  /^app_[a-z]{2}(?:_[A-Z]{2})?\.arb$/.test(file),
);
const catalogs = Object.fromEntries(
  files.map((file) => [
    file.slice(4, -4).replace('_', '-'),
    JSON.parse(readFileSync(new URL(file, directory), 'utf8')) as Record<string, string>,
  ]),
);
export const locales = Object.keys(catalogs).sort();
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
