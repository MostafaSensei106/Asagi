"""Compose the GitHub banner from approved vector artwork (requires rsvg-convert)."""

import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
KIT = ROOT / "brand/kuymo"


def main():
    source = (KIT / "masters/kuymo-horizontal.svg").read_text()
    artwork = re.sub(r"^.*?</title>", "", source, flags=re.DOTALL).removesuffix("\n")
    artwork = artwork[: artwork.rfind("</svg>")]
    banner = (
        """<svg xmlns="http://www.w3.org/2000/svg" width="1600" height="540" viewBox="0 0 1600 540" role="img" aria-labelledby="title desc">
<title id="title">Kuymo  More room for your moments.</title>
<desc id="desc">The Kuymo pocket symbol and wordmark on a warm paper and matcha background.</desc>
<rect width="1600" height="540" rx="36" fill="#FAF8F1"/>
<rect x="1062" y="-144" width="640" height="760" rx="220" transform="rotate(18 1382 236)" fill="#DDE9C6"/>
<path d="M1370 78H1442Q1482 78 1482 118V190Q1482 214 1458 214H1370L1330 174V118Q1330 78 1370 78Z" fill="#F4BC95"/>
<path d="M1190 338H1238Q1262 338 1262 362V410Q1262 434 1238 434H1190L1166 410V362Q1166 338 1190 338Z" fill="#284B3B"/>
<g transform="translate(76 46) scale(1.38)">"""
        + artwork
        + """</g>
<g fill="#1E2D24" font-family="Google Sans, Arial, sans-serif">
<text x="130" y="416" font-size="45" font-weight="600">More room for your moments.</text>
<text x="132" y="467" font-size="25">Pick a video. Choose a size. Keep it on your device.</text>
</g></svg>
"""
    )
    target = KIT / "presentation/readme-banner.svg"
    target.write_text(banner)
    subprocess.run(
        ["rsvg-convert", str(target), "-o", str(target.with_suffix(".png"))], check=True
    )


if __name__ == "__main__":
    main()
