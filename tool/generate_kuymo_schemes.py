"""Generate and audit complete Material palettes with Matugen 4.2.0.

No templates, wallpaper changes, or user hooks are run. Only verified output is
written; --check compares deterministic artifacts without changing them.
"""

import argparse
import json
import math
import re
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "lib/core/utils/theme/generated_color_schemes.dart"
EXPECTED_VERSION = "4.2.0"
BRAND_COLORS = json.loads((ROOT / "brand/kuymo/tokens.json").read_text())["colors"]
DEFAULT_SEED = BRAND_COLORS["indigo"].removeprefix("#")
VARIANTS = {
    "auto": "scheme-tonal-spot",
    "tonalSpot": "scheme-tonal-spot",
    "fidelity": "scheme-fidelity",
    "content": "scheme-content",
    "expressive": "scheme-expressive",
    "fruitSalad": "scheme-fruit-salad",
    "monochrome": "scheme-monochrome",
    "neutral": "scheme-neutral",
    "rainbow": "scheme-rainbow",
    "vibrant": "scheme-vibrant",
}

CONSTRUCTOR_ROLES = {
    "error": "error",
    "error_container": "errorContainer",
    "inverse_on_surface": "onInverseSurface",
    "inverse_primary": "inversePrimary",
    "inverse_surface": "inverseSurface",
    "on_error": "onError",
    "on_error_container": "onErrorContainer",
    "on_primary": "onPrimary",
    "on_primary_container": "onPrimaryContainer",
    "on_primary_fixed": "onPrimaryFixed",
    "on_primary_fixed_variant": "onPrimaryFixedVariant",
    "on_secondary": "onSecondary",
    "on_secondary_container": "onSecondaryContainer",
    "on_secondary_fixed": "onSecondaryFixed",
    "on_secondary_fixed_variant": "onSecondaryFixedVariant",
    "on_surface": "onSurface",
    "on_surface_variant": "onSurfaceVariant",
    "on_tertiary": "onTertiary",
    "on_tertiary_container": "onTertiaryContainer",
    "on_tertiary_fixed": "onTertiaryFixed",
    "on_tertiary_fixed_variant": "onTertiaryFixedVariant",
    "outline": "outline",
    "outline_variant": "outlineVariant",
    "primary": "primary",
    "primary_container": "primaryContainer",
    "primary_fixed": "primaryFixed",
    "primary_fixed_dim": "primaryFixedDim",
    "scrim": "scrim",
    "secondary": "secondary",
    "secondary_container": "secondaryContainer",
    "secondary_fixed": "secondaryFixed",
    "secondary_fixed_dim": "secondaryFixedDim",
    "shadow": "shadow",
    "surface": "surface",
    "surface_bright": "surfaceBright",
    "surface_container": "surfaceContainer",
    "surface_container_high": "surfaceContainerHigh",
    "surface_container_highest": "surfaceContainerHighest",
    "surface_container_low": "surfaceContainerLow",
    "surface_container_lowest": "surfaceContainerLowest",
    "surface_dim": "surfaceDim",
    "surface_tint": "surfaceTint",
    "tertiary": "tertiary",
    "tertiary_container": "tertiaryContainer",
    "tertiary_fixed": "tertiaryFixed",
    "tertiary_fixed_dim": "tertiaryFixedDim",
}


def normalized_seed(value: str) -> str:
    value = value.removeprefix("#")
    if not re.fullmatch(r"[0-9a-fA-F]{6}", value):
        raise ValueError("Seed must contain exactly six hexadecimal digits.")
    return value.upper()


def run_matugen(arguments: list[str]) -> str:
    try:
        result = subprocess.run(
            ["matugen", *arguments],
            check=True,
            capture_output=True,
            text=True,
            timeout=30,
        )
        return result.stdout
    except FileNotFoundError as error:
        raise ValueError("Matugen is missing. Install Matugen 4.2.0.") from error
    except subprocess.TimeoutExpired as error:
        raise ValueError("Matugen timed out.") from error
    except subprocess.CalledProcessError as error:
        raise ValueError(f"Matugen failed: {error.stderr.strip()}") from error


