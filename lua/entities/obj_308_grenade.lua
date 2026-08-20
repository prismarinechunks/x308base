AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false
ENT.BFIX=0
function ENT:Initialize()
	self:SetModel("models/Items/AR2_Grenade.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_FLYGRAVITY)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(13)
	self:SetGravity(.6)
	self:SetModelScale(2)
if SERVER then
	util.SpriteTrail(self,0,Color(255,255,255,255),true,15,12,.5,.1,"trails/smoke.vmt")end
	self.BFIX=0
end
function ENT:Think()
if SERVER then
if self:GetMoveType()!=MOVETYPE_NONE then
self:SetAngles(self:GetVelocity():Angle())
if self:GetVelocity():Length()==0 then
self.BFIX=self.BFIX+1
end
if self.BFIX>1 and !self.Expl then
self:EXP()
elseif !self:IsInWorld()then
SafeRemoveEntity(self)
end
end
end
end
function ENT:Touch(ent)if SERVER then
if !self.Expl and self:GetMoveType()!=0 and Touch_3(self.Owner,ent)then self.Expl=1 self:EXP()end
end end

function ENT:EXP()
	sound.Play("weapons/explode"..math.random(3,5)..".wav",self:GetPos())
	self:EmitSound("3088083421/exp/explode"..math.random(1,4)..".ogg",511)
	local explo = ents.Create("env_explosion")
		explo:SetOwner(self.boom1)
		explo:SetPos(self.Entity:GetPos())
		explo:SetKeyValue("iMagnitude", "0")
		explo:SetKeyValue("spawnflags", "369")
		explo:Spawn()
		explo:Activate()
		explo:Fire("Explode", "", 0)
	local explo2 = ents.Create("env_physexplosion")
		explo2:SetOwner(self.boom1)
		explo2:SetPos(self.Entity:GetPos())
		explo2:SetKeyValue("magnitude", "100")
		explo2:SetKeyValue("radius", "240")
		explo2:SetKeyValue("spawnflags", "3")
		explo2:Spawn()
		explo2:Activate()
		explo2:Fire("Explode", "", 0)
	util.BlastDamage(self.Owner or self,self.Owner or self,self:GetPos(),150,200)
local d=EffectData()d:SetOrigin(self:GetPos())util.Effect("308_explosion",d)d:SetMagnitude(1)
	self:SetCollisionGroup( COLLISION_GROUP_NONE )
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
	self:SetNoDraw(true)
	self:DrawShadow(false)
	SafeRemoveEntityDelayed(self,1)
end
