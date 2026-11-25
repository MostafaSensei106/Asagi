"""Check generated native branding selectors and image safety (requires Pillow)."""
import json
from pathlib import Path
import xml.etree.ElementTree as ET

from PIL import Image

ROOT = Path(__file__).resolve().parents[1]
ANDROID = ROOT / 'android/app/src/main/res'
IOS = ROOT / 'ios/Runner/Assets.xcassets'
ASSETS = ROOT / 'assets/brand'


def rgba(path):
    return Image.open(path).convert('RGBA')


def verify_circle(path, diameter):
    image = rgba(path)
    width, height = image.size
    assert width == height
    center = width / 2
    radius = diameter / 2
    visible = 0
    pixels = image.load()
    for y in range(height):
        for x in range(width):
            if pixels[x, y][3]:
                visible += 1
                assert (x + .5 - center) ** 2 + (y + .5 - center) ** 2 <= radius ** 2, path
    assert visible > 0, f'Blank artwork: {path}'


def verify_appearances(catalog, expected):
    entries = json.loads((catalog / 'Contents.json').read_text())['images']
    found = set()
    for entry in entries:
        filename = entry.get('filename')
        if not filename:
            continue
        path = catalog / filename
        assert path.is_file(), path
        for appearance in entry.get('appearances', []):
            if appearance['appearance'] == 'luminosity':
                found.add(appearance['value'])
    assert expected <= found, (catalog, found)


def main():
    for suffix in ['', '-dark']:
        image = rgba(ASSETS / f'kuymo-splash-android12{suffix}.png')
        assert image.size == (1152, 1152)
        verify_circle(ASSETS / f'kuymo-splash-android12{suffix}.png', 768)
        assert rgba(ASSETS / f'kuymo-splash{suffix}.png').size == (768, 768)
    verify_circle(ROOT / 'assets/icons/ic_launcher_foreground.png', 264)
    backgrounds = []
    for mode in ['', '-night']:
        styles = ET.parse(ANDROID / f'values{mode}-v31/styles.xml')
        items = {node.attrib['name']: node.text for node in styles.findall(".//style[@name='LaunchTheme']/item")}
        assert items['android:windowSplashScreenAnimatedIcon'] == '@drawable/android12splash'
        backgrounds.append(items['android:windowSplashScreenBackground'])
        assert backgrounds[-1].startswith('#')
        for density in ['mdpi', 'hdpi', 'xhdpi', 'xxhdpi', 'xxxhdpi']:
            folder = ANDROID / f'drawable{mode}-{density}'
            assert (folder / 'splash.png').is_file()
            assert (folder / 'android12splash.png').is_file()
        background = ET.parse(ANDROID / f'drawable{mode}/launch_background.xml')
        assert background.find('.//bitmap') is not None
    assert backgrounds[0] != backgrounds[1], 'Light/night splash backgrounds must differ'
    assert rgba(ANDROID / 'drawable-xxxhdpi/android12splash.png').size == (1152, 1152)
    assert rgba(ANDROID / 'drawable-night-xxxhdpi/android12splash.png').size == (1152, 1152)
    assert rgba(ANDROID / 'drawable-xxxhdpi/splash.png').size == (768, 768)
    adaptive = ET.parse(ANDROID / 'mipmap-anydpi-v26/launcher_icon.xml')
    assert adaptive.find('foreground') is not None
    assert adaptive.find('monochrome') is not None
    verify_appearances(IOS / 'AppIcon.appiconset', {'dark', 'tinted'})
    verify_appearances(IOS / 'LaunchImage.imageset', {'dark'})
    verify_appearances(IOS / 'LaunchBackground.imageset', {'dark'})
    default = rgba(ASSETS / 'kuymo-app-icon-1024.png')
    dark = rgba(ASSETS / 'kuymo-app-icon-ios-dark.png')
    tinted = rgba(ASSETS / 'kuymo-app-icon-ios-tinted.png')
    assert default.size == dark.size == tinted.size == (1024, 1024)
    assert default.getchannel('A').getextrema() == (255, 255)
    assert dark.getchannel('A').getextrema() == (0, 255)
    generated = IOS / 'AppIcon.appiconset'
    assert rgba(generated / 'Icon-App-1024x1024@1x.png').getchannel('A').getextrema() == (255, 255)
    assert rgba(generated / 'Icon-App-Dark-1024x1024@1x.png').getchannel('A').getextrema() == (0, 255)
    tinted = rgba(generated / 'Icon-App-Tinted-1024x1024@1x.png')
    red, green, blue, _ = tinted.split()
    assert red.tobytes() == green.tobytes() == blue.tobytes()
    print('Native branding verified: light/dark selectors, iOS dark/tinted, opaque default, grayscale tint, Android safe circles.')


if __name__ == '__main__':
    main()
