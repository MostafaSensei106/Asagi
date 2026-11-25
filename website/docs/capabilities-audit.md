# Capability and claim audit

26 November 2026. This pass reads source and supplied project documents; it does not certify a Play release or a device benchmark.

| Area                         | Evidence                                                                                   | Decision in website                                                                                             |
| ---------------------------- | ------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------- |
| Size-first compression       | Planner/application code, compression feature, existing tests                              | Promote the workflow; explain trade-offs and device dependence                                                  |
| Presets/manual controls      | Compression setup and policies                                                             | Describe choices; do not promise another service's live upload limits                                           |
| Local output/history         | Local repositories, gallery/share adapters                                                 | Describe local history and chosen export/share                                                                  |
| On-device processing         | Native encoder boundary                                                                    | Say compression runs locally, not “nothing ever leaves the device”                                              |
| Optional network/diagnostics | Privacy document and settings code                                                         | Link to the policy; no blanket privacy superlative                                                              |
| AI                           | Real runtime/model repositories now exist; README still describes absent preview functions | Internal status is preview pending release verification; do not put AI inference claims in hero or feature list |
| Store availability           | Owner says Google Play soon; no launch date confirmed                                      | Central prelaunch state, no actionable Play-store download badge                                                |
| Screenshots                  | Four current welcome-screen captures                                                       | Label language/theme and screen honestly; no unprovided feature captures                                        |
| Developer                    | About page and public GitHub URL                                                           | MostafaSensei only; no invented biography                                                                       |
| Pricing                      | Owner confirmed free launch                                                                | Free/open-source; no invented tiers or upsells                                                                  |
| Website localization         | Owner's latest instruction limits website to EN/AR                                         | Only EN/AR routes/hreflang; app ARBs unchanged                                                                  |

The README/privacy disagreement around AI remains an explicit release-documentation task. Neither document is silently rewritten as part of visual website work. No new testimonial, ranking, percentage improvement, user count, lossless claim or countdown is added.

## README/docs.md content expansion

The owner requested deeper feature content from both files. The website now explains use cases, eight capability topics, verification/recovery, supported formats, longer feature detail and practical FAQs in EN/AR. `docs.md` is a historic extended specification, not a shipping feature list: it still mentions FitVid/Zumi, Rust planning and Android 8/iOS support. Current repository guidance and `lib/core/compression/README.md` instead identify Kotlin planning, Android-only compression and Android 11+. The public site follows current implementation evidence. Trimming, splitting, audio extraction, MKV output, a mascot, universal H.265 support and numeric quality/speed scenarios are not promoted as shipped merely because the old specification mentions them.

The app page inventory now covers 40 existing Dart page files through 40 entries (the about wrapper and its content share a single entry; installed release notes have their own entry). One screenshot per page is shown when available, with a title, subtitle and description. Home and AI-preview captures exist; the remaining 38 entries have explicit image placeholders. AI page presence is not a release-availability claim.
