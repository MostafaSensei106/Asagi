"""Refresh website/delivery assets after build_identity.py and render_assets.py.

Requires rsvg-convert and Pillow. Never recreates the removed Flutter web icons.
"""
import base64
import json
import re
import shutil
import subprocess
from pathlib import Path
from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
KIT = ROOT / 'brand/kuymo'


def render(source: Path, destination: Path, size: int) -> None:
    subprocess.run(['rsvg-convert', '-w', str(size), str(source), '-o', str(destination)], check=True)


def main() -> None:
    masters = KIT / 'masters'
    web = KIT / 'exports/web'
    public = ROOT / 'website/public/branding'
    for name in ['kuymo-symbol', 'kuymo-symbol-white', 'kuymo-horizontal', 'kuymo-horizontal-white']:
        shutil.copy(masters / f'{name}.svg', public / f'{name}.svg')
    small = (masters / 'kuymo-symbol-small.svg').read_text()
    for folder in [public, web]:
        for name, size in [('icon-192', 192), ('icon-512', 512), ('apple-touch-icon', 180), ('favicon-16', 16), ('favicon-32', 32), ('favicon-48', 48)]:
            render(masters / 'kuymo-app-icon.svg', folder / f'{name}.png', size)
        (folder / 'favicon.svg').write_text(small)
        Image.open(folder / 'icon-512.png').save(folder / 'favicon.ico', sizes=[(16, 16), (32, 32), (48, 48)])
    shutil.copy(web / 'maskable-512.png', public / 'maskable-512.png')
    (web / 'kuymo-favicon.svg').write_text(small)
    (web / 'kuymo-square.svg').write_text((masters / 'kuymo-app-icon.svg').read_text())
    manifest = {
        'name': 'Kuymo', 'short_name': 'Kuymo', 'display': 'standalone',
        'background_color': '#F5F1E8', 'theme_color': '#283D50',
        'icons': [{'src': f'./icon-{size}.png', 'sizes': f'{size}x{size}', 'type': 'image/png'} for size in [192, 512]],
    }
    (web / 'site.webmanifest').write_text(json.dumps(manifest, indent=2) + '\n')
    # Served beside the icons: relative paths remain valid under BASE_PATH.
    (public / 'site.webmanifest').write_text(json.dumps(manifest, indent=2) + '\n')
    logo = (masters / 'kuymo-horizontal.svg').read_text()
    inner = logo[logo.index('<path'):logo.rindex('</svg>')]
    og = f'''<svg xmlns="http://www.w3.org/2000/svg" width="1200" height="630" viewBox="0 0 1200 630">
<rect width="1200" height="630" fill="#F5F1E8"/><circle cx="1100" cy="100" r="260" fill="#E3E8EB"/>
<circle cx="1060" cy="160" r="65" fill="#C64B36"/><g transform="translate(65 55) scale(.85)">{inner}</g>
<text x="98" y="365" font-family="Google Sans, sans-serif" font-weight="700" font-size="58" fill="#283D50">More room for your moments.</text>
<text x="100" y="430" font-family="Google Sans, sans-serif" font-size="26" fill="#53616B">On-device video compression. Made for Android.</text>
<path d="M100 500H320" stroke="#C64B36" stroke-width="8"/></svg>'''
    target = KIT / 'presentation/og-default.svg'
    target.write_text(og)
    render(target, public / 'og-default.png', 1200)
    render(KIT / 'presentation/brand-board.svg', KIT / 'presentation/brand-board.png', 1600)
    native_preview = KIT / 'presentation/native-appearance-preview.svg'
    native_images = iter([
        'kuymo-app-icon-1024.png', 'kuymo-app-icon-ios-dark.png',
        'kuymo-app-icon-ios-tinted.png', 'kuymo-splash-android12.png',
        'kuymo-splash-android12-dark.png',
    ])
    def replace_image(match: re.Match) -> str:
        source = ROOT / 'assets/brand' / next(native_images)
        return 'data:image/png;base64,' + base64.b64encode(source.read_bytes()).decode('ascii')
    native_svg, image_count = re.subn(
        r'data:image/png;base64,[A-Za-z0-9+/=]+', replace_image,
        native_preview.read_text(),
    )
    if image_count != 5:
        raise ValueError(f'Expected five native preview images, found {image_count}')
    native_preview.write_text(native_svg)
    render(native_preview, native_preview.with_suffix('.png'), 1200)
    product = ROOT / 'website/public/product'
    product.mkdir(exist_ok=True)
    for locale in ['en', 'ar']:
        for mode in ['light', 'dark']:
            name = f'home-{locale}-{mode}.png'
            shutil.copy(KIT / f'presentation/screens/{name}', product / name)
    print('Website and delivery assets refreshed.')


if __name__ == '__main__':
    main()
