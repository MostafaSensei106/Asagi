import type { Screenshot } from '../domain/product';
import enLight from '../../../assets/product/home-en-light.png';
import enDark from '../../../assets/product/home-en-dark.png';
import arLight from '../../../assets/product/home-ar-light.png';
import arDark from '../../../assets/product/home-ar-dark.png';

const sources = { 'en-light': enLight, 'en-dark': enDark, 'ar-light': arLight, 'ar-dark': arDark };
export const screenshots = Object.entries(sources).map(
  ([id, image]) =>
    ({
      id,
      src: image.src,
      width: image.width,
      height: image.height,
      locale: id.startsWith('ar') ? 'ar' : 'en',
      theme: id.endsWith('dark') ? 'dark' : 'light',
      altKey: 'welcomeToKuymo',
      feature: 'welcome',
      image,
    }) as const satisfies Screenshot & { image: typeof image },
);
export function heroScreenshots(locale: string) {
  const language = locale.startsWith('ar') ? 'ar' : 'en';
  return screenshots.filter((shot) => shot.locale === language);
}
