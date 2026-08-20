if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_dualcolt1991.mdl")then return end
SWEP.Base = "weapon_308_basedual"
SWEP.PrintName = "Dual COLT1911"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "duel"
SWEP.ViewModel = "models/fosterz/weapons/viewmodels/c_dualcolt1991.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.ShowWorldModel=false
SWEP.ViewModelFOV =70
SWEP.ViewModelFlip = true

SWEP.Primary.ClipSize=12
SWEP.Primary.DefaultClip=12
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"

SWEP.Slot =1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.SwayScale = 2

SWEP.PA_Sound = "weapons/colt1911/g_shoot_colt1911_1.wav"
SWEP.NormalDraw = true
SWEP.PA_Damage = 32

SWEP.PA_Recoil = 1
SWEP.PA_Spread = .012
SWEP.PA_AimSpread = .009
SWEP.PA_AimRecoil = .8

SWEP.StopRAnimTime = 2
SWEP.ClipoutTime = .3
SWEP.ClipoutTime2 = .34
SWEP.ClipinTime = 1.84
SWEP.ClipinTime2 = 1.25
SWEP.ReloadTime = 2.1
SWEP.ReloadTime2 = 2.7
SWEP.BoltPullTime = 2.1
SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.MovingAnim="vk.com/cf_source_run"
SWEP.MovingAnimRate=1.5
SWEP.BSound={{Sound="weapons/dual_colt/dual_colt_reload.wav"}}
SWEP.DrawSound={{Sound="weapons/dual_colt/dual_colt_select.wav"}}
SWEP.ReloadAnim="vk.com/cf_source_reload"
SWEP.ReloadAnimRate=.4
SWEP.ReloadSound = {
{Delay=.3,Sound="weapons/dual_colt/dual_colt_clipout.wav"},
{Delay=.9,Sound="weapons/dual_colt/dual_colt_clipin.wav"},
}
SWEP.ReloadSound2 = {
{Delay=.3,Sound="weapons/dual_colt/dual_colt_clipout.wav"},
{Delay=.9,Sound="weapons/dual_colt/dual_colt_clipin.wav"},
{Delay=1.95,Sound="weapons/dual_colt/dual_colt_reload.wav"}
}
SWEP.PA_Anim="vk.com/cf_source_prefire"
SWEP.PA_Anim2="vk.com/cf_source_postfire"
SWEP.SA_Anim="vk.com/cf_source_prefire_l"
SWEP.SA_Anim2="vk.com/cf_source_postfire_l"
SWEP.Empty_AnimL="vk.com/cf_source_prefire_l"
SWEP.Empty_AnimR="vk.com/cf_source_prefire"
SWEP.CenterPos = Vector(-1,-99,0)
SWEP.CenterAng = Angle(-90,0,0)
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_colt1991.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.86, 2.24, 0.456), angle = Angle(-175.603, -91, 6), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_colt1991.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(1.337, 0.711, -0.752), angle = Angle(4.776, -91.018, 4.651), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}