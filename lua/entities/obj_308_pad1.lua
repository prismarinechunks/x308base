AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.PrintName="Spring Pad"
ENT.Category = "Xbase | NPCs"
ENT.Editable=true
ENT.Spawnable=true

function ENT:SetupDataTables()
self:NetworkVar("Int",0,"SpringForce",{KeyName="springforce",Edit={type="Int",min=200,max=19999,order=1}})
self:NetworkVar("Bool",1,"ResetVelocity",{KeyName="resetvelocity",Edit={type="Bool",order=2}})
end

function ENT:SpawnFunction(ply,tr,c)
if !tr.Hit then return end
local ent=ents.Create(c)
ent:SetPos(tr.HitPos+tr.HitNormal*16)
ent:SetSpringForce(350)
ent:SetCreator(ply)ent:Spawn()
ent:Activate()
return ent
end
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/plates/plate1x1.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local p=self:GetPhysicsObject()
	if IsValid(p)then
	p:Wake()end
	local e=ents.Create("prop_physics")e:SetModel(self:GetModel())
	e:SetMaterial("phoenix_storms/wire/pcb_blue")e:Spawn()e:SetSolid(0)e:SetPos(self:GetPos()+self:GetUp()*3)e:SetAngles(self:GetAngles())e:SetParent(self)
	end
end
function ENT:PhysicsCollide(d)if SERVER then
local e=d.HitEntity
if IsValid(e)and(e:IsNPC()||e:IsPlayer())then
self:EmitSound("3088083421/sonic/spring.wav",150)
local v=e:GetVelocity()
e:SetGroundEntity(nil)
if self:GetResetVelocity()then
v=Vector()else
v.z=0 end
e:SetLocalVelocity(v+self:GetUp()*self:GetSpringForce())
end
end
end

function ENT:Think()end
function ENT:OnTakeDamage()return end