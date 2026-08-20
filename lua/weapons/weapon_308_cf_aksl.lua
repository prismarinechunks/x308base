if !util.IsValidModel("models/cf/c_ak47_beast.mdl")then return end--ye ,3x Egg
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CF AK47- IRON BEAST"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/cf/c_ak47_beast.mdl"
SWEP.WorldModel = "models/cf/w_ak47_beast.mdl"
SWEP.ViewModelFOV =80

SWEP.TextIcon="killicon/ak47_beast"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawAnim ="deploy"
SWEP.IdleAnim ="idle"
SWEP.PA_Sound = "weapons/ak47_beast/rifle_fire_1.wav"
SWEP.PA_Damage = 39
SWEP.PA_Recoil = .8
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .7
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .08
SWEP.Primary.ClipSize = 35
SWEP.Primary.DefaultClip = 35
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "ar2"

SWEP.NormalDraw=true
SWEP.StopRAnimTime = 1.42
SWEP.ReloadTime = 1.45
SWEP.ReloadTime2 = 2.3
SWEP.BoltPullTime = 1.8
SWEP.ClipoutTime = .6
SWEP.ClipinTime = 1.28

SWEP.CenterPos = Vector(0,40,-1)
SWEP.CenterAng = Angle(-1,-4.6,0)
SWEP.SightPos = Vector(-5.96,30,.4)
SWEP.SightAng = Angle(-1,-4.2,0)
SWEP.Melee1=125
function SWEP:MeleeSound()self:EmitSound("weapons/knife/knife_hit"..math.random(4)..".wav")end
function SWEP:HitEnt()self:EmitSound("weapons/knife/knife_hitwall1.wav")end
function SWEP:HitWorld()self:EmitSound("weapons/knife/knife_hitwall1.wav")end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayAnim("melee")self:EmitSound("weapons/ak47_beast/rifle_melee.wav")
self:Melee(.2,1,.9,50)end
end