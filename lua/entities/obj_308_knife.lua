AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false

function ENT:Initialize()
	self:SetModel("models/weapons/w_knife_ct.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_FLY)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(13)
	self.Ang=0
	local phys=self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
	end
end

if SERVER then

function ENT:Think()
self.Ang=self.Ang+100
self:SetAngles(self:GetVelocity():Angle()+Angle(self.Ang,0,0))
if !self:IsInWorld()then
SafeRemoveEntity(self)
end
end


function ENT:Touch(ent)
if self:GetOwner()!=ent and(ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent)||ent:IsWorld()||ent:GetSolid()==SOLID_VPHYSICS)then
ent:TakeDamage(135,self.Owner,self.Owner or self)
if ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent)then
self:EmitSound("murdermystery/kill"..math.random(3)..".wav",511)else
self:EmitSound("weapons/knife/knife_stab.wav")end
SafeRemoveEntity(self)
end
end

end
