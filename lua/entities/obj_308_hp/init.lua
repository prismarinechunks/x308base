if !CanGame308()then return end
local a=1
if game.SinglePlayer()then a=0 end
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
	local ent = ents.Create( "obj_308_hp" )
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
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
	self:SetNoDraw(true)
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
	if self.R<500 then _308TextAll(GAME308_LAN["nosky1"],{y=.9,fin=.15,chan=1})self:Remove()return nil end end
	self.PosZ=self.EPos.z-2600
	local function G(m,x,y)
	local e=ents.Create("prop_physics")
	e:SetModel(m)
	e:SetPos(self.EPos-Vector(x,y,2500))
	e:Spawn()
	e:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(e)
	end
	G("models/hunter/plates/plate16x16.mdl",0,0)
	G("models/hunter/blocks/cube8x8x8.mdl",569,-190)
	G("models/hunter/blocks/cube8x8x8.mdl",-569,-190)
	G("models/hunter/blocks/cube8x8x8.mdl",-190,569)
	G("models/hunter/blocks/cube8x8x8.mdl",-190,-569)
	G("models/hunter/blocks/cube8x8x8.mdl",569,190)
	G("models/hunter/blocks/cube8x8x8.mdl",-569,190)
	G("models/hunter/blocks/cube8x8x8.mdl",190,569)
	G("models/hunter/blocks/cube8x8x8.mdl",190,-569)
_308TextAll(GAME308_LAN["hp"],{y=.2,fin=.05})
hook.Add("PlayerDisconnected","SF3081",function(p)if p.IsSF30A then self.Math=self.Math-1 end end)
end

function ENT:OnRemove()
if self.Dont then return end
SF308T=0
hook.Remove("SF3081")
for _,p in pairs(player.GetAll())do
GAME308=0
SF308=0
GAME308UNWEP=nil
Muss330(p)
p:EmitSound("3088083421/mg/end.wav")
p.IsSF30=false
p.NextSpawnTime=CurTime()
if self.Math>1 then
p:ChatPrint(GAME308_LAN1["End3"])
return end
if p:Alive()then self.Name=p:Nick()end
p:ChatPrint(GAME308_LAN1["r"]..self.Name)
end
end
function ENT:Think()
GAME308=1
SF308=1
GAME308UNWEP=1
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
if self.Phase<1 then
for _,p in pairs(player.GetAll())do
p:PrintMessage(4,GAME308_LAN1["gte"]..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])
end
else
if self.Math>a then
for _,p in pairs(player.GetAll())do
p:PrintMessage(4,GAME308_LAN1["hp"]..GAME308_LAN1["rs"]..self.Math)
if p:Alive()then
p:TakeDamage(math.random(2-a,2),self)
else
p.NextSpawnTime=CurTime()+9999
end
end
if self.Timer2<CurTime()then
self.PPhase=1
self.Timer2=CurTime()+1
for i=1,self.Math-a do
local w=ents.Create("item_healthvial")
w:SetPos(self.EPos-Vector(math.random(-350,350),math.random(-350,350),2000))
w:Spawn()
w:SetModel("models/props_junk/PopCan01a.mdl")
SafeRemoveEntityDelayed(w,8)
self:DeleteOnRemove(w)
end
end
else
SafeRemoveEntity(self)
end
for _,p in pairs(player.GetAll())do
if p:GetPos().z<self.PosZ and p:Alive()then
p:Kill()
p.NextSpawnTime=CurTime()+9999
p:Spectate(6)
end
end
end
if self.Timer<=CurTime()then
self.Phase=self.Phase+1
if self.Phase<2 then
self.Timer=CurTime()+math.huge
self.Timer2=CurTime()+5
self.PPhase=0
for _,p in pairs(player.GetAll())do
p:Spawn()
p:SetPos(self.EPos-Vector(200,200,2480))
p:StripWeapons()
p:SetMaxHealth(100)
p:SetHealth(100)
p:SetArmor(0)
p:SetRunSpeed(450)
p:SetWalkSpeed(450)
p:SetJumpPower(300)
if a==0 then p:ChatPrint((GAME308_LAN1["pi"]))end
timer.Simple(2,function()if IsValid(self)and IsValid(p)then
p:EmitSound("3088083421/mg/start"..math.random(3)..".wav")
end end)
end
SF308T=1
end
end
end

end
