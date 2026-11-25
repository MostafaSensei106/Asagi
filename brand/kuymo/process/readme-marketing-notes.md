# README messaging decisions

Goal: help an Android user recognize a useful video-sharing tool, understand its
current limits, and find the download route. Stage: awareness to consideration
and installation. Current blockers: file-size uncertainty, privacy concerns,
a feature-heavy description, and a store URL that is still a placeholder.

Candidates considered: Jobs to Be Done, choice reduction, risk reduction,
processing fluency, social proof, and scarcity. Applied the first three;
processing fluency supports the visual treatment. Social proof and scarcity
were rejected because there are no supplied testimonials, usage statistics,
or legitimate time-limited offer.

Scores below are editorial prioritization, not measured conversion results.
PLFS = leverage + fit + speed to signal + ethics − implementation cost,
capped at 15 as specified by the marketing-psychology skill.

## Mental Model: Jobs to Be Done

**PLFS: +15**  leverage 5, fit 5, speed 3, ethics 5, cost 3.

- **Why it works:** the reader recognizes the everyday task of sharing a video
  that is too large before being asked to evaluate technical controls.
- **Behavior targeted:** recognize personal relevance and continue to the
  feature preview or download section.
- **Where to apply:** hero, opening story, feature labels, four-step workflow.
- **How to implement:** lead with “Big moments. Smaller videos.” and explain
  setting a target size, keeping processing local, and reviewing the result.
- **What to test:** ask target users to explain the app after a five-second
  read; compare an outcome-led introduction with the former technical one.
  This has not been run as a user study.
- **Ethical guardrail:** no invented speed, compression percentages, universal
  target-size guarantees, or lossless-quality claims.

## Mental Model: Choice Reduction

**PLFS: +14**  leverage 4, fit 5, speed 3, ethics 5, cost 3.

- **Why it works:** one primary destination is easier to locate than competing
  technical links, install commands, and several unrelated actions.
- **Behavior targeted:** locate the Android download route without searching
  through developer information.
- **Where to apply:** hero CTA, download section, footer.
- **How to implement:** repeat the same download destination, keep GitHub
  Releases secondary, and move detailed format/FAQ information into disclosures.
- **What to test:** ask a reader where they would get the app and whether the
  current Google Play availability is clear. No click study has been run.
- **Ethical guardrail:** the Play badge says “Coming soon,” the destination is
  labeled as a placeholder, and GitHub APK availability is not fabricated.

## Mental Model: Risk Reduction

**PLFS: +13**  leverage 4, fit 5, speed 2, ethics 5, cost 3.

- **Why it works:** concrete answers about privacy, platform support, quality,
  and feature readiness reduce uncertainty before installation.
- **Behavior targeted:** make an informed decision about trying the app.
- **Where to apply:** local-processing card, privacy section, preview labels,
  early-preview notice, quality disclosure, and AI section.
- **How to implement:** explain on-device encoding, optional network activity,
  supported Android version, real UI previews, and AI's coming-soon state.
- **What to test:** ask readers whether videos are uploaded, whether AI works
  today, and whether the store link is live. These are proposed checks.
- **Ethical guardrail:** on-device video processing is not presented as a claim
  of zero networking; previews are not described as device captures; critical
  platform/readiness information remains visible outside collapsed sections.
