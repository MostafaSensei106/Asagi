import json
import subprocess as sp
import xml.etree.ElementTree as ET
from pathlib import Path

P = Path(__file__).resolve().parents[1]


def run(*a):
    sp.run(list(map(str, a)), check=True, capture_output=True)


def mag(*a):
    run("magick", *a)


S = P / "source"
M = P / "masters"
I = P / "icons"
L = P / "lockups"
# Remove the former blue-black cast while preserving the mascot's shading.
for image in [S / "mascot.png", *sorted((S / "extra-states").glob("*.png")), *[P / "mascot" / f"{name}.png" for name in ("ready", "working", "done")]]:
    recolored = image.with_name(image.stem + ".asagi.png")
    mag(image, "-fill", "#243438", "-fuzz", "18%", "-opaque", "#001F3F", recolored)
    recolored.replace(image)
# Keep the name in editable SVG source, then derive both raster and vector exports.
wordmark_source = S / "wordmark.svg"
wordmark_source.write_text(
    """<svg xmlns="http://www.w3.org/2000/svg" width="1400" height="430" viewBox="0 0 1400 430"><text x="32" y="340" font-family="Rubik" font-size="330" font-weight="700" font-style="italic" letter-spacing="-8" fill="#243438">Asagi</text></svg>"""
)
run("inkscape", wordmark_source, "--export-filename", S / "wordmark.png")
# All exports derive from the same generated, reference-matched artwork.
mag(
    S / "mascot.png",
    "-trim",
    "+repage",
    "-resize",
    "900x900",
    "-gravity",
    "center",
    "-background",
    "none",
    "-extent",
    "1024x1024",
    M / "asagi-symbol.png",
)
mag(S / "wordmark.png", "-trim", "+repage", M / "asagi-wordmark.png")
for name, col in [("main", "#0095A9"), ("deep", "#006F7D"), ("snow", "#F7FAF8")]:
    mag(
        "-size",
        "1024x1024",
        f"xc:{col}",
        "(",
        M / "asagi-symbol.png",
        "-resize",
        "880x880",
        ")",
        "-gravity",
        "center",
        "-compose",
        "over",
        "-composite",
        "-alpha",
        "off",
        I / "app" / f"asagi-{name}-1024.png",
    )
for size in [16, 32, 48, 64, 96, 128, 192, 256, 512]:
    mag(
        I / "app/asagi-main-1024.png",
        "-resize",
        f"{size}x{size}",
        I / "web" / f"asagi-{size}.png",
    )
mag(I / "app/asagi-main-1024.png", "-resize", "180x180", I / "web/apple-touch-icon.png")
mag(
    "-size",
    "512x512",
    "xc:#0095A9",
    "(",
    M / "asagi-symbol.png",
    "-resize",
    "340x340",
    ")",
    "-gravity",
    "center",
    "-composite",
    "-alpha",
    "off",
    I / "web/maskable-512.png",
)
mag(
    I / "web/asagi-16.png",
    I / "web/asagi-32.png",
    I / "web/asagi-48.png",
    I / "web/favicon.ico",
)
# Lockups retain the same artwork, not independent regenerated approximations.
mag(
    "-size",
    "1800x760",
    "xc:none",
    "(",
    M / "asagi-symbol.png",
    "-resize",
    "720x720",
    ")",
    "-geometry",
    "+20+20",
    "-composite",
    "(",
    M / "asagi-wordmark.png",
    "-resize",
    "880x350",
    ")",
    "-geometry",
    "+820+210",
    "-composite",
    L / "asagi-horizontal.png",
)
mag(
    "-size",
    "1000x1250",
    "xc:none",
    "(",
    M / "asagi-symbol.png",
    "-resize",
    "900x900",
    ")",
    "-geometry",
    "+50+0",
    "-composite",
    "(",
    M / "asagi-wordmark.png",
    "-resize",
    "740x280",
    ")",
    "-gravity",
    "south",
    "-geometry",
    "+0+60",
    "-composite",
    L / "asagi-stacked.png",
)
# Trace fixed palette regions into true paths. No embedded raster in vector exports.
colors = ["#243438", "#0095A9", "#6FCBC2", "#BCE4E2", "#FAAD7D", "#FFFFFF", "#FF00FF"]
mag(*[f"xc:{c}" for c in colors], "+append", S / "palette.png")
mag(
    M / "asagi-symbol.png",
    "-background",
    "#FF00FF",
    "-alpha",
    "remove",
    "-alpha",
    "off",
    "-blur",
    "0x0.6",
    "+dither",
    "-remap",
    S / "palette.png",
    S / "quantized.png",
)
ns = "{http://www.w3.org/2000/svg}"


