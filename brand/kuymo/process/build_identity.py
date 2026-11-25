"""Build the approved Kuymo B artwork with real paths and deterministic geometry."""

import json
from pathlib import Path

from fontTools.pens.svgPathPen import SVGPathPen
from fontTools.pens.transformPen import TransformPen
from fontTools.ttLib import TTFont

ROOT = Path(__file__).resolve().parents[3]
KIT = ROOT / 'brand/kuymo'
MASTERS = KIT / 'masters'
PINE = '#284B3B'
MATCHA = '#527A46'
MIST = '#DDE9C6'
PAPER = '#FAF8F1'
APRICOT = '#F4BC95'
INK = '#1E2D24'


def svg(title, art, width=256, height=256):
    return (
        f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {width} {height}" '
        f'width="{width}" height="{height}" role="img" aria-labelledby="title">'
        f'<title id="title">{title}</title>{art}</svg>\n'
    )


def symbol(color=PINE, variant='standard'):
    if variant == 'reverse':
        frame = (
            'M104 40H136V78H104A26 26 0 0 0 78 104V152A26 26 0 0 0 104 178'
            'H152A26 26 0 0 0 178 152V128H216V152A64 64 0 0 1 152 216H104'
            'A64 64 0 0 1 40 152V104A64 64 0 0 1 104 40Z'
        )
        tile = (
            'M177 41H199A16 16 0 0 1 215 57V79A16 16 0 0 1 199 95'
            'H177L161 79V57A16 16 0 0 1 177 41Z'
        )
    elif variant == 'small':
        frame = (
            'M104 40H136V82H104A22 22 0 0 0 82 104V152A22 22 0 0 0 104 174'
            'H152A22 22 0 0 0 174 152V128H216V152A64 64 0 0 1 152 216H104'
            'A64 64 0 0 1 40 152V104A64 64 0 0 1 104 40Z'
        )
        tile = (
            'M174 40H202A14 14 0 0 1 216 54V82A14 14 0 0 1 202 96'
            'H174A14 14 0 0 1 160 82V54A14 14 0 0 1 174 40Z'
        )
    else:
        frame = (
            'M104 40H136V80H104A24 24 0 0 0 80 104V152A24 24 0 0 0 104 176'
            'H152A24 24 0 0 0 176 152V128H216V152A64 64 0 0 1 152 216H104'
            'A64 64 0 0 1 40 152V104A64 64 0 0 1 104 40Z'
        )
        tile = (
            'M176 40H200A16 16 0 0 1 216 56V80A16 16 0 0 1 200 96'
            'H176L160 80V56A16 16 0 0 1 176 40Z'
        )
    return f'<path fill="{color}" d="{frame}"/><path fill="{color}" d="{tile}"/>'


def type_paths(text, x=0, baseline=156, size=100, color=PINE, weight='Bold'):
    path = ROOT / f'assets/fonts/Google_Sans/static/GoogleSans-{weight}.ttf'
    font = TTFont(path)
    glyphs, cmap = font.getGlyphSet(), font.getBestCmap()
    scale = size / font['head'].unitsPerEm
    start = x
    art = []
    # Optical spacing for this word, rather than default font tracking.
    gaps = {'K': -1.5, 'u': 0, 'y': 1.5, 'm': -1, 'o': 0}
    for char in text:
        if char == 'K':
            # A custom 45-degree K, with the tile's chamfer echoed at its foot.
            # The remaining letters retain Google Sans's familiar round forms.
            pen = SVGPathPen(glyphs, ntos=lambda value: f'{value:.2f}'.rstrip('0').rstrip('.'))
            transformed = TransformPen(pen, (size / 100, 0, 0, size / 100, x, baseline))
            points = [(8, 0), (24, 0), (24, -29), (53, 0), (66, 0), (72, -6),
                      (39, -39), (72, -72), (50, -72), (24, -46), (24, -72), (8, -72)]
            transformed.moveTo(points[0])
            for point in points[1:]:
                transformed.lineTo(point)
            transformed.closePath()
            art.append(f'<path fill="{color}" d="{pen.getCommands()}"/>')
            x += 78 * size / 100 + gaps['K'] * size / 100
            continue
        name = cmap[ord(char)]
        pen = SVGPathPen(glyphs, ntos=lambda value: f'{value:.2f}'.rstrip('0').rstrip('.'))
        transformed = TransformPen(pen, (scale, 0, 0, -scale, x, baseline))
        glyphs[name].draw(transformed)
        art.append(f'<path fill="{color}" d="{pen.getCommands()}"/>')
        x += font['hmtx'][name][0] * scale + gaps.get(char, 0)
    return ''.join(art), x - start


