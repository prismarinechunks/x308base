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
	local ent = ents.Create( "obj_308_sf" )
	ent:SetPos(SpawnPos)
	ent:Spawn()
end
end
if SERVER then
hook.Add("PlayerSpawn","SF3082",function(ply)
if SF308T>0 then ply:Kill()ply.NextSpawnTime=CurTime()+999 ply:Spectate(6)end
end)
hook.Add("PlayerDeath","SF3084",function(p)
if SF308>0 then p:Spectate(6)p.NextSpawnTime=9999 end
end)
function ENT:Initialize()
if GAME308>0 then self.Dont=1 self:Remove() return end
self.Name=""
self.Math=0
self.EndM=0
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
	self:SetNoDraw(true)
	self.Timer=CurTime()+10
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
	e:SetModel("models/effects/portalrift.mdl")
	e:SetAngles(Angle(180,0,0))
	e:SetPos(self.EPos-Vector(0,0,1350))
	e:Spawn()
	e:SetModelScale(15)
	local w=ents.Create("prop_physics")
	w:SetModel("models/props_phx/huge/road_long.mdl")
	w:SetPos(self.EPos-Vector(0,0,800))
	w:Spawn()
	w:GetPhysicsObject():EnableMotion(false)
	local w2=ents.Create("prop_physics")
	w2:SetModel("models/props_phx/huge/road_long.mdl")
	w2:SetPos(self.EPos-Vector(450,0,800))
	w2:Spawn()
	w2:GetPhysicsObject():EnableMotion(false)
	w2:SetColor(Color(255,0,0))
	local w3=ents.Create("prop_physics")
	w3:SetModel("models/props_phx/huge/road_long.mdl")
	w3:SetPos(self.EPos-Vector(-450,0,800))
	w3:Spawn()
	w3:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(w)
	self:DeleteOnRemove(w2)
	self:DeleteOnRemove(w3)
	self:DeleteOnRemove(e)
	timer.Simple(32,function()if IsValid(self)and IsValid(w2)and IsValid(w3)then
	w2:GetPhysicsObject():EnableMotion(true)
	w2:GetPhysicsObject():Wake()
	w3:SetColor(Color(255,0,0))
	end end)
	timer.Simple(52,function()if IsValid(self)and IsValid(w3)and IsValid(w)then
	w3:GetPhysicsObject():EnableMotion(true)
	w3:GetPhysicsObject():Wake()
	w:SetColor(Color(255,0,0))
	end end)
	timer.Simple(57,function()if IsValid(self)and IsValid(w)then
	w:SetModel("models/props_phx/huge/road_medium.mdl")
	end end)
	timer.Simple(63,function()if IsValid(self)and IsValid(w)then
	w:SetModel("models/props_phx/huge/road_short.mdl")
	end end)
hook.Add("PlayerDisconnected","SF3081",function(p)if p.IsSF30A then self.Math=self.Math-1 end end)
end

function ENT:OnRemove()
if self.Dont then return end
SF308T=0
hook.Remove("SF3081")
for _,p in pairs(player.GetAll())do
Muss330(p)
if self.Math>1 then
p:ChatPrint(GAME308_LAN1["End1"])
if p:Alive()then p:Kill()end
end
p:EmitSound("3088083421/mg/end.wav")
p.IsSF30=false
p.NextSpawnTime=CurTime()
if self.EndM>9 then
if p:Alive()then self.Name=p:Nick()end
p:ChatPrint(GAME308_LAN1["r"]..self.Name)
end
end
GAME308=0
SF308=0
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
if !p:Alive()and p.IsSF30A then
p.IsSF30A=nil
self.Math=self.Math-1
end
if self.Math<2 and self.Phase>0 and !game.SinglePlayer()||self.Math<1 then
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
p:PrintMessage(4,GAME308_LAN1["gt1"]..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])
self.MathR=math.random(13)
p.SF308B=nil
elseif self.Phase<2 then
p:PrintMessage(4,GAME308_LAN1["rt"]..ti..GAME308_LAN1["rs"]..self.Math)
if p:GetPos().z<self.PosZ and p:Alive()then
if p.SF308B and IsValid(p.SF308B)then
p:SetArmor(0)
p:TakeDamage(89888,p.SF308B)
MsgAll(p:Nick().." was hit from the sky by "..p.SF308B:Nick())
p:Spectate(6)
else
p:Spectate(6)
p:Kill()
end
p.NextSpawnTime=CurTime()+110
end
end
end
if self.Timer<=CurTime() then
self.Phase=self.Phase+1
if self.Phase<2 then
for _,p in pairs(player.GetAll())do
p:Spawn()
p:StripWeapons()
Muss330(p,"music/hl1_song17.mp3")
p:SetMaxHealth(88888)
p:SetHealth(88888)
p:SetArmor(88888)
p:SetJumpPower(200)
p:SetMaterial("")
p:SetPos(self:GetPos()+Vector(0,0,self.R-780))
timer.Simple(2,function()if IsValid(self)and IsValid(p)then
p:SetRunSpeed(250)
p:SetWalkSpeed(250)
p:EmitSound("3088083421/mg/start"..math.random(3)..".wav")
p:Give("weapon_308_kbhammer")
end end)
end
SF308T=1
self.Timer=CurTime()+62
elseif self.Phase>1 then
SafeRemoveEntity(self)
end
end
end

end
