SWEP.Base = "weapon_308_base2" -- Don't touch!if you true to do you better write a base
SWEP.CusEquipS="3088083421/s_pu.wav"
SWEP.PrintName="!Attribute Gun"
if GAME308_LANMath==2 then
SWEP.PrintName="!属性枪"
end
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_deagle.mdl"
SWEP.WorldModel = "models/weapons/w_toolgun.mdl"

SWEP.ClipoutTime = 0
SWEP.ClipinTime = 1.4
SWEP.ReloadTime = 1.4
SWEP.HaveBoltPull=false
SWEP.Primary.ClipSize =7
SWEP.Primary.DefaultClip =7
SWEP.Primary.Ammo="357"
SWEP.Slot = 1
SWEP.Spawnable = true
SWEP.PA_Sound="3088083421/wep/shoot/pis_1.ogg"
SWEP.PA_Force=5
SWEP.PA_Damage=53
SWEP.SA_IsSight=false
SWEP.Secondary.Automatic=false

SWEP.PA_Delay = .3
SWEP.PA_Recoil = 5
SWEP.PA_Spread = 0.02
SWEP.ReloadSound={{Sound="3088083421/wep/reload/all_clipout.ogg",Delay=.1},{Sound="3088083421/wep/reload/all_clipin.ogg",Delay=.8}}
SWEP.ViewModelBoneMods = {
	["v_weapon.Deagle_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0.501, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/c_toolgun.mdl", bone = "v_weapon.Deagle_Parent", rel = "", pos = Vector(-3.685, 58.916, 24.597), angle = Angle(0, 180, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.MCDrawAnim={
{Pos=Vector(0,95,-19)},
{Time=.2,Pos=Vector(0,95,-.1)}
}
SWEP.MCIdleAnim={
{Pos=Vector(0,95,0),A={{Bone="ValveBiped.Bip01_L_Clavicle"}}},
{Time=1,Pos=Vector(0,95,-.1)},
{Delay=1,Time=1,Pos=Vector(0,95,0)},
}
SWEP.PA_MCAnim={
{Time=.05,Pos=Vector(0,115,0),Ang=Angle(3)},
{Delay=.05,Time=.1,Pos=Vector(0,95),Ang=Angle()},
}
SWEP.MCReloadAnim={
{Delay=.1,Time=.3,Pos=Vector(2,99,2),Ang=Angle(0,8,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-17),angle=Angle(0,-15)},{Bone="v_weapon.Deagle_Clip",pos=Vector(0,-17)}}},
{Delay=.7,Time=.2,Pos=Vector(2,99,2),Ang=Angle(0,8,15),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-1)},{Bone="v_weapon.Deagle_Clip",pos=Vector(0,0,0)}}},
{Delay=1.1,Time=.3,Pos=Vector(0,95),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector()}}},
}
SWEP.MeleeAnim={
{Delay=0,Time=.05,Pos=Vector(2,6,2),Ang=Angle(60,-8,45),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(195,-9)}}},
{Delay=.05,Time=.1,Pos=Vector(2,-19),Ang=Angle(-35,28,-15)},
{Delay=.15,Time=.2,Pos=Vector(0,95),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
SWEP.HitAnim={
{Time=.15,Pos=Vector(0,95),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
SWEP.Melee1=25
function SWEP:MeleeSound()self:PlayMCAnim(self.HitAnim)local n="" local n2=150
if self.Melee1>1999 then n=2 n2=100 end
self.Owner:EmitSound("3088083421/wep/melee/punch"..n..".wav",110,n2)end
function SWEP:HitEnt()self:MeleeSound()end
function SWEP:HitWorld()self:MeleeSound()end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.MeleeAnim)self:EmitSound("3088083421/wep/melee/linkedslash.mp3",110,150)
self:Melee(.125,1,.35,50)end
end
function SWEP:SecondaryAttack()if SERVER then
net.Start("308AGun_edit")
net.WriteEntity(self)
net.Send(self.Owner)end
end
function SWEP:CusHUD()local tc=TEXT_ALIGN_CENTER
draw.SimpleText("RMB to edit attribute","entcheck",ScrW()/2,ScrH()*.8,Color(255,255,255),tc,tc)
end

if SERVER then
util.AddNetworkString("308AGun_edit")util.AddNetworkString("308AGun_edited")
net.Receive("308AGun_edited",function(l,p)
local t=net.ReadTable()
local e=net.ReadEntity()
if IsValid(e.Owner)then
local g=e
e=ents.Create("weapon_308__agun")
e.PA_Damage=t["dmg"]
e.Melee1=t["md"]
e.PA_TakeAmmo=t["ta"]
e.PA_Force=t["f"]
e.PA_Delay=t["delay"]
e.PA_Recoil=t["recoil"]
e.PA_Spread=t["spread"]
e.ReloadTime=t["rt"]
local v=t["rt"]/1.4
e.ClipinTime=t["rt"]
e.PA_Num=t["num"]
e.Primary.ClipSize=t["size"]
e.Primary.DefaultSize=t["size"]
e.Primary.Automatic=t["auto"]
e:SetPos(g:GetPos())
e._d=t
e:SetCreator(g:GetCreator())
if t["ta"]<1 then e.AmmoHUD=2 end
e:Spawn()
e:SetClip1(t["size"])
g:Remove()
t=e.MCReloadAnim
for i=1,#t do
if t[i].Delay then
t[i].Delay=t[i].Delay*v
end
if t[i].Time then
t[i].Time=t[i].Time*v
end
end
e.ReloadSound={{Sound="3088083421/wep/reload/all_clipout.ogg",Delay=.1*v},{Sound="3088083421/wep/reload/all_clipin.ogg",Delay=.8*v}}
end
end)else
local lan={
[1]="Bullet Damage",
[2]="Force",
[3]="Delay",
[4]="Recoil",
[5]="Spread",
[6]="Reload Time",
[7]="Clip Size",
[8]="One Shoot Bullet Num",
[9]="Melee Damage",
[10]="Once expend bullet",
[11]="Automatic",
[12]="LMB+E to melee!",
[13]="If you have any ideas for it\npls leave comments :)",
[14]="Save",
[15]="Reset",
["a"]="Non-Admin Limit!",
}
if GAME308_LANMath==2 then
lan={
[1]="子弹",
[2]="冲击力",
[3]="延迟",
[4]="后坐力",
[5]="扩散",
[6]="换弹时间",
[7]="弹夹子弹数",
[8]="一次发射子弹数",
[9]="近战伤害",
[10]="一次子弹消耗",
[11]="全自动",
[12]="左键+E来近战攻击!",
[13]="如果你有什么主意\n请在评论区留言 :)",
[14]="保存",
[15]="重置",
["a"]="非管理员限制!",
}
end
net.Receive("308AGun_edit",function(l,p)p=LocalPlayer()
local ent=net.ReadEntity()
local wep=p:GetActiveWeapon()
if !wep and ent==wep and wep:GetClass()!="weapon_308__agun" then return end
--AGUN308=nil AGUN308D=nil
wep._d={
dmg=wep.PA_Damage,
md=wep.Melee1,
ta=wep.PA_TakeAmmo,
f=wep.PA_Force,
delay=wep.PA_Delay,
recoil=wep.PA_Recoil,
spread=wep.PA_Spread,
rt=wep.ReloadTime,
num=wep.PA_Num,
size=wep.Primary.ClipSize,
auto=wep.Primary.Automatic,
}or wep._d
AGUN308=AGUN308 or wep._d
AGUN308D=AGUN308D or AGUN308
local f=vgui.Create("DFrame")
f:SetSize(300,600)
f:SetPos(ScrW()*.5-400,ScrH()/2-300)
f:SetTitle(ent.PrintName)
f:SetIcon("icon16/cog_edit.png")
--f:SetBackgroundBlur(true)
f:SetSizable(true)
f:SetDeleteOnClose(false)
f:MakePopup()
if !(LocalPlayer():IsAdmin()||LocalPlayer():IsSuperAdmin())then
d=vgui.Create("DLabel",f)
d:SetText(lan["a"])
d:SetPos(70,410)d:SetFont("entcheck")d:SetColor(Color(255,0,0))
d:SetSize(300,50)
end
local g=30
local d=vgui.Create("DNumSlider",f)
d:SetText(lan[1])
d:SetMinMax(0,9999)
d:SetDecimals(0)
d.Wang.ConVarChanged=function(p,v)wep._d.dmg=tonumber(v)end
d:SetValue(AGUN308.dmg)
d:SetPos(10,g)
d:SetSize(300,30)g=g+20
d=vgui.Create("DNumSlider",f)
d:SetText(lan[2])
d:SetMinMax(0,999999)
d:SetDecimals(0)
d.Wang.ConVarChanged=function(p,v)wep._d.f=tonumber(v)end
d:SetValue(AGUN308.f)
d:SetPos(10,g)
d:SetSize(300,30)g=g+20
d=vgui.Create("DNumSlider",f)
d:SetText(lan[3])
d:SetMinMax(0.01,2)
d.Wang.ConVarChanged=function(p,v)wep._d.delay=tonumber(v)end
d:SetValue(AGUN308.delay)
d:SetPos(10,g)
d:SetSize(300,30)g=g+20
d=vgui.Create("DNumSlider",f)
d:SetText(lan[4])
d:SetMinMax(0,10)
d.Wang.ConVarChanged=function(p,v)wep._d.recoil=tonumber(v)end
d:SetValue(AGUN308.recoil)
d:SetPos(10,g)
d:SetSize(300,30)g=g+20
d=vgui.Create("DNumSlider",f)
d:SetText(lan[5])
d:SetMinMax(0,1)
d.Wang.ConVarChanged=function(p,v)wep._d.spread=tonumber(v)end
d:SetValue(AGUN308.spread)
d:SetPos(10,g)
d:SetSize(300,30)g=g+20
d=vgui.Create("DNumSlider",f)
d:SetText(lan[6])
d:SetMinMax(.1,5)
d:SetDecimals(1)
d.Wang.ConVarChanged=function(p,v)wep._d.rt=tonumber(v)end
d:SetValue(AGUN308.rt)
d:SetPos(10,g)
d:SetSize(300,30)g=g+20
d=vgui.Create("DNumSlider",f)
d:SetText(lan[7])
d:SetMinMax(1,500)
d:SetDecimals(0)
d.Wang.ConVarChanged=function(p,v)wep._d.size=tonumber(v)end
d:SetValue(AGUN308.size)
d:SetPos(10,g)
d:SetSize(300,30)g=g+20
d=vgui.Create("DNumSlider",f)
d:SetText(lan[8])
d:SetMinMax(1,50)
d:SetDecimals(0)
d.Wang.ConVarChanged=function(p,v)wep._d.num=tonumber(v)end
d:SetValue(AGUN308.num)
d:SetPos(10,g)
d:SetSize(300,30)g=g+20
d=vgui.Create("DNumSlider",f)
d:SetText(lan[9])
d:SetMinMax(0,9999)
d:SetDecimals(0)
d.Wang.ConVarChanged=function(p,v)wep._d.md=tonumber(v)end
d:SetValue(AGUN308.md)
d:SetPos(10,g)g=g+20
d:SetSize(300,30)
d=vgui.Create("DNumSlider",f)
d:SetText(lan[10])
d:SetMinMax(0,10)
d:SetDecimals(0)
d.Wang.ConVarChanged=function(p,v)wep._d.ta=tonumber(v)end
d:SetValue(AGUN308.ta)
d:SetPos(10,g)g=g+30
d:SetSize(300,30)
d=vgui.Create("DLabel",f)
d:SetText(lan[11])
d:SetPos(10,g)
d=vgui.Create("DCheckBox",f)
d.OnChange=function(_,n)wep._d.auto=n end
d:SetValue(AGUN308.auto)
d:SetPos(70,g)g=g+20
d=vgui.Create("DLabel",f)
d:SetText("")
d:SetPos(90,g)
d=vgui.Create("DLabel",f)
d:SetText(lan[12])
d:SetPos(70,450)d:SetFont("entcheck")
d:SetSize(300,30)
d=vgui.Create("DLabel",f)
d:SetText(lan[13])
d:SetPos(30,540)d:SetFont("entcheck")
d:SetSize(300,50)
----
local b=vgui.Create("DButton",f)
b:SetPos(50,480)
b:SetSize(100,50)b:SetIcon("icon16/cog_add.png")
b:SetText(lan[14])b:SetFont("entcheck")
b.DoClick=function()
if IsValid(ent)then
if !(LocalPlayer():IsAdmin()||LocalPlayer():IsSuperAdmin())then
local b
if wep._d["dmg"]>30 and wep._d["delay"]<.06 then
b=1
end
if wep._d["dmg"]>199||wep._d["md"]>99 then
b=2
end
if wep._d["num"]>8 then
b=3
end
if wep._d["f"]>50 then
b=4
end
if wep._d["spread"]==0 then
b=5
end
if wep._d["delay"]<.05 then
b=6
end
if b then
surface.PlaySound("buttons/button11.wav")
local la="某个数值出界"
if b<2 then
la="Not allowed high damage minigun!"
elseif b<3 then
la="Bullet damage or melee damage too high!"
elseif b<4 then
la="shoot bullets are too many!"
elseif b<5 then
la="Huh, didja you wanna to explode the server?"
elseif b<6 then
la="Lowest spread."
else
la="low delay."
end
if GAME308_LANMath==2 then
if b<2 then
la="不允许高伤害加特林！"
elseif b<3 then
la="子弹伤害或近战伤害过高！"
elseif b<4 then
la="一次射击的子弹过多。"
elseif b<5 then
la="呵, 你是不是想炸掉伺服器?"
elseif b<6 then
la="子弹扩散过低。"
else
la="低延迟。"
end
end
LocalPlayer():ChatPrint(la)f:Close()return end
end

surface.PlaySound("buttons/blip1.wav")
net.Start("308AGun_edited")
net.WriteTable(ent._d)
AGUN308=ent._d
net.WriteEntity(ent)
net.SendToServer(ent)
else
p:ChatPrint("your attribute gun is unvalid.")surface.PlaySound("3088083421/sonic/death.wav")end
f:Close()end
b=vgui.Create("DButton",f)
b:SetPos(150,480)
b:SetSize(100,50)b:SetIcon("icon16/cancel.png")
b:SetText(lan[15])b:SetFont("entcheck")
b.DoClick=function()
if IsValid(ent)then
surface.PlaySound("buttons/button18.wav")
net.Start("308AGun_edited")
net.WriteTable(AGUN308D)
AGUN308=AGUN308D
net.WriteEntity(ent)
net.SendToServer(ent)
else
p:ChatPrint("your attribute gun is unvalid.")surface.PlaySound("3088083421/sonic/death.wav")end
f:Close()end
end)
end