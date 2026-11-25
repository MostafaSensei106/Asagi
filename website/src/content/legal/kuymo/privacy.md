---
app: Kuymo
appDescription: Free, open-source video compression with on-device AI features for Android.
description: How the Kuymo Android app handles your videos, AI prompts, local data, and optional crash reports. Processing stays on your device.
summary: >-
  Your videos are processed on your device. AI inference runs locally after the model is
  downloaded. Kuymo does not require an account, display advertisements, or operate a cloud
  service for your videos or AI conversations. Optional crash reporting helps identify and fix
  software problems. Downloads, update checks, and other network requests may involve
  third-party services.
effectiveDate: 2026-11-25
updatedDate: 2026-11-25
order: 10
contact:
  name: MostafaSensei106
  repository: https://github.com/MostafaSensei106/Kuymo
  issues: https://github.com/MostafaSensei106/Kuymo/issues
---

Kuymo is a free, open-source video compression application with on-device AI features,
maintained by MostafaSensei106 (the developer). This policy describes how the official Kuymo
application handles information when you use it.

Android application ID: `com.mostafa.sensei.kuymo`

## 1. Scope

This policy applies to the official Kuymo Android application and its features, including
video compression, local history, AI model downloads, local AI inference, and optional crash
reporting. It does not govern independently modified versions of the source code, other
applications, or external websites and services.

Kuymo does not require registration or sign-in. The app does not request account credentials,
payment card details, contacts, or geographic location for its features. Kuymo does not sell
personal information or use it for advertising, marketing profiles, or cross-app advertising
tracking.

## 2. Video and media processing

When you select a video, Kuymo accesses the media and relevant file information needed to
inspect, plan, compress, verify, save, and display the result. This may include the video's
image and audio content, file name or reference, duration, file size, resolution, frame rate,
codec, bitrate, and other technical media properties.

These operations take place on your device, using its media processing capabilities. Kuymo
does not upload your original videos, audio tracks, or compressed outputs to a
developer-operated server for processing. Video compression can operate offline.

Compression presets are local settings designed to help prepare videos for sharing. Selecting
a preset does not itself send the video to the named platform. When you choose to save to your
gallery, a copy may be written to shared device storage. When you choose to share a file,
Android passes the selected file to the destination you choose. That destination handles the
file under its own terms and privacy policy.

Video files may contain sensitive content or embedded metadata, including location or other
identifying details. Kuymo does not use such information to determine your location. Do not
assume compression removes every item of embedded metadata; review files before sharing them.

## 3. On-device AI

Kuymo offers AI features using locally downloaded model files, including Gemma 4. Model
inference takes place on your device rather than through a remote AI inference API. Prompts,
generated responses, and any information supplied to the model for local processing are not
intentionally uploaded to an external AI service or used by the developer to train remote AI
models.

Downloading a model requires an internet connection to Hugging Face or its associated file
delivery infrastructure. The download transfers model files to your device; it is not an upload
of your conversation or video. Models occupy local storage and may be used offline after
installation, subject to device capabilities.

AI inputs, outputs, and related settings may remain in local app storage where the feature
saves them. AI-generated content may be inaccurate or inappropriate. Avoid entering unnecessary
sensitive information, particularly if you intend to share the output. AI models and their
distributions may have separate license terms.

## 4. Local storage

Kuymo may retain selected media references, saved outputs, compression history, compression
parameters, job state and recovery checkpoints, temporary files, preferences, downloaded
models, and locally saved AI information to provide its features. These records are stored on
your device and are not intentionally synchronized to a developer-operated cloud database.

Preferences may include language, appearance, accessibility options, notification settings,
haptic feedback, and crash-reporting choices. Temporary processing files and recovery state may
persist while required for a job or its recovery. Android backup or device-transfer services, if
enabled and applicable to the stored files, may handle app data according to your device
settings and the relevant service's policies.

## 5. Crash reporting and diagnostics

