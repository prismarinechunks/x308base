if !util.IsValidModel("models/weapons/v_rif_akmp.mdl")then return end--ye ,3x Egg
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CF AK47- BEAST"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/weapons/v_rif_akmp.mdl"
SWEP.WorldModel = "models/weapons/w_rif_akmp.mdl"
SWEP.UseHands=false
SWEP.ViewModelFlip = true

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/ak_beast/ak-1.wav"
SWEP.PA_Damage = 39
SWEP.PA_Recoil = 1.6
SWEP.PA_Spread = .03
SWEP.PA_AimSpread = .02
SWEP.PA_AimRecoil = 1.4
SWEP.SA_SightFOV = 70
SWEP.PA_Delay = .08
SWEP.Primary.ClipSize = 35
SWEP.Primary.DefaultClip = 35
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "ar2"

SWEP.NormalDraw=true
SWEP.StopRAnimTime = 1.5
SWEP.ReloadTime = 1.55
SWEP.ReloadTime2 = 2.1
SWEP.BoltPullTime = 1.8
SWEP.ClipoutTime = .7
SWEP.ClipinTime = 1.3

SWEP.CenterPos = Vector(0,30,0)
SWEP.SightAng = Angle(0,3.56,0)
SWEP.SightPos = Vector(7.97,30,2.8)