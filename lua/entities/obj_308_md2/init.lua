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
	local ent = ents.Create( "obj_308_md2" )
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
	self.PosZ=self.EPos.z-2600
	local function G(m,x,y)
	local e=ents.Create("prop_physics")
	e:SetModel(m)
	e:SetPos(self.EPos-Vector(x,y,2500))
	e:Spawn()
	e:GetPhysicsObject():EnableMotion(false)
	e:SetMaterial("phoenix_storms/bluemetal")
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
hook.Add("PlayerDisconnected","SF3081",function(p)if p.IsSF30A then self.Math=self.Math-1 end end)
end

function ENT:OnRemove()
if self.Dont then return end
SF308T=0
hook.Remove("SF3081")
for _,p in pairs(player.GetAll())do
GAME308=0
SF308=0
p:EmitSound("3088083421/mg/end.wav")
p.IsSF30=false
p.NextSpawnTime=CurTime()
if self.Phase<1 then return end
if self.Math>1 then
p:ChatPrint(GAME308_LAN1["End2"])
p:SetMaxHealth(200)
p:SetHealth(200)
p:SetArmor(200)
p:SetRunSpeed(450)
p:SetWalkSpeed(250)
p:SetJumpPower(250)
p:Give("weapon_308_r")
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
end
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
local ti=math.floor(self.Timer-CurTime())
local function Kil(p)
if p:Alive()then
if p:Health()>3 then
p:Kill()p:Kill()p:Kill()
p:ChatPrint("=============\n   Time to DIE!\n=============")return end
p:TakeDamage(1)
p:EmitSound("3088083421/ut/hurtsound.wav")
if p:Health()<1 then
if self.Timer<CurTime()then p:ChatPrint(" What a pity! ")end
p:EmitSound("3088083421/ut/heart.wav")
p.NextSpawnTime=CurTime()+166
p:Spectate(6)end
end end
local function GG(m,m2,f)for _,p in pairs(player.GetAll())do
local t
timer.Simple(m*.5,function()if IsValid(self)and IsValid(p)then
if math.random(2)<2 then
t=1
p:ScreenFade(SCREENFADE.IN,Color(0,255,255,125),.5,0)
else
p:ScreenFade(SCREENFADE.IN,Color(255,128,0,125),.5,0)
end
if f then
p:EmitSound("3088083421/mg/eyeflash_final.wav",511)else
p:EmitSound("3088083421/mg/eyeflash.wav",511)end
end end)
timer.Simple(m2,function()if IsValid(self)and IsValid(p)then
if t then
p:ScreenFade(SCREENFADE.IN,Color(0,255,255,155),.3,0)else
p:ScreenFade(SCREENFADE.IN,Color(255,128,0,155),.3,0)
end
p:EmitSound("3088083421/mg/asgore_slash.wav",511)
if p:KeyDown(IN_FORWARD)||p:KeyDown(IN_BACK)||p:KeyDown(IN_MOVERIGHT)||p:KeyDown(IN_MOVELEFT)then
if t then
Kil(p)
end
elseif !t then
Kil(p)
end
end end)
end
end
for _,p in pairs(player.GetAll())do
if self.Phase<1 then
p:PrintMessage(4,ti)
elseif self.Phase<2 then
p:PrintMessage(4,GAME308_LAN1["rt"]..ti..GAME308_LAN1["rs"]..self.Math)
if self.Timer2<CurTime()then
if self.Timer>CurTime()+80 then
GG(0,1.5)
GG(1,2.2)
GG(2,2.9,1)
self.Timer2=CurTime()+3.4
elseif self.Timer>CurTime()+60 then
GG(0,2.2)
GG(1,2.8)
GG(2,3.4)
GG(3,4,1)
self.Timer2=CurTime()+4.6
elseif self.Timer>CurTime()+40 then
GG(0,2.5)
GG(1,3.1)
GG(2,3.7)
GG(3,4.4)
GG(4,5.1,1)
self.Timer2=CurTime()+5.6
elseif self.Timer>CurTime()+20 then
GG(0,3)
GG(1,3.6)
GG(2,4.2)
GG(3,4.8)
GG(4,5.4)
GG(5,6,1)
self.Timer2=CurTime()+6.5
else
GG(0,3.5)
GG(1,4)
GG(2,4.5)
GG(3,5)
GG(4,5.5)
GG(5,6)
GG(6,6.5,1)
self.Timer2=CurTime()+7.1
end
end
if p:GetPos().z<self.PosZ and p:Alive()then
Kil(p)
end
end
end
if self.Timer<=CurTime()then
self.Phase=self.Phase+1
self.Timert=CurTime()+4
if self.Phase<2 then
for _,p in pairs(player.GetAll())do
p:Spawn()
p:SetPos(self.EPos-Vector(200,200,2480))
p:StripWeapons()
p:SetMaxHealth(3)
p:SetHealth(3)
p:SetArmor(0)
p:SetRunSpeed(250)
p:SetWalkSpeed(250)
p:SetJumpPower(.1)
p:SetMaterial("")
timer.Simple(2,function()if IsValid(self)and IsValid(p)then
p:EmitSound("3088083421/mg/start"..math.random(3)..".wav")
end end)
end
SF308T=1
self.Timer=CurTime()+92
self.Timer2=CurTime()+2
elseif self.Phase>1 and self.Timer2<CurTime() then
SafeRemoveEntity(self)
end
end
end

end
