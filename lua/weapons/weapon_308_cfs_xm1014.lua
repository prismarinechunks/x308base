if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_xm1014.mdl")then return end
SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CFS XM1014"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/fosterz/weapons/viewmodels/c_xm1014.mdl"
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"
SWEP.ShowWorldModel=false
SWEP.ViewModelFlip = true
SWEP.ViewModelFOV =60

SWEP.Primary.ClipSize=7
SWEP.Primary.DefaultClip=7
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "buckshot"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.DrawSound = {{Sound="weapons/xm1014/g_reload_xm1014.wav"}}
SWEP.PA_Sound = "weapons/xm1014/g_shoot_xm1014_1.wav"
SWEP.NormalDraw = true
SWEP.PA_Damage = 18
SWEP.PA_Delay = .26
SWEP.PA_Recoil = 2.3
SWEP.PA_Spread = .1
SWEP.PA_AimSpread = .1
SWEP.PA_AimRecoil = 2
SWEP.PA_Num=6
SWEP.ReloadStart=.4
SWEP.ReloadDelay=.3
SWEP.ReloadIn=.25
SWEP.ReloadInEnd=0
SWEP.ReloadEnd=.4
SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.MovingAnim="vk.com/cf_source_run"
SWEP.DrawAnimRate=.45
SWEP.ReloadAnim1="vk.com/cf_source_reload1"
SWEP.ReRate1=2
SWEP.ReloadAnim2="vk.com/cf_source_reload2"
SWEP.ReRate2=2
SWEP.ReloadAnim3="vk.com/cf_source_reload3"
SWEP.ReRate3=2
SWEP.Text_Auto="Auto"
SWEP.ReloadSound2 = {
{Sound="weapons/xm1014/g_mzc_xm1014_bulletin.wav"}
}
SWEP.CenterPos = Vector(-1,-120,2)
SWEP.CenterAng = Angle(-90,0,0)
SWEP.SightPos = Vector(4.76,-140,6.89)
SWEP.SightAng = Angle(-90,-.74,0)
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_xm1014.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.649, 2.874, 0.575), angle = Angle(0, 96.416, 9.449), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()self:PlayAnim("vk.com/cf_source_postfire",.5)end
