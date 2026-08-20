if !util.IsValidModel("models/vuthakral/halo/weapons/c_hum_m6d.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "HALO M6D"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.ViewModel = "models/vuthakral/halo/weapons/c_hum_m6d.mdl"
SWEP.WorldModel = "models/vuthakral/halo/weapons/w_m6d.mdl"
SWEP.PA_Sound = "vuthakral/halo/weapons/m6d/fire.wav"
SWEP.Primary.ClipSize = 12
SWEP.Primary.DefaultClip = 12
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"
SWEP.PA_Damage = 12

SWEP.PA_Recoil = .5
SWEP.PA_Spread = .02
SWEP.PA_Delay = .25
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .4

SWEP.ReloadAnimD2={{Anim="reload_empty"}}
SWEP.BAnim = "draw"
SWEP.SA_SightFOV = 65
SWEP.SA_Delay = .1
SWEP.PA_DryFireSound="vuthakral/halo/weapons/m6d/dryfire.wav"
SWEP.SA_SightS="vuthakral/halo/weapons/beamrifle/zoom_in.wav"
SWEP.SA_SightS2="vuthakral/halo/weapons/beamrifle/zoom_out.wav"

SWEP.TextIcon="vgui/entities/drchalo_magnum"
SWEP.BoltPullTime=1.6
SWEP.ReloadTime = 1.9
SWEP.ReloadTime2 = 2.4
SWEP.ClipoutTime = .54
SWEP.ClipinTime = 1.4

SWEP.CenterPos = Vector(0,0,0)
SWEP.SightPos = Vector(-1.79,10,3)
SWEP.DeployScale=30
function SWEP:ShootAnim()self:PlayAnim("fire")end