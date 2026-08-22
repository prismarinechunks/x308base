SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["currysword"]
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "melee2"
SWEP.CDWInfoBox=true
SWEP.Author="QQ3088083421\n这是主角用过的剑"
SWEP.Multiple=7

SWEP.Slot = 0
SWEP.Spawnable=true
SWEP.AdminOnly=true
SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"
SWEP.ShowWorldModel =false
SWEP.Melee1=50
SWEP.Melee2=80
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.2
SWEP.MeleeOT=.5
SWEP.MeleeOT2=.8
SWEP.RangeD=48
SWEP.TextColor = Color(255,215,0)
SWEP.ViewModelBoneMods = {
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(2, -4, 8), angle = Angle(59, 30, 30) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -30, 0), angle = Angle(0, 0, 0) }
}

SWEP.DrawSound={{Sound="3088083421/soulknight/toggle.mp3"}}
SWEP.MeleeS={{Delay=.1,Sound="3088083421/soulknight/melee.mp3"}}
SWEP.MeleeS2={{Delay=.1,Sound="3088083421/soulknight/melee.mp3"}}
SWEP.CenterPos = Vector(0,100,0)
SWEP.ViewModelBoneMods = {
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(2, -4, 8), angle = Angle(59, 30, 30) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -30, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, -10.818), angle = Angle(0, 0, 0), size = Vector(0.045, 0.123, 0.611), color = Color(0, 176, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/triangles/1x1.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, -8), angle = Angle(-135, 90, -90), size = Vector(0.09, 0.09, 0.207), color = Color(255, 255, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, -7.357), angle = Angle(0, 0, 0), size = Vector(0.046, 0.289, 0.302), color = Color(255, 255, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, -3.261), angle = Angle(0, 0, 0), size = Vector(0.002, 0.079, 0.207), color = Color(0, 193, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0, 0, 14), angle = Angle(0, 0, 0), size = Vector(0.001, 0.277, 1.422), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -7.357), angle = Angle(0, 0, 0), size = Vector(0.046, 0.289, 0.302), color = Color(255, 255, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/triangles/1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -8), angle = Angle(-135, 90, -90), size = Vector(0.09, 0.09, 0.207), color = Color(255, 255, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.003, 3.13, -9.99), angle = Angle(-12.257, 73.688, -180), size = Vector(0.001, 0.277, 1.422), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -3.261), angle = Angle(0, 0, 0), size = Vector(0.002, 0.079, 0.307), color = Color(0, 193, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -10.818), angle = Angle(0, 0, 0), size = Vector(0.045, 0.123, 0.611), color = Color(0, 176, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
function SWEP:MAnim()self:PlayAnim("midslash1")end
function SWEP:MeleeSound(t)end
function SWEP:CustomATT(t)
if t==1 then return end
	if SERVER then
	local e=ents.Create("obj_308_curryq")
	e:SetPos(self.Owner:GetShootPos()+self:GetForward()*30+self.Owner:GetRight()*7+self.Owner:GetUp()*-4)
	e:SetOwner(self.Owner)
	e:Spawn()
	e:Activate()
	e:Think()
	e:SetModelScale(10,5)
	e:GetPhysicsObject():SetVelocity(self.Owner:GetAimVector()*3000)
	end
end
function SWEP:IfOwnHurt()
self.Owner:EmitSound("3088083421/soulknight/hurt.mp3")
end