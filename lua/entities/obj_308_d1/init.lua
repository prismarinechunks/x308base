if !CanGame308()then return end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
GAME308=0
SF308=0
SF308T=0

if !game.SinglePlayer()then
function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) or ply.Shield then return end
	local SpawnPos = tr.HitPos + tr.HitNormal
	local ent = ents.Create( "obj_308_d1" )
	ent:SetPos(SpawnPos)
	ent:Spawn()
end
end
if SERVER then
function ENT:Initialize()
if GAME308>0 then self.Dont=1 self:Remove() return end
self.Name=""
self.Math=0
self.EndM=0
self:SetNoDraw(true)
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
	self.Timer=CurTime()+10
	self.Timert=CurTime()
	self.Phase=0
	local tr = util.TraceHull({
	start = self:GetPos(),
	endpos = self:GetPos() +Vector(0,0,99999999),
	filter = self,
	})
	if !(tr.Hit && tr.HitSky)then _308TextAll(GAME308_LAN["nosky"],{y=.9,fin=.15,chan=1})self:Remove()return nil
	else
	self.EPos=tr.HitPos
	self.R=self:GetPos():Distance(tr.HitPos)
	MsgAll("\ndistance:"..self.R)
	if self.R<1500 then _308TextAll(GAME308_LAN["nosky1"],{y=.9,fin=.15,chan=1})self:Remove()return nil end end
	self.PosZ=self.EPos.z-900
	local e=ents.Create("prop_physics")
	e:SetModel("models/hunter/tubes/circle4x4.mdl")
	e:SetPos(self.EPos-Vector(200,-200,500))
	e:Spawn()
	e:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(e)
	local e2=ents.Create("prop_physics")
	e2:SetModel("models/hunter/tubes/circle4x4.mdl")
	e2:SetPos(self.EPos-Vector(200,200,500))
	e2:Spawn()
	e2:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(e)
	local e3=ents.Create("prop_physics")
	e3:SetModel("models/hunter/tubes/circle4x4.mdl")
	e3:SetPos(self.EPos-Vector(-200,200,500))
	e3:Spawn()
	e3:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(e)
	local e4=ents.Create("prop_physics")
	e4:SetModel("models/hunter/tubes/circle4x4.mdl")
	e4:SetPos(self.EPos-Vector(-200,-200,500))
	e4:Spawn()
	e4:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(e)
	self:DeleteOnRemove(e2)
	self:DeleteOnRemove(e3)
	self:DeleteOnRemove(e4)
	self:SetPos(self:GetPos()+Vector(0,0,self.R-450))
local r=_308Table({e,e2,e3,e4})
local r2=_308Table({e,e2,e3,e4})
local r3=_308Table({e,e2,e3,e4})
while r==r2 do--my first new creative XD
r2=_308Table({e,e2,e3,e4})end
while r==r3||r2==r3 do
r3=_308Table({e,e2,e3,e4})end
	timer.Simple(25,function()if IsValid(r)then r:SetColor(Color(255,0,0))end end)
	timer.Simple(30,function()if IsValid(r)then r:GetPhysicsObject():EnableMotion(true)end end)
	timer.Simple(40,function()if IsValid(r2)then r2:SetColor(Color(255,0,0))end end)
	timer.Simple(45,function()if IsValid(r2)then r2:GetPhysicsObject():EnableMotion(true)end end)
	timer.Simple(50,function()if IsValid(r3)then r3:SetColor(Color(255,0,0))end end)
	timer.Simple(55,function()if IsValid(r3)then r3:GetPhysicsObject():EnableMotion(true)end end)
hook.Add("PlayerDisconnected","SF3081",function(p)if p.IsSF30A then self.Math=self.Math-1 end end)
end

function ENT:OnRemove()
if self.Dont then return end
SF308T=0
hook.Remove("SF3081")
for _,p in pairs(player.GetAll())do
Muss330(p)
GAME308=0
SF308=0
p:EmitSound("3088083421/mg/end.wav")
p.IsSF30=false
p.NextSpawnTime=CurTime()
if self.Math>1 then
p:ChatPrint(GAME308_LAN1["End2"])
return end
if p:Alive()then self.Name=p:Nick()end
p:ChatPrint(GAME308_LAN1["r"]..self.Name)
end
end
function ENT:Think()
GAME308=1
SF308=1
for _,p in pairs(player.GetAll())do
if IsValid(p)then
if !p.IsSF30 then
p.IsSF30=1
p.IsSF30A=1
self.Math=self.Math+1
else
if !p:Alive()and p.IsSF30A and self.Phase>0 then
p.IsSF30A=nil
self.Math=self.Math-1
end
if self.Math<1 then
self.EndM=self.EndM+1
if self.EndM>7 then
SafeRemoveEntity(self)
end
end
end
end
end
local ti=math.floor(self.Timer-CurTime())
for _,p in pairs(player.GetAll())do
if self.Phase<1 then
p:PrintMessage(4,GAME308_LAN1["gta"]..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])
self.MathR=math.random(13)
elseif self.Phase<2 then
p:PrintMessage(4,GAME308_LAN1["rt"]..ti..GAME308_LAN1["rs"]..self.Math)
if self.Timert<=CurTime()then
self.Timert=CurTime()+.2*((self.Timert-CurTime())/60)
local g=ents.Create("prop_physics")
g:SetModel("models/props_c17/canister_propane01a.mdl")
g:SetSpawnEffect(true)
if self.Timert<=CurTime()-30 then
g:SetMaterial("phoenix_storms/stripes")util.SpriteTrail(g,0,Color(255,255,0,255),true,200,252,1.5,10,"trails/smoke.vmt")end
local w=math.random(-360,360)
g:SetAngles(Angle(0,w,0))
g:SetPos(self.EPos-Vector(0,0,600)-g:GetForward()*1500)
g:Spawn()
g:GetPhysicsObject():SetVelocity((g:GetPos()-self:GetPos())*-.9+Vector(0,0,350))
self:DeleteOnRemove(g)
SafeRemoveEntityDelayed(g,2)
end
if p:GetPos().z<self.PosZ and p:Alive()then
p:Kill()
p.NextSpawnTime=CurTime()+70
p:Spectate(6)
p:SpectateEntity(self)
end
end
end
if self.Timer<=CurTime()then
self.Phase=self.Phase+1
self.Timert=CurTime()+4
if self.Phase<2 then
for _,p in pairs(player.GetAll())do
p:Spawn()
p:SetPos(self:GetPos()+Vector(-200,-200,40))
p:StripWeapons()
p:SetMaxHealth(1)
p:SetHealth(1)
p:SetArmor(0)
p:SetRunSpeed(250)
p:SetWalkSpeed(250)
p:SetJumpPower(200)
p:SetMaterial("")Muss330(p,"music/hl1_song19.mp3")
timer.Simple(2,function()if IsValid(self)and IsValid(p)then
p:EmitSound("3088083421/mg/start"..math.random(3)..".wav")
end end)
end
SF308T=1
self.Timer=CurTime()+66
elseif self.Phase>1 then
SafeRemoveEntity(self)
end
end
end

end
