SWEP.Base = "weapon_308_baseflan"
SWEP.PrintName = "308's Gun"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.TextType = "308CS"
SWEP.Text = "y"
SWEP.TextColor=Color(87,189,192)
SWEP.CustomAmmoIcon ="M"
SWEP.PA_Effect="308_muzzle"

SWEP.IdleAnim = "idle_unsil"
SWEP.ReloadAnim = "idle_unsil"
SWEP.BAnim="draw_unsil"
SWEP.IdleAnimRate = 0
SWEP.PA_Sound = "3088083421/wep/shoot/rif_s1.ogg"
SWEP.ReloadSound={
{Sound="3088083421/wep/reload/pis_clipout.ogg"},
{Sound="3088083421/wep/reload/pis_clipin.ogg",Delay=.8}
}
SWEP.ReloadSound2={
{Sound="3088083421/wep/reload/pis_clipout.ogg",Pitch=110},
{Sound="3088083421/wep/reload/pis_clipin.ogg",Delay=.4,Pitch=110},
{Sound="3088083421/wep/reload/pis_ava_sr.ogg",Delay=1.1}
}
SWEP.NoMFlash=true
SWEP.PA_Damage = 24
SWEP.PA_Recoil = .9
SWEP.PA_Spread = .009
SWEP.PA_AimSpread = .007
SWEP.PA_AimRecoil = .7
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .05
SWEP.SA_Delay = .1
SWEP.ReloadTime = 1.8
SWEP.ClipoutTime = .1
SWEP.ClipinTime = 1.4
SWEP.ClipinTime2 = .6
SWEP.ReloadTime2 = 1.8
SWEP.BoltPullTime=1.3
SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.SightPos = Vector(-5.92, 100, 2.65)
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.USP_Parent", rel = "", pos = Vector(-.2, -1.67, -8.252), angle = Angle(0, 0, 0), size = Vector(0.063, 0.082, 0.133), color = Color(87, 89, 92, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.USP_Parent", rel = "1", pos = Vector(0, -2.024, 1.019), angle = Angle(0, 0, 0), size = Vector(0.043, 0.043, 0.043), color = Color(87, 89, 92, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/Items/battery.mdl", bone = "v_weapon.USP_Slide", rel = "", pos = Vector(-0.721, 0.268, -5.849), angle = Angle(0, 180, 0), size = Vector(0.009, 0.328, 0.788), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/Items/battery.mdl", bone = "v_weapon.USP_Slide", rel = "2", pos = Vector(-1.16, 0, 0), angle = Angle(0, 180, 0), size = Vector(0.009, 0.328, 0.788), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(13.119, 2.421, -1.787), angle = Angle(1.998, 85.049, -87.684), size = Vector(0.063, 0.082, 0.133), color = Color(87, 89, 92, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.024, 1.019), angle = Angle(0, 0, 0), size = Vector(0.043, 0.043, 0.043), color = Color(87, 89, 92, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.958, 1.669, -3.536), angle = Angle(0, 85.051, -87.712), size = Vector(0.009, 0.328, 0.788), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2", pos = Vector(-0.959, 0, 0), angle = Angle(0, 180, 0), size = Vector(0.009, 0.328, 0.788), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.RE_Anim={
{Ang=Angle(0,30,0),Pos=Vector(10,70,1),Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(0, 1.289, 0), angle = Angle(0, 0, 34.597) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.05,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -5.577, 1.172), angle = Angle(0, 0, -20) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(0, 2.128, 0), angle = Angle(0, 0, 59.883) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.1,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -9.867, 4.539), angle = Angle(0, 0, -50) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(0.54, 2.867, 0), angle = Angle(0, 0, 86.275) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.15,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -14.497, 17.891), angle = Angle(0, 0, -130) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(1.319, 3.467, 0), angle = Angle(0, 0, 108.914) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.2,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, 30, 0), angle = Angle(0, 0, -76.231) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(2.743, 2.973, 0), angle = Angle(0, 0, 144.195) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.25,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, 30, 0), angle = Angle(0, 0, -76.231) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(3.703, 2.523, 0), angle = Angle(0, 0, 176.429) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.3,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, 30, -30), angle = Angle(0, 0, -76.231) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(3.882, 0.202, 0), angle = Angle(0, 0, -130.611) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.4,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, -30, -30), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(2.111, -0.751, 0), angle = Angle(0, 0, -71.378) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.5,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, 0, -30), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(0.626, -0.373, 0), angle = Angle(0, 0, -28.333) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.55,Bone={
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -30, -30), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.8,Bone={
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -6.946, 1.411), angle = Angle(0, 0, 12.819) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-7.776, 1.761, 0), angle = Angle(0, 0, 0) }
}},
{Delay=.9,Bone={
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -4.704, 1.411), angle = Angle(0, 0, 12.819) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-5.481, 1.473, 0), angle = Angle(0, 0, 0) }
}},
{Delay=1,Bone={
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -1.782, 0.856), angle = Angle(0, 0, 6.538) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.427, 0.846, 0.3), angle = Angle(0, 0, 0) }
}},
{Delay=1.3},
{Ang=1,Pos=1,Delay=1.5}
}
SWEP.RE_Anim2={
{Ang=Angle(0,30,0),Pos=Vector(10,70,1),Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(0, 1.289, 0), angle = Angle(0, 0, 34.597) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.025,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -5.577, 1.172), angle = Angle(0, 0, -20) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(0, 2.128, 0), angle = Angle(0, 0, 59.883) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.0,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -9.867, 4.539), angle = Angle(0, 0, -54) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(0.54, 2.867, 0), angle = Angle(0, 0, 86.275) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.055,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -14.497, 17.891), angle = Angle(0, 0, -130) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(1.319, 3.467, 0), angle = Angle(0, 0, 108.914) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.1,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, 30, 0), angle = Angle(0, 0, -76.231) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(2.743, 2.973, 0), angle = Angle(0, 0, 144.195) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.175,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, 30, 0), angle = Angle(0, 0, -76.231) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(3.703, 2.523, 0), angle = Angle(0, 0, 176.429) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.15,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, 30, -30), angle = Angle(0, 0, -76.231) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(3.882, 0.202, 0), angle = Angle(0, 0, -130.611) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.2,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, -30, -30), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(2.111, -0.751, 0), angle = Angle(0, 0, -71.378) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.25,Bone={
	["ValveBiped.Bip01_R_Finger41"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 88.597, 0) },
	["v_weapon.USP_Clip"] = { scale = Vector(0.001, 0.001, 0.001), pos = Vector(0, 0, -30), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(0.626, -0.373, 0), angle = Angle(0, 0, -28.333) },
	["ValveBiped.Bip01_R_Finger31"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 95.128, -21.406) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.225,Bone={
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -30, -30), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.4,Bone={
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -6.946, 1.411), angle = Angle(0, 0, 12.819) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-7.776, 1.761, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.45,Bone={
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -4.704, 1.411), angle = Angle(0, 0, 12.819) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-5.481, 1.473, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.5,Bone={
	["v_weapon.USP_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -1.782, 0.856), angle = Angle(0, 0, 6.538) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.427, 0.846, 0.3), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }
}},
{Delay=.6,Bone={["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 1.289), angle = Angle(0, 0, 0) }}},
{Delay=1,Pos=Vector(1,80,0),Ang=Angle(0,20,-15),Bone={
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 62.623) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(2.016, 4.138, 7.683), angle = Angle(-14.653, 44.201, -49.744) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 67.978) }
}},
{Delay=1.2,Bone={
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 62.623) },
	["v_weapon.USP_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 3), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(2.016, 2.19, 7.402), angle = Angle(-14.653, 44.201, -49.744) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 67.978) }
}},
{Delay=1.5,Bone={
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 62.623) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(2.016, 4.138, 7.683), angle = Angle(-14.653, 44.201, -49.744) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 67.978) }
}},
{Ang=1,Pos=1,Delay=1.7}
}
function SWEP:ShootAnim()
if self:Clip1()<1 then self:PlayAnim("shootlast_unsil",1,99999)else self:PlayAnim("shoot"..math.random(3).."_unsil",4,.2)end
end