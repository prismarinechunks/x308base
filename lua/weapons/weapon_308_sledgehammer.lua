SWEP.PrintName = GAME308_LANWEP["shammer"]
SWEP.Base = "weapon_308_basemelee"
SWEP.Category = "x308 Base | Melee"
SWEP.HoldType = "melee2"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.Multiple=3

SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.ShowWorldModel=false
SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"
SWEP.IdleAnimRate=0
SWEP.Primary.Automatic=false
SWEP.Secondary.Automatic=false

SWEP.Melee1=35
SWEP.Melee2=55
SWEP.MeleeAT=.23
SWEP.MeleeAT2=.2
SWEP.MeleeOT=1
SWEP.MeleeOT2=1.2
SWEP.RangeD=60

SWEP.MeleeS={{Delay=.1,Sound="weapons/slam/throw.wav",Pitch=70}}
SWEP.MeleeS2={{Delay=.13,Sound="weapons/slam/throw.wav",Pitch=50}}
SWEP.MeleeSW={{Sound="physics/metal/metal_canister_impact_hard3.wav",Pitch=90}}
SWEP.CenterPos = Vector(-5, 160, -9)
SWEP.CenterAng = Angle(26.66, 0, 0)

SWEP.ViewModelBoneMods = {
["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-12.747, -36.493, 0) },
["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -25.966, 0) },
["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -28.157, 0) },
["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 25.944, 0) },
["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(5.138, 6.741, -5.906), angle = Angle(-13.377, -70.233, 85.858) },
["ValveBiped.Bip01_L_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -41.982, 0) },
["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-8.792, -35.299, 0) },
["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(2, -4, 8), angle = Angle(59, 30, 30) },
["ValveBiped.Bip01_L_Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -40.336, 0) },
["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-3.1, 13.42, 10.395), angle = Angle(0, -117.585, 32.951) },
["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -87.798) }
}

SWEP.VElements = {
	["1+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1a.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, -5.551, 26), angle = Angle(0, 0, -90), size = Vector(0.03, 0.04, 0.064), color = Color(72, 72, 80, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0, 0, -4.827), angle = Angle(0, 30, 0), size = Vector(0.048, 0.048, 0.606), color = Color(72, 72, 80, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube2x3x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0.328, 26.951), angle = Angle(90, 0, 90), size = Vector(0.04, 0.03, 0.736), color = Color(72, 72, 80, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -5.551, 26), angle = Angle(0, 0, -90), size = Vector(0.03, 0.04, 0.064), color = Color(72, 72, 80, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.95, 1.121, 4.017), angle = Angle(4.69, -92.88, 175.104), size = Vector(0.048, 0.048, 0.606), color = Color(72, 72, 80, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube2x3x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.328, 26.951), angle = Angle(90, 0, 90), size = Vector(0.04, 0.03, 0.736), color = Color(72, 72, 80, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
function SWEP:CustomInit()
self:DrawShadow(false)
end
function SWEP:MAnim(ty)
if ty==1 then
self:PlayAnim("midslash1",.7)
else
self:PlayAnim("midslash1",.9)
end
end
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("physics/body/body_medium_impact_hard"..math.random(6)..".wav",100,90)
else
self:EmitSound("physics/body/body_medium_impact_hard"..math.random(3)..".wav",100,75)
end
end
function SWEP:ImpactEffect()end