def generate(seed: str, scheme: str, mode: str, contrast: float) -> dict[str, str]:
    raw = json.loads(
        run_matugen(
            [
                "color",
                "hex",
                seed,
                "--type",
                scheme,
                "--mode",
                mode,
                "--contrast",
                str(contrast),
                "--json",
                "hex",
                "--dry-run",
            ]
        )
    )
    colors = {}
    for role in CONSTRUCTOR_ROLES:
        try:
            value = raw["colors"][role][mode]["color"]
        except (KeyError, TypeError) as error:
            raise ValueError(f"Missing or malformed Matugen role: {role}") from error
        if not isinstance(value, str) or not re.fullmatch(r"#[0-9a-fA-F]{6}", value):
            raise ValueError(f"Invalid HEX for {role}: {value!r}")
        colors[role] = value.upper()
    return colors


def brand_scheme(mode: str, contrast: float) -> dict[str, str]:
    """Use independently generated accent families and warm neutral surfaces.

    Each role family retains Matugen's paired foreground and fixed tones. This
    avoids recoloring individual roles after their contrast has been audited.
    """
    colors = generate(BRAND_COLORS["vermilion"].removeprefix("#"), "scheme-fidelity", mode, contrast)
    indigo = generate(DEFAULT_SEED, "scheme-fidelity", mode, contrast)
    paper = generate("A99578", "scheme-neutral", mode, contrast)
    for role in CONSTRUCTOR_ROLES:
        if "secondary" in role:
            colors[role] = indigo[role.replace("secondary", "primary")]
        elif "tertiary" in role:
            colors[role] = paper[role.replace("tertiary", "primary")]
        elif "surface" in role or role in ("outline", "outline_variant", "shadow", "scrim"):
            colors[role] = paper[role]
    if mode == "light":
        colors["surface"] = BRAND_COLORS["paper"]
        colors["on_surface"] = BRAND_COLORS["indigo"] if contrast == 0 else "#162431"
        colors["on_surface_variant"] = "#394A58" if contrast == 0 else "#162431"
        if contrast == 0:
            colors["primary"] = BRAND_COLORS["vermilion"]
            colors["on_primary"] = "#FFFFFF"
    return colors


def luminance(color: str) -> float:
    channels = [int(color[i : i + 2], 16) / 255.0 for i in (1, 3, 5)]
    linear = [
        v / 12.92 if v <= 0.04045 else ((v + 0.055) / 1.055) ** 2.4 for v in channels
    ]
    return sum(v * weight for v, weight in zip(linear, (0.2126, 0.7152, 0.0722)))


def tone(color: str) -> float:
    # HCT's Tone is CIELAB L*, derived from relative luminance Y.
    y = luminance(color)
    return 116 * math.cbrt(y) - 16 if y > 216 / 24389 else y * 24389 / 27


def contrast_ratio(first: str, second: str) -> float:
    lighter, darker = sorted((luminance(first), luminance(second)), reverse=True)
    return (lighter + 0.05) / (darker + 0.05)


def foreground_pairs() -> list[tuple[str, str]]:
    pairs = [
        ("on_surface", role)
        for role in (
            "surface",
            "surface_container_lowest",
            "surface_container_low",
            "surface_container",
            "surface_container_high",
            "surface_container_highest",
        )
    ]
    pairs += [
        ("on_surface_variant", "surface_container_highest"),
        ("inverse_on_surface", "inverse_surface"),
    ]
    for accent in ("primary", "secondary", "tertiary", "error"):
        pairs += [
            (f"on_{accent}", accent),
            (f"on_{accent}_container", f"{accent}_container"),
        ]
        if accent != "error":
            pairs += [
                (f"on_{accent}_fixed", f"{accent}_fixed"),
                (f"on_{accent}_fixed", f"{accent}_fixed_dim"),
                (f"on_{accent}_fixed_variant", f"{accent}_fixed"),
                (f"on_{accent}_fixed_variant", f"{accent}_fixed_dim"),
            ]
    return pairs


