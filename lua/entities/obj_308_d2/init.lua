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
	local ent = ents.Create( "obj_308_d2" )
	ent:SetPos(SpawnPos)
	ent:Spawn()
end
end
if SERVER then
function ENT:Initialize()
if GAME308>0 then self.Dont=1 self:Remove()return end
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
	function Spawn(x,y)
	local e=ents.Create("prop_physics")
	e:SetModel("models/hunter/tubes/circle4x4.mdl")
	e:SetPos(self.EPos-Vector(x,y,500))
	e:SetMaterial("models/spawn_effect2")
	e:Spawn()
	e:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(e)
	end
	Spawn(150,150)
	Spawn(-150,150)
	Spawn(150,-150)
	Spawn(-150,-150)
	self:SetPos(self:GetPos()+Vector(0,0,self.R-450))local s=ents.Create("edit_sky")
self.Effect=ents.Create("edit_sky")
self.Effect:SetNoDraw(true)
self.Effect:SetPos(self:GetPos() + self:GetUp()*-10000)
self.Effect:Spawn()
self.Effect:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
self.Effect:SetTopColor(Vector(0,0,0))
self.Effect:SetBottomColor(Vector(0,0,0))
self.Effect:SetDuskColor(Vector(.5,.1,.5))
self.Effect:SetDuskIntensity(.1)
self.Effect:SetDrawStars(true)
self.Effect:SetStarLayers(3)
self.Effect:SetStarScale(.9)
self.Effect:SetStarFade(3.9)
self.Effect:SetStarSpeed(.1)
self.Effect:SetSunColor(Vector(0,0,0))
self.Effect:SetSunSize(1)
self:DeleteOnRemove(self.Effect)

local f=ents.Create("edit_fog")
f:SetNoDraw(true)
f:SetPos(self:GetPos() + self:GetUp()*-10000)
f:Spawn()
f:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
f:SetFogStart(1)
f:SetFogEnd(3000)
f:SetFogColor(Vector(0,0,0))
f:SetDensity(1)
self:DeleteOnRemove(f)
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
if self.Math>1 and self.Phase>0 then
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
p:PrintMessage(4,GAME308_LAN1["gta"].." II "..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])
self.MathR=math.random(13)
else
if p:GetPos().z<self.PosZ and p:Alive()then
p:Kill()_308PlaySoundAll("3088083421/ut/heart.wav")
p.NextSpawnTime=CurTime()+170
end
if self.Timer>CurTime()+135.4 then
self.PPhase=1
elseif self.Timer>CurTime()+109 then
self.PPhase=2
self.Effect:SetStarSpeed(1)
self.Effect:SetDuskIntensity(.3)
self.Timert2=CurTime()+.2
elseif self.Timer>CurTime()+83.2 then
self.Effect:SetDuskIntensity(.5)
self.Effect:SetStarSpeed(.5)
self.PPhase=3
elseif self.Timer>CurTime()+60.7 then
self.Effect:SetDuskIntensity(.7)
self.Effect:SetStarSpeed(.6)
self.PPhase=4
elseif self.Timer>CurTime()+41.4 then
self.Effect:SetDuskIntensity(0)
self.Effect:SetStarSpeed(.1)
self.Timert2=CurTime()+.2
self.Timert=CurTime()+.2
self.PPhase=5
else
self.Effect:SetDuskIntensity(.8)
self.Effect:SetStarSpeed(2)
self.PPhase=6
end
if self.Timert<CurTime()then
if self.PPhase==2 then
self.Timert=CurTime()+.1
elseif self.PPhase==3 then
self.Timert=CurTime()+.5
elseif self.PPhase==4 then
self.Timert=CurTime()+.4
elseif self.PPhase==6 then
self.Timert=CurTime()+.3
end
local p3=ents.Create("prop_physics")
p3:SetModel("models/props_junk/harpoon002a.mdl")
p3:SetSpawnEffect(true)
local w=math.random(-360,360)
p3:SetAngles(Angle(0,w,0))
p3:SetPos(self.EPos-Vector(0,0,500)-p3:GetForward()*1500)
p3:Spawn()
p3:EmitSound("undertale/toss.wav",511)
p3:SetMaterial("models/shiny")
p3:SetColor(Color(0,255,255))
p3:GetPhysicsObject():SetVelocity((p3:GetPos()-self:GetPos())*-1.1+Vector(0,0,260))
self:DeleteOnRemove(p3)
SafeRemoveEntityDelayed(p3,5)
end
if self.Timert2<CurTime()then
if self.PPhase==3 then
self.Timert2=CurTime()+3
elseif self.PPhase==4 then
self.Timert2=CurTime()+2.5
elseif self.PPhase==6 then
self.Timert2=CurTime()+1.9
end
local ww=math.random(4)
local x=150
local y=150
if ww<2 then x=-150 elseif ww<3 then y=-150 elseif ww<4 then x=-150 y=-150 end
local p2=ents.Create("prop_physics")
p2:SetModel("models/hunter/tubes/circle4x4.mdl")
p2:SetSpawnEffect(true)
p2:SetPos(self.EPos-Vector(y,x,100))
p2:SetMaterial("models/shiny")
p2:SetColor(Color(0,255,255))
p2:Spawn()
_308PlaySoundAll("undertale/spawn.wav")
p2:GetPhysicsObject():EnableMotion(false)
self:DeleteOnRemove(p2)
SafeRemoveEntityDelayed(p2,3)
timer.Simple(1.5,function()if IsValid(p2)then
p2:GetPhysicsObject():EnableMotion(true)
p2:GetPhysicsObject():Wake()
end end)
end
p:PrintMessage(4,GAME308_LAN1["rt"]..ti..GAME308_LAN1["rs"]..self.Math.."\n"..GAME308_LAN1["P"]..self.PPhase)
end
end
if self.Timer<CurTime()then
self.Phase=self.Phase+1
_308PlaySoundAll("undertale/spawn.wav")
if self.Phase<2 then
for _,p in pairs(player.GetAll())do
Muss330(p,"3088083421/mg/mus_x_undyne.ogg")
p:Spawn()
p:SetPos(self:GetPos()+Vector(150,150,50))
p:StripWeapons()
p:SetMaxHealth(1)
p:SetHealth(1)
p:SetArmor(0)
p:SetRunSpeed(250)
p:SetWalkSpeed(250)
p:SetJumpPower(200)
end
SF308T=1
self.Timert=CurTime()+18
self.Timert2=CurTime()+40
self.Timer=CurTime()+154
elseif self.Phase>1 then
SafeRemoveEntity(self)
end
end
end

end
