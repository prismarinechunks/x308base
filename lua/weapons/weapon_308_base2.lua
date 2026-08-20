SWEP.Base = "weapon_308_base"
SWEP.PrintName = "308 Pistol"
SWEP.HoldType="pistol"
SWEP.Category = "x308 Base | Guns"
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.IsMCGun=1
SWEP.DrawAnim=""
SWEP.MCDrawAnim={}
SWEP.MCIdleAnim={}
SWEP.PA_MCAnim={}
SWEP.MCReloadAnim={}
SWEP.Spawnable=true
SWEP.UseHands=false--if yes, cancel Cube Hands.
--SWEP.UseCubeHands=true
SWEP.IdleAnimRate=0
SWEP.DrawTime=.1
SWEP.ShootSpeed=.2
SWEP.ShootScale=1
SWEP.ReloadType=0
SWEP.VElements={}
SWEP.PA_Effect="308_muzzlemc"

SWEP.Primary.ClipSize = 18
SWEP.Primary.DefaultClip = 18
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.PA_Sound = "weapons/pistol/pistol_fire2.wav"
SWEP.PA_Damage = 8
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .8
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .09
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 1.2
SWEP.ReloadTime = 1.3
SWEP.ClipoutTime = .1
SWEP.ClipinTime=.9
SWEP.BoltPullTime=1
SWEP.ReloadTime2 = 1.6

local D=0
local R=0
local A
local C={}
local C1={}
local FrameP={}
local FrameP1=0
local B={}
if SERVER then
util.AddNetworkString("308mcframereset")
else
net.Receive("308mcframereset",function()B={}FrameP={}FrameP1=0 R=CurTime()C={}C1={}A=net.ReadTable()end)
end
function SWEP:BasInit()local p=self.Owner
if self:GetClass()=="weapon_308_base2" then
self.ReloadSound={{Delay=.1,Sound="3088083421/wep/reload/all_clipout.ogg"},{Delay=.7,Sound="3088083421/wep/reload/all_clipin.ogg"}}
self.ReloadSound2={{Delay=.1,Sound="3088083421/wep/reload/all_clipout.ogg"},{Delay=.7,Sound="3088083421/wep/reload/all_clipin.ogg"},{Delay=1,Sound="3088083421/wep/reload/pis_cod_sliderelease.wav"}}

