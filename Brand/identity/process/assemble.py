from pathlib import Path
import xml.etree.ElementTree as E, base64, json, subprocess as sp
P=Path(__file__).resolve().parents[1];N='{http://www.w3.org/2000/svg}'
def nest(f,x,y,w,h):
 r=E.parse(f).getroot();vb=r.get('viewBox');return f'<svg x="{x}" y="{y}" width="{w}" height="{h}" viewBox="{vb}">'+''.join(E.tostring(c,encoding='unicode') for c in r)+'</svg>'
def svg(body,w,h):return f'<svg xmlns="http://www.w3.org/2000/svg" width="{w}" height="{h}" viewBox="0 0 {w} {h}"><title>Zumi identity</title>{body}</svg>'
m=P/'masters/zumi-symbol.svg';w=P/'masters/zumi-wordmark.svg'
jp='<text x="820" y="550" font-family="Noto Sans CJK JP" font-size="60" fill="#087F8C">ズミ</text>'
(P/'lockups/zumi-horizontal.svg').write_text(svg(nest(m,20,20,720,720)+nest(w,820,210,880,350)+jp,1800,760))
(P/'lockups/zumi-stacked.svg').write_text(svg(nest(m,50,0,900,900)+nest(w,130,910,740,280),1000,1250))
for f in (P/'lockups').glob('*.svg'):
 sp.run(['inkscape',str(f),'--export-text-to-path','--export-plain-svg',f'--export-filename={f}','--actions=select-all;object-to-path;export-do'],check=True,capture_output=True)
def img(f,x,y,w,h):
 d=base64.b64encode((P/f).read_bytes()).decode();return f'<image x="{x}" y="{y}" width="{w}" height="{h}" href="data:image/png;base64,{d}"/>'
def t(x,y,s,z=20,c='#162B46'):return f'<text x="{x}" y="{y}" font-family="sans-serif" font-size="{z}" fill="{c}">{s}</text>'
def rect(x,y,w,h,c,r=24):return f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="{r}" fill="{c}"/>'
b=rect(0,0,1600,1240,'#F7FAF8',0)+t(60,60,'ZUMI / ONE CHARACTER. ONE IDENTITY.',20)
b+=img('masters/zumi-symbol.png',60,110,490,490)+img('masters/zumi-wordmark.png',580,220,420,180)+t(590,430,'Small file. Full story.',30)
b+=rect(1080,100,460,500,'#162B46')+img('icons/app/zumi-lagoon-1024.png',1150,150,320,320)+t(1140,540,'The same mascot. Every time.',21,'#FFFFFF')
b+=t(60,660,'READY',18)+t(380,660,'WORKING',18)+t(710,660,'DONE',18)
for name,x in [('ready',60),('working',380),('done',710)]:b+=img('mascot/'+name+'.png',x,690,280,220)
b+=t(60,950,'APP PALETTE',18)
colors={'Midnight':'#162B46','Lagoon':'#087F8C','Seafoam':'#61D4C5','Apricot':'#FFB582','Snow':'#F7FAF8'}
for i,(n,c) in enumerate(colors.items()):
 x=60+i*188;b+=rect(x,980,160,80,c,16)+t(x,1095,n,18)+t(x,1125,c,17)
b+=rect(1080,650,460,530,'#FFFFFF')+t(1110,700,'Make room for your story.',25)+img('mascot/working.png',1170,730,270,180)+t(1110,950,'Target size',18)+t(1400,950,'16 MB',22)+rect(1110,990,400,62,'#087F8C',16)+t(1210,1030,'Compress video',22,'#FFFFFF')+t(1110,1100,'Your video stays on your device.',17)
b+=t(60,1200,'Illustrative identity / exact shared assets / UI is a design proposal',17)
(P/'brand-board.svg').write_text(svg(b,1600,1240))
# Test board at actual pixel sizes; dark reversal uses true vector line art.
b=rect(0,0,1100,620,'#F7FAF8',0)
for row,(label,bg,kind) in enumerate([('Color','#F7FAF8','color'),('Ink','#F7FAF8','ink'),('Reversed','#162B46','reverse')]):
 y=20+row*200;b+=rect(15,y,1070,185,bg,0)+t(40,y+35,label,18,'#FFFFFF' if row==2 else '#162B46')
 for x,size in [(230,16),(340,32),(470,96),(680,128)]:
  b+=(img(f'icons/web/zumi-{size}.png',x,y+45,size,size) if kind=='color' else nest(P/f'masters/zumi-{"ink" if kind=="ink" else "reversed"}.svg',x,y+45,size,size))
  b+=t(x,y+180,str(size)+'px',14,'#FFFFFF' if row==2 else '#162B46')
(P/'tests/size-and-reversal.svg').write_text(svg(b,1100,620))
# UI support icons are separate from the brand mark.
paths={'video':'M5 5h14v14H5z M10 9l5 3-5 3z','shield':'M12 3l8 3v6q0 6-8 9-8-3-8-9V6z M8 12l3 3 5-6','compress':'M3 8h5V3 M8 8L3 3 M21 16h-5v5 M16 16l5 5','check':'M5 12l4 4L19 6','pause':'M8 5v14 M16 5v14','share':'M12 16V3 M7 8l5-5 5 5 M5 12v8h14v-8'}
for n,d in paths.items():(P/f'ui/{n}.svg').write_text(svg(f'<path d="{d}" fill="none" stroke="#087F8C" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>',24,24))
(P/'tokens.json').write_text(json.dumps({'colors':colors,'space':[4,8,12,16,24,32,48],'radius':{'button':16,'card':24}},indent=2))
(P/'tokens.css').write_text(':root{'+''.join(f'--zumi-{n.lower()}:{c};' for n,c in colors.items())+'}')
