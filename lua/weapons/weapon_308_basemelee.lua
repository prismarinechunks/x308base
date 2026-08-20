
AddCSLuaFile()
SWEP.PA_Num=0
SWEP.Base = "weapon_308_base"
SWEP.PrintName = "BIG SECRET III"
SWEP.Category = "308..' Base"
SWEP.HoldType = "melee"
SWEP.ViewModel = "models/weapons/cstrike/c_knife_t.mdl"
SWEP.WorldModel = "models/weapons/w_knife_ct.mdl"
SWEP.Slot = 0
SWEP.Spawnable = false
SWEP.Is308Melee=true
SWEP.SA_IsSight=false--must
SWEP.SwayScale=0
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
self:PlayAnim2(self.MeleeAnim,self.MeleeAnimRate)
elseif self.MeleeAnim2 then
self:PlayAnim2(self.MeleeAnim2,self.MeleeAnim2Rate)
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