self.MCDrawAnim={
{Pos=Vector(0,95,-19),A={{Bone="ValveBiped.square",pos=Vector()}}},
{Time=.2,Pos=Vector(0,65,-.1)}
}
self.MCIdleAnim={
{Pos=Vector(0,65,0),A={{Bone="ValveBiped.square"},{Bone="ValveBiped.Bip01_L_Hand"}}},
{Time=1,Pos=Vector(0,65,-.1)},
{Delay=1,Time=1,Pos=Vector(0,65,0)},
}
self.MCInIdle2Anim={
{Time=.1,Pos=Vector(-6,100,2.6),Ang=Angle(1,-1.1,-1)},
}
self.MCIdleAnim2={
{Time=9,Pos=Vector(-6,100,2.6),Ang=Angle(1,-1.1,-1),A={{Bone="ValveBiped.square",pos=Vector()}}},
}
self.MCInIdleAnim={
{Time=.5,Pos=Vector(0,65,-.1)},
}
self.PA_MCAnim={
{Time=.1,Pos=Vector(0,95,0),Ang=Angle(5),A={{Bone="ValveBiped.square",pos=Vector(-1.5)}}},
{Delay=.1,Time=.1,Pos=Vector(0,65),Ang=Angle(),A={{Bone="ValveBiped.square",pos=Vector()}}},
}
self.PA_MCAnim2={
{Time=.05,Pos=Vector(-6,110,2.6),Ang=Angle(2,-1.1,-1),A={{Bone="ValveBiped.square",pos=Vector(-1.5)}}},
{Delay=.05,Time=.1,Pos=Vector(-6,100,2.6),Ang=Angle(1,-1.1,-1),A={{Bone="ValveBiped.square",pos=Vector()}}},
}
self.MCReloadAnim={
{Delay=.1,Time=.3,Pos=Vector(2,29,2),Ang=Angle(0,8,5),A={{Bone="ValveBiped.Bip01_L_Hand",pos=Vector(17,-8,-14),angle=Angle(-63,13)},{Bone="ValveBiped.clip",pos=Vector(0,0,17)}}},
{Delay=.4,Time=.25,Pos=Vector(6,29,1),Ang=Angle(1,8,48)},
{Delay=.7,Time=.2,Pos=Vector(9,29,2),Ang=Angle(4,8,55),A={{Bone="ValveBiped.Bip01_L_Hand",pos=Vector(11,-21,-13),angle=Angle(-79,-15)},{Bone="ValveBiped.clip",pos=Vector()}}},
{Delay=1,Time=.15,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_L_Hand",pos=Vector(),angle=Angle()}}},
}
self.MCReloadAnim2={
{Delay=.1,Time=.3,Pos=Vector(2,29,2),Ang=Angle(0,8,5),A={{Bone="ValveBiped.square",pos=Vector(-1.5)},{Bone="ValveBiped.Bip01_L_Hand",pos=Vector(17,-8,-14),angle=Angle(-63,13)},{Bone="ValveBiped.clip",pos=Vector(0,0,17)}}},
{Delay=.4,Time=.25,Pos=Vector(6,29,1),Ang=Angle(1,8,48)},
{Delay=.7,Time=.2,Pos=Vector(9,29,2),Ang=Angle(4,8,55),A={{Bone="ValveBiped.Bip01_L_Hand",pos=Vector(11,-21,-13),angle=Angle(-79,-15)},{Bone="ValveBiped.clip",pos=Vector()}}},
{Delay=1,Time=.15,Pos=Vector(2,29),Ang=Angle(-1,9,-5),A={{Bone="ValveBiped.square",pos=Vector()},{Bone="ValveBiped.Bip01_L_Hand",pos=Vector()}}},
{Delay=1.3,Time=.1,Pos=Vector(0,65)},
}
self.MeleeAnim={
{Delay=0,Time=.1,Pos=Vector(2,6,2),Ang=Angle(60,-8,25)},
{Delay=.1,Time=.2,Pos=Vector(2,-19),Ang=Angle(-35,28,-5)},
{Delay=.3,Time=.4,Pos=Vector(0,65)},
}
self.HitAnim={
{Time=.3,Pos=Vector(0,65)},
}
self.ReviewAnim={
{Time=.5,Pos=Vector(16,35,-1),Ang=Angle(4,58,5)},
{Delay=.5,Time=2,Pos=Vector(16,35,-1),Ang=Angle(3,58,5)},
{Delay=3,Time=1,Pos=Vector(15,35,-9),Ang=Angle(24,58,10)},
{Delay=4,Time=1,Pos=Vector(16,35,-9),Ang=Angle(23,58,10)},
{Delay=5.5,Time=.5,Pos=Vector(0,65)},
}

self.MeleeSound=function()self:PlayMCAnim(self.HitAnim)self:EmitSound("3088083421/wep/melee/punch.wav")end
self.HitEnt=function()sself:MeleeSound()end self.HitWorld=function()self:MeleeSound()end
self.CusESA=function()if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.ReviewAnim)end
end
self.CusEPA=function()if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.MeleeAnim)self:EmitSound("3088083421/wep/melee/linkedslash.mp3")
self:Melee(.25,1,.65,40)end
end
end
if CLIENT and !self.UseHands then
self.VElements["handl"]={ type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-13.221, -0.612, 0.395), angle = Angle(0, 90), size = Vector(0.3, 2.506, 0.3), color = Color(255, 190, 153), surpresslightning = false, material = "phoenix_storms/fender_white", skin = 0, bodygroup = {} }
self.VElements["handr"]={ type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-8.959, 0.925, 0.001), angle = Angle(0, 90), size = Vector(0.3, 2.506, 0.3), color = Color(255, 190, 153), surpresslightning = false, material = "phoenix_storms/fender_white", skin = 0, bodygroup = {} }
if !IsValid(p)then return end
local c=p:GetPlayerColor():ToColor()
if string.find(p:GetModel(),"player/group01")||string.find(p:GetModel(),"player/group02")||string.find(p:GetModel(),"player/group03")
||p:GetModel()=="models/player/kleiner.mdl"
||p:GetModel()=="models/player/magnusson.mdl"
||p:GetModel()=="models/player/breen.mdl"
||p:GetModel()=="models/player/mossman.mdl"
||p:GetModel()=="models/player/monk.mdl"
||p:GetModel()=="models/player/gman_high.mdl"
||p:GetModel()=="models/player/eli.mdl"
||p:GetModel()=="models/player/arctic.mdl"
||p:GetModel()=="models/player/gman_high.mdl"
then
if string.find(p:GetModel(),"player/group03m")||p:GetModel()=="models/player/arctic.mdl" then c=Color(255,255,255)end
self.VElements["handr2"]={ type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "", rel = "handr", pos = Vector(0, -4), angle = Angle(), size = Vector(.32, 1.764,.32), color =c, surpresslightning = false, material = "phoenix_storms/fender_white", skin = 0, bodygroup = {} }
self.VElements["handl2"]={ type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "", rel = "handl", pos = Vector(0, -4), angle = Angle(), size = Vector(.32, 1.764,.32), color =c, surpresslightning = false, material = "phoenix_storms/fender_white", skin = 0, bodygroup = {} }
end
if string.find(p:GetModel(),"player/group03")
||p:GetModel()=="models/player/mossman_arctic.mdl"
||p:GetModel()=="models/player/urban.mdl"
||p:GetModel()=="models/player/guerilla.mdl"
||p:GetModel()=="models/player/swat.mdl"
||p:GetModel()=="models/player/leet.mdl"
||p:GetModel()=="models/player/riot.mdl"
||p:GetModel()=="models/player/gasmask.mdl"
||p:GetModel()=="models/player/phoenix.mdl"
||p:GetModel()=="models/player/arctic.mdl"
||p:GetModel()=="models/player/alyx.mdl"
then
self.VElements["handrg"]={ type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "", rel = "handr", pos = Vector(0,13.088), angle = Angle(), size=Vector(.31,.31,.31), color=Color(70, 70, 70), surpresslightning = false, material = "phoenix_storms/fender_white", skin = 0, bodygroup = {} }
self.VElements["handlg"]={ type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "", rel = "handl", pos = Vector(0,13.088), angle = Angle(), size=Vector(.31,.31,.31), color=Color(70, 70, 70), surpresslightning = false, material = "phoenix_storms/fender_white", skin = 0, bodygroup = {} }

