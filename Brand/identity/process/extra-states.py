"""Normalize generated state assets, build a preview, and publish their UI mapping."""
from pathlib import Path
import subprocess, json, base64
P=Path(__file__).resolve().parents[1]
states=[('welcome','Welcome','Onboarding / first launch','أهلًا بيك في Zumi'),('empty','Empty library','No selected or saved videos','اختار أول فيديو'),('analyzing','Analyzing','Inspecting video metadata / planning','بنفحص الفيديو'),('paused','Paused','User paused a resumable operation','الضغط متوقف مؤقتًا'),('error','Needs attention','Recoverable error / infeasible size','جرّب حجم أكبر أو فيديو تاني'),('share','Ready to share','Verified output available to share','الفيديو جاهز للمشاركة')]
for name,*_ in states:
 subprocess.run(['magick',str(P/f'source/extra-states/{name}.png'),'-trim','+repage','-resize','880x880','-gravity','center','-background','none','-extent','1024x1024',str(P/f'mascot/{name}.png')],check=True)
manifest=[]
for name,label,use,alt in states:
 manifest.append({'id':name,'path':f'{name}.png','width':1024,'height':1024,'background':'transparent','recommendedLogicalSize':192,'minimumRecommendedLogicalSize':96,'use':use,'suggestedArabicLabel':alt})
(P/'mascot/extra-states.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2))
parts=['<svg xmlns="http://www.w3.org/2000/svg" width="1500" height="1100" viewBox="0 0 1500 1100"><rect width="1500" height="1100" fill="#F7FAF8"/><text x="50" y="62" font-family="sans-serif" font-size="30" fill="#162B46">Zumi / More moments, same companion</text>']
for i,(name,label,use,alt) in enumerate(states):
 x=40+(i%3)*490;y=100+(i//3)*490
 data=base64.b64encode((P/f'mascot/{name}.png').read_bytes()).decode()
 parts.append(f'<rect x="{x}" y="{y}" width="470" height="470" rx="24" fill="white"/><image x="{x+35}" y="{y+10}" width="400" height="380" href="data:image/png;base64,{data}"/><text x="{x+25}" y="{y+418}" font-family="sans-serif" font-size="25" fill="#162B46">{label}</text><text x="{x+25}" y="{y+448}" font-family="sans-serif" font-size="15" fill="#087F8C">{use}</text>')
parts.append('</svg>');(P/'mascot/extra-states-overview.svg').write_text(''.join(parts))
