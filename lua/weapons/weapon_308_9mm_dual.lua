SWEP.Base = "weapon_308_basedual"
SWEP.PrintName=GAME308_LANWEP["double"]..".9mm Pistol"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "duel"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.SwayScale = 4
SWEP.Primary.ClipSize = 18
SWEP.Primary.DefaultClip = 18
SWEP.Primary.Ammo = "pistol"
SWEP.IdleAnim = "idle"
SWEP.Slot=1
SWEP.Spawnable=true
SWEP.DrawSound={{Sound="3088083421/wep/deploy/deploy_cod_2.wav"}}

SWEP.ViewModelBoneMods = {
	["v_weapon.elite_right"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.elite_left"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_pistol.mdl", bone = "v_weapon.elite_left", rel = "", pos = Vector(0.398, -2.539, 2.813), angle = Angle(-90, 90, 0), size = Vector(.9,.9,.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/weapons/w_pistol.mdl", bone = "v_weapon.elite_right", rel = "", pos = Vector(0.398, -2.539, 2.813), angle = Angle(-90, 90, 0), size = Vector(.9,.9,.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/weapons/w_pistol.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(6.341, 1.039, 2.822), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "--"
SWEP.PA_Sound = "weapons/pistol/pistol_fire2.wav"
SWEP.PA_Damage = 8
SWEP.NormalDraw = true
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .02
SWEP.SA_IsSight = false
SWEP.PA_Delay = .09
SWEP.StopRAnimTime = 2.9
SWEP.ClipoutTime = .54--Left
SWEP.ClipoutTime2 = .58--Right
SWEP.ClipinTime = 1.7--Left
SWEP.ClipinTime2 = 2.7--Right
SWEP.ReloadTime = 3.1
SWEP.ReloadTime2 = 3.5

SWEP.CenterPos = Vector( 0, 100, -2 )