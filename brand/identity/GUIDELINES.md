# Zumi — approved mascot identity

## Brand idea
Small file. Full story. / حجم أصغر. حكايتك كاملة.
A nimble white stoat hugs a video tile while its long tail wraps around it. The promise is offline, measured target-size compression, not lossless compression or identical quality. The character is warm, attentive and capable.

## Source of truth
- `source/mascot.png`: detailed identity-preserving reconstruction of the selected board's hero, generated with the built-in image tool. This is not a pixel-exact crop of the original board.
- `masters/zumi-symbol.png`: normalized transparent digital master.
- `masters/zumi-symbol.svg`: genuine path-only palette vector traced from that same artwork. Flat colors replace soft raster shading; character and contour remain consistent. Not an embedded bitmap SVG.
- `masters/zumi-wordmark.png`: selected chunky forward-leaning lettering reconstructed from the reference.
- `masters/zumi-wordmark.svg`: monochrome outline version of those same letters.
- `masters/zumi-small.png`: optical cut preserving the pose, ears, paws, tail and video, with fewer fur details and stronger outline.
- `mascot/ready.png`, `working.png`, `done.png`: separate transparent expressive poses matching the approved reference.

The original image board remains the creative reference. The normalized artwork is the export source. Never substitute old compact animal drawings. All legacy assets are archived separately.

## File selection
| Use | File |
|---|---|
| Main app/store icon | icons/app/zumi-lagoon-1024.png |
| Dark app tile | icons/app/zumi-midnight-1024.png |
| Snow app tile | icons/app/zumi-snow-1024.png |
| Website/favicon | icons/web/ contents |
| Header | lockups/zumi-horizontal.png or .svg |
| Tall placement | lockups/zumi-stacked.png or .svg |
| Dark header | lockups/zumi-horizontal-dark.svg |
| Single ink | masters/zumi-ink.svg |
| Reversed single ink | masters/zumi-reversed.svg |
| Interface illustrations | mascot/*.png |
| Interface controls | ui/*.svg |

App tile PNGs are opaque square assets; the operating system applies its own rounded mask. Do not bake rounded transparent corners into store uploads. The maskable web icon uses additional safe-area padding. Keep supplied filenames with site.webmanifest, or update its URLs when integrating.

## Size and clear space
Use full detail at 64px and above. Use the small-detail favicon cut at 16–48px. At 16px recognition comes from white curl + dark face/tail + orange tile; individual paws and play triangle are not guaranteed readable. The one-color illustration needs 128px or larger; do not use the fine line-art version as a favicon.

Clear space is at least one ear diameter around the visible silhouette. Horizontal lockup minimum 300px wide; Japanese supporting text may need omission below this size. Do not stretch, mirror the official mark, alter its face, recolor fur, detach the play tile or replace its tail. Illustration poses are approved variations; the official app icon is fixed.

## Palette
| Token | HEX | RGB | Use |
|---|---|---|---|
| Midnight | #162B46 | 22,43,70 | Ink, dark surfaces, text |
| Lagoon | #087F8C | 8,127,140 | Main actions, app tile |
| Seafoam | #61D4C5 | 97,212,197 | Highlights |
| Apricot | #FFB582 | 255,181,130 | Video, warmth |
| Snow | #F7FAF8 | 247,250,248 | UI background |

The palette SVG also uses #BDE3E4 for pale fur shadow and #FFFFFF for white fur. Raster illustration contains soft shading, so its individual pixels are not restricted to token values. Use exact tokens for UI and backgrounds. Approximate layout ratio: 70% neutral, 20% midnight/lagoon, 10% accents.

sRGB contrast: snow/midnight 13.61:1; snow/lagoon 4.52:1; midnight/apricot 8.30:1; midnight/seafoam 7.99:1. White play on apricot and pale fur shading are decorative brand details, not accessible controls. A real play control should use midnight on apricot. Text and interactive states must pass contrast independently.

Print: convert through the printer's ICC profile and proof. These RGB assets do not claim universal CMYK or Pantone matches. Fine fur and whiskers are unsuitable for small embroidery.

## Typography
The English wordmark is supplied artwork, not a font to retype. Its raster version retains the lagoon i-dot; the outlined version is intentionally single ink. Japanese ズミ in the horizontal vector lockup uses Noto Sans CJK JP converted to paths. Proposed interface families: Noto Sans and Noto Sans Arabic, with system sans fallback. Font binaries are not bundled; include their licenses if packaging them later.

Body 16px / line height 1.5; labels 14px; section titles 24px; screen titles 28–32px. Use RTL layout for Arabic. Spacing scale 4/8/12/16/24/32/48. Button radius 16, card radius 24.

## Mascot states and voice
Ready: curious upright posture. Working: calmly curled around the video. Done: happy upward glance. Do not use the sleeping/working illustration to imply stalled progress; always include a numeric or textual status. Respect reduced motion; any breathing animation should be subtle and optional. No sound is required.

Voice is friendly and factual. Say “Your video stays on this device.” On success show measured output size. If a target is infeasible, explain it clearly rather than celebrating failure. The UI panels in the presentation are proposals, not an implemented Flutter screen.

## Validation and production limits
Visual review covered reference similarity, face/paws/tail continuity, app tiles, separate poses, and the 16/32/96px size sheet plus reversal. SVG audits and a second refinement pass reduced traced noise and complexity substantially. Remaining audit warnings concern organic illustration complexity, intentional white fur, tiny highlights and contour precision. These do not constitute a clean geometric-logo audit pass. Use supplied raster app icons for pixel consistency; inspect the vector at the size and print medium you intend to use. Monochrome versions are large-format line art.

The SVG master has real paths and no live text, raster embeddings or filters. It is an illustrated mascot with more anchors than a simple emblem; no claim of hand-optimized Bézier construction is made. Professional trademark clearance and print proofing have not been performed.


## Additional mascot states
Six matching transparent 1024px illustrations added in `mascot/`: welcome, empty, analyzing, paused, error and share. Existing ready, working and done files remain unchanged. See `mascot/README.md`, `mascot/extra-states.json`, and `mascot/extra-states-overview.png`.
