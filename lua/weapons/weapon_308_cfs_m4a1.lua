if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_m4a1.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CFS M4A1"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/fosterz/weapons/viewmodels/c_m4a1.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ShowWorldModel=false
SWEP.ViewModelFlip = true
SWEP.IdleAnimRate=0

SWEP.Primary.ClipSize=30
SWEP.Primary.DefaultClip=30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.TextIcon="entities/weapon_cf_m4a1"
SWEP.PA_Sound = "weapons/m4a1/g_shoot_m4a1_1.wav"
SWEP.NormalDraw = true
SWEP.PA_Damage = 32
SWEP.PA_Delay = .078
SWEP.PA_Recoil = 1.4
SWEP.PA_Spread = .027
SWEP.PA_AimSpread = .018
SWEP.PA_AimRecoil = 1.2
SWEP.StopRAnimTime = 1.1
SWEP.ReloadTime = 1.25
SWEP.ReloadTime2 = 1.9
SWEP.BoltPullTime = 1.5
SWEP.ClipoutTime = .27
SWEP.ClipinTime = .9
SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.DrawSound = {
{Sound="weapons/m4a1/g_reload_m4a1.wav"}
}
SWEP.DrawAnimRate=2
SWEP.MovingAnimRate=1.5
SWEP.MovingAnim="vk.com/cf_source_run"
SWEP.ReloadAnim="vk.com/cf_source_reload"
SWEP.ReloadAnimRate=.5
SWEP.ReloadSound = {
{Delay=.1,Sound="weapons/m4a1/g_mzc_m4a1_clipout.wav"},
{Delay=.6,Sound="weapons/m4a1/g_mzc_m4a1_clipin.wav"}
}
SWEP.ReloadSound2 = {
{Delay=.1,Sound="weapons/m4a1/g_mzc_m4a1_clipout.wav"},
{Delay=.6,Sound="weapons/m4a1/g_mzc_m4a1_clipin.wav"},
{Delay=1.3,Sound="weapons/m4a1/g_reload_m4a1.wav"}
}
SWEP.CenterPos = Vector(-1,60,3)
SWEP.CenterAng = Angle(90,0,180)
SWEP.SightPos = Vector(5.6,50,5.7)
SWEP.SightAng = Angle(89.7,0,180)
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_m4a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.27, 1.279, -0.165), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()if self:IsScope()then self:PlayAnim("vk.com/cf_source_fire")else self:PlayAnim("vk.com/cf_source_prefire")end end
