SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName = "10T"
SWEP.Category = "x308 Base | Melee"
SWEP.HoldType = "melee"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"

SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.ShowWorldModel=false
SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"
SWEP.Primary.Automatic=false
SWEP.Secondary.Automatic=false
SWEP.Multiple=4

SWEP.Melee1=45
SWEP.Melee2=95
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.23
SWEP.MeleeOT=.5
SWEP.MeleeOT2=1
SWEP.RangeD=80

SWEP.MeleeS={{Delay=.1,Sound="weapons/slam/throw.wav",Pitch=100}}
SWEP.MeleeS2={{Delay=.13,Sound="weapons/slam/throw.wav",Pitch=50}}
SWEP.MeleeSW={{Sound="physics/metal/metal_canister_impact_hard2.wav",Pitch=70}}
SWEP.CenterPos = Vector(0,70,0)
SWEP.ViewModelBoneMods = {
["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 9.715), angle = Angle(0, 0, 0), size = Vector(0.035, 0.035, 0.303), color = Color(120, 115, 125, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0, 0, -4.233), angle = Angle(0, 0, 0), size = Vector(0.045, 0.05, 0.221), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, -4.663, 24.065), angle = Angle(0, 0, 90), size = Vector(0.199, 0.199, 0.199), color = Color(120, 115, 125, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 9.715), angle = Angle(0, 0, 0), size = Vector(0.035, 0.035, 0.303), color = Color(120, 115, 125, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.051, 1.067, 7.059), angle = Angle(-3.238, 96.771, -174.765), size = Vector(0.045, 0.05, 0.221), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -4.663, 24.065), angle = Angle(0, 0, 90), size = Vector(0.199, 0.199, 0.199), color = Color(120, 115, 125, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
function SWEP:CustomInit()
self:DrawShadow(false)
end
function SWEP:MAnim(ty)
if ty==1 then
self:PlayAnim("midslash1",.9,.5)
else
self:PlayAnim("midslash1",.7,1)
end
end
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("physics/metal/metal_canister_impact_hard"..math.random(3)..".wav",100,40)
else
self:EmitSound("physics/metal/metal_canister_impact_hard"..math.random(3)..".wav",100,25)
end
end
function SWEP:DamageENT(d,e)
if e.IsMCMob then return end
local p=self.Owner
local l=p:GetVelocity():Length()
local m=d:GetDamage()
if e:IsPlayer()||e:IsNPC()||IsNextBot3(e)then
if IsNextBot3(e)then
e.loco:SetVelocity(self:GetForward()*(m*10+l/5)+Vector(0,0,m*5))
else
e:SetGroundEntity(NULL)
e:SetVelocity(self:GetForward()*(m*10+l/5)+Vector(0,0,m*5))
end
e.SF308B=p
else
e:SetVelocity(self:GetForward()*(m*12+l/5)+Vector(0,0,m*5))
if IsValid(e:GetPhysicsObject())then
e:SetPhysicsAttacker(p)
e:GetPhysicsObject():SetVelocity(self:GetForward()*(m*12+l/5)+Vector(0,0,m*2))
end
end
d:SetDamageForce(p:GetRight()*m*5999+p:GetForward()*m*18999+Vector(0,0,m*3999)+p:GetVelocity())
end
