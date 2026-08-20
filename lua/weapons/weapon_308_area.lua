SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["area"]
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Delay=0,Sound="weapons/famas/famas-1.wav",Pitch=50,Volume=511}
}

SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 10
SWEP.Primary.Ammo = "buckshot"

SWEP.Text = "禁止区域"

SWEP.PA_Damage=50
SWEP.PA_TakeAmmo=2
SWEP.PA_Num=5

SWEP.PA_Recoil = 4
SWEP.PA_Spread = .25
SWEP.PA_AimSpread = .23
SWEP.PA_AimRecoil = 3.3

SWEP.SA_SightFOV = 70
SWEP.SA_Delay = .5
SWEP.DrawTime = .5

SWEP.ClipExtraBullet = false
SWEP.NormalDraw = true
SWEP.ScientReload = true
SWEP.StopRAnimTime = 1.4
SWEP.BoltPullTime=1.7
SWEP.ReloadTime = 1.5
SWEP.ReloadTime2 = 2
SWEP.ClipoutTime = 0.54
SWEP.ClipinTime = 1.4

SWEP.CenterPos = Vector( 0, 118, 0 )
SWEP.CenterAng = Angle( 0, 0, 0 )
SWEP.SightPos = Vector(-6.361, 125, 2.16)
SWEP.SightAng = Angle(0, 0, 0)
SWEP.VElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Deagle_Parent", rel = "1+", pos = Vector(0, 0.859, 2.911), angle = Angle(0, 0, 0), size = Vector(0.052, 0.086, 0.116), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Deagle_Slide", rel = "", pos = Vector(0, 0.12, -1.964), angle = Angle(0, 0, 0), size = Vector(0.074, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Deagle_Parent", rel = "", pos = Vector(0, -4.114, -9.875), angle = Angle(0, 0, 0), size = Vector(0.046, 0.046, 0.178), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Deagle_Slide", rel = "", pos = Vector(0, 0.508, -3.471), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.083), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/stripes", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/FurnitureRadiator001a.mdl", bone = "v_weapon.Deagle_Parent", rel = "1+", pos = Vector(0.081, -0.618, 6.047), angle = Angle(0, 90, 90), size = Vector(0.037, 0.071, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/glass", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0.859, 2.68), angle = Angle(0, 0, 0), size = Vector(0.052, 0.086, 0.116), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0.879, 6.652), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.083), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/stripes", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(14.975, 2.497, -4.342), angle = Angle(0, 84.972, -88.163), size = Vector(0.046, 0.046, 0.178), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/FurnitureRadiator001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0.081, -0.618, 6.047), angle = Angle(0, 90, 90), size = Vector(0.037, 0.071, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/glass", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0.503, 9.062), angle = Angle(0, 0, 0), size = Vector(0.074, 0.074, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
SWEP.PA_Tracer=2
SWEP.PA_TracerName="AirboatGunTracer"