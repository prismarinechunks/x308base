AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false
function ENT:Initialize()
if SERVER then
	self:SetModel("models/props_phx/gibs/flakgib1.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_FLYGRAVITY)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(13)
	self:SetModelScale(.5)
	util.SpriteTrail(self,0,Color(200,200,200,255),true,.5,.1,.5,.1,"trails/smoke.vmt")
	self:SetGravity(.4)
	local phys=self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
		phys:SetMass(7)
	end
end
end
if SERVER then

function ENT:Touch(ent)
	if self:GetOwner()!=ent and(ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent)||ent:IsWorld()||ent:GetMoveType()==MOVETYPE_VPHYSICS)then
		if self:IsOnFire()then ent:Ignite(5)end
		ent:TakeDamage(self.DMG or 8,self.Owner,self.Owner or self)
		if ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent)then
		self:EmitSound("physics/flesh/flesh_impact_bullet"..math.random(5)..".wav")
		else
		self:EmitSound("physics/metal/metal_solid_impact_bullet"..math.random(4)..".wav")
		end
		SafeRemoveEntity(self)
	end
end
end