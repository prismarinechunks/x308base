if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_deagle.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CFS Deagle"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/fosterz/weapons/viewmodels/c_deagle.mdl"
SWEP.ShowWorldModel=false
SWEP.ViewModelFOV =70
SWEP.ViewModelFlip = true

SWEP.Primary.ClipSize=7
SWEP.Primary.DefaultClip=7
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "357"

SWEP.Slot =1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.PA_Sound = "weapons/deagle/g_shoot_deagle_1.wav"
SWEP.NormalDraw = true
SWEP.PA_Damage = 53

SWEP.PA_Delay = .2
SWEP.PA_Recoil = 5
SWEP.PA_Spread = 0.02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 4

SWEP.SA_SightFOV = 70
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 1.5
SWEP.ReloadTime = 1.7
SWEP.ReloadTime2 = 1.9
SWEP.BoltPullTime = 1.5
SWEP.ClipoutTime = .4
SWEP.ClipinTime = 1.3
SWEP.DrawAnim="vk.com/cf_source@_select"
SWEP.MovingAnimRate=1.75
SWEP.MovingAnim="vk.com/cf_source@_run"
SWEP.DrawAnimRate=1
SWEP.DrawSound = {{Sound="weapons/deagle/g_reload_deagle.wav"}}
SWEP.ReloadAnim="vk.com/cf_source@_reload"
SWEP.ReloadAnimRate=.45
SWEP.ReloadSound = {
{Sound="weapons/deagle/g_mzc_deagle_bback.wav"},
{Delay=.3,Sound="weapons/deagle/g_mzc_deagle_clipout.wav"},
{Delay=.9,Sound="weapons/deagle/g_mzc_deagle_clipin.wav"},
}
SWEP.ReloadSound2 = {
{Sound="weapons/deagle/g_mzc_deagle_bback.wav"},
{Delay=.3,Sound="weapons/deagle/g_mzc_deagle_clipout.wav"},
{Delay=.9,Sound="weapons/deagle/g_mzc_deagle_clipin.wav"},
{Delay=1.4,Sound="weapons/deagle/g_mzc_deagle_bcback.wav"},
}
SWEP.CenterPos = Vector(1,0,0)
SWEP.SightPos = Vector(5.73,10,3.25)
SWEP.SightAng = Angle(.4,-.3,0)
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_deagle.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.34, 1.215, -0.562), angle = Angle(0, 85, -178), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()self:PlayAnim(_308Table{"vk.com/cf_source@_fire","vk.com/cf_source@_prefire"},2)end