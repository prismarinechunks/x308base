SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["axe"]
SWEP.Category = "x308 Base | Melee"
SWEP.HoldType="melee2"
SWEP.WorldModel="models/weapons/w_crowbar.mdl"
SWEP.Slot=0
SWEP.Spawnable=true
SWEP.ShowWorldModel=false
SWEP.Multiple=3

SWEP.NormalDraw=false
SWEP.IdleAnim="idle_cycle"
SWEP.IdleAnimRate=.5
SWEP.DeployScale=60

SWEP.Melee1=20
SWEP.Melee2=27
SWEP.MeleeAT=.075
SWEP.MeleeAT2=.05
SWEP.MeleeOT=.45
SWEP.MeleeOT2=.7
SWEP.RangeD=40

SWEP.MeleeSH2={{Sound="physics/flesh/flesh_bloody_break.wav"}}
SWEP.MeleeS={{Delay=.1,Sound="weapons/iceaxe/iceaxe_swing1.wav"}}
SWEP.MeleeS2={{Delay=.02,Sound="weapons/iceaxe/iceaxe_swing1.wav",Pitch=80}}
SWEP.MeleeSM2={{Sound="weapons/iceaxe/iceaxe_swing1.wav",Pitch=130}}
SWEP.MeleeSW={{Sound="3088083421/wep/hit1.ogg",Pitch=50}}
SWEP.CenterPos = Vector(-8,70,-5)
SWEP.CenterAng = Angle(-4,-14,-3)
SWEP.ViewModelBoneMods={
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-2.904, -0.815, -3.596), angle = Angle(14.076, 33.058, -62.825) },
	["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(6.254, -2.908, -8.808), angle = Angle(0, -66.956, -21.637) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -13.5), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -17.272, 0) }
}

SWEP.VElements = {
	["1+"] = { type = "Model", model = "models/xqm/jettailpiece1medium.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 2.766, 8.779), angle = Angle(0, 179, 100), size = Vector(0.115, 0.081, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0, 0, 2.849), angle = Angle(0, 0, 0), size = Vector(0.009, 0.014, 6.821), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/wood", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1+"] = { type = "Model", model = "models/xqm/jettailpiece1medium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.766, 8.779), angle = Angle(0, 179, 100), size = Vector(0.115, 0.081, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.921, 1.735, -4.048), angle = Angle(3.417, -69.234, 172.979), size = Vector(0.009, 0.014, 6.821), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/wood", skin = 0, bodygroup = {} }
}
function SWEP:MAnim(ty)
self:PlayAnim("stab_miss",ty)
end
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("physics/flesh/flesh_impact_bullet"..math.random(5)..".wav")else
self:EmitSound("physics/flesh/flesh_impact_bullet"..math.random(5)..".wav",60)end
end