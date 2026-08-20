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
	local ent = ents.Create( "obj_308_d3" )
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
	self.Timert2=CurTime()
	self.tim=CurTime()
	self.Phase=0
	self.Angg=0
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
	self.PosZ=self.EPos.z-600
	local e=ents.Create("prop_physics")
	e:SetModel("models/props_phx/construct/plastic/plastic_panel8x8.mdl")e:SetMaterial("models/debug/debugwhite")
	e:SetPos(self.EPos-Vector(0,0,500))
	e:Spawn()
	e:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(e)
	local e=ents.Create("prop_physics")
	e:SetModel("models/props_phx/construct/plastic/plastic_panel8x8.mdl")e:SetMaterial("models/rendertarget")
	e:SetPos(self.EPos-Vector(0,0,499))
	e:SetModelScale(.9)
	e:Spawn()
	e:GetPhysicsObject():EnableMotion(false)
	e:SetSolid(SOLID_NONE)
	self:DeleteOnRemove(e)
	self:SetPos(self:GetPos()+Vector(0,0,self.R-450))
	Muss330(p,"undertale/theme/sans_theme.mp3")
self.Spir=ents.Create("obj_308_sprite")
self.Spir:SetPos(self.EPos-Vector(400,400,499))
self.Spir:Spawn()
self.Spir:SetSprite("undertale/spr_sans1.png")
self.Spir:SetScale(110)
self:DeleteOnRemove(self.Spir)
self.Skyy=ents.Create("edit_sky")
self.Skyy:SetNoDraw(true)
self.Skyy:SetPos(self:GetPos() + self:GetUp()*-10000)
self.Skyy:Spawn()
self.Skyy:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
self.Skyy:SetTopColor(Vector(0,0,0))
self.Skyy:SetBottomColor(Vector(0,0,0))
self.Skyy:SetDuskColor(Vector(.1,.1,.1))
self.Skyy:SetDuskIntensity(.01)
self.Skyy:SetDrawStars(true)
self.Skyy:SetStarScale(.9)
self.Skyy:SetStarFade(3.9)
self.Skyy:SetSunColor(Vector(0,0,0))
self.Skyy:SetSunSize(1)
self:DeleteOnRemove(self.Skyy)

self.Fogg=ents.Create("edit_fog")
self.Fogg:SetNoDraw(true)
self.Fogg:SetPos(self:GetPos() + self:GetUp()*-10000)
self.Fogg:Spawn()
self.Fogg:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
self.Fogg:SetFogStart(1)
self.Fogg:SetFogEnd(999)
self.Fogg:SetFogColor(Vector(0,0,0))
self.Fogg:SetDensity(1)
self:DeleteOnRemove(self.Fogg)
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
local f=math.Rand(.6,.7)-self.Phase/10
self.Skyy:SetBottomColor(Vector(f,f,f))
self.Fogg:SetFogColor(Vector(f,f,f))
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
p:PrintMessage(4,GAME308_LAN1["gta"].." III "..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])
end
self.MathR=math.random(13)
else
for _,p in pairs(player.GetAll())do
p:PrintMessage(4,GAME308_LAN1["rt"]..ti..GAME308_LAN1["rs"]..self.Math)
end
if self.Phase==4 and self.tim<CurTime()+32 then
self.Angg=self.Angg+7+12*(1-(self.tim-CurTime())/32)
end
if self.Timert<=CurTime()then
if self.Phase<4 then
self.Timert=CurTime()+2-self.Phase/2
local w
for i=1,math.Clamp(self.Phase-1,1,2)do
local e=ents.Create("obj_308ut_gb")w=math.random(-360,360)
--e:SetPos(self.EPos-Vector(math.random(-625,625),math.Rand(-225,225),600))
e:SetAngles(Angle(0,w,0))--0,w,0   HEHEE
e:SetPos(self.EPos-Vector(0,0,455-math.random(20))-e:GetForward()*300)
e:SetOwner(self)
e.Dmg=3
e:Spawn()
e:SetModelScale(0)
e:SetModelScale(1.1,.3)
e:EmitSound("undertale/gaster_blaster/gaster_blaster_start.mp3",511)
self:DeleteOnRemove(e)
end
else
local e=ents.Create("obj_308ut_gb")
e:SetAngles(Angle(0,self.Angg,0))
e:SetPos(self.EPos-Vector(0,0,455-math.random(20))-e:GetForward()*380)
e:SetOwner(self)
e.Dmg=3
e:Spawn()
e:SetModelScale(0)
e:SetModelScale(1.5,.2)
e:EmitSound("undertale/gaster_blaster/gaster_blaster_start.mp3",511)
self:DeleteOnRemove(e)
end
end
if self.Timert2<=CurTime()and self.Phase>1 then
self.Timert2=CurTime()+6-self.Phase
_308PlaySoundAll("undertale/st.wav",p)
_308FadeAll(nil,.05,.25)
Muss330V(.01)
timer.Simple(.3,function()if IsValid(self)then Muss330V(1)_308PlaySoundAll("undertale/st.wav",p)end end)
end
for _,p in pairs(player.GetAll())do
if p:GetPos().z<self.PosZ and p:Alive()then
p:TakeDamage(499,self)
if p:Alive()then p:Kill()end
p.NextSpawnTime=CurTime()+1550
p:Spectate(6)
p:SpectateEntity(self)
end
end
end
if self.Timer<=CurTime()then
self.Phase=self.Phase+1
self.Skyy:SetDuskIntensity(self.Phase/50)
if IsValid(self.Spir)then
self.Spir:SetSprite("undertale/spr_sans"..self.Phase..".png")end
if self.Phase<2 then
for _,p in pairs(player.GetAll())do
p:Spawn()
p:StripWeapons()
p:SetPos(self:GetPos()+Vector(0,0,20))
if game.SinglePlayer()then p:Give("weapon_308_worndagger")p:SetNWInt("Lvl",19)end
p:SetMaxHealth(460)
p:SetHealth(460)
p:SetArmor(0)
p:SetRunSpeed(250)
p:SetWalkSpeed(250)
p:SetJumpPower(1)
p:EmitSound("3088083421/ut/enemy.wav",511)
p:SetMaterial("")
end
SF308T=1
self.Timert=CurTime()+1
self.Timer=CurTime()+35
elseif self.Phase<4 then
self.Timer=CurTime()+30
elseif self.Phase<5 then
self.Timer=CurTime()+35
self.tim=CurTime()+35
self.Timert=CurTime()+3
local w=ents.Create("obj_308_effect")
w:SetPos(self.EPos-Vector(0,0,455)-w:GetForward()*380)w:Spawn()w:SetScale(200)w:SetSprite("undertale/warnarea.png")w:SetColor(Color(255,128,0))
SafeRemoveEntityDelayed(w,5)
_308SetPlayerHPAll(5)
for _,p in pairs(ents.FindByClass("obj_308ut_gb"))do p:Remove()end
else
SafeRemoveEntity(self)
end
end
end

end
