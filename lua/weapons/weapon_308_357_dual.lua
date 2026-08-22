SWEP.Base = "weapon_308_basedual"
SWEP.PrintName=GAME308_LANWEP["double"]..".357 Magnum"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "duel"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.SwayScale = 2
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Primary.Ammo = "357"
SWEP.IdleAnim = "idle"
SWEP.Slot=1
SWEP.Spawnable=true
SWEP.DrawSound={{Sound="3088083421/wep/deploy/deploy_cod_2.wav"}}

SWEP.ViewModelBoneMods = {
	["v_weapon.elite_right"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.elite_left"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_357.mdl", bone = "v_weapon.elite_right", rel = "", pos = Vector(-0.239, -0.988, -1.084), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/weapons/w_357.mdl", bone = "v_weapon.elite_left", rel = "", pos = Vector(-0.239, -1.389, -1.084), angle = Angle(90, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/weapons/w_357.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(1.034, 1.205, 2.063), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = ".."

SWEP.ClipExtraBullet = false
SWEP.NoUseClip=true
SWEP.PA_Sound = "weapons/357/357_fire2.wav"
SWEP.PA_Damage = 55
SWEP.BSound={{Sound="weapons/357/357_reload3.wav"}}
SWEP.PA_Recoil = 7
SWEP.PA_Spread = 0.02
SWEP.PA_Delay = .5
SWEP.StopRAnimTime = 2.9
SWEP.ClipoutTime = .3
SWEP.ClipoutTime2 = .4
SWEP.ClipinTime = 1.5
SWEP.ClipinTime2 = 2.5
SWEP.ReloadTime = 3.3
SWEP.ReloadTime2 = 3.7
SWEP.ReloadAnimD={
{Anim="reload",Time=9,Rate=2},
{Anim="draw",Time=9,Rate=0,Delay=.5},
{Anim="draw",Delay=2.7}
}
SWEP.ReloadAnimD2={
{Anim="reload",Time=9,Rate=2},
{Anim="draw",Time=9,Rate=0,Delay=.5},
{Anim="draw",Delay=3.2}
}
SWEP.ReloadSound = {
{Sound="weapons/357/357_reload1.wav"},
{Delay=.3,Sound="weapons/357/357_reload4.wav"},
{Delay=.1,Sound="weapons/357/357_reload1.wav"},
{Delay=.4,Sound="weapons/357/357_reload4.wav"},
{Delay=1.3,Sound="weapons/357/357_reload3.wav"},
{Delay=2.3,Sound="weapons/357/357_reload3.wav"}
}
SWEP.ReloadSound2 = {
{Sound="weapons/357/357_reload1.wav"},
{Delay=.3,Sound="weapons/357/357_reload4.wav"},
{Delay=.1,Sound="weapons/357/357_reload1.wav"},
{Delay=.4,Sound="weapons/357/357_reload4.wav"},
{Delay=1.3,Sound="weapons/357/357_reload3.wav"},
{Delay=2.3,Sound="weapons/357/357_reload3.wav"},
{Delay=3.2,Sound="weapons/357/357_spin1.wav"},
{Delay=3.3,Sound="weapons/357/357_spin1.wav"}
}

SWEP.CenterPos = Vector( 0, 60, -1 )