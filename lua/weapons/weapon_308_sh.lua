SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["sh"]
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "melee2"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.Multiple=5
SWEP.ShowWorldModel=false
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.UseHands=false
SWEP.IdleAnim="idle_cycle"
SWEP.Melee1=50
SWEP.Melee2=120
SWEP.MeleeAT2=.08
SWEP.MeleeOT=.45
SWEP.MeleeOT2=1.1
SWEP.RangeD=60
SWEP.TextColor=Color(255,0,255)

SWEP.DrawSound={{Sound="weapons/knife/knife_deploy1.wav",Pitch=50}}
SWEP.MeleeSM2={{Sound="weapons/iceaxe/iceaxe_swing1.wav",Pitch=80}}
SWEP.MeleeSH2={{Sound="weapons/knife/knife_stab.wav",Pitch=80}}
SWEP.MeleeSM={
{Sound="weapons/slam/throw.wav",Pitch=120},
{Delay=.1,Sound="weapons/slam/throw.wav",Pitch=90}
}
SWEP.MeleeSW={{Sound="weapons/knife/knife_hitwall1.wav",Pitch=80}}
SWEP.CenterPos = Vector(-1,70,-4)
SWEP.ViewModelBoneMods = {["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
SWEP.VElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 10.517), angle = Angle(0, 0, 0), size = Vector(0.039, 0.039, 0.402), color = Color(100, 100, 99, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-21, 2.482, -5), angle = Angle(-90.531, 2.364, -1.377), size = Vector(0.305, 0.305, 4.165), color = Color(255, 173, 99, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 5.028, 26.589), angle = Angle(0, -90, -90), size = Vector(0.16, 0.224, 0.009), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-17.364, 2.855, 5.472), angle = Angle(-94.583, 0, -5.178), size = Vector(0.305, 0.305, 3.602), color = Color(255, 173, 99, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0, 0, -8.676), angle = Angle(0, 0, 0), size = Vector(0.041, 0.061, 0.282), color = Color(100, 100, 99, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 10.517), angle = Angle(0, 0, 0), size = Vector(0.039, 0.039, 0.402), color = Color(100, 100, 99, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 5.028, 26.589), angle = Angle(0, -90, -90), size = Vector(0.16, 0.224, 0.009), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.256, 0.89, 10.503), angle = Angle(5.497, -141.553, 180), size = Vector(0.041, 0.061, 0.282), color = Color(100, 100, 99, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
function SWEP:CustomInit()
self:DrawShadow(false)
end
function SWEP:MAnim(ty)
if ty==1 then
self:PlayAnim("midslash1")
else
self:PlayAnim("stab_miss",.9,.3)
end
end
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("weapons/knife/knife_hit"..math.random(4)..".wav",100,70)
else
self:PlayAnim("stab",2)
self:SoundSlot(self.MeleeSH2)
end
end