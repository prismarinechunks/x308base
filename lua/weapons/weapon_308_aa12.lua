SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "AA-12"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_galil.mdl"
SWEP.WorldModel = "models/weapons/w_rif_galil.mdl"
SWEP.CSMuzzleFlashes = true
SWEP.Primary.ClipSize = 32
SWEP.Primary.DefaultClip = 32
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "buckshot"
SWEP.PA_Range=80

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawSound = {
	{Delay=0,Sound="3088083421/wep/deploy/deploy_cod_1.wav"}
}
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Delay=0,Sound="weapons/sg550/sg550-1.wav",Pitch=60,Volume=511}
}
SWEP.PA_Damage = 12
SWEP.PA_TakeAmmo = 1
SWEP.PA_Force = 5
SWEP.PA_Delay = .3
SWEP.PA_Num = 8
SWEP.NormalDraw = false
SWEP.PA_Recoil = 2
SWEP.PA_Spread = .15
SWEP.PA_AimSpread = .15
SWEP.PA_AimRecoil = 1.6
SWEP.SA_SightFOV = 70

SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 1.5
SWEP.ReloadTime = 1.6
SWEP.ClipoutTime = 0.4
SWEP.ClipinTime = 1.3
SWEP.ReloadTime2 = 2.8
SWEP.BoltPullTime=2.25
SWEP.SightPos = Vector(-6.45, 99, 1.9)
SWEP.SightAng = Angle(0, 0, 0)
SWEP.CenterPos = Vector( 0, 90, 0 )
SWEP.CenterAng = Angle( 0, 0, 0 )
SWEP.ShowWorldModel = false
SWEP.ViewModelBoneMods = {
	["v_weapon.galil"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["3++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, -2.175, 13.531), angle = Angle(0, 0, 0), size = Vector(0.012, 0.275, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, -0.399, -14.035), angle = Angle(0, 0, 0), size = Vector(0.108, 0.196, 0.593), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, -0.398, -10.879), angle = Angle(0, 0, 0), size = Vector(0.115, 0.115, 0.555), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++++"] = { type = "Model", model = "models/mechanics/robotics/b1.mdl", bone = "v_weapon.bolt", rel = "", pos = Vector(-0.315, -0.072, -0.161), angle = Angle(0, 90, 0), size = Vector(0.097, 0.097, 0.097), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, -0.398, 12.706), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 0.237), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3+++"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, -4.222, -7.919), angle = Angle(0, 90, 0), size = Vector(0.107, 0.041, 0.107), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, 0.61, -17.057), angle = Angle(0, 0, 0), size = Vector(0.143, 0.375, 0.172), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, 2.976, -6.018), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.418), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t1.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, -2.046, 0.975), angle = Angle(90, 180, 0), size = Vector(0.107, 0.041, 0.107), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, 2.176, -3.843), angle = Angle(0, 0, 0), size = Vector(0.037, 0.146, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, 5.112, -9.129), angle = Angle(0, 0, -80.104), size = Vector(0.075, 0.096, 0.115), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.magazine", rel = "", pos = Vector(0, 3.5, -1.606), angle = Angle(0, 0, 0), size = Vector(0.241, 0.241, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, -0.735, -17.366), angle = Angle(0, 0, 0), size = Vector(0.093, 0.093, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.galil", rel = "", pos = Vector(0, 0.239, 7.26), angle = Angle(0, 0, 0), size = Vector(0.114, 0.138, 0.312), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.galil", rel = "1", pos = Vector(0, 1.019, -4.179), angle = Angle(0, 0, 0), size = Vector(0.108, 0.108, 0.841), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["3++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.175, 13.531), angle = Angle(0, 0, 0), size = Vector(0.012, 0.275, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.399, -14.035), angle = Angle(0, 0, 0), size = Vector(0.108, 0.196, 0.593), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.398, -10.879), angle = Angle(0, 0, 0), size = Vector(0.115, 0.115, 0.555), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++++"] = { type = "Model", model = "models/mechanics/robotics/b1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0.606, -1.739, 1.113), angle = Angle(0, 90, 0), size = Vector(0.097, 0.097, 0.097), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.398, 12.706), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 0.237), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3+++"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -4.222, -7.919), angle = Angle(0, 90, 0), size = Vector(0.107, 0.041, 0.107), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.61, -17.057), angle = Angle(0, 0, 0), size = Vector(0.143, 0.375, 0.172), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.976, -6.018), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.418), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++++"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.046, 0.975), angle = Angle(90, 180, 0), size = Vector(0.107, 0.041, 0.107), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.176, -3.843), angle = Angle(0, 0, 0), size = Vector(0.037, 0.146, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 5.112, -9.129), angle = Angle(0, 0, -80.104), size = Vector(0.075, 0.096, 0.115), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 4.602, -3.566), angle = Angle(0, 0, 0), size = Vector(0.241, 0.241, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(11.38, 1.343, -5.276), angle = Angle(0, -90, -105.348), size = Vector(0.114, 0.138, 0.312), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.735, -17.366), angle = Angle(0, 0, 0), size = Vector(0.093, 0.093, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.019, -4.179), angle = Angle(0, 0, 0), size = Vector(0.108, 0.108, 0.841), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}