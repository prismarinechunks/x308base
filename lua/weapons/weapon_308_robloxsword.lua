SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName = "Linked Sword"
SWEP.Multiple=9

SWEP.Category = "X Base | Melee"
SWEP.HoldType = "pistol"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.ShowWorldModel=false
SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"
SWEP.DrawAnimRate=1.5

SWEP.Primary.Automatic = false
SWEP.Melee1=20
SWEP.MeleeAT=.01
SWEP.MeleeOT=.1
SWEP.RangeD=45

SWEP.DrawSound={{Sound="3088083421/wep/melee/robloxdeploy2.mp3"}}
SWEP.CenterPos = Vector(0,100,0)
SWEP.ViewModelBoneMods = {
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(3, -5, 8), angle = Angle(52, 40, 30) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -30, 0), angle = Angle(0, 0, 0) }
}
SWEP.NormalDraw=false
SWEP.VElements = {
	["1+++++"] = { type = "Model", model = "models/hunter/misc/cone1x05.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 1.157), angle = Angle(0, 0, 0), size = Vector(0.025, 0.059, 0.259), color = Color(162, 165, 147, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 7.432), angle = Angle(0, 0, 0), size = Vector(0.029, 0.211, 1.146), color = Color(162, 165, 147, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 2.54, 0.388), angle = Angle(0, 0, -20), size = Vector(0.079, 0.395, 0.125), color = Color(141, 255, 0, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, -9.341), angle = Angle(0, 0, 0), size = Vector(0.287, 0.287, 0.287), color = Color(141, 255, 0, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, -2.541, 0.388), angle = Angle(0, 0, 20), size = Vector(0.079, 0.395, 0.125), color = Color(141, 255, 0, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["1+++++++"] = { type = "Model", model = "models/hunter/geometric/pent1x1.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 14.121), angle = Angle(0, 90, 90), size = Vector(0.054, 0.149, 0.123), color = Color(162, 165, 147, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, -8.464), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.189), color = Color(202, 190, 181, 255), surpresslightning = false, material = "models/props_c17/FurnitureFabric003a", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0, 0, 5.327), angle = Angle(0, 0, 0), size = Vector(0.128, 0.233, 0.188), color = Color(141, 255, 0, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.125, 1.886, -3.586), angle = Angle(-3.036, 91.143, -174.98), size = Vector(0.128, 0.233, 0.188), color = Color(141, 255, 0, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 7.432), angle = Angle(0, 0, 0), size = Vector(0.029, 0.211, 1.146), color = Color(162, 165, 147, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.54, 0.388), angle = Angle(0, 0, -20), size = Vector(0.079, 0.395, 0.125), color = Color(141, 255, 0, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -9.341), angle = Angle(0, 0, 0), size = Vector(0.287, 0.287, 0.287), color = Color(141, 255, 0, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.541, 0.388), angle = Angle(0, 0, 20), size = Vector(0.079, 0.395, 0.125), color = Color(141, 255, 0, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["1+++++++"] = { type = "Model", model = "models/hunter/geometric/pent1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 14.121), angle = Angle(0, 90, 90), size = Vector(0.054, 0.149, 0.123), color = Color(162, 165, 147, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -8.464), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.189), color = Color(202, 190, 181, 255), surpresslightning = false, material = "models/props_c17/FurnitureFabric003a", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/misc/cone1x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 1.157), angle = Angle(0, 0, 0), size = Vector(0.025, 0.059, 0.259), color = Color(162, 165, 147, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.FlyT=CurTime()
SWEP.NextT=CurTime()
SWEP.NextTT=CurTime()
SWEP.Next=0
SWEP.DeployScale=60
function SWEP:MAnim()end
function SWEP:SecondaryAttack()end
function SWEP:CustomATT()if self.NextT<CurTime()then self.NextT=CurTime()+.7 self:PlayAnim("midslash"..math.random(2))self:EmitSound("3088083421/wep/melee/linkedslash.mp3")end
self.NextTT=CurTime()+.5
if self.FlyT<CurTime()then
self.Next=self.Next+1
end
if self.Next>7 and self.NextT<CurTime()+.75 then
self.NextT=CurTime()+.75
self.Next=0
self:EmitSound("3088083421/wep/melee/linkedlunge.mp3")
self:PlayAnim("stab",.8)
self.FlyT=CurTime()+.75
end end
function SWEP:CustomThink()
if self.NextT<CurTime()+.25 then
self.HoldType="pistol" else
self.HoldType="normal" end
if self.NextTT<CurTime()then self.Next=0 end
if self.FlyT>CurTime()then
if self.Owner:IsOnGround()then self.Owner:SetGroundEntity(NULL)end
local v=self.Owner:GetVelocity()
self.Owner:SetLocalVelocity(Vector(v.x,v.y,50))
end end
function SWEP:MeleeSound()end
function SWEP:IfOwnHurt(d)local o=self.Owner timer.Simple(.01,function()if IsValid(o)and !o:Alive()then o:EmitSound("3088083421/pl/uuhhh.mp3")end end)end
