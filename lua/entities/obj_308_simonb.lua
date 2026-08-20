AddCSLuaFile()DEFINE_BASECLASS("base_anim")
ENT.PrintName="Simon"
ENT.RenderGroup=RENDERGROUP_TRANSLUCENT

function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/misc/sphere025x025.mdl")
	self:PhysicsInitSphere(10,"metal_bouncy")
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(0)
	self:DrawShadow(false)
	self:GetPhysicsObject():EnableGravity(false)
	if IsValid(self.Owner)then self.Owner:DeleteOnRemove(self)end
	local r=math.random(2)
	local e=ents.Create("obj_308_effect")e:SetPos(self:GetPos())e:Spawn()e:SetParent(self)e:SetSprite("effects/fire_cloud"..r)
	r=math.Rand(1,2)
	e:SetScale(125*r,.5*r)e:Light()e:SetColor(Color(255,255,255,180))
local s=self:GetModelScale()
self.Ligh=ents.Create("light_dynamic")
self.Ligh:SetKeyValue("brightness",6)
self.Ligh:SetKeyValue("distance",700)
self.Ligh:SetLocalPos(self:GetPos())
self.Ligh:SetLocalAngles(self:GetAngles())
self.Ligh:Fire("Color", "255 125 0")
self.Ligh:SetParent(self)
self.Ligh:Spawn()
self.Ligh:Activate()
self.Ligh:Fire("TurnOn","",0)
	end
self:Think()
self:SetModelScale(5,.5)
end
function ENT:Think()
if CLIENT then return end
if IsValid(self.Ligh)then
self.Ligh:SetKeyValue("brightness", math.Rand(2,3))
self.Ligh:SetKeyValue("distance", math.random(420,450))
end
if !self:IsInWorld()||self:WaterLevel()>0||self.w_IsInWater then SafeRemoveEntity(self)return end
local dmg=self.Dmg or 45
for i=1,10 do
timer.Simple(i/20-.1,function()if IsValid(self)then
for _,e in pairs(ents.FindInSphere(self:GetPos(),10*self:GetModelScale()))do
if self.Owner!=e then
local d=DamageInfo()
d:SetAttacker(self.Owner or self)
d:SetInflictor(self.Owner or self)
d:SetDamageType(8)
d:SetDamage(dmg)
e:TakeDamageInfo(d)
end end
end end)
end
end

function ENT:OnTakeDamage(d)
d:SetDamageForce(Vector())
end

if SERVER then return end
function ENT:Draw()end
