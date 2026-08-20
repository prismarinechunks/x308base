SWEP.Base = "weapon_308_basedual"
SWEP.PrintName=GAME308_LANWEP["double"].."MAC-10"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "duel"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.SwayScale = 2
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "pistol"
SWEP.IdleAnim = "idle"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawSound = {{Sound="3088083421/wep/deploy/deploy_cod_2.wav"}}

SWEP.TextType = "308CS"
SWEP.Text = "ll"
SWEP.CustomAmmoIcon ="M"

SWEP.PA_Sound = "weapons/mac10/mac10-1.wav"
SWEP.PA_Damage = 28
SWEP.PA_Recoil = .9
SWEP.PA_Spread = .025
SWEP.PA_Delay = .07

SWEP.DrawAnimRate = 3
SWEP.ReloadAnimD={
{Anim="draw",Time=9,Rate=0},
{Anim="draw",Delay=3.2}
}
SWEP.ReloadAnimD2={
{Anim="draw",Time=9,Rate=0},
{Anim="draw",Delay=3.8}
}
SWEP.ReloadTime = 3.4
SWEP.ClipoutTime = .2
SWEP.ClipoutTime2 = .7
SWEP.ClipinTime = 2
SWEP.ClipinTime2 = 3
SWEP.ReloadTime2 = 4.2
SWEP.BoltPullTime=3.9

SWEP.CenterPos=Vector(0,80)

SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_smg_mac10.mdl", bone = "v_weapon.elite_right", rel = "", pos = Vector(0, 3.687, -0.249), angle = Angle(90, 90, 180), size = Vector(0.915, 0.915, 0.915), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/weapons/w_smg_mac10.mdl", bone = "v_weapon.elite_left", rel = "", pos = Vector(0, 3.551, -0.018), angle = Angle(90, 90, 180), size = Vector(0.915, 0.915, 0.915), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/weapons/w_smg_mac10.mdl", bone = "ValveBiped.Anim_Attachment_LH", rel = "", pos = Vector(0.159, 3.371, 1.057), angle = Angle(90, 90, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["v_weapon.elite_right"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.elite_left"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.ReloadSound = {
{Delay=0,Sound="3088083421/wep/reload/arif5_clipout.ogg"},
{Delay=.5,Sound="3088083421/wep/reload/arif5_clipout.ogg"},
{Delay=1.8,Sound="3088083421/wep/reload/arif5_clipin.ogg"},
{Delay=2.9,Sound="3088083421/wep/reload/arif5_clipin.ogg"}
}
SWEP.ReloadSound2 = {
{Delay=0,Sound="3088083421/wep/reload/arif5_clipout.ogg"},
{Delay=.5,Sound="3088083421/wep/reload/arif5_clipout.ogg"},
{Delay=1.8,Sound="3088083421/wep/reload/arif5_clipin.ogg"},
{Delay=2.9,Sound="3088083421/wep/reload/arif5_clipin.ogg"},
{Delay=3.8,Sound="3088083421/wep/reload/arif5_boltpull.ogg"}
}
