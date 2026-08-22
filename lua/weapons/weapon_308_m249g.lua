SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName="HMG"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_mach_m249para.mdl"
SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"

SWEP.Primary.ClipSize = 200
SWEP.Primary.DefaultClip = 200
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.BSound = {
{Sound="3088083421/wep/reload/mach_boltpull.ogg"}
}
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound="weapons/mp5navy/mp5-1.wav",Pitch=140,Volume=511}
}
SWEP.PA_Damage = 25
SWEP.PA_Delay = .07
SWEP.PA_Recoil = .08
SWEP.PA_Spread = .012
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .06
SWEP.SA_SightFOV = 60

SWEP.OverHeat=true
SWEP.OHS=7
SWEP.OHM=55
SWEP.TextType="308CS"
SWEP.Text="z"
SWEP.TextColor=Color(134,255,255)

SWEP.SA_Delay = .1
SWEP.SA_Cross = true
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 4.8
SWEP.ReloadTime = 4.8
SWEP.ClipoutTime = .75
SWEP.ClipinTime = 3.9
SWEP.ReloadTime2 = 5.8
SWEP.ReloadSound2 = {{Delay=5.2,Sound="3088083421/wep/reload/mach_boltpull.ogg"}}
SWEP.SightPos = Vector(-5.96, 120, 1)
SWEP.CenterPos = Vector(-3,90,1)
SWEP.VElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m249", rel = "1", pos = Vector(0, -1.724, -13.745), angle = Angle(0, 0, 0), size = Vector(0.096, 0.096, 0.186), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.ammobox", rel = "", pos = Vector(0, 0, -1.727), angle = Angle(0, 0, 0), size = Vector(0.286, 0.286, 0.097), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m249", rel = "1", pos = Vector(0, 0, -13.796), angle = Angle(0, 0, 0), size = Vector(0.105, 0.105, 0.335), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.ammobox", rel = "", pos = Vector(1.055, -2.346, -1.578), angle = Angle(0, 112.259, 0), size = Vector(0.094, 0.264, 0.094), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m249", rel = "", pos = Vector(0, 0, 10.746), angle = Angle(0, 0, 0), size = Vector(0.145, 0.18, 0.268), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.724, -13.745), angle = Angle(0, 0, 0), size = Vector(0.096, 0.096, 0.186), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(3.417, -3.49, -3.093), angle = Angle(0, 0, 0), size = Vector(0.094, 0.264, 0.094), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -13.796), angle = Angle(0, 0, 0), size = Vector(0.105, 0.105, 0.335), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.156, 0.947, -6.501), angle = Angle(0, -90, 80.057), size = Vector(0.145, 0.18, 0.268), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0.041, -5.107, -3.079), angle = Angle(0, 0, 0), size = Vector(0.286, 0.286, 0.097), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.DeployScale=30