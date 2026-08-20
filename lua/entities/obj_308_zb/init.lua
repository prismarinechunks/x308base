if !CanGame308()then return end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
GAME308=0
ZB308=0
ZB308T=0
if !game.SinglePlayer()then
function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) or ply.Shield then return end
	local SpawnPos = tr.HitPos + tr.HitNormal
	local ent = ents.Create( "obj_308_zb" )
	ent:SetPos(SpawnPos)
	ent:Spawn()
end
end
if SERVER then

hook.Add("PlayerSpawn","ZB30891",function(ply)
if ZB308T>0 then
ply:Give("weapon_308_zombi")
end
end)

function ENT:OnRemove()
if self.Dont then return end
ZB308T=0
GAME308=0
ZB308=0
for _,p in pairs(player.GetAll())do
Muss330(p)
p.IsZB308=false
if p.ZB308S then
p.ZB308S:Stop()
p.ZB308S=nil
end
if p.Muss3308 then
p.Muss3308:Stop()
p.Muss3308=nil
end
if p:Alive()and p.ZB3088 then p:Kill()end
p.NextSpawnTime=CurTime()
if self.Math>0 then
p:ChatPrint("Human Win")
p:EmitSound("3088083421/mg/winh.wav")
p:Give("weapon_308_r")
else
p:ChatPrint("Zombie Win")
p:EmitSound("3088083421/mg/winz.wav")
end
end
hook.Remove("ZB3081")
end

function ENT:Initialize()
if GAME308>0 then self.Dont=1 self:Remove()return end
self.Math=0
self.Timer2=CurTime()+60

local s=ents.Create("edit_sky")
s:SetNoDraw(true)
s:SetPos(self:GetPos() + self:GetUp()*-10000)
s:Spawn()
s:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
s:SetTopColor(Vector(0,0,0))
s:SetBottomColor(Vector(0,0,0))
s:SetDuskColor(Vector(.1,.1,.2))
s:SetDuskIntensity(.3)
s:SetDrawStars(true)
s:SetSunColor(Vector(0,0,0))
self:DeleteOnRemove(s)
self.Skyy=s

local f=ents.Create("edit_fog")
f:SetNoDraw(true)
f:SetPos(self:GetPos() + self:GetUp()*-10000)
f:Spawn()
f:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
f:SetFogStart(1)
f:SetFogEnd(150)
f:SetFogColor(Vector(0,0,0))
f:SetDensity(1)
self:DeleteOnRemove(f)
self.Fogg=f
self.AmbT1=CurTime()+math.Rand(38,40)
self.AmbT2=CurTime()+math.Rand(38,40)
self.AmbT3=CurTime()+math.Rand(38,42)
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
	self.Timer=CurTime()+10
	self.Phase=-1
	self:SetNoDraw(true)
	self:EmitSound("3088083421/tutor_msg.wav",511)
	self.End=0
hook.Add("PlayerDisconnected","ZB3081",function(p)if p.IsZB308Z then self.Math=self.Math-1 end end)
end
function ENT:Think()
GAME308=1
ZB308=1
if !game.SinglePlayer()and #player.GetAll()>2 then
if self.AmbT1<CurTime()then
self.AmbT1=CurTime()+math.Rand(9,18)
self:EmitSound("ambient/levels/prison/inside_battle_zombie"..math.random(2,3)..".wav",0)
end
if self.AmbT2<CurTime()then
self.AmbT2=CurTime()+math.Rand(1.5,3)
self:EmitSound("ambient/levels/prison/inside_battle"..math.random(9)..".wav",0)
end
if self.AmbT3<CurTime()then
self.AmbT3=CurTime()+math.Rand(4,9)
self:EmitSound("ambient/levels/prison/inside_battle_soldier"..math.random(3)..".wav",0)
end
end
if IsValid(self.Fogg)and IsValid(self.Skyy)and ZB308T>0 then
self.Fogg:SetFogEnd(self.Fogg:GetFogEnd()+5)
if self.Timer-CurTime()<30 then
self.Skyy:SetDuskIntensity(0)
self.Skyy:SetDrawStars(false)
local v=self.Skyy:GetBottomColor()
self.Skyy:SetBottomColor(Vector(v.x+.0015,v.y+.002,v.z+.0024))
v=self.Skyy:GetTopColor()
self.Skyy:SetTopColor(Vector(v.x+.0015,v.y+.002,v.z+.0024))
self.Fogg:SetFogEnd(self.Fogg:GetFogEnd()+10)self.Fogg:SetDensity(math.Clamp(self.Fogg:GetDensity()-.004,0,1))elseif self.Timer-CurTime()<60 then
if !self.Muss3 and math.random(2)>1 then Muss330(p,_308Table({"music/hl2_song20_submix4.mp3","music/hl1_song17.mp3"}),190)self.Muss3=1 elseif !self.Muss3 then Muss330(p,"3088083421/mg/fallbyrossbugden.ogg")self.Muss3=1 end
self.Fogg:SetFogEnd(self.Fogg:GetFogEnd()+5)elseif self.Timer-CurTime()<120 then
self.Fogg:SetFogEnd(self.Fogg:GetFogEnd()+2.5)end
end
for _,p in pairs(player.GetAll())do
if !p.IsZB308 then
p.IsZB308=1
p.IsZB308Z=1
p.IsZB308W=1
self.Math=self.Math+1
elseif p.ZB3088 and p.IsZB308Z then
p.IsZB308Z=nil
timer.Simple(.1,function()if IsValid(p)then if p:GetActiveWeapon():GetClass()!="weapon_308_zombi" then p:StripWeapons()p:Give("weapon_308_zombi")end--Prevent a bug
end end)
self.Math=self.Math-1
end

