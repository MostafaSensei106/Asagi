#!/usr/bin/env python3
"""Generate Flutter ColorSchemes with matugen from Asagi's complete palette."""

import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "lib/core/utils/theme/generated_color_schemes.dart"
VARIANTS = {
    "auto": "scheme-smart",
    "tonalSpot": "scheme-tonal-spot",
    "content": "scheme-content",
    "expressive": "scheme-expressive",
    "fidelity": "scheme-fidelity",
    "fruitSalad": "scheme-fruit-salad",
    "monochrome": "scheme-monochrome",
    "neutral": "scheme-neutral",
    "rainbow": "scheme-rainbow",
    "vibrant": "scheme-vibrant",
}
SEEDS = {
    "asagi": "0095A9",
    "deep": "006F7D",
    "mizu": "6FCBC2",
    "lightAsagi": "BCE4E2",
    "coral": "FAAD7D",
    "ink": "243438",
    "snow": "F7FAF8",
}

ACCENT_ROLES = (
    "primary",
    "on_primary",
    "primary_container",
    "on_primary_container",
    "primary_fixed",
    "primary_fixed_dim",
    "on_primary_fixed",
    "on_primary_fixed_variant",
)
SECONDARY_ROLES = tuple(role.replace("primary", "secondary") for role in ACCENT_ROLES)
TERTIARY_ROLES = tuple(role.replace("primary", "tertiary") for role in ACCENT_ROLES)
CONSTRUCTOR_ROLES = {
    "background": "background",
    "error": "error",
    "error_container": "errorContainer",
    "inverse_on_surface": "onInverseSurface",
    "inverse_primary": "inversePrimary",
    "inverse_surface": "inverseSurface",
    "on_background": "onBackground",
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
    "surface_variant": "surfaceVariant",
    "tertiary": "tertiary",
    "tertiary_container": "tertiaryContainer",
    "tertiary_fixed": "tertiaryFixed",
    "tertiary_fixed_dim": "tertiaryFixedDim",
}


def generate(seed: str, scheme: str, mode: str, contrast: float) -> dict:
    result = subprocess.run(
        [
            "matugen",
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
        ],
        check=True,
        capture_output=True,
        text=True,
    )
    return json.loads(result.stdout)["colors"]


def selected(colors: dict, role: str) -> str:
    return colors[role]["default"]["color"]


def dart_color(hex_color: str) -> str:
    return f"Color(0xFF{hex_color.removeprefix('#').upper()})"


def main() -> None:
    schemes = []
    for variant, matugen_type in VARIANTS.items():
        for mode in ("light", "dark"):
            for high_contrast, contrast in ((False, 0.0), (True, 1.0)):
                palettes = {
                    name: generate(seed, matugen_type, mode, contrast)
                    for name, seed in SEEDS.items()
                }
                colors = palettes["asagi"]
                # Brand hues become Material's three coordinated accent groups.
                for source, roles in (
                    ("mizu", SECONDARY_ROLES),
                    ("coral", TERTIARY_ROLES),
                ):
                    for target_role in roles:
                        source_role = target_role.replace(
                            "secondary", "primary"
                        ).replace("tertiary", "primary")
                        colors[target_role] = palettes[source][source_role]

                # The full brand palette also informs neutral surfaces, outlines,
                # pale containers, and the inverse action accent.
                neutral_source = (
                    palettes["snow"] if mode == "light" else palettes["ink"]
                )
                for role in (
                    "background",
                    "on_background",
                    "on_surface",
                    "on_surface_variant",
                    "outline",
                    "outline_variant",
                    "surface",
                    "surface_bright",
                    "surface_container",
                    "surface_container_high",
                    "surface_container_highest",
                    "surface_container_low",
                    "surface_container_lowest",
                    "surface_dim",
                    "surface_variant",
                ):
                    colors[role] = neutral_source[role]
                colors["primary_container"] = palettes["lightAsagi"][
                    "primary_container"
                ]
                colors["on_primary_container"] = palettes["deep"][
                    "on_primary_container"
                ]
                colors["inverse_primary"] = palettes["deep"]["inverse_primary"]

                args = [f"brightness: Brightness.{mode}"]
                for source_role, constructor_role in CONSTRUCTOR_ROLES.items():
                    color = selected(colors, source_role)
                    args.append(f"{constructor_role}: {dart_color(color)}")
                schemes.append(
                    f"  '{variant}|{mode}|{str(high_contrast).lower()}': ColorScheme(\n    "
                    + ",\n    ".join(args)
                    + ",\n  ),"
                )

    generated = (
        """// Generated by tool/generate_asagi_schemes.py using matugen.
// Do not edit by hand. Regenerate with: python3 tool/generate_asagi_schemes.py
import 'package:material_ui/material_ui.dart';

// ignore_for_file: deprecated_member_use

ColorScheme matugenColorScheme({
  required String variant,
  required Brightness brightness,
  required bool highContrast,
}) => _schemes[
  '$variant|${brightness.name}|$highContrast'
]!;

const Map<String, ColorScheme> _schemes = {
"""
        + "\n".join(schemes)
        + "\n};\n"
    )
    OUTPUT.write_text(generated)
    print(f"Generated {len(schemes)} matugen ColorSchemes at {OUTPUT}")


if __name__ == "__main__":
    main()