def trace(mask, dest, color):
    run("potrace", mask, "-s", "--turdsize", "18", "--opttolerance", "0.35", "-o", dest)
    root = ET.parse(dest).getroot()
    g = root.find(ns + "g")
    g.set("fill", color)
    return ET.tostring(g, encoding="unicode")


parts = []
for i, c in enumerate(colors[:-1]):
    mask = S / f"layer-{i}.pbm"
    out = S / f"layer-{i}.svg"
    mag(
        S / "quantized.png",
        "-fill",
        "black",
        "+opaque",
        c,
        "-fill",
        "white",
        "-opaque",
        c,
        "-negate",
        "-threshold",
        "50%",
        mask,
    )
    parts.append(trace(mask, out, c))
header = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024"><title>Asagi approved mascot — palette vector</title>'
(M / "asagi-symbol.svg").write_text(header + "".join(parts) + "</svg>")
# The ink drawing uses the same traced navy contours and facial details.
(M / "asagi-ink.svg").write_text(header + parts[0] + "</svg>")
(M / "asagi-reversed.svg").write_text(
    header + parts[0].replace("#243438", "#FFFFFF") + "</svg>"
)
mag(
    M / "asagi-wordmark.png",
    "-background",
    "white",
    "-alpha",
    "remove",
    "-colorspace",
    "gray",
    "-threshold",
    "75%",
    S / "wordmark.pbm",
)
run(
    "potrace",
    S / "wordmark.pbm",
    "-s",
    "--turdsize",
    "8",
    "--opttolerance",
    ".3",
    "-o",
    M / "asagi-wordmark.svg",
)
# Monochrome outlined wordmark keeps the generated letter contours.
f = M / "asagi-wordmark.svg"
f.write_text(f.read_text().replace("#000000", "#243438"))
manifest = {
    "name": "Asagi",
    "short_name": "Asagi",
    "start_url": "/",
    "display": "standalone",
    "background_color": "#F7FAF8",
    "theme_color": "#0095A9",
    "icons": [
        {"src": "asagi-192.png", "sizes": "192x192", "type": "image/png"},
        {"src": "asagi-512.png", "sizes": "512x512", "type": "image/png"},
        {
            "src": "maskable-512.png",
            "sizes": "512x512",
            "type": "image/png",
            "purpose": "maskable",
        },
    ],
}
(I / "web/site.webmanifest").write_text(json.dumps(manifest, indent=2))
(I / "web/head-snippet.html").write_text(
    '<link rel="icon" href="favicon.ico">\n<link rel="apple-touch-icon" href="apple-touch-icon.png">\n<link rel="manifest" href="site.webmanifest">\n<meta name="theme-color" content="#0095A9">\n'
)

# Optical favicon cut selected after the size review.
if (S / "small.png").exists():
    mag(
        S / "small.png",
        "-trim",
        "+repage",
        "-resize",
        "920x920",
        "-gravity",
        "center",
        "-background",
        "none",
        "-extent",
        "1024x1024",
        M / "asagi-small.png",
    )
    mag(
        "-size",
        "1024x1024",
        "xc:#0095A9",
        M / "asagi-small.png",
        "-gravity",
        "center",
        "-composite",
        "-alpha",
        "off",
        I / "web/small-tile.png",
    )
    for size in [16, 32, 48]:
        mag(
            I / "web/small-tile.png",
            "-resize",
            f"{size}x{size}",
            I / "web" / f"asagi-{size}.png",
        )
    mag(
        I / "web/asagi-16.png",
        I / "web/asagi-32.png",
        I / "web/asagi-48.png",
        I / "web/favicon.ico",
    )
