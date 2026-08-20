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
	self:SetColor(Color(255,115,210))
	self:SetModelScale(1.8)
	self:DrawShadow(false)
	self.Divide=1
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
	l:SetKeyValue("brightness", 6-self.Divide)
	l:SetKeyValue("distance", 100-self.Divide*10)
	l:SetLocalPos(self:GetPos())
	l:SetLocalAngles(self:GetAngles())
	l:Fire("Color", "255 115 0")
	l:Spawn()
	l:Activate()
	l:Fire("TurnOn", "", 0)
	SafeRemoveEntityDelayed(l,.4)
	
	local e2=ents.Create("env_physexplosion")
	e2:SetPos(self.Entity:GetPos())
	e2:SetKeyValue("magnitude",100-self.Divide*10)
	e2:SetKeyValue("radius",150-self.Divide*20)
	e2:SetKeyValue("spawnflags","3")
	e2:Spawn()
	e2:Activate()
	e2:Fire("Explode","",0)
	if self.Divide<3 then
if SERVER then
	for i=1,8 do
	local k=ents.Create("obj_308_dividerb2")
	k:SetPos(self:GetPos())
	k:SetOwner(self.Owner or self)
	k:Spawn()
	k.Divide=self.Divide+1
	k:SetModelScale(1.8-self.Divide/2)
	k:SetMoveType(MOVETYPE_FLYGRAVITY)
	k:SetGravity(1.4)
	k:SetVelocity(VectorRand()*math.random(300,500))
	end
end
	end
	util.BlastDamage(self.Owner or self,self.Owner or self,self:GetPos(),55-self.Divide*5,90-self.Divide*8)
	util.ScreenShake(self:GetPos(),155,11-self.Divide,1.2/self.Divide,120-self.Divide*15)
	SafeRemoveEntity(self)
end
end
