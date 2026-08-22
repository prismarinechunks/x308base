AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.PrintName="Deadly Pad"
ENT.Category = "Xbase | NPCs"
ENT.AdminOnly=true
ENT.Spawnable=true

function ENT:SpawnFunction(ply,tr,c)
if !tr.Hit then return end
local ent=ents.Create(c)
ent:SetPos(tr.HitPos+tr.HitNormal*16)
ent:SetColor(Color(255,0,0))
ent:SetCreator(ply)ent:Spawn()
ent:Activate()
return ent
end
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/plates/plate2x2.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local p=self:GetPhysicsObject()
	if IsValid(p)then
	p:Wake()end
	end
end
function ENT:PhysicsCollide(d)if SERVER then
local e=d.HitEntity
if IsValid(e)and(e:IsNPC()||e:IsPlayer()||e.loco)then
e:TakeDamage(999999999)
if e:IsPlayer()and e:Alive()then
e:Kill()end
end
end
end

function ENT:Think()end
function ENT:OnTakeDamage()return end