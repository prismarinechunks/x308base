if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_ak47_gold.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CFS AK47 Golden"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/fosterz/weapons/viewmodels/c_ak47_gold.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.ShowWorldModel=false
SWEP.ViewModelFlip = true

SWEP.Primary.ClipSize=35
SWEP.Primary.DefaultClip=35
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.TextIcon="entities/weapon_cf_ak47_newanim_new"
SWEP.PA_Sound = "weapons/ak47/g_shoot_ak47_1.wav"
SWEP.NormalDraw = true
SWEP.PA_Damage = 40
SWEP.PA_Delay = .09
SWEP.PA_Recoil = 1.6
SWEP.PA_Spread = .03
SWEP.PA_AimSpread = .02
SWEP.PA_AimRecoil = 1.4
SWEP.SA_SightFOV = 70
SWEP.StopRAnimTime = 1.05
SWEP.ReloadTime = 1.1
SWEP.ReloadTime2 = 1.9
SWEP.BoltPullTime = 1.4
SWEP.ClipoutTime = .27
SWEP.ClipinTime = 1
SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.MovingAnim="vk.com/cf_source_run"
SWEP.MovingAnimRate=1.75
SWEP.DrawSound = {{Delay=.2,Sound="weapons/ak47/g_reload_ak47.wav"}}
SWEP.DrawAnimRate=1
SWEP.ReloadAnim="vk.com/cf_source_reload"
SWEP.ReloadAnimRate=.5
SWEP.ReloadSound = {
{Delay=.2,Sound="weapons/ak47/g_mzc_ak47_clipout.wav"},
{Delay=.7,Sound="weapons/ak47/g_mzc_ak47_clipin.wav"}
}
SWEP.ReloadSound2 = {
{Delay=.2,Sound="weapons/ak47/g_mzc_ak47_clipout.wav"},
{Delay=.7,Sound="weapons/ak47/g_mzc_ak47_clipin.wav"},
{Delay=1.3,Sound="weapons/ak47/g_reload_ak47.wav"}
}
SWEP.CenterPos = Vector(-2,-80,2.5)
SWEP.CenterAng = Angle(-5,0,0)
SWEP.SightPos = Vector(3.55,-50,5.3)
SWEP.SightAng = Angle(-3,-.2,0)
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_ak47_gold.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.226, 0.662, -0.311), angle = Angle(180, -90, 10), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()self:PlayAnim("vk.com/cf_source_fire",.5)end
