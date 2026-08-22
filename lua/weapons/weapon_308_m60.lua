SWEP.Base = "weapon_308_baseflan" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M60"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_mach_m249para.mdl"
SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"
SWEP.ShowWorldModel = false
SWEP.Primary.ClipSize = 100
SWEP.Primary.DefaultClip = 100
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.BSound = {
	{Delay=0,Sound="3088083421/wep/reload/mach_boltpull.ogg"}
}
SWEP.PA_Sound = "3088083421/wep/shoot/m60_1.ogg"
SWEP.PA_Damage = 30
SWEP.PA_Delay = .07
SWEP.PA_Recoil = .7
SWEP.PA_Spread = .012
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .6
SWEP.SA_SightFOV = 65
SWEP.OverHeat=true
SWEP.SA_Cross = true
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.ReloadTime = 2.2
SWEP.ClipoutTime = .4
SWEP.ClipinTime = 1.8
SWEP.ReloadTime2 = 2.7
SWEP.ReloadSound = {
{Sound="3088083421/wep/reload/mach_clipout.ogg"},
{Delay=1,Sound="3088083421/wep/reload/mach_chain.ogg"},
{Delay=1.7,Sound="3088083421/wep/reload/mach_clipin.ogg"}
}
SWEP.ReloadSound2 = {
{Sound="3088083421/wep/reload/mach_clipout.ogg"},
{Delay=1,Sound="3088083421/wep/reload/mach_chain.ogg"},
{Delay=1.7,Sound="3088083421/wep/reload/mach_clipin.ogg"},
{Delay=2.1,Sound="3088083421/wep/reload/mach_boltpull.ogg"}
}
SWEP.SightPos = Vector(-6.11, 60, .41)
SWEP.CenterPos = Vector(-2,90,-1)
SWEP.ViewModelBoneMods = {
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.RE_Anim={
{Pos=Vector(2, 50, -.5),Ang=Angle(0,20,0),Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.843, -1.384, 1.98), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(8, 40, -1.3),Ang=Angle(0,30,0),Delay=.1,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-4.539, -5.56, 2.433), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(12, 30, -2),Ang=Angle(0,40,0),Delay=.3,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(0.957, -1.591, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.4,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(2.647, -3.856, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.5,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(2.647, -30, 0), angle = Angle(0, 0, 0) }
}},
{Delay=1.4,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(1.034, -4.417, 0), angle = Angle(0, 0, 0) }
}},
{Delay=1.5,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-8.181, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(0.916, -1.741, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(8, 40, -1.3),Ang=Angle(0,30,0),Delay=1.7,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-6.331, -2.106, 1.269), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(2, 50, -.5),Ang=Angle(0,20,0),Delay=1.9,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.526, 5.243, -0.515), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=1,Ang=1,Delay=2,Bone={["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}}
}
SWEP.RE_Anim2={
{Pos=Vector(2, 50, -.5),Ang=Angle(0,20,0),Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.843, -1.384, 1.98), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(8, 40, -1.3),Ang=Angle(0,30,0),Delay=.1,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-4.539, -5.56, 2.433), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(12, 30, -2),Ang=Angle(0,40,0),Delay=.3,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(0.957, -1.591, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.4,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(2.647, -3.856, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.5,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(2.647, -30, 0), angle = Angle(0, 0, 0) }
}},
{Delay=1.4,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(1.034, -4.417, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(14, 40, -1.3),Delay=1.5,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-8.181, -5.461, 2.523), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.ammobox"] = { scale = Vector(1, 1, 1), pos = Vector(0.916, -1.741, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(16, 50, -.5),Ang=Angle(0,30,-10),Delay=1.7,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-6.331, -2.106, 1.269), angle = Angle(0, 0, 0) },
	["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(18, 90, -.5),Ang=Angle(0,30,-20),Delay=1.9,Bone={["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}},
{Pos=Vector(9, 90, 0),Ang=Angle(0,15,-10),Delay=2.4,Bone={["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}},
{Pos=1,Ang=1,Delay=2.5,Bone={["v_weapon.m249"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}}
}
SWEP.VElements = {
	["3+"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_u_4.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(-0.749, -4.773, 9.968), angle = Angle(-90, 0, -29.143), size = Vector(0.082, 0.097, 0.041), color = Color(0, 0, 0, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m249", rel = "1", pos = Vector(0, -2.151, 4.973), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.56), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m249", rel = "1", pos = Vector(0, -2.319, 3.994), angle = Angle(0, 0, 0), size = Vector(0.112, 0.097, 0.148), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1++++", pos = Vector(2.161, -3.935, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 0.208, -15.355), angle = Angle(0, 90, 0), size = Vector(0.061, 0.071, 0.115), color = Color(128, 127, 130, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1++++", pos = Vector(2, -4.943, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.ammobox", rel = "", pos = Vector(0, -0.311, 0.49), angle = Angle(0, 0, 0), size = Vector(0.483, 0.488, 0.363), color = Color(0, 213, 11, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1++++", pos = Vector(2.321, -2.958, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m249", rel = "1", pos = Vector(0, -0.313, 1.998), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.472), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m249", rel = "1", pos = Vector(0, -0.018, -6.632), angle = Angle(0, 0, 106.94), size = Vector(0.078, 0.093, 0.136), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0.612, -2.355, -6.248), angle = Angle(90, 0, 0), size = Vector(0.029, 0.029, 0.128), color = Color(188, 195, 196, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/xeon133/slider/slider_12x12x12.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -5.463, 28.357), angle = Angle(90, 0, -0), size = Vector(0.009, 0.1, 0.1), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++++++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1++++", pos = Vector(1.281, -6.61, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["3+++++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1++++", pos = Vector(1.682, -5.731, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -0.978, -15.355), angle = Angle(0, 0, 0), size = Vector(0.136, 0.165, 0.246), color = Color(128, 127, 130, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m249", rel = "", pos = Vector(0, 0, 9.076), angle = Angle(0, 0, 0), size = Vector(0.118, 0.148, 0.238), color = Color(161, 163, 161, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(-2.326, -6.522, 4.155), angle = Angle(0, 0, 0), size = Vector(0.068, 0.068, 0.158), color = Color(188, 195, 196, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.m249", rel = "1", pos = Vector(0, -1.033, -2.04), angle = Angle(0, 0, 0), size = Vector(0.163, 0.388, 1.146), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -0.161, -8.889), angle = Angle(0, 0, 0), size = Vector(0.086, 0.086, 0.224), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0.629, -3.123, -3.745), angle = Angle(0, 0, -90), size = Vector(0.037, 0.037, 0.067), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -3.131, 28.329), angle = Angle(0, 0, -90), size = Vector(0.098, 0.009, 0.317), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -1.221, 19.298), angle = Angle(0, 0, 0), size = Vector(0.071, 0.111, 0.009), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["3+"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_u_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-0.749, -4.773, 9.968), angle = Angle(-90, 0, -29.143), size = Vector(0.082, 0.097, 0.041), color = Color(0, 0, 0, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.151, 4.973), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.56), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.319, 3.994), angle = Angle(0, 0, 0), size = Vector(0.112, 0.097, 0.148), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1++++", pos = Vector(2.161, -3.935, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.208, -15.355), angle = Angle(0, 90, 0), size = Vector(0.061, 0.071, 0.115), color = Color(128, 127, 130, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1++++", pos = Vector(2, -4.943, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 4.209, -2.16), angle = Angle(0, 0, 0), size = Vector(0.483, 0.488, 0.363), color = Color(0, 213, 11, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1++++", pos = Vector(2.321, -2.958, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.313, 1.998), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.472), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.239, 1.031, -4.904), angle = Angle(0, -90.236, -100.246), size = Vector(0.118, 0.148, 0.238), color = Color(161, 163, 161, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.978, -15.355), angle = Angle(0, 0, 0), size = Vector(0.136, 0.165, 0.246), color = Color(128, 127, 130, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++++++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1++++", pos = Vector(1.281, -6.61, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.131, 28.329), angle = Angle(0, 0, -90), size = Vector(0.098, 0.009, 0.317), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0.629, -3.123, -3.745), angle = Angle(0, 0, -90), size = Vector(0.037, 0.037, 0.067), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0.612, -2.355, -6.248), angle = Angle(90, 0, 0), size = Vector(0.029, 0.029, 0.128), color = Color(188, 195, 196, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.018, -6.632), angle = Angle(0, 0, 106.94), size = Vector(0.078, 0.093, 0.136), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-2.326, -6.522, 4.155), angle = Angle(0, 0, 0), size = Vector(0.068, 0.068, 0.158), color = Color(188, 195, 196, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.033, -2.04), angle = Angle(0, 0, 0), size = Vector(0.163, 0.388, 1.146), color = Color(137, 132, 132, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.161, -8.889), angle = Angle(0, 0, 0), size = Vector(0.086, 0.086, 0.224), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/xeon133/slider/slider_12x12x12.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -5.463, 28.357), angle = Angle(90, 0, -0), size = Vector(0.009, 0.1, 0.1), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++++"] = { type = "Model", model = "models/weapons/rifleshell.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1++++", pos = Vector(1.682, -5.731, 0.017), angle = Angle(90, 0, 0), size = Vector(0.888, 0.888, 0.888), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.221, 19.298), angle = Angle(0, 0, 0), size = Vector(0.071, 0.111, 0.009), color = Color(137, 135, 138, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()
if self.Scope<1 then
self:PlayAnim("shoot1",4)
end
end