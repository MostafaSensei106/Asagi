from pathlib import Path
import subprocess as sp, xml.etree.ElementTree as ET, json
P=Path(__file__).resolve().parents[1]
def run(*a):sp.run(list(map(str,a)),check=True,capture_output=True)
def mag(*a):run('magick',*a)
S=P/'source';M=P/'masters';I=P/'icons';L=P/'lockups'
# All exports derive from the same generated, reference-matched artwork.
mag(S/'mascot.png','-trim','+repage','-resize','900x900','-gravity','center','-background','none','-extent','1024x1024',M/'zumi-symbol.png')
mag(S/'wordmark.png','-trim','+repage',M/'zumi-wordmark.png')
for name,col in [('lagoon','#087F8C'),('midnight','#162B46'),('snow','#F7FAF8')]:
 mag('-size','1024x1024',f'xc:{col}','(',M/'zumi-symbol.png','-resize','880x880',')','-gravity','center','-compose','over','-composite','-alpha','off',I/'app'/f'zumi-{name}-1024.png')
for size in [16,32,48,64,96,128,192,256,512]:
 mag(I/'app/zumi-lagoon-1024.png','-resize',f'{size}x{size}',I/'web'/f'zumi-{size}.png')
mag(I/'app/zumi-lagoon-1024.png','-resize','180x180',I/'web/apple-touch-icon.png')
mag('-size','512x512','xc:#087F8C','(',M/'zumi-symbol.png','-resize','340x340',')','-gravity','center','-composite','-alpha','off',I/'web/maskable-512.png')
mag(I/'web/zumi-16.png',I/'web/zumi-32.png',I/'web/zumi-48.png',I/'web/favicon.ico')
# Lockups retain the same artwork, not independent regenerated approximations.
mag('-size','1800x760','xc:none','(',M/'zumi-symbol.png','-resize','720x720',')','-geometry','+20+20','-composite','(',M/'zumi-wordmark.png','-resize','880x350',')','-geometry','+820+210','-composite',L/'zumi-horizontal.png')
mag('-size','1000x1250','xc:none','(',M/'zumi-symbol.png','-resize','900x900',')','-geometry','+50+0','-composite','(',M/'zumi-wordmark.png','-resize','740x280',')','-gravity','south','-geometry','+0+60','-composite',L/'zumi-stacked.png')
# Trace fixed palette regions into true paths. No embedded raster in vector exports.
colors=['#162B46','#087F8C','#61D4C5','#BDE3E4','#FFB582','#FFFFFF','#FF00FF']
mag(*[f'xc:{c}' for c in colors],'+append',S/'palette.png')
mag(M/'zumi-symbol.png','-background','#FF00FF','-alpha','remove','-alpha','off','-blur','0x0.6','+dither','-remap',S/'palette.png',S/'quantized.png')
ns='{http://www.w3.org/2000/svg}'
def trace(mask,dest,color):
 run('potrace',mask,'-s','--turdsize','18','--opttolerance','0.35','-o',dest)
 root=ET.parse(dest).getroot();g=root.find(ns+'g');g.set('fill',color);return ET.tostring(g,encoding='unicode')
parts=[]
for i,c in enumerate(colors[:-1]):
 mask=S/f'layer-{i}.pbm';out=S/f'layer-{i}.svg'
 mag(S/'quantized.png','-fill','black','+opaque',c,'-fill','white','-opaque',c,'-negate','-threshold','50%',mask)
 parts.append(trace(mask,out,c))
header='<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024"><title>Zumi approved mascot — palette vector</title>'
(M/'zumi-symbol.svg').write_text(header+''.join(parts)+'</svg>')
# The ink drawing uses the same traced navy contours and facial details.
(M/'zumi-ink.svg').write_text(header+parts[0]+'</svg>')
(M/'zumi-reversed.svg').write_text(header+parts[0].replace('#162B46','#FFFFFF')+'</svg>')
mag(M/'zumi-wordmark.png','-background','white','-alpha','remove','-colorspace','gray','-threshold','75%',S/'wordmark.pbm')
run('potrace',S/'wordmark.pbm','-s','--turdsize','8','--opttolerance','.3','-o',M/'zumi-wordmark.svg')
# Monochrome outlined wordmark keeps the generated letter contours.
f=M/'zumi-wordmark.svg';f.write_text(f.read_text().replace('#000000','#162B46'))
manifest={'name':'Zumi','short_name':'Zumi','start_url':'/','display':'standalone','background_color':'#F7FAF8','theme_color':'#087F8C','icons':[{'src':'zumi-192.png','sizes':'192x192','type':'image/png'},{'src':'zumi-512.png','sizes':'512x512','type':'image/png'},{'src':'maskable-512.png','sizes':'512x512','type':'image/png','purpose':'maskable'}]}
(I/'web/site.webmanifest').write_text(json.dumps(manifest,indent=2))
(I/'web/head-snippet.html').write_text('<link rel="icon" href="favicon.ico">\n<link rel="apple-touch-icon" href="apple-touch-icon.png">\n<link rel="manifest" href="site.webmanifest">\n<meta name="theme-color" content="#087F8C">\n')

# Optical favicon cut selected after the size review.
if (S/'small.png').exists():
 mag(S/'small.png','-trim','+repage','-resize','920x920','-gravity','center','-background','none','-extent','1024x1024',M/'zumi-small.png')
 mag('-size','1024x1024','xc:#087F8C',M/'zumi-small.png','-gravity','center','-composite','-alpha','off',I/'web/small-tile.png')
 for size in [16,32,48]:mag(I/'web/small-tile.png','-resize',f'{size}x{size}',I/'web'/f'zumi-{size}.png')
 mag(I/'web/zumi-16.png',I/'web/zumi-32.png',I/'web/zumi-48.png',I/'web/favicon.ico')
