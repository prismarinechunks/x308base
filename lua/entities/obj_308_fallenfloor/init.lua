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
	local ent = ents.Create( "obj_308_fallenfloor" )
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
	if self.R<1500 then _308TextAll(GAME308_LAN["nosky1"],{y=.9,fin=.15,chan=1})self:Remove()return nil end end
	self.PosZ=self.EPos.z-900
	self.PropX=-250
	self.PropY=-250
	local function Fall(w2)
	w2:SetMoveType(MOVETYPE_VPHYSICS)
	w2:GetPhysicsObject():EnableMotion(true)
	w2:GetPhysicsObject():Wake()
	SafeRemoveEntityDelayed(w2,1)
	end
	local L=math.random(81)
	for i=1,100 do
	self.PropY=self.PropY+50
	if i==10||i==20||i==30||i==40||i==50||i==60||i==70||i==80||i==90 then self.PropX=self.PropX+50 self.PropY=-250 end
	local e=ents.Create("prop_physics")
	e:SetModel("models/hunter/plates/plate1x1.mdl")
	e:SetMaterial("phoenix_storms/stripes")
	e:SetPos(self.EPos-Vector(self.PropX,self.PropY,500))
	e:Spawn()
	e:SetMoveType(0)
	e:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(e)
	if i==100 then e:SetPos(self.EPos-Vector(-250,-250,500))end
	if i!=L then
	timer.Simple(math.Rand(0,30)+12,function()if IsValid(e)then
	Fall(e)
	end end)
	end
	end
_308TextAll(GAME308_LAN["fall"],{y=.2,fin=.05})
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
p.SF308B=nil
self.Math=self.Math+1
else
if !p:Alive()and p.IsSF30A and self.Phase>0 then
p.IsSF30A=nil
self.Math=self.Math-1
end
if self.Math<1 then
self.EndM=self.EndM+1
if self.EndM>9 then
SafeRemoveEntity(self)
end
end
end
end
end
local ti=math.floor(self.Timer-CurTime())
for _,p in pairs(player.GetAll())do
if self.Phase<1 then
p:PrintMessage(4,GAME308_LAN1["gt6"]..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])
self.MathR=math.random(13)
p.SF308B=nil
elseif self.Phase<2 then
p:PrintMessage(4,GAME308_LAN1["rt"]..ti..GAME308_LAN1["rs"]..self.Math)
if p:GetPos().z<self.PosZ and p:Alive()then
p:Kill()
p.NextSpawnTime=CurTime()+38
p:Spectate(6)
end
end
end
if self.Timer<=CurTime()then
self.Phase=self.Phase+1
if self.Phase<2 then
for _,p in pairs(player.GetAll())do
p:Spawn()
p:SetAvoidPlayers(true)
p:SetPos(self:GetPos()+Vector(0,0,self.R-450))
p:StripWeapons()
p:SetMaxHealth(1)
p:SetHealth(1)
p:SetArmor(0)
p:SetJumpPower(.1)
p:SetMaterial("")
Muss330(p,"music/hl1_song21.mp3")
timer.Simple(2,function()if IsValid(self)and IsValid(p)then
p:SetRunSpeed(250)
p:SetWalkSpeed(250)
p:EmitSound("3088083421/mg/start"..math.random(3)..".wav")
end end)
end
SF308T=1
self.Timer=CurTime()+37
elseif self.Phase>1 then
SafeRemoveEntity(self)
end
end
end

end
