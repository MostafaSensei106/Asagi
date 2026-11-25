"""Rebuild Kuymo's three exploratory vector concepts, not production assets."""

from pathlib import Path

from fontTools.pens.svgPathPen import SVGPathPen
from fontTools.ttLib import TTFont

ROOT = Path(__file__).resolve().parents[2]
OUT = Path(__file__).resolve().parent / 'concepts'
FONT = ROOT / 'assets/fonts/Google_Sans/static/GoogleSans-Bold.ttf'


def svg(title: str, artwork: str, width: int = 256) -> str:
    return (
        f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {width} 256" '
        f'width="{width}" height="256" role="img" aria-labelledby="title">'
        f'<title id="title">{title}</title>{artwork}</svg>\n'
    )


def wordmark() -> tuple[str, float]:
    font = TTFont(FONT)
    glyphs = font.getGlyphSet()
    cmap = font.getBestCmap()
    scale = 100 / font['head'].unitsPerEm
    cursor = 0
    paths = []
    # An outlined type study; final custom spacing follows direction selection.
    for char in 'Kuymo':
        name = cmap[ord(char)]
        pen = SVGPathPen(glyphs)
        glyphs[name].draw(pen)
        paths.append(
            f'<path transform="translate({cursor:.2f} 0)" d="{pen.getCommands()}"/>'
        )
        cursor += font['hmtx'][name][0] + 8 / scale
    return (
        f'<g fill="#000000" transform="translate(280 164) '
        f'scale({scale:.6f} {-scale:.6f})">{"".join(paths)}</g>',
        cursor * scale,
    )


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    concepts = {
        'a-fold': (
            'Kuymo — Fold K',
            '<path fill="#000000" d="M48 48Q48 32 64 32H88Q104 32 104 48'
            'V104L168 40Q176 32 188 32H216L128 120L216 208Q224 216 216 224'
            'H188Q180 224 172 216L104 148V208Q104 224 88 224H64'
            'Q48 224 48 208Z"/>',
        ),
        'b-room': (
            'Kuymo — A little room',
            '<path fill="#000000" d="M104 40H136V80H104A24 24 0 0 0 80 104'
            'V152A24 24 0 0 0 104 176H152A24 24 0 0 0 176 152V128H216V152'
            'A64 64 0 0 1 152 216H104A64 64 0 0 1 40 152V104'
            'A64 64 0 0 1 104 40Z"/>'
            '<path fill="#000000" d="M176 40H200A16 16 0 0 1 216 56V80'
            'A16 16 0 0 1 200 96H176A16 16 0 0 1 160 80V56'
            'A16 16 0 0 1 176 40Z"/>',
        ),
        'c-companion': (
            'Kuymo — Pocket companion',
            '<path fill="#000000" fill-rule="evenodd" d="M56 76'
            'C40 44 60 24 88 40L104 52Q128 44 152 52L168 40'
            'C196 24 216 44 200 76C220 100 224 128 220 156'
            'C216 196 184 216 128 216C72 216 40 196 36 156'
            'C32 128 36 100 56 76Z'
            'M76 116A12 12 0 1 0 100 116A12 12 0 1 0 76 116Z'
            'M156 116A12 12 0 1 0 180 116A12 12 0 1 0 156 116Z'
            'M88 152Q128 184 168 152V172Q128 204 88 172Z"/>',
        ),
    }
    letters, width = wordmark()
    for slug, (title, artwork) in concepts.items():
        (OUT / f'{slug}-v1.svg').write_text(svg(title, artwork))
        (OUT / f'{slug}-lockup-v1.svg').write_text(
            svg(title, artwork + letters, round(304 + width))
        )

    # Pass 2: a returning lower K arm, a folded tile corner, rounder ears and
    # wider eye openings. Keep pass 1 intact for an honest comparison.
    revisions = {
        'a-fold': (
            'Kuymo — Fold K',
            '<g transform="translate(-8 0)"><path fill="#000000" '
            'd="M48 48Q48 32 64 32H88Q104 32 104 48V104L168 40'
            'Q176 32 188 32H216L128 120L172 164Q192 184 192 156'
            'V144H224V164Q224 220 184 220Q164 220 148 204L104 160'
            'V208Q104 224 88 224H64Q48 224 48 208Z"/></g>',
        ),
        'b-room': (
            'Kuymo — A little room',
            concepts['b-room'][1].split('<path fill="#000000" d="M176')[0]
            + '<path fill="#000000" d="M176 40H200A16 16 0 0 1 216 56'
            'V80A16 16 0 0 1 200 96H176L160 80V56'
            'A16 16 0 0 1 176 40Z"/>',
        ),
        'c-companion': (
            'Kuymo — Pocket companion',
            '<path fill="#000000" fill-rule="evenodd" '
            'd="M56 80C32 56 48 24 80 36Q92 40 104 56'
            'Q128 48 152 56Q164 40 176 36C208 24 224 56 200 80'
            'C220 104 224 128 220 156C216 196 184 216 128 216'
            'C72 216 40 196 36 156C32 128 36 104 56 80Z'
            'M74 116A14 14 0 1 0 102 116A14 14 0 1 0 74 116Z'
            'M154 116A14 14 0 1 0 182 116A14 14 0 1 0 154 116Z'
            'M88 150Q128 178 168 150V170Q128 202 88 170Z"/>',
        ),
    }
    for slug, (title, artwork) in revisions.items():
        (OUT / f'{slug}-v2.svg').write_text(svg(title, artwork))
        (OUT / f'{slug}-lockup-v2.svg').write_text(
            svg(title, artwork + letters, round(304 + width))
        )


if __name__ == '__main__':
    main()