local ti=math.floor(self.Timer-CurTime())
if self.Phase<0 then
p:PrintMessage(4,GAME308_LAN1["gt3"]..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])
if p.ZB3088 then p:Kill()p.ZB3088=nil end
elseif self.Phase>10 then
p:PrintMessage(4,GAME308_LAN1["rt"]..ti..GAME308_LAN1["z4"]..self.Math)
if self.Math<1 then
self.End=self.End+1
if self.End>30 and !game.SinglePlayer()then
SafeRemoveEntity(self)end
elseif self.Math<2 then

if p:Alive()and p.IsZB308Z and p.IsZB308W then p.IsZB308W=nil
p:ChatPrint("LAST STANDING!")
p.ZB308S=CreateSound(p,"3088083421/mg/lastsoldier.wav")
p.ZB308S:SetSoundLevel(0)
p.ZB308S:Play()
end
end
end
if self.Timer2<CurTime()then
for _,p in pairs(player.GetAll())do
p:ChatPrint(GAME308_LAN1["airdrop"])end
self:EmitSound("3088083421/wep/zbox.wav",0)
local function G()
local w=ents.Create("obj_308_zbb")
local sp=ents.FindByClass("info_player_start")
local s=sp[math.random(#sp)]
w:SetPos(s:GetPos())
w:Spawn()
self:DeleteOnRemove(w)
_308PlaySoundAll("3088083421/wep/zbox.wav")
end
G()G()
self.Timer2=CurTime()+60
end
end
if self.Timer<CurTime()then
self.Phase=self.Phase+1
if IsValid(self.Fogg)and self.Phase<1 then
self.Fogg:SetFogEnd(self.Fogg:GetFogEnd()+450)
end
for _,p in pairs(player.GetAll())do
if self.Phase<1 then
if math.random(2)<2 then Muss330(p,"3088083421/mg/zamb.ogg")p:EmitSound("3088083421/mg/zstart.ogg",511)else
Muss330(p,"ambient/atmosphere/hole_amb3.wav")p:EmitSound("music/hl2_song25_teleporter.mp3",511,200)end
p:EmitSound("3088083421/tutor_msg.wav",511)
p:Spawn()
p:StripWeapons()
timer.Simple(2,function()if IsValid(p)then
p:StripWeapons()
p:SetWalkSpeed(250)
p:SetRunSpeed(250)
p:SetMaxHealth(100)
p:SetHealth(100)
p:SetArmor(20)
p:SetJumpPower(200)
p:SetMaterial("")
p:RemoveAllAmmo()
p:GiveAmmo(120,"Pistol",true)
p:GiveAmmo(180,"SMG1",true)
p:GiveAmmo(40,"Buckshot",true)
p:GiveAmmo(12,"357",true)
p:GiveAmmo(150,"XBowBolt",true)
p:GiveAmmo(20,"SniperPenetratedRound",true)
p:GiveAmmo(180,"AR2",true)
if math.random(2)<2 then
p:Give("weapon_308_m249")
p:Give("weapon_308_ak47")
p:Give("weapon_308_sg550")
else
p:Give("weapon_308_sg552")
p:Give("weapon_308_famas")
p:Give("weapon_308_m3")
end
p:Give("weapon_308_crowbar")
p:Give("weapon_308_deagle")
p:EmitSound("3088083421/mg/start"..math.random(3)..".wav",511)
end end)

self.Timer=CurTime()+10
self.Timer2=CurTime()+52
elseif self.Phase<11 then
p:PrintMessage(4,11-self.Phase)
p:EmitSound("3088083421/mg/"..(11-self.Phase)..".wav")
self.Timer=CurTime()+1
self.MathA=self.Math
self.MathR=1
if self.MathA>4 then self.MathR=#player.GetAll()/4 end
elseif self.Phase<12 then
p:EmitSound("3088083421/tutor_msg.wav",511)
ZB308T=1
self:Again()
self.Timer=CurTime()+182
else
SafeRemoveEntity(self)
end
end
end
end

function ENT:Again()
if self.MathR<1 then return end
local p=player.GetAll()[math.random(#player.GetAll())]
if !p:HasWeapon("weapon_308_zombi")then
p:Give("weapon_308_zombi")self.MathR=self.MathR-1
end
end

end