end
if p:GetModel()=="models/player/zombie_classic.mdl"
||p:GetModel()=="models/player/zombie_fast.mdl"
||p:GetModel()=="models/player/zombie_soldier.mdl"
||p:GetModel()=="models/player/skeleton.mdl"
||p:GetModel()=="models/player/corpse1.mdl"
||p:GetModel()=="models/player/charple.mdl"
then
self.VElements["handr"].size=Vector(.01,.01,.01)
self.VElements["handl"].size=Vector(.01,.01,.01)
self.VElements["handrc"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "", rel = "handr", pos = Vector(.5), angle = Angle(),size=Vector(.25,2.506,.25),color=color_white,surpresslightning = false, material = "models/flesh", skin = 0, bodygroup = {} }
self.VElements["handlc"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "", rel = "handl", pos = Vector(-1), angle = Angle(),size=Vector(.25,2.506,.25),color=color_white,surpresslightning = false, material = "models/flesh", skin = 0, bodygroup = {} }
end
end
end
SWEP.SightPosMC={}
SWEP.SightAngMC={}
SWEP._Timer=0
function SWEP:BasVMPos(pos,ang)
local d=D
local p=self.Owner
self.D=d
if d>10 then d=20-d end
pos=pos-ang:Up()*d
if A then
for i=1,#A do
local f=A[i]
f.Delay=f.Delay or 0
f.Time=f.Time or 0
local t=R+f.Delay
if(f.Time==0||t<=CurTime()-f.Time)and FrameP1<i then
--MsgAll(i.."\r")
f.Ang=f.Ang or self.CenterAng
f.Pos=f.Pos or self.CenterPos
self.SightAng2=f.Ang
self.SightPos2=f.Pos
if f.A then
for l=1,#f.A do
if !B[f.A[l].Bone]||!f._A then f._A=1
B[f.A[l].Bone]=self.ViewModelBoneMods[f.A[l].Bone]or{scale=Vector(1,1,1),pos=Vector(),angle=Angle()}FrameP[f.A[l].Bone]=i end
f.A[l].scale=f.A[l].scale or Vector(1,1,1)
f.A[l].pos=f.A[l].pos or Vector()
f.A[l].angle=f.A[l].angle or Angle()
self.ViewModelBoneMods[f.A[l].Bone]={scale=f.A[l].scale,pos=f.A[l].pos,angle=f.A[l].angle}
end
else
for l=1,#B do
self.ViewModelBoneMods[B[l]]={scale=Vector(1,1,1),pos=Vector(),angle=Angle()}end
end
--
FrameP1=i
end
if t<CurTime()and(f.Time>0 and t>CurTime()-f.Time)and FrameP1+1==i then
t=math.Clamp((CurTime()-R-f.Delay)/f.Time,0,1)
--if i==2 then MsgAll(t)end
local t2=1-t
C[i]=C[i]or self.SightAng2
C1[i]=C1[i]or self.SightPos2
f.Ang=f.Ang or self.CenterAng
f.Pos=f.Pos or self.CenterPos
self.SightAng2=f.Ang*t+C[i]*t2
self.SightPos2=f.Pos*t+C1[i]*t2
if f.A then
for l=1,#f.A do
if !B[f.A[l].Bone]||!FrameP[f.A[l].Bone]||FrameP[f.A[l].Bone]<i then 
B[f.A[l].Bone]=self.ViewModelBoneMods[f.A[l].Bone]or{scale=Vector(1,1,1),pos=Vector(),angle=Angle()}FrameP[f.A[l].Bone]=i end
f.A[l].scale=f.A[l].scale or Vector(1,1,1)
f.A[l].pos=f.A[l].pos or Vector()
f.A[l].angle=f.A[l].angle or Angle()
local s=f.A[l].scale*t+B[f.A[l].Bone].scale*t2
local pos1=f.A[l].pos*t+B[f.A[l].Bone].pos*t2
local ang1=f.A[l].angle*t+B[f.A[l].Bone].angle*t2
self.ViewModelBoneMods[f.A[l].Bone]={scale=s,pos=pos1,angle=ang1}
end
else
for l=1,#B do
local s=Vector(1,1,1)*t2+B[l].scale*t
local pos1=B[l].pos*t
local ang1=B[l].angle*t
self.ViewModelBoneMods[B[l]]={scale=Vector(1,1,1),pos=Vector(),angle=Angle()}
end
end
end
end
end
--[[--Alpha Version
d=R
self.R=R
if d>50 then d=100-d end

if self.ReloadType==0 then

ang=ang+Angle(-d/2,0,d/5)
pos=pos-ang:Up()*d/15-ang:Forward()*d/8+ang:Right()*d/15
self.VElements["handr"].pos.y=4+d/2

elseif self.ReloadType==1 then

ang=ang+Angle(-d/2,d/5,d/5)
pos=pos-ang:Up()*d/15-ang:Forward()*d/8+ang:Right()*d/10
self.VElements["handr"].angle.x=15+d/2
self.VElements["handr"].pos=Vector(-7,1+d/2,1+d/2)

elseif self.ReloadType==2 then

ang=ang+Angle(-d/2,d/5,d/5)
pos=pos-ang:Up()*d/15-ang:Forward()*d/8+ang:Right()*d/7
local d2=R
if d2>50 then d2=100-R else d2=0 end
self.VElements["handr"].angle.x=15+d/2
self.VElements["handr"].pos=Vector(-7-d2/2,d/2,-1+d2/2)

elseif self.ReloadType==3 then

ang=ang+Angle(d)

elseif self.ReloadType==4 then

ang=ang+Angle(d)
self.VElements["handr"].angle.x=15
self.VElements["handr"].pos=Vector(-7,1,1)

end
--]]
self:UpdateBonePositions(self.Owner:GetViewModel())
return pos,ang
end