Kuymo uses Google Firebase Crashlytics to identify crashes, diagnose errors, and improve
reliability. Crash reporting is optional: you can disable it in the app's settings. Disabling
report collection does not require an account and does not prevent ordinary local video
processing or AI inference.

When crash reporting and related diagnostic collection are enabled, Crashlytics and its
supporting Firebase libraries may transmit the following technical information:

| Information                                                                                                                             | Purpose                                                                                            |
| --------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| Crash reports, exception details, and stack traces                                                                                      | Locate and diagnose software failures.                                                             |
| Device and app metadata, including device model, operating system, app version, network connection type, and relevant application state | Understand the environment in which failures occur.                                                |
| Crashlytics installation UUID and Firebase installation identifiers                                                                     | Distinguish app installations and measure the impact of failures without requiring a user account. |
| Session and reliability metrics, such as session start information, collected by supporting Firebase SDKs where active                  | Measure stability and provide crash and quality metrics.                                           |

These records are not intended to include your video contents, AI conversation contents,
passwords, or other unrelated personal information. Error details may contain contextual
technical information, so users should avoid placing sensitive data in support messages or
logs. Kuymo does not use Firebase Analytics for behavioral advertising or general analytics
tracking.

Turning crash reporting off stops the optional reporting flow according to the SDK's
configuration. It does not erase reports already transmitted, and supporting Firebase services
may still process technical installation or connection information as required by their
operation. Reports stored locally may remain pending according to SDK behavior.

