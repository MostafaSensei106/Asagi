from pathlib import Path
from PIL import Image, ImageDraw, ImageFont, ImageOps

P = Path(__file__).resolve().parents[1]
OUT = P
PAPER = "#F7FAF8"
INK = "#243438"
ASAGI = "#0095A9"
DEEP = "#006F7D"
FONT = "/usr/share/fonts/noto/NotoSans-Regular.ttf"
BOLD = "/usr/share/fonts/noto/NotoSans-Bold.ttf"

def font(size, bold=False):
    return ImageFont.truetype(BOLD if bold else FONT, size)

def contain(path, size):
    im = Image.open(path).convert("RGBA")
    im.thumbnail(size, Image.Resampling.LANCZOS)
    return im

def paste_contain(canvas, path, box):
    x, y, w, h = box
    im = contain(path, (w, h))
    canvas.alpha_composite(im, (x + (w-im.width)//2, y + (h-im.height)//2))

def rounded(draw, box, fill, radius=20):
    draw.rounded_rectangle(box, radius=radius, fill=fill)

# Identity overview: raster composition keeps embedded source art portable and visible.
board = Image.new("RGBA", (1600, 1240), PAPER)
d = ImageDraw.Draw(board)
d.text((60, 34), "ASAGI / ASAGIIRO — JAPANESE BLUE-GREEN", fill=INK, font=font(24, True))
paste_contain(board, P/"icons/app/asagi-main-1024.png", (60, 110, 490, 490))
paste_contain(board, P/"lockups/asagi-horizontal.png", (580, 205, 430, 190))
d.text((590, 425), "Small file. Full story.", fill=INK, font=font(26, True))
rounded(d, (1080, 100, 1540, 600), DEEP, 28)
paste_contain(board, P/"icons/app/asagi-main-1024.png", (1150, 150, 320, 320))
d.text((1140, 535), "The same mascot. Every time.", fill="white", font=font(20))
for name, x in [("ready",60),("working",380),("done",710)]:
    d.text((x, 635), name.upper(), fill=INK, font=font(18, True))
    paste_contain(board, P/f"mascot/{name}.png", (x, 670, 280, 225))
d.text((60, 915), "ASAGI COLOR SYSTEM", fill=INK, font=font(18, True))
colors = [("Ink",INK),("Asagi",ASAGI),("Asagi Deep",DEEP),("Mizu","#6FCBC2"),("Light Asagi","#BCE4E2"),("Warm Coral","#FAAD7D"),("Snow",PAPER)]
for i,(name,color) in enumerate(colors):
    x=60+i*140
    rounded(d,(x,950,x+126,1030),color,14)
    d.text((x,1042),name,fill=INK,font=font(15,True))
    d.text((x,1066),color,fill=INK,font=font(15))
rounded(d,(1080,650,1540,1180),"white",28)
d.text((1110, 680), "Make room for your story.", fill=INK, font=font(23, True))
paste_contain(board, P/"mascot/working.png", (1170, 720, 270, 180))
d.text((1110, 920), "Target size", fill=INK, font=font(17))
d.text((1390, 920), "16 MB", fill=INK, font=font(19, True))
rounded(d,(1110,965,1510,1027),DEEP,16)
d.text((1200,980),"Compress video",fill="white",font=font(21,True))
d.text((1110,1060),"Your video stays on your device.",fill=INK,font=font(16))
d.text((60, 1195), "Asagi identity / shared mascot / app UI is a design proposal", fill=INK, font=font(15))
board.convert("RGB").save(OUT/"brand-board.png", quality=95)

# Additional states overview.
states=[("welcome","Welcome"),("empty","Empty library"),("analyzing","Analyzing"),("paused","Paused"),("error","Needs attention"),("share","Ready to share")]
page=Image.new("RGBA",(1500,1100),PAPER);d=ImageDraw.Draw(page)
d.text((50,35),"Asagi / More moments, same companion",fill=INK,font=font(30,True))
for i,(name,label) in enumerate(states):
    x=40+(i%3)*490;y=100+(i//3)*490
    rounded(d,(x,y,x+470,y+470),"white",24)
    paste_contain(page,P/f"mascot/{name}.png",(x+35,y+10,400,380))
    d.text((x+25,y+405),label,fill=INK,font=font(24,True))
    d.text((x+25,y+440),"Asagi · " + name,fill=DEEP,font=font(15))
page.convert("RGB").save(P/"mascot/extra-states-overview.png",quality=95)

# Size and reversal review sheet.
sheet=Image.new("RGBA",(1100,620),PAPER);d=ImageDraw.Draw(sheet)
for row,(label,bg,mode) in enumerate([("Color",PAPER,"color"),("Ink",PAPER,"ink"),("Reversed",INK,"reverse")]):
    y=20+row*200;d.rectangle((15,y,1085,y+185),fill=bg)
    d.text((40,y+15),label,fill="white" if mode=="reverse" else INK,font=font(18,True))
    for x,size in [(230,16),(340,32),(470,96),(680,128)]:
        if mode=="color":
            im=Image.open(P/f"icons/web/asagi-{size}.png").convert("RGBA")
        else:
            im=Image.open(P/"icons/app/asagi-main-1024.png").convert("RGBA")
            alpha=im.getchannel("A")
            im=ImageOps.grayscale(im).point(lambda v: 255 if v>120 else 0).convert("RGBA")
            if mode=="reverse": im=ImageOps.invert(im.convert("RGB")).convert("RGBA")
            im.putalpha(alpha)
        im.thumbnail((size,size),Image.Resampling.LANCZOS)
        sheet.alpha_composite(im,(x,y+45))
        d.text((x,y+160),f"{size}px",fill="white" if mode=="reverse" else INK,font=font(14))
sheet.convert("RGB").save(P/"tests/size-and-reversal.png",quality=95)