def audit(colors: dict[str, str], mode: str, high_contrast: bool) -> dict:
    pairs = {}
    for foreground, background in foreground_pairs():
        ratio = contrast_ratio(colors[foreground], colors[background])
        # Fixed roles intentionally retain their standard tones in high contrast.
        minimum = 7.0 if high_contrast and "fixed" not in foreground else 4.5
        if ratio < minimum:
            raise ValueError(f"{foreground}/{background}: {ratio:.4f}:1 < {minimum}:1")
        pairs[f"{foreground}/{background}"] = round(ratio, 4)
    levels = [
        tone(colors[role])
        for role in (
            "surface_container_lowest",
            "surface_container_low",
            "surface_container",
            "surface_container_high",
            "surface_container_highest",
        )
    ]
    ordered = sorted(levels, reverse=mode == "light")
    if levels != ordered:
        raise ValueError(f"Surface container tones are out of order: {levels}")
    outline = contrast_ratio(colors["outline"], colors["surface"])
    if outline < 3.0:
        raise ValueError(f"Interactive outline contrast is too low: {outline:.4f}:1")
    return {
        "roles": {
            role: {"hex": value, "tone": round(tone(value), 4)}
            for role, value in colors.items()
        },
        "contrast": pairs,
        "outlineContrast": round(outline, 4),
    }


def render(seed: str, schemes: dict[str, dict[str, str]]) -> str:
    header = f"""// Generated by tool/generate_kuymo_schemes.py using Matugen {EXPECTED_VERSION}.
// Do not edit by hand. Regenerate with: python3 tool/generate_kuymo_schemes.py
import 'package:material_ui/material_ui.dart';

const Color kuymoSeedColor = Color(0xFF{seed});

ColorScheme matugenColorScheme({{
  required String variant,
  required Brightness brightness,
  required bool highContrast,
}}) => _schemes['$variant|${{brightness.name}}|$highContrast']!;

const Map<String, ColorScheme> _schemes = {{
"""
    entries = []
    for key, colors in schemes.items():
        mode = key.split("|")[1]
        args = [f"brightness: Brightness.{mode}"]
        args += [
            f"{CONSTRUCTOR_ROLES[role]}: Color(0xFF{value[1:]})"
            for role, value in colors.items()
        ]
        entries.append(
            f"  '{key}': ColorScheme(\n    " + ",\n    ".join(args) + ",\n  ),"
        )
    return header + "\n".join(entries) + "\n};\n"


def write_artifact(path: Path, content: str, check: bool) -> None:
    if check:
        if not path.exists() or path.read_text() != content:
            raise ValueError(f"Generated artifact is stale: {path}")
        return
    path.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile(
        mode="w", dir=path.parent, delete=False
    ) as temporary:
        temporary.write(content)
        temporary_path = Path(temporary.name)
    temporary_path.replace(path)


def main(arguments: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--seed", default=DEFAULT_SEED)
    parser.add_argument("--output", type=Path, default=OUTPUT)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args(arguments)
    try:
        seed = normalized_seed(args.seed)
        version = run_matugen(["--version"]).strip()
        if version != f"matugen {EXPECTED_VERSION}":
            raise ValueError(f"Expected Matugen {EXPECTED_VERSION}, found {version!r}.")
        schemes, report = {}, {}
        for variant, scheme in VARIANTS.items():
            for mode in ("light", "dark"):
                for high_contrast, contrast in ((False, 0.0), (True, 1.0)):
                    key = f"{variant}|{mode}|{str(high_contrast).lower()}"
                    colors = (brand_scheme(mode, contrast) if variant == "auto"
                              else generate(seed, scheme, mode, contrast))
                    try:
                        report[key] = audit(colors, mode, high_contrast)
                    except ValueError as error:
                        raise ValueError(f"{key}: {error}") from error
                    schemes[key] = colors
        dart = render(seed, schemes)
        report_text = (
            json.dumps(
                {
                    "seed": f"#{seed}",
                    "matugenVersion": EXPECTED_VERSION,
                    "schemes": report,
                },
                indent=2,
            )
            + "\n"
        )
        output = args.output.resolve()
        report_path = output.with_suffix(".audit.json")
        # All generation and audits finish before any destination is replaced.
        if args.check:
            write_artifact(output, dart, True)
            write_artifact(report_path, report_text, True)
        else:
            write_artifact(output, dart, False)
            write_artifact(report_path, report_text, False)
        print(
            f"{'Verified' if args.check else 'Generated'} {len(schemes)} schemes: {output}"
        )
        return 0
    except (ValueError, json.JSONDecodeError) as error:
        print(f"Color generation failed: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
