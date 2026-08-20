if !util.IsValidModel("models/weapons/c_mp5k.mdl")then return end--ye ,3x Egg
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "EP2 MP5K"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/weapons/c_mp5k.mdl"
SWEP.WorldModel = "models/weapons/w_mp5k.mdl"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/ez/smg2/smg2_fire1.wav"
SWEP.ReloadSound={{Sound="weapons/ez/smg2/smg2_reload1.wav"}}
SWEP.ReloadSound2=SWEP.ReloadSound
SWEP.PA_Damage = 16
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "smg1"
SWEP.PA_Recoil = .8
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .015
SWEP.PA_AimRecoil = .54

SWEP.NormalDraw=true
SWEP.StopRAnimTime = 1.9
SWEP.ReloadTime = 1.8
SWEP.ReloadTime2 = 2.5
SWEP.BoltPullTime = 2.2
SWEP.ClipoutTime = .9
SWEP.ClipinTime = 1.7

SWEP.TT=0
SWEP.CenterPos = Vector(0,40,0)
SWEP.SightPos = Vector(-4.05,30,1.7)
function SWEP:AfterReload()if self:GetNWInt("BOLT")==1 then
timer.Simple(.3,function()if IsValid(self.Owner)then self.Owner:StopSound("weapons/ez/smg2/smg2_reload1.wav")end end)
end
end
function SWEP:CustomHolster()if IsValid(self.Owner)then
self.Owner:StopSound("weapons/ez/smg2/smg2_reload1.wav")end
end
function SWEP:CustomThink()if self:GetNextPrimaryFire()+.2<CurTime()||self:Clip1()<1 then
self.TT=0 self.TF="fire01"
end
end
function SWEP:CustomPrimary()
self:ShootAnim()
self:FireB()
self:SetNextPrimaryFire(CurTime()+.4)
local a=self.HMath
for i=1,2 do
timer.Simple(.07*i,function()if !IsValid(self)||!self:CUnHos(a)||self:Clip1()<1 then return end
self:TakePrimaryAmmo(1)
self.Owner:EmitSound("weapons/ez/smg2/smg2_fire1.wav",511)
self:ShootAnim()
self:FireB()
end)
end
end
function SWEP:ShootAnim()
if self:IsScope()then
self.Owner:ViewPunch(Angle(math.Rand(0,self.TT*.2),math.Rand(-self.TT*.1,self.TT*.1),0))else
self.Owner:ViewPunch(Angle(math.Rand(0,self.TT*.26),math.Rand(-self.TT*.15,self.TT*.15),0))end
if self.TT<2 then
self.TF="fire01"
elseif self.TT<3 then
self.TF="fire03"
else
self.TF="fire04"
end
self:PlayAnim(self.TF)
self.TT=self.TT+1
end