AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.PrintName="Fire Pad"
ENT.Category = "Xbase | NPCs"
ENT.Editable=true
ENT.AdminOnly=true
ENT.Spawnable=true

function ENT:SetupDataTables()
self:NetworkVar("Int",0,"FireSize",{KeyName="firesize",Edit={type="Int",min=1,max=1999,order=1}})
self:NetworkVar("Int",1,"FireDamage",{KeyName="fireattack",Edit={type="Int",min=0,max=9999,order=2}})
self:NetworkVar("Int",2,"FireType",{KeyName="firetype",Edit={type="Int",min=0,max=1,order=3}})
self:NetworkVar("Bool",3,"Smoke",{KeyName="smoke",Edit={type="Bool",order=4}})
if SERVER then
self:NetworkVarNotify("FireSize",self.OnChanged)
self:NetworkVarNotify("FireDamage",self.OnChanged)
self:NetworkVarNotify("FireType",self.OnChanged)
self:NetworkVarNotify("Smoke",self.OnChanged)
end
end
if SERVER then
function ENT:OnChanged(v,o,n)
if o!=n then
if self.SwFire then
SafeRemoveEntity(self.SwFire)end
self.SwFire=nil
self:SFire()
end
end
end
function ENT:SpawnFunction(ply,tr,c)
if !tr.Hit then return end
local ent=ents.Create(c)
ent:SetPos(tr.HitPos+tr.HitNormal*16)
ent:SetFireSize(60)
ent:SetFireDamage(1)
ent:SetSmoke(true)
ent:SetCreator(ply)ent:Spawn()
ent:Activate()
return ent
end
function ENT:SFire()
local f=ents.Create("env_fire")f:SetPos(self:GetPos())f:SetParent(self)
f:SetKeyValue("firesize",self:GetFireSize())
f:SetKeyValue("fireattack",self:GetFireDamage())
f:SetKeyValue("damagescale",1)
f:SetKeyValue("StartDisabled",0)
f:SetKeyValue("firetype",self:GetFireType())
if !self:GetSmoke()then
f:SetKeyValue("spawnflags",31)else
f:SetKeyValue("spawnflags",29)end
f:Spawn()
f:Fire("StartFire","",0)
self.SwFire=f
end
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/plates/plate05x05.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local p=self:GetPhysicsObject()
	if IsValid(p)then
	p:Wake()end
	self:SFire()
	end
end

function ENT:Think()end
function ENT:OnTakeDamage()return end