if !util.IsValidModel("models/weapons/tfa_cso/c_janus1a.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "JANUS-1"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/tfa_cso/c_janus1a.mdl"
SWEP.WorldModel = "models/weapons/tfa_cso/w_janus1.mdl"

SWEP.ClipExtraBullet = false
SWEP.ViewModelFlip = true
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic=true
SWEP.Slot = 4
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/tfa_cso/janus1/fire2.wav"
SWEP.PA_Sound2 = {{Sound="weapons/tfa_cso/janus1/fire.wav"}}
SWEP.ReloadSound = {{Delay=.2,Sound="3088083421/m79_clipout.wav"}}
SWEP.ReloadSound2 = {{Delay=.2,Sound="3088083421/m79_clipout.wav"},{Delay=.9,Sound="3088083421/m79_clipin.wav"},{Delay=1.63,Sound="3088083421/m79_clipon.wav"}}
SWEP.Primary.Ammo="SMG1_Grenade"
SWEP.PA_Delay = 2.4
SWEP.BlockPrimary=true
SWEP.PA_Recoil = 2.3
SWEP.PA_AimRecoil = 1.8

SWEP.SA_IsSight = false
SWEP.DrawAnim="draw1"
SWEP.CenterPos = Vector( 0, 0, -2 )
SWEP.NormalDraw = true
SWEP.TTimer=CurTime()
SWEP.Signal=0
SWEP.Active=nil
function SWEP:Reload()end
function SWEP:CustomThink()
if self:Clip1()==0 and self:Ammo1()>0 then self:TakePrimaryAmmo(1)self:SetClip1(1)end
if self.TTimer<CurTime()then
if self.Active then self.Active=nil self:PlayAnim("change2")self:SetNextPrimaryFire(CurTime()+1)self.BoltPullTimer=1 end
self.Signal=0
self.DrawAnim="draw1"
self.IdleAnim="idle1"
self.PA_Sound = "weapons/tfa_cso/janus1/fire.wav"
self.PA_TakeAmmo=1
self.PA_Delay=2.4
self.PA_Sound2={{Sound="weapons/tfa_cso/janus1/fire.wav"}}
elseif self.Signal>1 and !self.Active then
self.DrawAnim="draw_signal"
self.IdleAnim="signal"
end
end
function SWEP:SecondaryAttack()
if !self.Active and self.Signal>1 and self:GetNextPrimaryFire()<CurTime()then
self.Active=1 self.TTimer=CurTime()+8
self:PlayAnim("change1")self.IdleAnim="idle2"
self.PA_Sound = "weapons/tfa_cso/janus1/fire2.wav"
self.DrawAnim="draw2"
self:SetNextPrimaryFire(CurTime()+1.2)
self.BoltPullTimer=1.2
self.PA_TakeAmmo=0
self.PA_Delay=.35
self.PA_Sound2={}
end
end
function SWEP:ShootAnim()end
function SWEP:FireB()
	if SERVER then
	local e=ents.Create("obj_308_grenade")
	e:SetAngles(self.Owner:GetAimVector():Angle())
	e:SetPos(self.Owner:GetShootPos()+self:GetForward()*30+self.Owner:GetRight()*12+self.Owner:GetUp()*-2)
	e:SetOwner(self.Owner)
	e:Spawn()
	e:Activate()
	self.Owner:DeleteOnRemove(e)
	e:SetVelocity(self.Owner:GetForward()*2000+self.Owner:GetUp()*160+self:GetVelocity()/5)
	end
	if self.Active then
	self:PlayAnim("shoot2_2")
	return end
	if self.TTimer>CurTime()then
	self.Signal=self.Signal+1
	else self.Signal=0
	end
	self.TTimer=CurTime()+3.4

local s=""
local s2="1"
if self.Signal>1 then s="_signal" s2="signal" end
if self:Ammo1()>0 then
self:TakePrimaryAmmo(1)self:SetClip1(1)self:PlayAnim("shoot1_"..s2)else
self:PlayAnim("shoot1_2"..s)end

end
