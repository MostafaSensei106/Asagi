# Social compression targets

The home workspace presents ten distinct social destinations. X and Twitter are
one destination. WhatsApp HD and Email retain their existing enum ordinals and
native policies for saved-job compatibility but are not additional social tiles.
The three new IDs are appended to the Dart, Pigeon, and Kotlin enums.

The preset sizes are Kuymo optimization targets, not claims about maximum upload
sizes. The existing seven social policies are retained. New targets:

| Destination | Target / fallback | Short edge | FPS ceiling | Video bitrate ceiling |
| --- | --- | --- | --- | --- |
| LinkedIn | 100 / 200 MB | 1080 | 30 | 6 Mbps |
| Telegram | 32 / 128 MB | 1080 | 30 | 4 Mbps |
| Snapchat | 20 / 32 MB | 1080 | 30 | 4 Mbps |

The native planner resolves size, available bitrate, and quality; any relaxed
size is surfaced before compression. Faststart is required for the three new
presets. A preset preserves aspect ratio and does not trim or crop a video.
Duration, orientation, account tier, and upload-surface rules still apply.

Sources reviewed on 2026-11-27:

- [LinkedIn video troubleshooting](https://www.linkedin.com/help/linkedin/answer/a548372): 5 GB upload ceiling, 15-minute maximum, 10–60 fps, with duration and aspect-ratio constraints.
- [Telegram FAQ](https://telegram.org/faq): 2 GB files for standard accounts and 4 GB with Premium; Kuymo's target intentionally uses a smaller transfer budget.
- [Snapchat Spotlight upload](https://help.snapchat.com/hc/en-gb/articles/7012293789972-How-do-I-submit-a-Snap-to-Spotlight-from-the-web): upload workflow; no universal organic-video byte limit is stated. The 20 MB target is a Kuymo choice.
- [Snap media documentation](https://www.developers.snap.com/marketing-api/Ads-API/media) describes ad-upload requirements; these are not represented as universal Spotlight requirements.

SVG sources and the MIT license are under `assets/icons/social/`. No icon
package or runtime network dependency was added. Native API changes originate
in `pigeons/messages.dart`; regenerate all three language bindings together.
