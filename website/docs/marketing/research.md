# Kuymo  Research record

26 November 2026. Sources were read from the working tree and the official sources linked below. This is an evidence record, not customer research.

## Owner-confirmed inputs

- Website direction: Expressive × Retro Japanese, floating navigation, current three-color identity.
- Fonts: Google Sans Flex, Google Sans, Google Sans Code, Noto Sans JP, Yuji Boku and Arabic fallback.
- Use existing screenshots temporarily; no new app captures in this change.
- Website languages now: English and Arabic only. Other app languages remain supported in the app.
- Product launch: Google Play soon, no date. Primary prelaunch action is exploration and following releases, not email signup.
- Free product, solo developer, zero budget, 2–3 marketing hours per week.
- Primary audience: ordinary Android users sharing a video.

## Inspected sources and reconciliation

| Source                                                              | Finding                                                                       | Decision                                                                        |
| ------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| README                                                              | Size-first local compression, presets, manual controls; AI called future work | Promote the confirmed core workflow                                             |
| `lib/modules/ai/data/repositories/local_ai_runtime_repository.dart` | Real local runtime integration exists                                         | Mark AI as preview pending release verification, not “no implementation exists” |
| AI model repository and test fixtures                               | Download/import handling and test support exist                               | Do not equate tests with a validated shipping model/device experience           |
| Privacy document                                                    | Describes local AI and optional diagnostics                                   | Avoid absolute claims that no network requests ever occur; preserve legal text  |
| About/developer page                                                | MostafaSensei and a GitHub profile                                            | Use this identity and these links only                                          |
| Current screenshots                                                 | Four welcome captures, EN/AR, light/dark                                      | Label actual screen/language/theme; no simulated feature screenshots            |
| Website                                                             | Static Astro, Tailwind, Lucide, no tracking                                   | Retain stack; add only Motion for shared client animation                       |

## Official design and implementation sources

- Material expressive foundations: https://m3.material.io/get-started
- Material motion: https://m3.material.io/styles/motion
- Motion JavaScript animation: https://motion.dev/docs/animate
- Motion spring: https://motion.dev/docs/spring
- Google Sans Flex OFL: https://github.com/google/fonts/blob/main/ofl/googlesansflex/OFL.txt
- Google font files/licenses: https://github.com/google/fonts/tree/main/ofl

Motion is used as JavaScript (`motion/mini`), not a React runtime. Font downloads happen through an explicit vendor script; visitor requests are local. Text and navigation work without animation or JavaScript.

## Skill use and relevance boundaries

`product-marketing-context` supplies the positioning record; `marketing-plan` supplies the 13-section AARRR structure. `marketing-psychology` and `ux-persuasion-engineer` guide transparent choice architecture. `ux-design-from-scratch` supplies the foundations → components → pages → validation order. `ui-ux-pro-max` was searched for the system and app-store layout pattern. `ui-pattern`, `ui-review`, `ux-copy` and `ux-feedback` supply composition, review, action wording and real feedback rules.

React-specific conventions in `ui-motion`, `ui-review` and `landing-page-generator` are inapplicable to Astro; their framework-independent design intent is adapted. No React migration, fake ratings, irrelevant pricing tiers, fake testimonials or artificial loading delay is introduced.

The installed marketing-ideas skill mentions a 140-item library but omits its entries; the marketing-plan skill refers to 139. Neither complete catalog is present in the installed file. The plan therefore has a transparent, scored Kuymo-specific shortlist and a disposition table; it does not fabricate idea IDs or claim complete library coverage.

## Unknowns

Production domain, Play publication date, store-console data, actual install/retention metrics, customer interview evidence, validated AI release status, final screenshot set and native-speaker editorial sign-off. These are open decisions rather than invented facts. No external accounts were accessed, messages sent, campaigns published or deployment performed.
