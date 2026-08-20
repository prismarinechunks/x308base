SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Alyx Gun"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "pistol"
SWEP.UseHands = false
SWEP.ViewModel = "models/weapons/v_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_alyx_gun.mdl"
SWEP.SwayScale = 3
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.PA_Sound = "weapons/alyx_gun/alyx_gun_fire3.wav"
SWEP.PA_Damage = 8
SWEP.NormalDraw = true
SWEP.PA_Recoil = .8
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .7
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .08
SWEP.SA_Delay = .1
SWEP.SA_Cross=true
SWEP.StopRAnimTime = 1.2
SWEP.ReloadTime = 1.3
SWEP.ClipoutTime = .3
SWEP.ClipinTime = 1
SWEP.BoltPullTime=1
SWEP.ReloadTime2 = 1.6
SWEP.ReloadSound = {
{Sound="weapons/pistol/pistol_reload1.wav"}
}
SWEP.ReloadSound2 = {
{Sound="weapons/pistol/pistol_reload1.wav"}
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.clip"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_alyx_gun.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0.639, -2.243, 0.5), angle = Angle(-101.127, 164.731, 87.344), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.SightPos = Vector(-6.1, 100, 2.5)
SWEP.SightAng = Angle(1, -1.1, 0)
function SWEP:ShootAnim()
self:PlayAnim("fire")
end