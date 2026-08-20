AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false
function ENT:Initialize()
	self:SetModel("models/crossbow_bolt.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_FLYGRAVITY)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(13)
	self:SetGravity(.02)
	self:SetNoDraw(true)
	self:DrawShadow(false)
	phys=self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
		phys:SetMass(7)
	end
end

function ENT:Touch(ent)
	if self:GetOwner()!=ent and(ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent)||ent:IsWorld()||ent:GetMoveType()==MOVETYPE_VPHYSICS)then
		local d=DamageInfo()
		d:SetDamage( self.DMG or 50 )
		d:SetDamageType( DMG_DISSOLVE )
		if self:GetColor().r>199 and self:GetColor().g<=199 and self:GetColor().b<51 then
		d:SetDamageType(268435464)
		ent:Ignite(5)
		elseif self:GetColor().r>199 and self:GetColor().g>199 and self:GetColor().b<51 then
		local e=self.DMG or 50
		d:SetDamage( e*2 )
		elseif (self:GetColor().r<51 || self:GetColor().g>199) and self:GetColor().b>199 then
		d:SetDamageType(16)
		elseif self:GetColor().r<51 and self:GetColor().g>199 and self:GetColor().b<51 then
		d:SetDamageType( DMG_POISON )
		end
		d:SetInflictor( self.Owner )
		d:SetAttacker( self.Owner )
		ent:TakeDamageInfo( d )
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
local d=EffectData()d:SetOrigin(self:GetPos())d:SetMagnitude(self.DMG/25)util.Effect("308_laser",d)
		if ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent)then
		self:EmitSound("physics/flesh/flesh_impact_bullet"..math.random(5)..".wav")
		else
		self:EmitSound("physics/metal/metal_solid_impact_bullet"..math.random(4)..".wav")
		end
		SafeRemoveEntityDelayed(self,3)
	end
end
