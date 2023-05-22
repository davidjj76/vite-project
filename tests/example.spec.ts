import { test, expect } from '@playwright/test';

test('has title', async ({ page }) => {
  await page.goto('/');

  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle(/Vite \+ React \+ TS/);
});

test('button', async ({ page }) => {
  await page.goto('/');

  // Click the button.
  const button = page.getByRole('button');

  // Expects the button to update the count.
  expect(button).toHaveText('count is 0');

  button.click();

  // Expects the button to update the count.
  await expect(button).toHaveText('count is 1');
});

test('snapshot', async ({ page }) => {
  await page.goto('/');

  await expect(page).toHaveScreenshot();
});