def horizontal(color=PINE, variant='standard', descriptor=False):
    letters, width = type_paths('Kuymo', x=272, color=color)
    end = 272 + width
    if descriptor:
        suffix, suffix_width = type_paths('AI', x=end + 24, size=58, color=color, weight='Medium')
        letters += suffix
        end += 24 + suffix_width
    return svg('Kuymo AI' if descriptor else 'Kuymo', symbol(color, variant) + letters, round(end + 40))


def main():
    MASTERS.mkdir(parents=True, exist_ok=True)
    for name, color, variant in (
        ('kuymo-symbol', PINE, 'standard'),
        ('kuymo-symbol-black', '#000000', 'standard'),
        ('kuymo-symbol-white', '#FFFFFF', 'reverse'),
        ('kuymo-symbol-small', PINE, 'small'),
    ):
        (MASTERS / f'{name}.svg').write_text(svg('Kuymo', symbol(color, variant)))
    for name, color, variant in (
        ('kuymo-horizontal', PINE, 'standard'),
        ('kuymo-horizontal-black', '#000000', 'standard'),
        ('kuymo-horizontal-white', '#FFFFFF', 'reverse'),
    ):
        (MASTERS / f'{name}.svg').write_text(horizontal(color, variant))
    (MASTERS / 'kuymo-ai-horizontal.svg').write_text(horizontal(descriptor=True))
    for suffix, color, variant in (('', PINE, 'standard'), ('-white', '#FFFFFF', 'reverse')):
        letters, width = type_paths('Kuymo', size=88, color=color)
        letters, _ = type_paths('Kuymo', x=(512 - width) / 2, baseline=360, size=88, color=color)
        art = f'<g transform="translate(128 32)">{symbol(color, variant)}</g>' + letters
        (MASTERS / f'kuymo-stacked{suffix}.svg').write_text(svg('Kuymo', art, 512, 448))
        word, width = type_paths('Kuymo', x=24, baseline=108, size=100, color=color)
        (MASTERS / f'kuymo-wordmark{suffix}.svg').write_text(svg('Kuymo', word, round(width + 48), 156))
    app = f'<path fill="{MIST}" d="M0 0H1024V1024H0Z"/><g transform="scale(4)">{symbol()}</g>'
    (MASTERS / 'kuymo-app-icon.svg').write_text(svg('Kuymo app icon', app, 1024, 1024))
    # iOS 18 appearance variants preserve placement and let the OS style them.
    dark_icon = f'<g transform="scale(4)">{symbol(MIST, "reverse")}</g>'
    (MASTERS / 'kuymo-app-icon-ios-dark.svg').write_text(svg('Kuymo dark icon', dark_icon, 1024, 1024))
    tinted_icon = '<path fill="#000000" d="M0 0H1024V1024H0Z"/>' + f'<g transform="scale(4)">{symbol("#FFFFFF", "reverse")}</g>'
    (MASTERS / 'kuymo-app-icon-ios-tinted.svg').write_text(svg('Kuymo tinted icon', tinted_icon, 1024, 1024))
    maskable = f'<path fill="{MIST}" d="M0 0H1024V1024H0Z"/><g transform="translate(64 64) scale(3.5)">{symbol()}</g>'
    (MASTERS / 'kuymo-maskable-icon.svg').write_text(svg('Kuymo maskable icon', maskable, 1024, 1024))
    foreground = f'<g transform="translate(75.2 75.2) scale(1.1)">{symbol()}</g>'
    (MASTERS / 'kuymo-adaptive-foreground.svg').write_text(svg('Kuymo adaptive foreground', foreground, 432, 432))
    for suffix, color in (('', PINE), ('-dark', '#FFFFFF')):
        (MASTERS / f'kuymo-splash{suffix}.svg').write_text(svg('Kuymo', symbol(color, 'reverse' if suffix else 'standard')))
    pattern = f'<path fill="{PAPER}" d="M0 0H768V512H0Z"/>'
    tile = '<path fill="{color}" d="M0 0H48Q64 0 64 16V64H16L0 48Z"/>'
    for row in range(4):
        for col in range(6):
            pattern += f'<g transform="translate({col * 144 - 24} {row * 144 - 24})">{tile.format(color=MIST)}</g>'
    (MASTERS / 'kuymo-tile-pattern.svg').write_text(svg('Kuymo folded-tile pattern', pattern, 768, 512))
    colors = {'pine': PINE, 'matcha': MATCHA, 'mist': MIST, 'paper': PAPER, 'apricot': APRICOT, 'ink': INK}
    (KIT / 'tokens.json').write_text(json.dumps({'brand': 'Kuymo', 'colors': colors, 'type': {'latin': 'Google Sans', 'arabic': 'Noto Sans Arabic'}, 'spacing': [4, 8, 12, 16, 24, 32, 48], 'radii': {'small': 8, 'medium': 12, 'large': 20, 'xLarge': 24}}, indent=2) + '\n')
    (KIT / 'tokens.css').write_text(':root {\n' + ''.join(f'  --kuymo-{key}: {value};\n' for key, value in colors.items()) + '}\n')

    # Presentation text may be live text; the master symbols and lockups above
    # contain only actual vector paths and do not depend on installed fonts.
    board = f'<path fill="{PAPER}" d="M0 0H1600V1320H0Z"/>'
    def label(x, y, text, size=24, color=INK, weight=400):
        return f'<text x="{x}" y="{y}" fill="{color}" font-family="Google Sans, Noto Sans, sans-serif" font-size="{size}" font-weight="{weight}">{text}</text>'
    board += label(72, 72, 'KUYMO / A LITTLE ROOM', 20, PINE, 700)
    board += label(72, 134, 'More room for your moments.', 46, INK, 700)
    board += label(72, 176, 'Smart video tools. Thoughtful by design. On your device.', 24)
    board += f'<rect x="72" y="224" width="930" height="410" rx="32" fill="{MIST}"/>'
    letters, _ = type_paths('Kuymo', x=420, baseline=466, size=136)
    board += f'<g transform="translate(130 274) scale(1.2)">{symbol()}</g>' + letters
    board += label(134, 578, 'ONE OPEN POCKET. ONE SMALL POSSIBILITY.', 20, PINE, 700)
    board += f'<rect x="1034" y="224" width="494" height="410" rx="32" fill="{PINE}"/>'
    board += f'<g transform="translate(1136 260) scale(1.1)">{symbol("#FFFFFF", "reverse")}</g>'
    board += label(1082, 578, 'Simple at every size.', 27, '#FFFFFF', 500)
    board += label(72, 704, 'THE PALETTE', 18, PINE, 700)
    for index, (name, color) in enumerate(colors.items()):
        x = 72 + index * 246
        board += f'<rect x="{x}" y="734" width="224" height="120" rx="20" fill="{color}" stroke="{PINE}" stroke-opacity="0.12"/>'
        board += label(x, 892, name.title(), 23, INK, 600) + label(x, 924, color.upper(), 19)
    board += label(72, 1004, 'GOOGLE SANS + NOTO SANS ARABIC', 18, PINE, 700)
    board += label(72, 1066, 'Clear. Capable. A little warmer.', 36, INK, 600)
    board += f'<text x="1528" y="1134" text-anchor="start" fill="{INK}" font-family="Noto Sans Arabic" font-size="38" direction="rtl">مساحة أكبر للحظاتك.</text>'
    board += label(72, 1228, 'Kuymo is the product. Kuymo AI is the assistant descriptor.', 23)
    board += label(72, 1272, 'Approved B direction / flat vector masters / light + dark / Arabic + English', 18, PINE)
    (KIT / 'presentation/brand-board.svg').write_text(svg('Kuymo identity board', board, 1600, 1320))


if __name__ == '__main__':
    main()
