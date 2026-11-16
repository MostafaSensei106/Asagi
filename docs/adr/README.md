# Architecture decision records

Short, dated records of decisions that are expensive to reverse. Each one states the context, the decision, the consequences, and what would count as evidence that it was followed.

| Number | Title | Status |
| --- | --- | --- |
| [001](001-android-ffmpeg-lgpl.md) | Android-first v1.0 with an LGPL FFmpeg decode path | Accepted |

## Writing a new record

Copy the structure of an existing record and number it sequentially. Keep the "Verification" section concrete enough that a reviewer can check each line against the repository. If a decision supersedes an older one, do not delete the old record — add a new one and change the old status to `Superseded by ADR NNN`.
