from pathlib import Path
import xml.etree.ElementTree as E, base64, json, subprocess as sp
P=Path(__file__).resolve().parents[1];N='{http://www.w3.org/2000/svg}'
def nest(f,x,y,w,h):
 r=E.parse(f).getroot();vb=r.get('viewBox');return f'<svg x="{x}" y="{y}" width="{w}" height="{h}" viewBox="{vb}">'+''.join(E.tostring(c,encoding='unicode') for c in r)+'</svg>'
def svg(body,w,h):return f'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="{w}" height="{h}" viewBox="0 0 {w} {h}"><title>Asagi identity</title>{body}</svg>'
m=P/'masters/asagi-symbol.svg';w=P/'masters/asagi-wordmark.svg'
jp='<text x="820" y="550" font-family="Noto Sans CJK JP" font-size="60" fill="#0095A9">浅葱</text>'
(P/'lockups/asagi-horizontal.svg').write_text(svg(nest(m,20,20,720,720)+nest(w,820,210,880,350)+jp,1800,760))
(P/'lockups/asagi-stacked.svg').write_text(svg(nest(m,50,0,900,900)+nest(w,130,910,740,280),1000,1250))
for f in (P/'lockups').glob('*.svg'):
 sp.run(['inkscape',str(f),'--export-text-to-path','--export-plain-svg',f'--export-filename={f}','--actions=select-all;object-to-path;export-do'],check=True,capture_output=True)
sp.run(['inkscape',str(P/'lockups/asagi-horizontal.svg'),'--export-filename',str(P/'lockups/asagi-horizontal.png')],check=True,capture_output=True)
sp.run(['inkscape',str(P/'lockups/asagi-stacked.svg'),'--export-filename',str(P/'lockups/asagi-stacked.png')],check=True,capture_output=True)
(P/'lockups/asagi-horizontal-dark.svg').write_text((P/'lockups/asagi-horizontal.svg').read_text().replace('#243438','#FFFFFF'))
def img(f,x,y,w,h,prefix=''):
 return f'<image x="{x}" y="{y}" width="{w}" height="{h}" href="{prefix}{f}"/>'
def t(x,y,s,z=20,c='#243438'):return f'<text x="{x}" y="{y}" font-family="sans-serif" font-size="{z}" fill="{c}">{s}</text>'
def rect(x,y,w,h,c,r=24):return f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="{r}" fill="{c}"/>'
b=rect(0,0,1600,1240,'#F7FAF8',0)+t(60,60,'ASAGI / ONE CHARACTER. ONE IDENTITY.',20)
b+=img('masters/asagi-symbol.png',60,110,490,490)+img('masters/asagi-wordmark.png',580,220,420,180)+t(590,430,'Small file. Full story.',30)
b+=rect(1080,100,460,500,'#006F7D')+img('icons/app/asagi-main-1024.png',1150,150,320,320)+t(1140,540,'The same mascot. Every time.',21,'#FFFFFF')
b+=t(60,660,'READY',18)+t(380,660,'WORKING',18)+t(710,660,'DONE',18)
for name,x in [('ready',60),('working',380),('done',710)]:b+=img('mascot/'+name+'.png',x,690,280,220)
b+=t(60,950,'APP PALETTE',18)
colors={'Ink':'#243438','Asagi':'#0095A9','Asagi Deep':'#006F7D','Mizu':'#6FCBC2','Light Asagi':'#BCE4E2','Warm Coral':'#FAAD7D','Snow':'#F7FAF8'}
for i,(n,c) in enumerate(colors.items()):
 x=60+i*164;b+=rect(x,980,140,80,c,16)+t(x,1095,n,18)+t(x,1125,c,17)
b+=rect(1080,650,460,530,'#FFFFFF')+t(1110,700,'Make room for your story.',25)+img('mascot/working.png',1170,730,270,180)+t(1110,950,'Target size',18)+t(1400,950,'16 MB',22)+rect(1110,990,400,62,'#006F7D',16)+t(1210,1030,'Compress video',22,'#FFFFFF')+t(1110,1100,'Your video stays on your device.',17)
b+=t(60,1200,'Illustrative identity / exact shared assets / UI is a design proposal',17)
(P/'brand-board.svg').write_text(svg(b,1600,1240))
# Test board at actual pixel sizes; dark reversal uses true vector line art.
b=rect(0,0,1100,620,'#F7FAF8',0)
for row,(label,bg,kind) in enumerate([('Color','#F7FAF8','color'),('Ink','#F7FAF8','ink'),('Reversed','#243438','reverse')]):
 y=20+row*200;b+=rect(15,y,1070,185,bg,0)+t(40,y+35,label,18,'#FFFFFF' if row==2 else '#243438')
 for x,size in [(230,16),(340,32),(470,96),(680,128)]:
  b+=(img(f'icons/web/asagi-{size}.png',x,y+45,size,size,'../') if kind=='color' else nest(P/f'masters/asagi-{"ink" if kind=="ink" else "reversed"}.svg',x,y+45,size,size))
  b+=t(x,y+180,str(size)+'px',14,'#FFFFFF' if row==2 else '#243438')
(P/'tests/size-and-reversal.svg').write_text(svg(b,1100,620))
# UI support icons are separate from the brand mark.
paths={'video':'M5 5h14v14H5z M10 9l5 3-5 3z','shield':'M12 3l8 3v6q0 6-8 9-8-3-8-9V6z M8 12l3 3 5-6','compress':'M3 8h5V3 M8 8L3 3 M21 16h-5v5 M16 16l5 5','check':'M5 12l4 4L19 6','pause':'M8 5v14 M16 5v14','share':'M12 16V3 M7 8l5-5 5 5 M5 12v8h14v-8'}
for n,d in paths.items():(P/f'ui/{n}.svg').write_text(svg(f'<path d="{d}" fill="none" stroke="#0095A9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>',24,24))
(P/'tokens.json').write_text(json.dumps({'colors':colors,'space':[4,8,12,16,24,32,48],'radius':{'button':16,'card':24}},indent=2))
def token_slug(name):
 slug={'Asagi':'primary','Asagi Deep':'deep'}.get(name,name.lower().replace(' ','-'))
 return f'--asagi-{slug}'
(P/'tokens.css').write_text(':root{'+''.join(f'{token_slug(n)}:{c};' for n,c in colors.items())+'}')
