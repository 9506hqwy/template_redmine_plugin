import { defineConfig, devices } from '@playwright/test';

export default defineConfig({
  testDir: './test/e2e',
  fullyParallel: false,
  reporter: 'html',
  projects: [
    {
      name: 'initialize',
      testMatch: [
        'initialize.spec.ts'
      ],
      use: { ...devices['Desktop Chrome'] },
    },
    {
      name: 'chromium',
      testIgnore: [
        'initialize.spec.ts'
      ],
      dependencies: ['initialize'],
      use: { ...devices['Desktop Chrome'] },
    },
    {
      name: 'firefox',
      testIgnore: [
        'initialize.spec.ts'
      ],
      dependencies: ['initialize'],
      use: { ...devices['Desktop Firefox'] },
    },
    {
      name: 'webkit',
      testIgnore: [
        'initialize.spec.ts'
      ],
      dependencies: ['initialize'],
      use: { ...devices['Desktop Safari'] },
    },
  ],
});
