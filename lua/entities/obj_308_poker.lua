AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false
if SERVER then
function ENT:Initialize()
	self:SetModel("models/hunter/plates/plate05x1.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_FLYGRAVITY)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(13)
	self:SetModelScale(.2)
	self:SetMaterial("models/shiny")
	util.SpriteTrail(self,0,Color(200,200,200,255),true,.5,.1,.1,.1,"trails/smoke.vmt")
	self:SetGravity(.4)
	local phys=self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
		phys:SetMass(7)
	end
end


function ENT:Think()
if self:GetMoveType()!=MOVETYPE_NONE then
self:SetAngles(self:GetVelocity():Angle()+Angle(90,0,90))
if !self:IsInWorld()then
SafeRemoveEntity(self)
return end
elseif self.Hit and(!IsValid(self:GetParent())||self:GetParent():Health()<=0||self:GetParent():GetClass()=="obj_308_poker")then
SafeRemoveEntity(self)
end
end

end

function ENT:Touch(ent)
if self:GetOwner()!=ent and(ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent)||ent:IsWorld()||(ent:GetMoveType()==MOVETYPE_VPHYSICS and ent:GetSolid()==SOLID_VPHYSICS))then
		ent:TakeDamage((self:GetVelocity()-ent:GetVelocity()):Length()/35,self.Owner,self.Owner or self)
		self:SetSolid(SOLID_NONE)
		self:SetMoveType(MOVETYPE_NONE)
		if ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent)||ent:GetMoveType()==MOVETYPE_VPHYSICS then
		if ent:GetMoveType()==MOVETYPE_VPHYSICS then
		self:EmitSound("weapons/knife/knife_hitwall1.wav")
		else
		self:EmitSound("weapons/knife/knife_hit"..math.random(4)..".wav")
		end
		self.Hit=1
		self:SetParent(ent)
		util.SpriteTrail(self,0,Color(0,0,0,0),true,.5,.1,.1,.1,"trails/smoke.vmt")
		else
		self:EmitSound("weapons/knife/knife_hitwall1.wav")
		end
		SafeRemoveEntityDelayed(self,15)
	end
end