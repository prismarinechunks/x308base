if !CanGame308()then return end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
GAME308=0
CS308=0
CS308T=0
CS308CT=0
CS308TE=0
CS308M=1
BOMBTIME3088=nil
if !game.SinglePlayer()then
function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) or ply.Shield then return end
	local SpawnPos = tr.HitPos + tr.HitNormal
	local ent = ents.Create( "obj_308_cs" )
	ent:SetPos(SpawnPos)
	ent:Spawn()
end
end
function ENT:Initialize()
if GAME308>0 then self.Dont=1 self:Remove()return end
self:SetMoveType(MOVETYPE_NONE)
self:SetSolid(SOLID_NONE)
self:SetNoDraw(true)
self.Timer=CurTime()+10
self.Timer2=CurTime()+25
self.Phase=0
self.EndM=0
CS308ENT=self
hook.Add("PlayerDisconnected","CS3081",function(p)if p.IsCS30A and CS308 then if p.IsCSCT then CS308CT=CS308CT-1 else CS308TE=CS308TE-1 end end end)
for _,p in pairs(player.GetAll())do
net.Start("CS308Menu")net.WriteEntity(self)net.Send(p)end
end
if SERVER then

hook.Add("PlayerDeath","CS3083",function(ent)
if CS308>0 then
if ent.IsCSTE then
Muss330Personal(ent,"3088083421/mg/t/deathcam.mp3")else
Muss330Personal(ent,"3088083421/mg/ct/deathcam.mp3")end
if ent:HasWeapon("weapon_308_c4")and CS308T>0 then
local e=ents.Create("weapon_308_c4")e:SetPos(ent:EyePos()+ent:GetForward()*30)e:Spawn()for _,pl in pairs(player.GetAll())do
if pl.IsCSTE then
pl:ChatPrint(ent:Nick().." Droped C4.")end end
end
ent:Spectate(6)ent.NextSpawnTime=CurTime()+999
if ent.IsCSCT then CS308CT=CS308CT-1
elseif ent.IsCSTE then CS308TE=CS308TE-1
end end
end)
function ENT:OnRemove()CS308=nil
if self.Dont then return end
hook.Remove("CS3081")
RemoveByClass308("weapon_308_c4")RemoveAllWeapon308()
for _,p in pairs(player.GetAll())do
GAME308UNSPAWN=nil
p._308CSWep=nil
p.NextSpawnTime=CurTime()
p.IsCS30=nil
if CS308TE<0||!BOMBTIME3088 then
p:EmitSound("3088083421/mg/ctwin.wav")p:ChatPrint("CT Win")
if p.IsCSTE then
Muss330Personal(p,"3088083421/mg/t/lostround.mp3")else
Muss330Personal(p,"3088083421/mg/ct/wonround.mp3")end
elseif CS308CT<0||BOMBTIME3088 then
p:EmitSound("3088083421/mg/terwin.wav")p:ChatPrint("T Win")
if p.IsCSTE then
Muss330Personal(p,"3088083421/mg/t/wonround.mp3")else
Muss330Personal(p,"3088083421/mg/ct/lostround.mp3")end
else p:ChatPrint("Round Draw")p:EmitSound("3088083421/mg/end.wav")
end
p.IsCSCT=nil
p.IsCSTE=nil
end
CS308CT=0
CS308TE=0
GAME308=0
CS308=0
CS308T=0
end
ENT.Begin={}
function ENT:Think()
GAME308=1
CS308=1
for _,p in pairs(player.GetAll())do
if !p.IsCS30 and(p.IsCSCT||p.IsCSTE)then
p.IsCS30=1
p.IsCS30A=1
else
if !p:Alive()and p.IsCS30A and self.Phase>0 then
p.IsCS30A=nil
end
if self.Phase>0 and !game.SinglePlayer()then
if(CS308CT<1||CS308TE<1 and !BOMBTIME3088)then
SafeRemoveEntity(self)GAME308_Time=CurTime()
end end end
end
local ti=math.floor(self.Timer-CurTime())
for _,p in pairs(player.GetAll())do
local function Check(h)local q,t,g
if #ents.FindByClass("obj_308_csct")>0 then q=1 end
if #ents.FindByClass("obj_308_cst")>0 then t=1 end
if #ents.FindByClass("obj_308_c4point")>0 then g=1 end
if #ents.FindByClass("obj_308_c4")>0 then g=nil end
if q&&t&&g then h=1 end
return h
end
if BOMBTIME3088 then self.Bombe=1 end
if self.Phase<1 then
if p:HasWeapon("weapon_308_c4")then p:Kill()end
if !Check()then p:ChatPrint(GAME308_LAN1["cs0"])SafeRemoveEntity(self)return end
if #ents.FindByClass("obj_308_csct")>1||#ents.FindByClass("obj_308_cst")>1 then p:ChatPrint(GAME308_LAN1["cs1"])SafeRemoveEntity(self)return end
if !p.IsCSCT and !p.IsCSTE and p:Alive()then self.r=1 else self.r=nil end
if self.r then _308TextAll(GAME308_LAN1["cs"],{y=.6,fin=0,time=.1})if self.Timer2<CurTime()then
p:ConCommand("say join ct")p:ConCommand("say join t")end
self.Timer=CurTime()+10 return end
p:PrintMessage(4,GAME308_LAN1["r1"]..CS308M..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])GAME308_Time=CurTime()+1
elseif self.Phase<2 and !self.Bombe then
_308TextAll(GAME308_LAN1["rt"]..ti.."\nRound "..CS308M,{y=.8,fin=0,time=.1})end
end
if self.Timer<CurTime()+11 and self.Phase==1 and !self.Warn then self.Warn=1
for _,p in pairs(player.GetAll())do
if p.IsCSTE then
Muss330Personal(p,"3088083421/mg/t/tenseccount.mp3")elseif p.IsCSCT then
Muss330Personal(p,"3088083421/mg/ct/tenseccount.mp3")end
end
end
if self.Timer<CurTime()then
self.Phase=1
self.Timer=CurTime()+GetConVarNumber("wb3_mg_cs")+5
GAME308_Time=CurTime()+5
if !self.NextPa then
RemoveByClass308("weapon_308_c4")RemoveAllWeapon308()
local r=math.random(4)
for _,p in pairs(player.GetAll())do
p._308CSAWP=60
if p:Alive()and !p.IsCSCT and !p.IsCSTE then p:Kill()return end
p:Spawn()
p:StripWeapons()
p:SetupHands()
if p.IsCSCT then
for k,sp in pairs(ents.FindByClass("obj_308_csct"))do
p:SetPos(sp:GetPos()+Vector(0,0,10))
end
p._308CSAWP=60
if p._308CSWep then
if p._308CSWep=="weapon_308_awp" then 
p._308CSAWP=0 end
p:SetModel(_308Table({
"models/player/swat.mdl",
"models/player/gasmask.mdl",
"models/player/urban.mdl",
"models/player/riot.mdl",
}))p:Give(p._308CSWep)else
if r<2 then
p:SetModel("models/player/swat.mdl")
p:Give("weapon_308_scout")
elseif r<3 then
p:SetModel("models/player/gasmask.mdl")
p:Give("weapon_308_xm1014")
elseif r<4 then
p:SetModel("models/player/urban.mdl")
p:Give("weapon_308_famas")
else
p:SetModel("models/player/riot.mdl")
p:Give("weapon_308_m4a1")
end
end
p:Give("weapon_308_usp")
else
for k,sp in pairs(ents.FindByClass("obj_308_cst"))do
p:SetPos(sp:GetPos()+Vector(0,0,10))
end
if p._308CSWep then
if p._308CSWep=="weapon_308_awp" then 
p._308CSAWP=0 end
p:SetModel(_308Table({
"models/player/guerilla.mdl",
"models/player/phoenix.mdl",
"models/player/leet.mdl",
"models/player/arctic.mdl",
}))p:Give(p._308CSWep)else
if r<2 then
p:SetModel("models/player/guerilla.mdl")
p:Give("weapon_308_scout")
elseif r<3 then
p:SetModel("models/player/phoenix.mdl")
p:Give("weapon_308_xm1014")
elseif r<4 then
p:SetModel("models/player/leet.mdl")
p:Give("weapon_308_galil")
else
p:SetModel("models/player/arctic.mdl")
p:Give("weapon_308_ak47")
end
end
p:Give("weapon_308_glock")
end
p:SetColor(color_white)
p:Give("weapon_308_knife")
p:Give("weapon_frag")
p:RemoveAllAmmo()
p:SetArmor(p._308CSAWP)
p:GiveAmmo(120,"Pistol",true)
p:SetMaxHealth(100)
p:SetHealth(100)
p:SetMoveType(0)
p:SetRunSpeed(300)
p:SetWalkSpeed(250)
p:SetJumpPower(180)
p:SetMaterial("")
p:GiveAmmo(60,"SMG1",true)
p:GiveAmmo(8,"Buckshot",true)
p:GiveAmmo(14,"357",true)
p:GiveAmmo(10,"SniperPenetratedRound",true)
p:GiveAmmo(60,"AR2",true)
if p.IsCSTE then
Muss330Personal(p,"3088083421/mg/t/startround.mp3")else
Muss330Personal(p,"3088083421/mg/ct/startround.mp3")end
timer.Simple(5,function()if IsValid(self)and IsValid(p)then
p:ChatPrint(GAME308_LAN1["r1"]..CS308M..GAME308_LAN1["r2"])
GAME308UNSPAWN=1
p:SetMoveType(2)GAME308_Time=CurTime()
CS308M=CS308M+1
p:EmitSound("3088083421/mg/start"..math.random(3)..".wav")if p.IsCSTE then
Muss330Personal(p,"3088083421/mg/t/startaction.mp3")else
Muss330Personal(p,"3088083421/mg/ct/startaction.mp3")end
end end)
end
for k,sp in pairs(ents.FindByClass("obj_308_cst"))do
local e=ents.Create("weapon_308_c4")e:SetPos(sp:GetPos()+sp:GetForward()*50)e:Spawn()end
CS308T=1
elseif #ents.FindByClass("obj_308_c4")<1 then
SafeRemoveEntity(self)
end
self.NextPa=1
end
end

end
hook.Add("PlayerSetHandsModel","CS3086",function(ply,hands)
if CS308<1 then return end
hands:SetModel("models/weapons/c_arms_cstrike.mdl")
return true
end)
