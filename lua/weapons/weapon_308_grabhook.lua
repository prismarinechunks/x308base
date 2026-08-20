SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = GAME308_LANWEP["grabhook"]
SWEP.Category = "x308 Base | Misc"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_snip_scout.mdl"
SWEP.WorldModel = "models/weapons/w_snip_scout.mdl"

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.TextEquip=GAME308_LAN["hok"]
SWEP.PA_TakeAmmo = 0
SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Delay = .5
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.SA_IsSight = false
SWEP.NormalDraw=true
SWEP.AmmoHUD=2
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 1, 80, 0 )
SWEP.Rope=nil
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(-0.829, 0, 1.222), angle = Angle(90, 0, 0), size = Vector(0.009, 0.009, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/mechanics/robotics/b1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.841, 5.377), angle = Angle(-90, -90, 90), size = Vector(0.5, 0.1, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-0.689, -0.267, 7.565), angle = Angle(0, 90, -90), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(30.388, 0.754, -8.433), angle = Angle(-1.443, 89.823, -79.747), size = Vector(0.018, 0.018, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(12.399, 0.759, -5.974), angle = Angle(-1.443, 89.823, -79.747), size = Vector(0.025, 0.025, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/mechanics/articulating/arm2x20d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(-0.829, 0, 0.246), angle = Angle(0, 90, 90), size = Vector(0.029, 0.009, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.VElements = {
	["1++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.scout_Parent", rel = "1+", pos = Vector(-0.829, 0, 1.222), angle = Angle(90, 0, 0), size = Vector(0.009, 0.009, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/mechanics/articulating/arm2x20d.mdl", bone = "v_weapon.scout_Parent", rel = "1+", pos = Vector(-0.829, 0, 0.246), angle = Angle(0, 90, 90), size = Vector(0.029, 0.009, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "v_weapon.scout_Parent", rel = "1", pos = Vector(-0.689, -0.267, 7.565), angle = Angle(0, 90, -90), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/mechanics/robotics/b1.mdl", bone = "v_weapon.scout_Bolt", rel = "1", pos = Vector(0, 0.841, 5.377), angle = Angle(-90, -90, 90), size = Vector(0.5, 0.1, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.scout_Bolt", rel = "", pos = Vector(0, 0.034, -6.863), angle = Angle(0, 0, 0), size = Vector(0.018, 0.018, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.scout_Parent", rel = "", pos = Vector(-0.005, -3.362, -25.435), angle = Angle(0, 0, 0), size = Vector(0.018, 0.018, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.PickAgain=false
function SWEP:Reload()self:SecondaryAttack()end
--function SWEP:BeforeHolster()if IsValid(self.Rope)then return true end end
function SWEP:CustomPrimary()
if SERVER then
local p=self.Owner
if !IsValid(self.Rope)then
self:PlayAnim("shoot",2)self.Owner:EmitSound("3088083421/wep/shoot/snip_1.ogg",100,250)
local n="ent"..tostring(self.Owner:GetName())
self.Rope=ents.Create("obj_308_grabhook")
local a=p:GetAimVector()
self.Rope:SetPos(p:GetShootPos()+a*10)
self.Rope:SetAngles(a:Angle()+Angle(-90,0,0))
self.Rope:SetName(n)
self.Rope:Spawn()
self.Rope:SetOwner(p)
self.Rope:GetPhysicsObject():SetVelocity(a*1000+p:GetVelocity()/2)
self.Rope:SetPhysicsAttacker(self.Owner)
p:DeleteOnRemove(self.Rope)
end
end
end
function SWEP:SecondaryAttack()
if SERVER then
local p=self.Owner
if IsValid(self.Rope)then
self:EmitSound("3088083421/wep/melee/linkedslash.mp3")SafeRemoveEntity(self.Rope)
end
end
end