function SWEP:PlayMCAnim(t)if SERVER and t and istable(t)then self._Timer=CurTime()self.PlayingAnim=t net.Start("308mcframereset")net.WriteTable(t)net.Send(self.Owner)self:UpdateNextIdle()end end
function SWEP:GetAnimTime(t)
local n=0
if !t then t=self.PlayingAnim end
if istable(t)and #t>0 then
for i=1,#t do
if !t[i+1]then
if t[i].Delay then
n=n+t[i].Delay
end
if t[i].Time then
n=n+t[i].Time
end
end
end
end
return n
end
function SWEP:BasThink()if self:GetNWInt("_MC")>0 then
self:SetNWInt("_MC",math.Clamp(self:GetNWInt("_MC")-4,0,999))end
end

if CLIENT then
surface.CreateFont( "308MinecraftFont", {
	font = "Terminal",
	size = 32*ScrH()/800,
	weight = 4500,
	blursize = 0,
	scanlines = 0,
	antialias = false,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = true,
	additive = false,
	outline = false
} )end
function SWEP:BasHUD()
draw.SimpleText(self.PrintName,"308MinecraftFont",ScrW()*.5,ScrH()*.7,Color(255,255,255,math.Clamp(self:GetNWInt("_MC"),0,255)),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
end

function SWEP:PreDrawViewModel( vm )
render.PushFilterMag( TEXFILTER.POINT )
render.PushFilterMin( TEXFILTER.POINT )
end
function SWEP:PostDrawViewModel( vm )
render.PopFilterMag()
render.PopFilterMin()
end