import type { ImageMetadata } from 'astro';
import entries from './screen-catalog.json';
export type ScreenPage = (typeof entries)[number];
const assets = import.meta.glob<{ default: ImageMetadata }>(
  '../../../assets/product/*.{png,jpg,jpeg,webp}',
  { eager: true },
);
export const screenCatalog = entries;
export function screenImage(screen: ScreenPage, locale: string): ImageMetadata | undefined {
  const name = locale === 'ar' && screen.imageAr ? screen.imageAr : screen.image;
  if (!name) return undefined;
  const image = assets[`../../../assets/product/${name}`]?.default;
  if (!image)
    throw new Error(
      `Missing screen image: ${screen.id}/${name}. Leave image null until the file exists.`,
    );
  return image;
}
export function screenText(screen: ScreenPage, locale: string) {
  if (locale !== 'en' && locale !== 'ar') throw new Error(`Unpublished website locale: ${locale}`);
  return {
    title: screen.title[locale],
    subtitle: screen.subtitle[locale],
    description: screen.description[locale],
  };
}
export const galleryGroups = {
  en: {
    all: 'All pages',
    core: 'Start',
    compression: 'Compression',
    settings: 'Settings',
    ai: 'AI preview',
    about: 'About',
    legal: 'Policies',
    help: 'Help',
  },
  ar: {
    all: 'كل الصفحات',
    core: 'البداية',
    compression: 'الضغط',
    settings: 'الإعدادات',
    ai: 'معاينة الذكاء',
    about: 'النبذة',
    legal: 'السياسات',
    help: 'المساعدة',
  },
} as const;