Google processes diagnostic information as a service provider for this functionality. See
[Privacy and Security in Firebase](https://firebase.google.com/support/privacy),
[Firebase's data disclosure documentation](https://firebase.google.com/docs/android/play-data-disclosure),
and [Google's Privacy Policy](https://policies.google.com/privacy).

## 6. Network connections and external services

Kuymo's core video processing and installed-model inference do not require a remote processing
service. Internet access is used for network-dependent features, including model downloads,
optional update checks, crash reporting, and links opened at your request.

- **Hugging Face:** delivers AI model files. Its infrastructure may receive standard connection
  information, such as your IP address, request headers, requested file, and request time. See
  its [Privacy Policy](https://huggingface.co/privacy).
- **GitHub:** may be contacted for release or update checks and project resources. GitHub may
  receive ordinary network request information. If you open an issue or interact with GitHub,
  its [privacy statement](https://docs.github.com/en/site-policy/privacy-policies/github-general-privacy-statement)
  applies.
- **Google Firebase:** handles crash reporting and supporting technical services as described
  above.
- **Google Play and Android:** installation, updates, system permissions, and other platform
  services are subject to the relevant platform policies.

Third-party endpoints may process connection metadata for delivery, security, and service
operation under their own policies. Kuymo does not use these requests to build location
profiles or advertising profiles. External links, email clients, sharing destinations, and
websites you choose to visit may have different data practices.

## 7. Android permissions and device capabilities

Depending on Android version and the features you use, Kuymo may access the following
capabilities:

- **Media and file access:** to select, inspect, process, and export videos using Android's file
  and media mechanisms.
- **Internet and network access:** to download models, check for updates, submit enabled
  diagnostics, and reach network-dependent resources.
- **Notifications and foreground processing:** to show compression progress and job status, and
  to support ongoing work in accordance with Android requirements.
- **Local storage and device resources:** to store models, media outputs, settings, and job
  state and to perform local computation.
- **Haptic feedback:** to provide optional tactile feedback.

You can manage available permissions in Android settings. Denying a permission may limit the
associated feature. Local access to a file or system capability does not by itself mean
information is transmitted to the developer.

## 8. Data sharing and recipients

Kuymo does not sell or rent personal data, supply it to advertising networks, or operate a
public content-sharing service. Information may be processed by the technical service providers
described in this policy, transferred to a destination you explicitly choose, or disclosed when
required by applicable law or necessary to protect legal rights and safety.

If you voluntarily contact the developer, your message, contact details, and any attachments you
choose to provide may be used to respond, investigate a problem, and maintain the project.
Public GitHub issues are visible to others; never include private footage, AI conversations,
personal file paths, account credentials, or other sensitive information in a public issue.

## 9. Retention and deletion

### Local data

Local videos, history, models, and preferences may remain on your device until you remove them
or clear the app's data. Use available history and storage controls or Android's app storage
settings. Uninstalling the application generally removes its private app storage, but exported
files, shared copies, device backups, and files held by other apps may remain. Delete those
separately if desired. Removing Kuymo does not delete your original videos in shared storage.

### Crash reports and service data

According to Firebase's published retention policy, Crashlytics keeps crash traces, extracted
minidump information where applicable, and associated identifiers for 90 days before initiating
removal from active and backup systems. This is not a guarantee that every copy or every
category of supporting service data is fully erased within 90 days. Other service providers
apply their own retention rules.

Kuymo does not maintain user accounts or provide a dedicated automated mechanism to delete
previously submitted crash reports on demand. You may contact the developer about privacy
concerns or rights under applicable law. Because diagnostic records use technical identifiers
rather than accounts, it may not be possible to reliably associate a particular report with a
person. Disabling crash reporting does not retroactively delete previously submitted
information.

Support correspondence is retained as reasonably necessary to investigate and respond,
maintain relevant project records, and meet applicable legal obligations.

## 10. Security and international transfers

Kuymo uses Android's application isolation and storage mechanisms for its local operations.
Network communications with the services described in this policy are intended to use encrypted
HTTPS/TLS connections. Access to diagnostic reports is intended to be restricted to authorized
project maintainers.

Local data is subject to the security of your device and the storage locations you select. Kuymo
does not promise independent encryption of every local file or absolute security. Use a device
screen lock and protect your device, backups, and shared files.

Third-party service providers may process information on infrastructure outside your country.
Where applicable, international data transfers are subject to relevant legal requirements and
the safeguards provided by the relevant service providers.

## 11. Children and teenagers

Kuymo is intended for a general audience aged 13 and above, not specifically for children under 13. Kuymo does not require users to create accounts, provide their date of birth, or submit
identifying information to use its local features. The developer does not knowingly solicit
personal information from children under 13.

Users under the applicable age of digital consent should use the app with appropriate parental
or guardian involvement where required by local law. Parents and guardians should supervise AI
use and review generated content where appropriate. If you believe a child has provided personal
information to the developer, please contact us so the matter can be addressed in accordance
with applicable law.

## 12. Your privacy choices and rights

You can use the local features without creating an account, choose which media to process,
disable optional crash reporting, manage Android permissions, avoid optional network features,
and remove locally stored data using available app or system controls.

Where applicable law grants you rights to access, correct, erase, restrict, object to, or receive
a copy of personal information, you may contact the developer to exercise those rights. Where
processing relies on consent, you may withdraw it for future processing. Some requests may be
limited by the nature of technical identifiers, security obligations, or applicable law. You may
also have the right to contact your local data protection authority.

## 13. Changes to this policy

This policy may be updated when Kuymo's features, data practices, third-party dependencies, or
applicable requirements change. The updated version will be published on this page with a
revised date. Where required, material changes will be communicated and any necessary consent
obtained before new processing begins.

## 14. Contact

For questions about this Privacy Policy or Kuymo's data practices, contact the project maintainer
through the contact option in the app's About section or the developer contact details on its
Google Play listing. General, non-sensitive project inquiries can also be made through the
official repository.

**Developer / maintainer:** MostafaSensei106
**Official repository:** [github.com/MostafaSensei106/Kuymo](https://github.com/MostafaSensei106/Kuymo)
**Project issues:** [Kuymo issue tracker](https://github.com/MostafaSensei106/Kuymo/issues)

Do not submit sensitive information through a public issue.
