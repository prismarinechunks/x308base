AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false
if SERVER then

function ENT:Initialize()
self.__MustRemove=1
	self:SetModel("models/hunter/plates/plate.mdl")
	self:PhysicsInitSphere(1,"metal_bouncy")
	local v=Vector(1,1,1)
	self:SetCollisionBounds(-v,v)
	self:SetCollisionGroup(13)
	util.SpriteTrail(self,0,Color(15,255,255,255),true,15,12,.5,.1,"trails/smoke.vmt")
	self:SetMaterial("models/spawn_effect2")
	SafeRemoveEntityDelayed(self,5)
end
function ENT:Touch(ent)
if self.Owner!=ent and(ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent))then
ent:TakeDamage(10,self.Owner)
self:EmitSound("phx/epicmetal_hard.wav")
SafeRemoveEntity(self)
else
self:EmitSound("garrysmod/balloon_pop_cute.wav")
end end

end
