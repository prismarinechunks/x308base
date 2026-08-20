if !CanGame308()then return end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
GAME308=0
JM308=0
JM308T=0
JM308M=1

if !game.SinglePlayer()then
function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) or ply.Shield then return end
	local SpawnPos = tr.HitPos + tr.HitNormal
	local ent = ents.Create( "obj_308_grjm" )
	ent:SetPos(SpawnPos)
	ent:Spawn()
end
end
if SERVER then
function ENT:Initialize()
if GAME308>0 then self.Dont=1 self:Remove()return end
self.Name=" "
self.Math=0
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
	self:SetNoDraw(true)
	self.Timer=CurTime()+10
	self.Phase=0
self.EndM=0
hook.Add("PlayerDisconnected","JM3081",function(p)if p.IsJM30A then self.Math=self.Math-1 end end)
end

hook.Add("PlayerSpawn","JM3082",function(ply)
if JM308T>0 then ply:Kill()ply.NextSpawnTime=CurTime()+180 end
end)
function ENT:OnRemove()
if self.Dont then return end
JM308T=0
hook.Remove("JM3081")
for _,p in pairs(player.GetAll())do
if self.Math>1 then
p:ChatPrint(GAME308_LAN1["End1"])
if p:Alive()then p:Kill()end
end
p:EmitSound("3088083421/mg/end.wav")
p.IsJM30=false
p.NextSpawnTime=CurTime()
if self.EndM>29 then
if p:Alive()then self.Name=p:Nick()end
p:ChatPrint(GAME308_LAN1["r"]..self.Name)
end
end
GAME308=0
JM308=0
end
function ENT:Think()
GAME308=1
JM308=1
for _,p in pairs(player.GetAll())do
if IsValid(p)then
if !p.IsJM30 then
p.IsJM30=1
p.IsJM30A=1
self.Math=self.Math+1
else
if !p:Alive()and p.IsJM30A and self.Phase>0 then
p.IsJM30A=nil
self.Math=self.Math-1
end
if self.Math<2 and !game.SinglePlayer()then
self.EndM=self.EndM+1
if self.EndM>35 then
SafeRemoveEntity(self)
end
end
end
end
end
local ti=math.floor(self.Timer-CurTime())
for _,p in pairs(player.GetAll())do
if self.Phase<1 then
p:PrintMessage(4,GAME308_LAN1["gt9"]..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])
self.MathR=math.random(13)
elseif self.Phase<2 then
p:PrintMessage(4,GAME308_LAN1["rt"]..ti..GAME308_LAN1["rs"]..self.Math)
end end
if self.Timer<=CurTime() then
self.Phase=self.Phase+1
if self.Phase<2 then
for _,p in pairs(player.GetAll())do
p:Spawn()
p:StripWeapons()
p:SetMaxHealth(200)
p:SetHealth(200)
p:SetJumpPower(200)
p:SetArmor(100)
p:SetMaterial("")
p:ChatPrint(GAME308_LAN1["t1"])
p:RemoveAllAmmo()
p:GiveAmmo(24,"Pistol",true)
p:GiveAmmo(60,"SMG1",true)
p:GiveAmmo(6,"SMG1_Grenade",true)
p:GiveAmmo(12,"RPG_Round",true)
p:GiveAmmo(8,"Buckshot",true)
p:GiveAmmo(12,"357",true)
p:GiveAmmo(250,"XBowBolt",true)
p:GiveAmmo(10,"SniperPenetratedRound",true)
p:GiveAmmo(60,"AR2",true)
local a="m4a1"
local b="g3sg1"
if self.MathR<2 then
a="ak47" b="sg550"
elseif self.MathR<3 then
a="sg552" b="deagle"
elseif self.MathR<4 then
a="galil" b="famas"
elseif self.MathR<5 then
a="famasa" b="famasa"
elseif self.MathR<6 then
a="mac10" b="mp5"
elseif self.MathR<7 then
a="p90" b="ump45"
elseif self.MathR<8 then
a="m3" b="xm1014"
elseif self.MathR<9 then
a="m134" b="mac10s"
elseif self.MathR<10 then
a="m3_s" b="poker"
elseif self.MathR<11 then
a="plasma" b="xl8"
Muss330(p,"music/hl1_song3.mp3")
p:ChatPrint("Special Round")
elseif self.MathR<12 then
a="gl" b="rpg"
Muss330(p,"music/hl2_song20_submix0.mp3")
p:ChatPrint("Special Round")
elseif self.MathR<13 then
a="sheriff" b="sheriff"
p:ChatPrint("Special Round")
self.OneWep=1
elseif self.MathR<14 then
a="mknife" b="mknife"
p:ChatPrint("Special Round")
self.OneWep=1
end
timer.Simple(10,function()if IsValid(self)and IsValid(p)then
JM308T=1
p:SetRunSpeed(300)
p:SetWalkSpeed(150)
p:SetJumpPower(200)
p:ChatPrint(GAME308_LAN1["r1"]..JM308M..GAME308_LAN1["r2"])
JM308M=JM308M+1
p:EmitSound("3088083421/mg/start"..math.random(3)..".wav")
p:Give("weapon_308_"..a)
p:Give("weapon_308_"..b)
p:Give("weapon_308_knife")
if !self.OneWep then
p:Give("weapon_308_p228")
p:Give("weapon_308_usp")
p:Give("weapon_ar2")
end
end end)
end
self.Timer=CurTime()+190
elseif self.Phase>1 then
SafeRemoveEntity(self)
end
end
end

end
