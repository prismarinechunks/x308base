AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false
if SERVER then

function ENT:Initialize()
	self:SetModel("models/hunter/misc/sphere025x025.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_FLY)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(13)
	self:SetMaterial("models/spawn_effect2")
	self:SetColor(Color(255,0,0))
	self:SetModelScale(1.6)
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
local d=EffectData()d:SetOrigin(self:GetPos())util.Effect("308_plasma",d)
self:EmitSound("npc/roller/mine/rmine_explode_shock1.wav",100,50)
	local l=ents.Create("light_dynamic")
	l:SetKeyValue("brightness", "3")
	l:SetKeyValue("distance", "100")
	l:SetLocalPos(self:GetPos())
	l:SetLocalAngles(self:GetAngles())
	l:Fire("Color", "255 0 0")
	l:Spawn()
	l:Activate()
	l:Fire("TurnOn", "", 0)
	SafeRemoveEntityDelayed(l,.4)
	
	local e2=ents.Create("env_physexplosion")
	e2:SetPos(self.Entity:GetPos())
	e2:SetKeyValue("magnitude","100")
	e2:SetKeyValue("radius","150")
	e2:SetKeyValue("spawnflags","3")
	e2:Spawn()
	e2:Activate()
	e2:Fire("Explode","",0)
	if !self.NoDivide then
if SERVER then
	for i=1,8 do
	local k=ents.Create("obj_308_dividerb")
	k:SetPos(self:GetPos())
	k:SetOwner(self.Owner or self)
	k.NoDivide=1
	k:Spawn()
	k:SetMoveType(MOVETYPE_FLYGRAVITY)
	k:SetGravity(1.5)
	k:SetVelocity(VectorRand()*math.random(500,800))
end
	end
	end
	util.BlastDamage(self.Owner or self,self.Owner or self,self:GetPos(),60,70)
	util.ScreenShake(self:GetPos(),200,12,1.2,200)
	SafeRemoveEntity(self)
end
end