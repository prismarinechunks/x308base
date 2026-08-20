AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.PrintName="Teleport Pad-Destination"
ENT.Category="308..' Base"
ENT.Editable=true
ENT.Spawnable=true
function ENT:SetupDataTables()
self:NetworkVar("Int",0,"CorrespondingCode",{KeyName="correspondingcode",Edit={type="Int",min=1,max=999,order=1}})
self:NetworkVar("Bool",1,"ResetVelocity",{KeyName="resetvelocity",Edit={type="Bool",order=2}})
self:NetworkVar("Bool",2,"Effect",{KeyName="effect",Edit={type="Bool",order=2}})
end

function ENT:SpawnFunction(ply,tr,c)
if !tr.Hit then return end
local ent=ents.Create(c)
ent:SetPos(tr.HitPos+tr.HitNormal*16)
ent:SetResetVelocity(true)
ent:SetEffect(true)
ent:SetCreator(ply)ent:Spawn()
ent:Activate()
return ent
end
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/plates/plate1x1.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(11)
	local p=self:GetPhysicsObject()
	if IsValid(p)then
	p:Wake()end
	local e=ents.Create("prop_physics")e:SetModel(self:GetModel())
	e:SetMaterial("models/props_combine/tprings_globe")e:Spawn()e:SetSolid(0)e:SetPos(self:GetPos()+self:GetUp()*3)e:SetAngles(self:GetAngles())e:SetParent(self)
	end
end

function ENT:Think()end
function ENT:OnTakeDamage()return end