SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Uzi"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.ShowWorldModel=false

SWEP.Primary.ClipSize = 32
SWEP.Primary.DefaultClip = 32
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.PA_Sound = "3088083421/wep/shoot/mp71.ogg"
SWEP.PA_Damage = 9
SWEP.NormalDraw = true
SWEP.PA_Recoil = .9
SWEP.PA_Spread = .024
SWEP.PA_AimSpread = .012
SWEP.PA_AimRecoil = .77
SWEP.SA_SightFOV = 70
SWEP.PA_Delay = .05
SWEP.SA_Delay = .1

SWEP.ReloadSound = {
{Sound="3088083421/wep/reload/smg_clipout.ogg",Delay=.1},
{Sound="3088083421/wep/reload/smg_clipin.ogg",Delay=.8},
}
SWEP.ReloadSound2 = {
{Sound="3088083421/wep/reload/smg_clipout.ogg",Delay=.1},
{Sound="3088083421/wep/reload/smg_clipin.ogg",Delay=.8},
{Sound="3088083421/wep/reload/smg_boltpull.ogg",Delay=1.4},
}
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.ReloadTime = 1.4
SWEP.ReloadTime2 = 2.1
SWEP.BoltPullTime = 1.7
SWEP.ClipoutTime = .3
SWEP.ClipinTime = 1
SWEP.CenterPos = Vector(1,59,-1)
SWEP.SightPos = Vector(-6.08, 70, 2.25)
SWEP.SightAng = Angle(0, -1.3, -0.071)

