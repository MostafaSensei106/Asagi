# Kuymo — Product marketing context

Last updated: 26 November 2026. Status: **Draft v1 for owner review**.
Canonical website context lives here because the workspace's `.agents/` directory is read-only. Marketing documents reference this file; it does not claim automatic discovery by other tools.

## Product overview

**One-liner:** Kuymo helps Android users prepare a video for sharing by choosing a target size and processing the video on their own device.

**Category:** Consumer Android video compression / target-size video optimizer.
**Product:** Independent native mobile app, with a static product website. The website does not upload, encode or analyze videos.
**Business model:** Free, open source, no planned advertising or subscription at launch, as confirmed by the owner. License: GPL-3.0-only.
**Launch:** Coming soon on Google Play; no date or public store availability has been confirmed. The website's primary path is to explore real screenshots and optionally follow GitHub releases. A published APK exists only if a release actually includes one.

## Audience and jobs to be done

Primary audience: Android users trying to share a video with friends, family or a platform, who encounter an oversized file. Secondary audiences are creators who want manual settings and people managing local video storage.

1. “Help me work toward a file-size limit without guessing which quality setting will fit.”
2. “Let me inspect the plan and result before I send a video.”
3. “Let me do this on my device instead of uploading a private clip to a web converter.”

These are **working JTBD formulations, not customer quotations**. No interviews or survey results were supplied. The website currently publishes English and Arabic only; application localization remains broader and is unaffected.

## Problems and value

| Problem                   | Kuymo's response                               | Limit to state clearly                                                   |
| ------------------------- | ---------------------------------------------- | ------------------------------------------------------------------------ |
| Video too large to send   | Target-size planning and presets               | A target can be too restrictive; quality or resolution can change        |
| Guesswork around settings | Planned resolution/bitrate and manual controls | No universal “best” setting or guaranteed quality                        |
| Upload hesitation         | On-device compression                          | Sharing, optional updates and diagnostics have separate network behavior |
| Lost results              | Local history and gallery export               | User chooses where a file is saved or shared                             |

The emotional promise is relief and control: a calmer next step, not fear about losing memories. Avoid making size reduction the only measure of a good result.

## Alternatives and differentiation

Direct alternative category: other Android video compressors. Secondary: desktop converters and editing tools. Indirect: sending the unmodified file, trimming it, accepting a messaging app's default conversion, or using cloud links.

No named competitor research has been completed. Do not claim a competitor uploads media, charges fees, has worse quality or is slower without direct evidence. Distinguish Kuymo through its own observable workflow: size-first planning, explicit trade-offs and local processing. These are positioning themes, not a claim that no other product offers them.

## Objections and switching dynamics

| Objection                     | Response                                                                      |
| ----------------------------- | ----------------------------------------------------------------------------- |
| Will this damage the quality? | Re-encoding can change quality; explain the settings and inspect the result   |
| Can it reach any size?        | Very restrictive targets may require adjustments or cannot be met             |
| Is my video uploaded?         | Encoding happens locally; explain sharing and optional connections separately |
| Is it available now?          | Google Play is coming soon; do not imply a store download exists              |

**Push:** repeated failed sends and trial-and-error settings.
**Pull:** a visible size target, real UI previews and local control.
**Habit:** relying on the messaging app's default behavior.
**Anxiety:** quality loss, privacy, battery/time cost, uncertain availability.
**Poor fit:** iPhone-only users needing current compression support; people requiring lossless reduction for every file; people requiring a guaranteed cap for every source; organizations needing a cloud video API.

## Voice and vocabulary

Voice: clear, warm, direct, practical. Personality: calm, capable, independent, precise, a little playful in visual expression.

Use: “choose a target size”, “review the plan”, “on your device”, “save or share”, “coming soon”. Arabic copy should read naturally; product name stays Kuymo. Use “استعرض التطبيق”, “الحجم المستهدف”, “على جهازك”, “تابع الإصدار”.

Avoid: “lossless”, “zero quality loss”, “guaranteed 90% smaller”, “fastest”, “all formats”, “100% private” as a blanket promise, invented star ratings, countdowns, fake urgency, “download now” before store availability.

The Japanese typography/余白 motif expresses visual breathing room; it is not a claim that the product name has a Japanese translation or origin.

## Proof and capability status

Evidence: source code, tests and current UI captures. No install counts, retention data, real-world speed benchmark, customer logos, testimonials or store ratings were supplied.

| Capability                      | Website treatment                                  | Evidence                                                                                                     |
| ------------------------------- | -------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| Target-size compression         | Current core workflow                              | `lib/core/compression/`, compression feature                                                                 |
| Sharing presets/manual controls | Current workflow, no third-party upload guarantees | Compression setup and planner                                                                                |
| Local history/save/share        | Current workflow                                   | History and storage boundaries                                                                               |
| Local AI                        | Preview; not a launch promise                      | Runtime/model repositories exist, while README still says unavailable; no release/device validation supplied |
| Google Play                     | Coming soon                                        | Owner statement                                                                                              |
| Website screenshot gallery      | Welcome screen only, English/Arabic and light/dark | Four existing PNG captures                                                                                   |

## Developer and goals

Verified public identity: **MostafaSensei**, GitHub **MostafaSensei106**. Verified project repository: `https://github.com/MostafaSensei106/Kuymo`. Public profile: `https://github.com/MostafaSensei106`. Do not invent a job title, location, employment history, years of experience or social accounts.

Primary website behavior now: understand the workflow → explore screenshots → optionally follow releases. After a verified Play launch: understand → explore → open the official listing.

Longer-term product value: a completed, usable compression followed by a successful save/share. This is a candidate north-star definition, not an implemented tracking event. No analytics or email collection is added by the website work.

Resources: one developer, zero monthly marketing budget, 2–3 hours/week. No funding timetable was disclosed. Current acquisition, activation, retention, referral, CAC and install metrics are unknown.
