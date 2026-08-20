AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
function ENT:Initialize()
self.__MustRemove=1
	self:SetMoveType(0)
	self:SetSolid(0)
	self:SetNoDraw(true)
	self:EmitSound("hl1/ambience/alien_minddrill.wav",511)
SafeRemoveEntityDelayed(self,4.8)
end
function ENT:OnRemove()
self:StopSound("hl1/ambience/alien_minddrill.wav")
self:EmitSound("hl1/ambience/port_suckin1.wav",511)
for k,w in pairs(ents.FindInSphere(self:GetPos(),1500))do
local ang=self:GetPos()-w:EyePos()
if IsValid(w:GetPhysicsObject())then w:GetPhysicsObject():SetVelocity(ang*(1500-self:GetPos():Distance(w:GetPos())))
elseif w:IsNPC()||IsNextBot3(w)||w:IsPlayer()then w:SetVelocity(ang*-(1500-self:GetPos():Distance(w:EyePos()))/150)
end
w:TakeDamage((1500-self:GetPos():Distance(w:EyePos()))/10,self.Owner,self.Owner)
end
end
obj_308_bhm=0
function ENT:Think()
if !self:IsInWorld()then
SafeRemoveEntity(self)
end
	if SERVER then
	for i=1,12 do
	obj_308_bhm=obj_308_bhm+1
	local entItem = ents.Create ("info_target")
	local realName = "entItem"..tostring(self.Owner:GetName())..obj_308_bhm
	entItem:SetKeyValue("targetname", realName)
	entItem:Spawn()
	local beam=ents.Create("env_laser")
	beam:SetKeyValue("renderamt","255")
	beam:SetKeyValue("rendercolor","255 0 255")
	beam:SetKeyValue("texture","sprites/laserbeam.spr")
	beam:SetKeyValue("TextureScroll","14")
	beam:SetKeyValue("targetname","beam" )
	beam:SetKeyValue("renderfx","2")
	beam:SetKeyValue("width",".9")
	beam:SetKeyValue("dissolvetype","0")
	beam:SetKeyValue("damage","0")
	beam:SetKeyValue("EndSprite","")
	beam:SetKeyValue("LaserTarget",realName)
	beam:SetKeyValue("TouchType","2")
	beam:SetKeyValue("NoiseAmplitude",1)
	beam:SetKeyValue("spawnflags","32")
	beam:Spawn()
	beam:Fire("TurnOn", "", 0.01)
	beam:Fire("kill", "",.2)
	self:DeleteOnRemove(beam)
	entItem:SetPos(self:GetPos()+VectorRand()*9999)
	entItem:Fire("kill", "",.21)
	beam:SetPos(self:GetPos())end
	end
for k,w in pairs(ents.FindInSphere(self:GetPos(),1500))do
local ang=self:GetPos()-w:EyePos()
if w:IsNPC()||IsNextBot3(w)then
w:SetGroundEntity(NULL)
w:SetVelocity(ang*(1500-self:GetPos():Distance(w:EyePos()))/200)
elseif w:IsPlayer()then
w:ScreenFade(SCREENFADE.IN,Color(255,0,255,(1500-self:GetPos():Distance(w:EyePos()))/10),.1,.2)
w:SetVelocity(ang*(1500-self:GetPos():Distance(w:EyePos()))/200)
elseif IsValid(w:GetPhysicsObject())then
ang=w:GetPos()-self:GetPos()
w:GetPhysicsObject():EnableMotion(true)
w:SetPhysicsAttacker(self.Owner or self)
w:GetPhysicsObject():SetVelocity(ang*-(1500-self:GetPos():Distance(w:GetPos()))/400)
end
end
end
