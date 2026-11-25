import type { Feature, Launch } from '../domain/product';

export const product = {
  name: 'Kuymo',
  developer: 'MostafaSensei',
  repository: 'https://github.com/MostafaSensei106/Kuymo',
  releases: 'https://github.com/MostafaSensei106/Kuymo/releases',
  issues: 'https://github.com/MostafaSensei106/Kuymo/issues',
  profile: 'https://github.com/MostafaSensei106',
  minimumAndroid: '11+',
  license: 'GPL-3.0',
} as const;

/** Change only after the store listing has been verified as publicly available. */
export const launch: Launch = { status: 'prelaunch' };
export function storeUrl(state: Launch): string | undefined {
  if (state.status !== 'live') return undefined;
  const url = new URL(state.playStoreUrl);
  if (url.origin !== 'https://play.google.com' || url.pathname !== '/store/apps/details' || url.searchParams.get('id') !== 'com.mostafa.sensei.kuymo') {
    throw new Error('The live store link must identify the official Kuymo Android app.');
  }
  return url.href;
}
export const features: readonly Feature[] = [
  { id: 'target-size', route: 'features/target-size', titleKey: 'targetSizeOptimizer', body: 'sizeBody' },
  { id: 'sharing', route: 'features/sharing', titleKey: 'targetPlatformOrSize', body: 'shareBody' },
  { id: 'on-device', route: 'features/on-device', titleKey: 'onDeviceProcessingLabel', body: 'localBody' },
];

/** Evidence/status registry: implemented source does not imply a publicly released feature. */
export const capabilities = [
  { id: 'compression', status: 'implemented', evidence: 'lib/core/compression/README.md' },
  { id: 'sharing-presets', status: 'implemented', evidence: 'lib/modules/compression/' },
  { id: 'local-history', status: 'implemented', evidence: 'lib/modules/history/' },
  { id: 'local-ai', status: 'preview', evidence: 'lib/modules/ai/data/repositories/local_ai_runtime_repository.dart' },
  { id: 'google-play', status: 'upcoming', evidence: 'Owner confirmed pre-launch status' },
] as const;
