SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["diamondsword"]
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "melee"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"

SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.ShowWorldModel=false
SWEP.IdleAnim="idle_cycle"
SWEP.Primary.Automatic=false

SWEP.Melee1=40
SWEP.MeleeAT=.01
SWEP.MeleeOT=.1
SWEP.RangeD=80
SWEP.TextColor=Color(0,208,255)

SWEP.MeleeSM2={{Sound="weapons/slam/throw.wav",Pitch=110}}
SWEP.MeleeSW={{Sound="3088083421/wep/hit1.ogg",Pitch=70}}
SWEP.CenterPos = Vector(0,70,0)
SWEP.DeployScale=40
SWEP.ViewModelBoneMods = {
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(2, -4, 8), angle = Angle(59, 30, 30) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -30, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 7.696), angle = Angle(0, 0, 0), size = Vector(0.012, 0.123, 0.275), color = Color(0, 147, 255, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 20.059), angle = Angle(0, 0, 0), size = Vector(0.009, 0.072, 0.029), color = Color(0, 147, 255, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0.349, 0, 9.373), angle = Angle(90, 0, 0), size = Vector(0.041, 0.097, 0.233), color = Color(0, 140, 208, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 0.078), angle = Angle(0, 0, 0), size = Vector(0.219, 0.219, 0.219), color = Color(0, 147, 255, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0, 0, -3.534), angle = Angle(0, 0, 0), size = Vector(0.041, 0.057, 0.172), color = Color(137, 135, 130, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["2"] = { type = "Quad", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(5, -4, 11), angle = Angle(8, 165, 38), size = 0.05, draw_func = nil}
}
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 7.696), angle = Angle(0, 0, 0), size = Vector(0.012, 0.123, 0.275), color = Color(0, 147, 255, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 0.078), angle = Angle(0, 0, 0), size = Vector(0.219, 0.219, 0.219), color = Color(0, 147, 255, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0.349, 0, 9.373), angle = Angle(90, 0, 0), size = Vector(0.041, 0.097, 0.233), color = Color(0, 140, 208, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.74, 1.146, 5.512), angle = Angle(4.381, -102.378, 176.419), size = Vector(0.041, 0.057, 0.172), color = Color(137, 135, 130, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 20.059), angle = Angle(0, 0, 0), size = Vector(0.009, 0.072, 0.029), color = Color(0, 147, 255, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} }
}
function SWEP:SecondaryAttack()
self.BoltPullTimer=CurTime()+.1
self:SetNextPrimaryFire(CurTime()+.1)
self:PlayAnim("stab",4,.1)
end
function SWEP:CustomInit()self:SetClip1(600)end
function SWEP:CustomThink()
if IsValid(self.Owner)then
	if CLIENT then
	self.VElements["2"].draw_func=function(weapon)
	draw.SimpleText(self:Clip1(),"308wepbase",0,0,Color(1,63,128,255),TEXT_ALIGN_CENTER,TEXT_ALIGN_TOP)
	end
	end
end
end
function SWEP:MAnim(ty)
self:PlayAnim("stab",3,.2)
end
function SWEP:MeleeSound(t)
self:SetNextPrimaryFire(CurTime()+.2)
self:SetNextSecondaryFire(CurTime()+.1)
self:EmitSound("3088083421/wep/hit1.ogg")self:TakePrimaryAmmo(2)
if self:Clip1()<1 then self.Owner:EmitSound("3088083421/wep/break.ogg")SafeRemoveEntity(self)end
end
function SWEP:IfOwnHurt(d)if self.Owner:KeyDown(IN_ATTACK2)and !self.Owner:KeyDown(IN_ATTACK)then
if d:GetDamageType()==DMG_SLASH||d:GetDamageType()==128 then
self:TakePrimaryAmmo(math.floor(d:GetDamage()/5))d:SetDamage(d:GetDamage()/5)
if self:Clip1()<1 then self.Owner:EmitSound("3088083421/wep/break.ogg")SafeRemoveEntity(self)end
end
end end
function SWEP:DamageNPC(d,e)
--if e:IsPlayer()then
local l=self.Owner:GetVelocity():Length()
if IsNextBot3(e)then
e.loco:SetVelocity(self:GetForward()*(150+l/5)+Vector(0,0,230))
else
e:SetGroundEntity(NULL)
e:SetVelocity(self:GetForward()*(150+l/5)+Vector(0,0,230))
end
--end
end
