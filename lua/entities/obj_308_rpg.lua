AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false

function ENT:Initialize()if SERVER then
	self:SetModel("models/weapons/w_missile.mdl")
	if !self.Timer then self.Timer=CurTime()+.7 end
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_FLYGRAVITY)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(13)
	util.SpriteTrail(self,0,Color(200,200,200,255),true,45,15,1.25,.5,"trails/smoke.vmt")
	self:SetVelocity(self:GetForward()*3000+VectorRand()*BED308*10)
	self:SetGravity(.1)end
end

function ENT:Touch(ent)Msg(ent)if SERVER then
if self:GetOwner()!=ent and !self.Hit and Touch_3(self,ent)then
self:Explosion()end end
end

if SERVER then
function ENT:Think()
if self.Hit and self.Redeemer then
local d=EffectData()d:SetOrigin(self:GetPos())d:SetMagnitude(1)util.Effect("308_redeemer",d)end
end

function ENT:Explosion()self.Hit=1
	self:SetCollisionGroup( COLLISION_GROUP_NONE )
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
	self:SetNoDraw(true)
	self:DrawShadow(false)
if self.Redeemer then
util.BlastDamage(self.Owner or self,self.Owner or self,self:GetPos(),450,10)
self:StopSound("ambient/alarms/combine_bank_alarm_loop4.wav")
self:EmitSound("ambient/explosions/exp"..math.random(1,4)..".wav",0)
timer.Simple(1.5,function()if IsValid(self)then
self:Eff()self:Eff()self:Eff()self:Eff()
util.ScreenShake(self:GetPos(),16,16,2,2500)
self:EmitSound("ambient/explosions/exp"..math.random(1,4)..".wav",0)
util.BlastDamage(self.Owner or self,self.Owner or self,self:GetPos(),850,200)
local d=EffectData()d:SetOrigin(self:GetPos())d:SetMagnitude(2)util.Effect("308_redeemer",d)
end end)
timer.Simple(1.7,function()if IsValid(self)then
self:Eff()self:Eff()
util.ScreenShake(self:GetPos(),16,16,3.2,5000)
util.BlastDamage(self.Owner or self,self.Owner or self,self:GetPos(),7800,450)
end end)
timer.Simple(1.9,function()if IsValid(self)then
self:Eff()util.ScreenShake(self:GetPos(),16,16,3,7500)
self:EmitSound("ambient/explosions/explode_"..math.random(2,6)..".wav",0)
self:EmitSound("ambient/explosions/explode_"..math.random(2,6)..".wav",0,80)
self:Explode(12900,800)
end end)
timer.Simple(2.1,function()if IsValid(self)then
self:Eff()util.ScreenShake(self:GetPos(),16,16,5,17500)
self:EmitSound("ambient/explosions/explode_"..math.random(2,6)..".wav",0)
self:EmitSound("ambient/explosions/explode_"..math.random(2,6)..".wav",0,70)
self:EmitSound("ambient/explosions/explode_"..math.random(2,6)..".wav",0,50)
self:EmitSound("ambient/explosions/explode_"..math.random(2,6)..".wav",0,30)
self:EmitSound("ambient/explosions/exp"..math.random(1,4)..".wav",0,40)
SafeRemoveEntity(self)
end end)
return end
	SafeRemoveEntityDelayed(self,1.25)
	sound.Play("weapons/explode"..math.random(3,5)..".wav",self:GetPos())
	self:EmitSound("3088083421/exp/explode"..math.random(1,4)..".ogg",511)
	util.BlastDamage(self.Owner or self,self.Owner or self,self:GetPos(),200,350)
local d=EffectData()d:SetOrigin(self:GetPos())util.Effect("308_explosion",d)d:SetMagnitude(1)
end

function ENT:Explode(r,m)if !IsValid(self.Owner)then return end
for i,e in pairs(ents.FindInSphere(self:GetPos(),r))do
local d=DamageInfo()d:SetDamage((r-(e:GetPos():Distance(self:GetPos()))/r)*m)d:SetDamageType(DMG_BLAST)d:SetInflictor(self.Owner)d:SetAttacker(self.Owner)e:TakeDamageInfo(d)end
end
function ENT:Eff()if !IsValid(self.Owner)then return end
	local explo = ents.Create("env_explosion")
		explo:SetOwner(self.Owner)
		explo:SetPos(self.Entity:GetPos())
		explo:SetKeyValue("iMagnitude", "0")
		explo:SetKeyValue("spawnflags", "369")
		explo:Spawn()
		explo:Activate()
		explo:Fire("Explode", "", 0)
	local explo2 = ents.Create("env_physexplosion")
		explo2:SetOwner(self.Owner)
		explo2:SetPos(self.Entity:GetPos())
		explo2:SetKeyValue("magnitude", "100")
		explo2:SetKeyValue("radius", "240")
		explo2:SetKeyValue("spawnflags", "3")
		explo2:Spawn()
		explo2:Activate()
		explo2:Fire("Explode", "", 0)
end
end
