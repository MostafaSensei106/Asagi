"""Normalize generated state assets, build a preview, and publish their UI mapping."""

import json
import subprocess
from pathlib import Path

P = Path(__file__).resolve().parents[1]
states = [
    ("welcome", "Welcome", "Onboarding / first launch", "أهلًا بيك في Asagi"),
    ("empty", "Empty library", "No selected or saved videos", "اختار أول فيديو"),
    ("analyzing", "Analyzing", "Inspecting video metadata / planning", "بنفحص الفيديو"),
    ("paused", "Paused", "User paused a resumable operation", "الضغط متوقف مؤقتًا"),
    (
        "error",
        "Needs attention",
        "Recoverable error / infeasible size",
        "جرّب حجم أكبر أو فيديو تاني",
    ),
    (
        "share",
        "Ready to share",
        "Verified output available to share",
        "الفيديو جاهز للمشاركة",
    ),
]
for name, *_ in states:
    source = P / f"source/extra-states/{name}.png"
    adjusted = source.with_name(source.stem + ".asagi.png")
    subprocess.run(
        ["magick", str(source), "-fill", "#243438", "-fuzz", "18%", "-opaque", "#001F3F", str(adjusted)],
        check=True,
    )
    adjusted.replace(source)
    subprocess.run(
        [
            "magick",
            str(source),
            "-trim",
            "+repage",
            "-resize",
            "880x880",
            "-gravity",
            "center",
            "-background",
            "none",
            "-extent",
            "1024x1024",
            str(P / f"mascot/{name}.png"),
        ],
        check=True,
    )
manifest = []
for name, label, use, alt in states:
    manifest.append(
        {
            "id": name,
            "path": f"{name}.png",
            "width": 1024,
            "height": 1024,
            "background": "transparent",
            "recommendedLogicalSize": 192,
            "minimumRecommendedLogicalSize": 96,
            "use": use,
            "suggestedArabicLabel": alt,
        }
    )
(P / "mascot/extra-states.json").write_text(
    json.dumps(manifest, ensure_ascii=False, indent=2)
)
parts = [
    '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="1500" height="1100" viewBox="0 0 1500 1100"><rect width="1500" height="1100" fill="#F7FAF8"/><text x="50" y="62" font-family="sans-serif" font-size="30" fill="#243438">Asagi / More moments, same companion</text>'
]
for i, (name, label, use, alt) in enumerate(states):
    x = 40 + (i % 3) * 490
    y = 100 + (i // 3) * 490
    parts.append(
        f'<rect x="{x}" y="{y}" width="470" height="470" rx="24" fill="white"/><image x="{x + 35}" y="{y + 10}" width="400" height="380" href="{name}.png"/><text x="{x + 25}" y="{y + 418}" font-family="sans-serif" font-size="25" fill="#243438">{label}</text><text x="{x + 25}" y="{y + 448}" font-family="sans-serif" font-size="15" fill="#006F7D">{use}</text>'
    )
parts.append("</svg>")
(P / "mascot/extra-states-overview.svg").write_text("".join(parts))
