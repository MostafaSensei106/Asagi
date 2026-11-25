import { defineCollection } from 'astro:content';
import { glob } from 'astro/loaders';
import { z } from 'astro/zod';

const contact = z
  .object({
    name: z.string().min(1),
    repository: z.url(),
    issues: z.url().optional(),
  })
  .strict();

/**
 * Legal documents are addressed by their file path:
 * `src/content/legal/<appId>/<privacy|terms>.md`
 * maps to `/<appId>/<privacy|terms>`.
 *
 * The document label ("Privacy Policy" / "Terms & Conditions") is derived from
 * the file name, so it can never drift from the URL.
 */
const legal = defineCollection({
  loader: glob({ base: './src/content/legal', pattern: '**/*.md' }),
  schema: z
    .object({
      app: z.string().min(1),
      appDescription: z.string().min(1).max(160),
      description: z.string().min(1).max(320),
      summary: z.string().min(1),
      effectiveDate: z.coerce.date(),
      updatedDate: z.coerce.date(),
      draft: z.boolean().default(false),
      /** App ordering on the home page; lower values appear first. */
      order: z.number().int().default(100),
      contact,
    })
    .strict(),
});

export const collections = { legal };
