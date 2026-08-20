if !util.IsValidModel("models/cf/c_deagle_beast.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CF Deagle-Born Beast"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/cf/c_deagle_beast.mdl"
SWEP.WorldModel = "models/cf/w_deagle_beast.mdl"

SWEP.TextIcon="killicon/deagle_bornbeast"
SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawAnim ="deploy"
SWEP.IdleAnim ="idle"
SWEP.ReloadSound={{Sound="weapons/deagle_beast/de_clipout.wav",Delay=.1},{Sound="weapons/deagle_beast/de_clipin.wav",Delay=.8}}
SWEP.ReloadSound2={{Sound="weapons/deagle_beast/de_clipout.wav",Delay=.1},{Sound="weapons/deagle_beast/de_clipin.wav",Delay=.8},{Sound="weapons/deagle_beast/de_slideback.wav",Delay=1.46}}
SWEP.DrawSound={{Sound="weapons/deagle_beast/de_deploy.wav",Delay=.1}}
SWEP.PA_Sound = "weapons/deagle_beast/deagle-1.wav"
SWEP.PA_Damage = 53
SWEP.Primary.ClipSize = 11
SWEP.Primary.DefaultClip = 11
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "357"
SWEP.PA_Recoil = 5
SWEP.PA_Spread = 0.02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 4

SWEP.NormalDraw=true
SWEP.StopRAnimTime = 1.3
SWEP.ReloadTime = 1.35
SWEP.ReloadTime2 = 1.9
SWEP.BoltPullTime = 1.6
SWEP.ClipoutTime = .37
SWEP.ClipinTime = 1.1

SWEP.CenterPos = Vector(1,20,-1)
SWEP.SightPos = Vector(-3.92,10,1.24)
SWEP.SightAng = Angle(-2.6,-1.3,0)
SWEP.Melee1=120
function SWEP:MeleeSound()self:EmitSound("weapons/knife/knife_hit"..math.random(4)..".wav")end
function SWEP:HitWorld()self:EmitSound("weapons/knife/knife_hitwall1.wav")end
function SWEP:CustomDeploy()self:Melee(.1,.7,.75,40)end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayAnim("melee")self:EmitSound("weapons/deagle_beast/de_deploy.wav",100,110)
self:Melee(.1,1,.75,40)end
end