SWEP.ViewModelBoneMods = {["ValveBiped.square"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-4, 1, 2.4), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["ironsight things+"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.575, -0.403, 5.497), angle = Angle(0, 0, 90), size = Vector(0.024, 0.009, 0.067), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body+++++"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-2.567, 0.759, -4.176), angle = Angle(0, -0.639, 0), size = Vector(0.029, 0.029, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(1.909, 0, -0.08), angle = Angle(0, 90, 72.893), size = Vector(0.063, 0.089, 0.087), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(14.145, 1.567, -2.839), angle = Angle(89.736, -0.639, 0), size = Vector(0.079, 0.064, 0.136), color = Color(132, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.366, 1.409, -2.497), angle = Angle(89.736, -0.639, 0), size = Vector(0.105, 0.141, 0.592), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["slide"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.square", rel = "", pos = Vector(-0.08, -1.227, -0.167), angle = Angle(0.338, 0, 90), size = Vector(0.016, 0.136, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body+++++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(13.267, 1.488, -4.256), angle = Angle(89.736, -0.639, 0), size = Vector(0.09, 0.09, 0.141), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["slide thingys+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.238, -0.692, -2.646), angle = Angle(0, 0, 0), size = Vector(0.018, 0.018, 0.108), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(11.079, 1.486, -4.097), angle = Angle(89.736, -0.639, 0), size = Vector(0.085, 0.128, 0.554), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["slide+"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.square", rel = "slide", pos = Vector(0, -1.843, -0.169), angle = Angle(0.338, 0, 180), size = Vector(0.014, 0.014, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight things"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.575, 0.4, 5.497), angle = Angle(0, 0, 90), size = Vector(0.024, 0.009, 0.067), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.747, 1.409, -3.856), angle = Angle(89.736, -0.639, 0), size = Vector(0.13, 0.151, 1.046), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["slide thingys+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.637, 0.697, -2.646), angle = Angle(0, 0, 0), size = Vector(0.018, 0.018, 0.108), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["slide thingys++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.237, 0.697, 2.69), angle = Angle(0, 0, 0), size = Vector(0.018, 0.018, 0.057), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["slide++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "ValveBiped.square", rel = "slide+", pos = Vector(0, -0.297, 0.632), angle = Angle(90, 0, 90), size = Vector(0.019, 0.014, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["slide thingys+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.237, -0.746, 2.69), angle = Angle(0, 0, 0), size = Vector(0.018, 0.018, 0.057), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight bars+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight things+", pos = Vector(-0.963, -0.253, 0.398), angle = Angle(0, 0, 90), size = Vector(0.009, 0.009, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight things++"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.502, 0.398, -9.405), angle = Angle(0, 0, 90), size = Vector(0.024, 0.009, 0.067), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight bars++"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight things+", pos = Vector(-0.327, 14.746, 0.397), angle = Angle(0, 90, 0), size = Vector(0.101, 0.101, 0.101), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["clip"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.clip", rel = "", pos = Vector(0.063, 4.939, -0.565), angle = Angle(180, 1, 0), size = Vector(0.072, 0.449, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["slide thingys"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.238, 0.697, -2.646), angle = Angle(0, 0, 0), size = Vector(0.018, 0.018, 0.108), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body++++++"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-2.567, 0.838, -3.136), angle = Angle(0, -0.639, 0), size = Vector(0.014, 0.014, 0.014), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body++++"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-2.567, 0.838, -3.937), angle = Angle(0, -0.639, 0), size = Vector(0.025, 0.025, 0.025), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight things+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(-0.505, -0.415, -9.405), angle = Angle(0, 0, 90), size = Vector(0.024, 0.009, 0.067), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight bars"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsight things+", pos = Vector(-0.56, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.017, 0.014, 0.017), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["barrel thingy+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.476, 0, -19.286), angle = Angle(0, 0, 0), size = Vector(0.017, 0.017, 0.224), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body+++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-1.109, 1.328, -4.256), angle = Angle(89.736, -0.639, 0), size = Vector(0.09, 0.09, 0.195), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["barrel thingy"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.476, 0, -12.061), angle = Angle(0, 0, 0), size = Vector(0.043, 0.043, 0.043), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body++++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.747, 1.409, -4.281), angle = Angle(89.736, -0.639, 0), size = Vector(0.07, 0.152, 0.477), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["slide thingys++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.637, -0.722, -2.646), angle = Angle(0, 0, 0), size = Vector(0.018, 0.018, 0.108), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["hold thingy"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0.626, 0, -5.163), angle = Angle(0, 0, 0), size = Vector(0.068, 0.078, 0.089), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["clip"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.307, 0, 6.478), angle = Angle(-10.834, 0, 0), size = Vector(0.119, 0.046, 0.416), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.81, 0, -1.015), angle = Angle(78.405, 0, 0), size = Vector(0.175, 0.158, 0.875), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["handle"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.272, 1.486, -2.302), angle = Angle(5.158, 0, 0), size = Vector(0.072, 0.037, 0.097), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["barrel thingy+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0, -8.594), angle = Angle(0, 0, 0), size = Vector(0.014, 0.014, 0.107), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(5.07, 0, -2.557), angle = Angle(78.405, 0, 0), size = Vector(0.076, 0.101, 0.076), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(0.81, 0, -1.415), angle = Angle(78.405, 0, 0), size = Vector(0.122, 0.057, 0.448), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body+", pos = Vector(0, -0.48, 0), angle = Angle(0, 0, 90), size = Vector(0.021, 0.009, 0.076), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body++++"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(2.71, 0, -2.536), angle = Angle(169.367, 0, 0), size = Vector(0.016, 0.016, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["trigger"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(1.677, -0.313, 0.479), angle = Angle(-2.998, -1.369, 89.726), size = Vector(0.028, 0.028, 0.009), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["body+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-3.454, 0, -0.819), angle = Angle(78.405, 0, 0), size = Vector(0.076, 0.101, 0.076), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["back thing"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "handle", pos = Vector(-4.262, -0.491, -0.139), angle = Angle(-7.286, 0, 0), size = Vector(0.028, 0.028, 0.028), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["barrel thingy"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body", pos = Vector(0, 0, -5.753), angle = Angle(0, 0, 0), size = Vector(0.035, 0.035, 0.025), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body+", pos = Vector(-0.09, 0.486, -8.66), angle = Angle(0, 0, 90), size = Vector(0.021, 0.009, 0.076), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight++"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body+", pos = Vector(-0.09, -0.48, -8.66), angle = Angle(0, 0, 90), size = Vector(0.021, 0.009, 0.076), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["ironsight+"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body+", pos = Vector(0, 0.479, 0), angle = Angle(0, 0, 90), size = Vector(0.021, 0.009, 0.076), color = Color(123, 123, 123, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()if !self:IsScope()then
self:PlayAnim("fire")end
end