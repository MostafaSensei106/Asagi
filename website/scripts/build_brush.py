"""Outline the two decorative Yuji Boku glyphs; keep the OFL beside vendor fonts."""
from pathlib import Path
from fontTools.ttLib import TTFont
from fontTools.pens.svgPathPen import SVGPathPen
from fontTools.pens.transformPen import TransformPen

root = Path(__file__).resolve().parents[1]
font = TTFont(next((root / 'src/assets/fonts/vendor').glob('yujiboku-*.woff2')))
glyphs = font.getGlyphSet()
cmap = font.getBestCmap()
scale = 256 / font['head'].unitsPerEm
paths = []
for index, char in enumerate('余白'):
    pen = SVGPathPen(glyphs)
    glyphs[cmap[ord(char)]].draw(TransformPen(pen, (scale, 0, 0, -scale, index * 256, 226)))
    paths.append(f'<path d="{pen.getCommands()}"/>')
(root / 'public/branding/kuymo-space-brush.svg').write_text('<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 256" fill="#283D50">' + ''.join(paths) + '</svg>\n')
