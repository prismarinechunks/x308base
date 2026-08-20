if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_m4a1.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CFS M60"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/fosterz/weapons/viewmodels/c_m60.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ShowWorldModel=false
SWEP.ViewModelFOV =60
SWEP.ViewModelFlip = true

SWEP.Primary.ClipSize=100
SWEP.Primary.DefaultClip=100
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.PA_Sound = "weapons/m60/g_shoot_m60_1.wav"
SWEP.NormalDraw = true
SWEP.PA_Damage = 32
SWEP.PA_Delay = .078
SWEP.PA_Recoil = 1.4
SWEP.PA_Spread = .027
SWEP.PA_AimSpread = .018
SWEP.PA_AimRecoil = 1.2
SWEP.StopRAnimTime = 3.2
SWEP.DrawTime = .8
SWEP.ReloadTime = 3.3
SWEP.ReloadTime2 = 3.3
SWEP.HaveBoltPull=false
SWEP.ClipoutTime = .4
SWEP.ClipinTime = 1.6
SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.MovingAnim="vk.com/cf_source_run"
SWEP.DrawSound = {{Sound="weapons/m60/g_out_m60.wav"}}
SWEP.ReloadAnim="vk.com/cf_source_reload"
SWEP.DrawAnimRate=.75
SWEP.ReloadAnimRate=.25
SWEP.ReloadSound = {
{Delay=.3,Sound="weapons/m60/g_mzc_m60_open.wav"},
{Delay=1.4,Sound="weapons/m60/g_mzc_m60_bulletin.wav"},
{Delay=2.1,Sound="weapons/m60/g_mzc_m60_close.wav"}
}
SWEP.CenterPos = Vector(-1,-10,-2)
SWEP.CenterAng = Angle(0,-90,0)
SWEP.SightPos = Vector(6.6,-10,1.7)
SWEP.SightAng = Angle(0,-89.5,0)
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_m4a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.27, 1.279, -0.165), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()if self:IsScope()then self:PlayAnim("vk.com/cf_source_fire",2)else self:PlayAnim("vk.com/cf_source_prefire")end end
