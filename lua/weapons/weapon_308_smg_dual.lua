SWEP.Base = "weapon_308_basedual"
SWEP.PrintName=GAME308_LANWEP["double"].."MP7"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "duel"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.SwayScale = 2
SWEP.Primary.ClipSize = 45
SWEP.Primary.DefaultClip = 45
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "pistol"
SWEP.IdleAnim = "idle"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawSound = {{Sound="3088083421/wep/deploy/deploy_cod_2.wav"}}

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "//"

SWEP.PA_Sound = "weapons/smg1/smg1_fire1.wav"
SWEP.PA_Damage = 8
SWEP.PA_Delay = .072
SWEP.PA_Recoil = 1.2
SWEP.PA_Spread = .04

SWEP.DrawAnimRate = 3
SWEP.ReloadAnimD={
{Anim="draw",Time=9,Rate=0},
{Anim="draw",Delay=2}
}
SWEP.ReloadAnimD2={
{Anim="draw",Time=9,Rate=0},
{Anim="draw",Delay=2.7}
}
SWEP.ClipoutTime=.2
SWEP.ClipoutTime2=1.5
SWEP.ClipinTime=.9
SWEP.ClipinTime2=2.2
SWEP.ReloadTime=2.8
SWEP.ReloadTime2=3.1
SWEP.BoltPullTime=2.9

SWEP.CenterPos=Vector(-.2,100,-3)

SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_smg1.mdl", bone = "v_weapon.elite_right", rel = "", pos = Vector(-1.374, -2.324, 7.46), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/weapons/w_smg1.mdl", bone = "v_weapon.elite_left", rel = "", pos = Vector(-0.979, -2.543, 7.38), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/weapons/w_smg1.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(10.237, 2.013, 3.457), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["v_weapon.elite_right"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.elite_left"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.ReloadSound = {
{Sound="weapons/smg1/smg1_reload.wav"},
{Delay=1.3,Sound="weapons/smg1/smg1_reload.wav"},
}
SWEP.ReloadSound2 = {
{Sound="weapons/smg1/smg1_reload.wav"},
{Delay=1.3,Sound="weapons/smg1/smg1_reload.wav"},
{Delay=2.8,Sound="3088083421/wep/reload/arif5_boltpull.ogg"}
}
