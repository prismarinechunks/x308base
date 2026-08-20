AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false
if SERVER then

function ENT:Initialize()
	self:SetModel("models/combine_helicopter/helicopter_bomb01.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_FLY)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(13)
	self:SetMaterial("models/spawn_effect2")
	self:SetColor(Color(255,255,0))
	self:SetModelScale(.1)
	self:DrawShadow(false)
	local phys=self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
	end
end


function ENT:Think()
if !self:IsInWorld()then
SafeRemoveEntity(self)
end
end

end
function ENT:Touch(ent)
if self:GetOwner()!=ent and Touch_3(self.Owner,ent)then
self:EmitSound("npc/vort/attack_shoot.wav")
	local l=ents.Create("light_dynamic")
	l:SetKeyValue("brightness", "8")
	l:SetKeyValue("distance", "300")
	l:SetLocalPos(self:GetPos())
	l:SetLocalAngles(self:GetAngles())
	l:Fire("Color", "0 255 0")
	l:Spawn()
	l:Activate()
	l:Fire("TurnOn", "", 0)
	SafeRemoveEntityDelayed(l,.1)
	
	local e2=ents.Create("env_physexplosion")
	e2:SetPos(self.Entity:GetPos())
	e2:SetKeyValue("magnitude","100")
	e2:SetKeyValue("radius","150")
	e2:SetKeyValue("spawnflags","3")
	e2:Spawn()
	e2:Activate()
	e2:Fire("Explode","",0)
	
local d=EffectData()d:SetOrigin(self:GetPos())util.Effect("308_plasma",d)
	util.BlastDamage(self.Owner or self,self.Owner or self,self:GetPos(),45,50)
	util.ScreenShake(self:GetPos(),125,10,1,100)
	SafeRemoveEntity(self)
end
end


