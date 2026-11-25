"""Render approved masters into runtime and delivery assets (requires rsvg-convert)."""
from pathlib import Path
import shutil
import subprocess

ROOT = Path(__file__).resolve().parents[3]
KIT = ROOT / 'brand/kuymo'
MASTERS = KIT / 'masters'


def render(source, destination, width, height=None):
    command = ['rsvg-convert', '-w', str(width)]
    if height is not None:
        command += ['-h', str(height)]
    subprocess.run(command + [str(source), '-o', str(destination)], check=True)


def main():
    for name in ['kuymo-symbol', 'kuymo-symbol-small']:
        shutil.copy(MASTERS / f'{name}.svg', ROOT / f'assets/brand/{name}.svg')
    render(MASTERS / 'kuymo-app-icon.svg', ROOT / 'assets/brand/kuymo-app-icon-1024.png', 1024)
    for appearance in ['dark', 'tinted']:
        render(MASTERS / f'kuymo-app-icon-ios-{appearance}.svg', ROOT / f'assets/brand/kuymo-app-icon-ios-{appearance}.png', 1024)
    for name in ['play_store_512.png', 'icon-512.png', 'ic_launcher.png']:
        render(MASTERS / 'kuymo-app-icon.svg', ROOT / 'assets/icons' / name, 512)
    render(MASTERS / 'kuymo-adaptive-foreground.svg', ROOT / 'assets/icons/ic_launcher_foreground.png', 432)
    foreground = (MASTERS / 'kuymo-adaptive-foreground.svg').read_text()
    mono = MASTERS / 'kuymo-adaptive-monochrome.svg'
    mono.write_text(foreground.replace('#283D50', '#000000'))
    render(mono, ROOT / 'assets/icons/ic_launcher_monochrome.png', 432)
    background = MASTERS / 'kuymo-icon-background.svg'
    background.write_text('<svg xmlns="http://www.w3.org/2000/svg" width="432" height="432" viewBox="0 0 432 432"><path fill="#E3E8EB" d="M0 0H432V432H0Z"/></svg>')
    render(background, ROOT / 'assets/icons/ic_launcher_background.png', 432)
    for name in ['kuymo-splash', 'kuymo-splash-dark']:
        render(MASTERS / f'{name}.svg', ROOT / f'assets/brand/{name}.png', 768)
    # Android 12 masks splash artwork: use the more inset safe-circle drawing.
    render(MASTERS / 'kuymo-adaptive-foreground.svg', ROOT / 'assets/brand/kuymo-splash-android12.png', 1152)
    reverse = MASTERS / 'kuymo-adaptive-reverse.svg'
    symbol = (MASTERS / 'kuymo-symbol-white.svg').read_text()
    inner = symbol[symbol.index('<path'):symbol.rindex('</svg>')]
    reverse.write_text('<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 432 432"><g transform="translate(75.2 75.2) scale(1.1)">' + inner + '</g></svg>')
    render(reverse, ROOT / 'assets/brand/kuymo-splash-android12-dark.png', 1152)
    for source in MASTERS.glob('*.svg'):
        if 'adaptive' in source.stem or 'background' in source.stem:
            continue
        render(source, KIT / f'exports/{source.stem}-1024.png', 1024)
    # Flutter web assets have intentionally been removed; do not recreate them.
    render(MASTERS / 'kuymo-maskable-icon.svg', KIT / 'exports/web/maskable-512.png', 512)


if __name__ == '__main__':
    main()
