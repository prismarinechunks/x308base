AddCSLuaFile()DEFINE_BASECLASS("base_anim")
ENT.PrintName="Plane"

function ENT:Initialize()if SERVER then
	self:SetModel("models/xqm/jetbody3.mdl")
	self:SetModelScale(.1)
	self:PhysicsInitSphere(32,"metal_bouncy")
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:DrawShadow(false)
	if IsValid(self.Owner)then self.Owner:DeleteOnRemove(self)end
	local p=self:GetPhysicsObject()
	if IsValid(p)then
	p:EnableGravity(false)
	end
	self:SetCollisionGroup(13)
	end
self:SetHealth(10)
self.TT=6
self:EmitSound("thrusters/jet03.wav")
self:Think()
end
function ENT:Think()
if CLIENT then return end
if !self:IsInWorld()||self:WaterLevel()>0||self.w_IsInWater then SafeRemoveEntity(self)return end
self.TT=self.TT-1
if self.TT<1 then
self.TT=5
local e=ents.Create("obj_308_grenade")
e:SetPos(self:GetPos())
e:SetAngles(self:GetVelocity():Angle())
e:SetVelocity(self:GetVelocity())
e:SetOwner(self.Owner)
e:Spawn()
end
if IsValid(self:GetPhysicsObject())then
local v=self:GetVelocity()
if v.z<63.5 then v.z=63.5 end
local r=Vector(v.x,v.y,0)
if r:Length()<75 and self.TT<2 then v.x=v.x*2 v.y=v.y*2 end
self:GetPhysicsObject():SetVelocity(v)
end
end
function ENT:PhysicsCollide()
SafeRemoveEntity(self)
end
function ENT:OnRemove()
self:EmitSound("ambient/explosions/explode_"..math.random(9)..".wav",150,math.random(70,80))
self:StopSound("thrusters/jet03.wav")
if CLIENT then return end
local e=ents.Create("obj_308_grenade")
e:SetPos(self:GetPos())
e:SetOwner(self.Owner)
e:Spawn()e:EXP()
end

function ENT:OnTakeDamage(d)
if d:GetAttacker()==self.Owner and d:GetDamageType()==DMG_BLAST then
d:SetDamage(0)
d:SetDamageType(0)
d:SetDamageForce(Vector())
return end
self:SetHealth(self:Health()-d:GetDamage())
if self:Health()<0 then SafeRemoveEntity(self)end
end
