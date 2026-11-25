/** Framework-free product contracts shared by build-time data and presentation. */
export const sections = [
  '',
  'features',
  'features/target-size',
  'features/sharing',
  'features/on-device',
  'screenshots',
  'about',
  'developer',
  'download',
] as const;
export type Section = (typeof sections)[number];
export type FeatureId = 'target-size' | 'sharing' | 'on-device';
export interface Screenshot {
  readonly id: string;
  readonly src: string;
  readonly width: number;
  readonly height: number;
  readonly locale: 'en' | 'ar';
  readonly theme: 'light' | 'dark';
  readonly altKey: string;
  readonly feature: 'welcome';
}
export interface Feature {
  readonly id: FeatureId;
  readonly route: Section;
  readonly titleKey: string;
  readonly body: 'sizeBody' | 'shareBody' | 'localBody';
}
export type Launch =
  | { readonly status: 'prelaunch'; readonly playStoreUrl?: never }
  | {
      readonly status: 'live';
      readonly playStoreUrl: `https://play.google.com/store/apps/details?${string}`;
    };
