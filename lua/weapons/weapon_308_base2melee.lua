
AddCSLuaFile()
SWEP.PA_Num=0
SWEP.Base = "weapon_308_base2"
SWEP.PrintName = "BIG SECRET VI"
SWEP.Category = "308..' Base"
SWEP.HoldType = "melee"
SWEP.ViewModel = "models/weapons/cstrike/c_knife_t.mdl"
SWEP.WorldModel = "models/weapons/w_knife_ct.mdl"
SWEP.Slot = 0
SWEP.Spawnable = false
SWEP.Is308Melee=true
SWEP.SA_IsSight=false--must
SWEP.SwayScale=2
SWEP.Melee1=30
SWEP.Melee2=85
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.21
SWEP.MeleeOT=.35
SWEP.MeleeOT2=1
SWEP.RangeD=40
SWEP.MeleeAnim=ACT_VM_MISSCENTER
SWEP.MeleeAnim2=ACT_VM_MISSCENTER
SWEP.MeleeAnimRate=1
SWEP.MeleeAnim2Rate=1
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.AmmoHUD=2
SWEP.Text_Auto="Melee"
SWEP.Text_Semi="Melee"
SWEP.Meleeing=1
SWEP.DeployScale=30
_308GlobalMeleeRange=nil
SWEP.MeleeS={}
SWEP.MeleeS2={}
SWEP.MeleeSH={}
SWEP.MeleeSH2={}
SWEP.MeleeSW={}
SWEP.MeleeSM={}
SWEP.MeleeSM2={}

SWEP.HurtType=DMG_SLASH
SWEP.Multiple=1
function SWEP:MAnim(t)
if t==1 and self.MeleeAnim then
self:PlayMCAnim(self.MeleeAnim)
elseif self.MeleeAnim2 then
self:PlayMCAnim(self.MeleeAnim2)
end
end
function SWEP:Reload()end
function SWEP:PrimaryAttack(t)
t=t or 1
if self:BeforePA(t)||self.Owner:KeyDown(IN_USE)then return end
self.HMath=self.HMath+1
self.Owner:SetAnimation(PLAYER_ATTACK1)
self:Melee(self.MeleeAT,t,self.MeleeOT)
self:MAnim(t)
self:SoundSlot(self.MeleeS)
end
function SWEP:SecondaryAttack(t)
t=t or 2
if self:BeforePA(t)||self.Owner:KeyDown(IN_USE)then return end
self.HMath=self.HMath+1
self.Owner:SetAnimation(PLAYER_ATTACK1)
self:Melee(self.MeleeAT2,t,self.MeleeOT2)
self:MAnim(t)
self:SoundSlot(self.MeleeS2)
end
function SWEP:FireB()end
function SWEP:BasThink()end


function SWEP:HitWorld()self:SoundSlot(self.MeleeSW)end
function SWEP:MeleeSound(t,w)
if t==1 then
self:SoundSlot(self.MeleeSH)
else
self:SoundSlot(self.MeleeSH2)
end
end
function SWEP:MeleeMiss(t)
if t==1 then
self:SoundSlot(self.MeleeSM)
else
self:SoundSlot(self.MeleeSM2)
end
end

local D=0
local R=0
local A
local C={}
local C1={}
local FrameP={}
local FrameP1=0
local B={}
if SERVER then
util.AddNetworkString("308mc2framereset")
else
net.Receive("308mc2framereset",function()B={}FrameP={}FrameP1=0 R=CurTime()C={}C1={}A=net.ReadTable()end)end
function SWEP:BasVMPos(pos,ang)
local d=D
local p=self.Owner
self.D=d
if d>10 then d=20-d end
pos=pos-ang:Up()*d-ang:Forward()
if A then
for i=1,#A do
local f=A[i]
f.Delay=f.Delay or 0
f.Time=f.Time or 0
local t=R+f.Delay
if(f.Time==0||t<=CurTime()-f.Time)and FrameP1<i then
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
FrameP1=i
end
if t<CurTime()and(f.Time>0 and t>CurTime()-f.Time)and FrameP1+1==i then
t=math.Clamp((CurTime()-R-f.Delay)/f.Time,0,1)
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
self:UpdateBonePositions(self.Owner:GetViewModel())
return pos,ang
end

function SWEP:PlayMCAnim(t)if SERVER and t and istable(t)then self._Timer=CurTime()self.PlayingAnim=t net.Start("308mc2framereset")net.WriteTable(t)net.Send(self.Owner)self:UpdateNextIdle()end end