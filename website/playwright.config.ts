import { existsSync } from 'node:fs';
import { defineConfig } from '@playwright/test';

const basePath = process.env.BASE_PATH?.replace(/^\/+|\/+$/g, '') ?? '';
export default defineConfig({
  testDir: './tests/e2e',
  fullyParallel: true,
  workers: 2,
  use: {
    baseURL: `http://127.0.0.1:4387/${basePath ? `${basePath}/` : ''}`,
    launchOptions: {
      ...(existsSync('/opt/google/chrome/chrome')
        ? { executablePath: '/opt/google/chrome/chrome' }
        : {}),
      args: ['--no-sandbox'],
    },
  },
  webServer: {
    command: 'node_modules/.bin/astro preview --host 127.0.0.1 --port 4387 --ignore-lock',
    url: `http://127.0.0.1:4387/${basePath ? `${basePath}/` : ''}`,
    reuseExistingServer: false,
  },
});
