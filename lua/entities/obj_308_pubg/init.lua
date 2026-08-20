if !CanGame308()then return end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
GAME308=0
GAME308_Time=CurTime()
GAME308SAY=0
PUBG308=0
PUBG308T=0

hook.Add("EntityTakeDamage","CS3082",function(p,d)
if GAME308<1 then return end
if CA308>0 and p:IsPlayer()and IsValid(d:GetAttacker())and d:GetAttacker():IsPlayer()then d:SetDamage(0)end
if GAME308_Time>CurTime()then d:SetDamage(0)return end

local a=d:GetAttacker()
if CS308<1 and a==p||!IsValid(a)then return end
if p.IsCSCT and a.IsCSCT then d:SetDamage(0)
elseif p.IsCSTE and a.IsCSTE then d:SetDamage(0) end
end)
hook.Add("Think","game3086",function()if GAME308>0 then
if !_GAME308_Ban then
_GAME308_Ban=ents.Create("game308_ban")_GAME308_Ban:Spawn()
GAME308_Time=CurTime()+10 end
for _,p in pairs(player.GetAll())do p:ConCommand("-menu_context")p:ConCommand("-menu")end
elseif GAME308<1 and _GAME308_Ban then
SafeRemoveEntity(_GAME308_Ban)_GAME308_Ban=nil
GAME308_Time=CurTime()
for _,p in pairs(player.GetAll())do p:Spawn()p._30Dead=nil end
end end)
hook.Add("PlayerNoClip","game3081",function(pl,on)
if GAME308>0 then return false else
if !IsValid(pl)||pl:InVehicle()||!pl:Alive()then pl.G30_IsNC=nil return false end
if !on||game.SinglePlayer()then return true end
return GetConVarNumber("sbox_noclip")>0
end end)
hook.Add("PlayerSay","game3082",function(p,txt)
if GAME308==0 then return txt end
if GAME308SAY>0 then return "" end
local m=string.lower(txt)
if m=="stopg" and p:IsSuperAdmin()then
for _,k in pairs(player.GetAll())do
k:ChatPrint(GAME308_LAN1["End3"])
end
if CA308 and !_30CA_Stop then _30CA_Stop=1
timer.Simple(1,function()for _,g in pairs(ents.GetAll())do
if g:IsNPC()then
SafeRemoveEntity(g)end
end end)
local n=table.Count(ents.FindByClass("prop_physics"))
timer.Simple(2,function()for _,g in pairs(ents.FindByClass("prop_physics"))do SafeRemoveEntityDelayed(g,_/n*3)end end)
timer.Simple(8,function()for _,g in pairs(ents.GetAll())do
_30CA_Stop=nil
if g._308CA then
SafeRemoveEntity(g)end
end
end)
--timer.Simple(8,function() game.CleanUpMap()end)
end
return ""
elseif m=="stopg" and !p:IsAdmin()then
p:ChatPrint(GAME308_LAN1["adm1"])
return ""
end
if CS308<1 then return txt end
if !p:Alive()then return end
if m=="join ct" then
if !p.IsCSCT and !p.IsCSTE and CS308TE>=CS308CT then p.IsCSCT=1 CS308CT=CS308CT+1
for _,pl in pairs(player.GetAll())do
_308TextAll(p:Nick().." Joined CT.",{y=.42,fin=.04,time=.5,col="0 0 255",chan=3})
end
else p:ChatPrint("no!")net.Start("CS308Menu")net.WriteEntity(CS308ENT)net.Send(p)p._308CSWep=nil
end
elseif m=="join t" then
if !p.IsCSCT and !p.IsCSTE and CS308CT>=CS308TE then p.IsCSTE=1 CS308TE=CS308TE+1
for _,pl in pairs(player.GetAll())do
_308TextAll(p:Nick().." Joined T.",{y=.38,fin=.04,time=.5,col="255 0 0",chan=4})
end
else p:ChatPrint("no!")net.Start("CS308Menu")net.WriteEntity(CS308ENT)net.Send(p)p._308CSWep=nil
end
end
end)
hook.Add("PlayerTick","game3083",function(p)
if GAME308>0 then
p:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)if !p._30_WasTick and p:IsAdmin()then
p._30_WasTick=1
p:ChatPrint(GAME308_LAN1["adm"])local e=ents.Create("npc_308_man")e:Spawn()SafeRemoveEntityDelayed(e,.5)end
if BED308>0 then
if p:KeyPressed(32)then local r
for l,w in pairs(ents.FindInSphere(p:GetPos(),70))do
if w.BEDSP==1 then
r=1
end
end
if r then
umsg.Start("bedwar308_menu",p)umsg.End()else p:ChatPrint(GAME308_LAN["bedm3"])end
end
p._HurtT=p._HurtT or CurTime() 
if p._HurtT<CurTime()then
p:SetHealth(p:Health()+.01)
end
end
elseif GAME308UNSPAWN then
GAME308UNSPAWN=nil
p.NextSpawnTime=CurTime()
end
end)
hook.Add("PlayerSpawn","game3085",function(p)if GAME308UNSPAWN then p:Kill()p:Spectate(6)p:SpectateEntity(p)end
end)
BED308=0
hook.Add("PlayerDeathSound","game3083",function(p)if SERVER and GAME308>0 then
if GAME308UNSPAWN then p:Spectate(6)p:SpectateEntity(p)end
if BED308>0 and IsValid(BED308Ent)then
p.NextSpawnTime=CurTime()+5
p:Spectate(5)
if p._30Team==1 and !IsValid(BED308Ent1)then
_30TeamM1=_30TeamM1-1
p.NextSpawnTime=CurTime()+99999
p:Spectate(6)p:SpectateEntity(p)
p._30Dead=1
elseif p._30Team==2 and !IsValid(BED308Ent2)then
_30TeamM2=_30TeamM2-1
p.NextSpawnTime=CurTime()+99999
p:Spectate(6)p:SpectateEntity(p)
p._30Dead=1
elseif p._30Team==1 and IsValid(BED308Ent1)then
p:SpectateEntity(BED308Ent1)
elseif p._30Team==2 and IsValid(BED308Ent2)then
p:SpectateEntity(BED308Ent2)
end
end

end end)
hook.Add("PlayerDeath","game3083",function(p,a,h)if SERVER and GAME308>0 then
a=a or h
if BED308>0 and IsValid(BED308Ent)then
if IsValid(p._30Armor2)then p._30Armor2:Remove()p._30Armor2=nil end 
local r
if p._30Team==1 and !IsValid(BED308Ent1)then
p._30Dead=1
elseif p._30Team==2 and !IsValid(BED308Ent2)then
p._30Dead=1
end
if IsValid(a)and a:IsPlayer()and a!=p then
a:GiveAmmo(p:GetAmmoCount("308block"),"308block")a:GiveAmmo(p:GetAmmoCount("pistol"),"pistol")a:GiveAmmo(p:GetAmmoCount("ar2"),"ar2")a:GiveAmmo(p:GetAmmoCount("smg1"),"smg1")
if p._30Dead then a:GiveAmmo(p:GetNWInt("_30Block"),"308block")a:GiveAmmo(p:GetNWInt("_30pistol"),"pistol")a:GiveAmmo(p:GetNWInt("_30AR2"),"ar2")a:GiveAmmo(p:GetNWInt("_30SMG"),"smg1")end
end
end
end
end)

if !game.SinglePlayer()then
function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) or ply.Shield then return end
	local SpawnPos = tr.HitPos + tr.HitNormal
	local ent = ents.Create( "obj_308_pubg" )
	ent:SetPos(SpawnPos)
	ent:Spawn()
end
end
if SERVER then
function ENT:Initialize()
if GAME308>0 then self.Dont=1 self:Remove() return end
_308TextAll(GAME308_LAN["hg"],{y=.2,fin=.05},1)
_308TextAll(GAME308_LAN["hg1"],{y=.25,fin=.05,chan=1})
local w=ents.Create("obj_308_sprite")
w:SetPos(self:GetPos())
w:Spawn()w:SetSprite("sprites/tp_beam001")w:SetScale(7500)w:Light()
w:SetColor(Color(0,255,255,125))
w:SetParent(self)
timer.Simple(198,function()if IsValid(w)then w.Disappear=1 w.DisaSpeed=.1 end end)
self.Name=""
self.Math=0
self.EndM=0
self:SetNoDraw(true)
self:SetMoveType(MOVETYPE_NONE)
self:SetSolid(SOLID_NONE)
self.Timer=CurTime()+10
self.Phase=-1
self.R=GetConVarNumber("wb3_mg_hg")
if math.random(2)<2 and !game.SinglePlayer()then
local s=ents.Create("edit_sky")
s:SetNoDraw(true)
s:SetPos(self:GetPos() + self:GetUp()*-10000)
s:Spawn()
s:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
s:SetTopColor(Vector(0,0,0))
s:SetBottomColor(Vector(0,0,0))
s:SetDuskColor(Vector(.1,.1,.1))
s:SetDuskIntensity(.1)
s:SetDrawStars(true)
s:SetStarScale(.9)
s:SetStarFade(3.9)
s:SetSunColor(Vector(0,0,0))
s:SetSunSize(1)
self:DeleteOnRemove(s)

local f=ents.Create("edit_fog")
f:SetNoDraw(true)
f:SetPos(self:GetPos() + self:GetUp()*-10000)
f:Spawn()
f:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
f:SetFogStart(1)
f:SetFogEnd(self.R)
f:SetFogColor(Vector(0,0,0))
f:SetDensity(1)
self:DeleteOnRemove(f)
end
hook.Add("PlayerDisconnected","PUBG308111",function(p)if p.IsPUBGA then self.Math=self.Math-1 end end)
end
function ENT:OnRemove()
if self.Dont then return end
hook.Remove("PUBG308111")
for _,p in pairs(player.GetAll())do
Muss330(p)
p.IsPUBG=false
p.NextSpawnTime=CurTime()
p:SetNoDraw(false)
end
GAME308=0
GAME308UNSPAWN=nil
PUBG308=0
PUBG308T=0
end
function ENT:Think()
GAME308=1
PUBG308=1
for _,p in pairs(player.GetAll())do
if IsValid(p)then
if !p.IsPUBG then
p.IsPUBG=1
p.IsPUBGA=1
self.Math=self.Math+1
end
if !p:Alive()and p.IsPUBGA then
p.IsPUBGA=nil
self.Math=self.Math-1
end
if(self.Math<2 and !game.SinglePlayer())||self.R<150 then
self.EndM=self.EndM+1
if p:Alive()then self.Name=p:Nick()end
if self.EndM>15 then
p:ChatPrint(GAME308_LAN1["r"]..self.Name)
SafeRemoveEntity(self)
end
end
end
end
for _,p in pairs(player.GetAll())do
local r=p:GetPos():Distance(self:GetPos())
local pr=math.floor(self.R-r)
local ti=math.floor(self.Timer-CurTime())
if self.Phase<0 then
p:PrintMessage(4,GAME308_LAN1["gtb"]..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])
elseif self.Phase<1 then
p:PrintMessage(4,ti)
elseif self.Phase<2 then
p:PrintMessage(4,pr.."\n"..GAME308_LAN1["rt"]..ti)
if r>self.R then p:TakeDamage(1)end
elseif self.Phase<3 then
p:PrintMessage(4,pr.."\n"..GAME308_LAN1["rt"]..ti)
if self.R>10000 then
self.R=self.R-3
if self.R>25000 then self.R=self.R-25
elseif self.R>15000 then self.R=self.R-20
end
if r>self.R then p:TakeDamage(2)end
end
elseif self.Phase<4 then
p:PrintMessage(4,pr.."\n"..GAME308_LAN1["rt"]..ti)
if self.R>6000 then
self.R=self.R-5
if self.R>10000 then self.R=self.R-35 end
end
if r>self.R then p:TakeDamage(3)end
elseif self.Phase<5 then
p:PrintMessage(4,pr.."\n"..GAME308_LAN1["rt"]..ti)
if self.R>3000 then
self.R=self.R-6
if self.R>5000 then self.R=self.R-50 end
end
if r>self.R then p:TakeDamage(4)end
elseif self.Phase<6 then
p:PrintMessage(4,pr)
if self.R>150 then
self.R=self.R-15
end
if r>self.R then p:TakeDamage(5)end
end
end
if self.Timer<=CurTime() then
self.Phase=self.Phase+1
local function G(t,e)
local w=ents.Create(t or "obj_308_pubgc")
if t then
e=Vector(math.Rand(-self.R,self.R)/2,math.Rand(-self.R,self.R)/2,math.Rand(0,self.R))
else
e=Vector(math.Rand(-self.R,self.R),math.Rand(-self.R,self.R),math.Rand(0,self.R))
end
local pos=self:GetPos()+e
while !util.IsInWorld(pos)do
if t then
e=Vector(math.Rand(-self.R,self.R)/2,math.Rand(-self.R,self.R)/2,math.Rand(0,self.R))
else
e=Vector(math.Rand(-self.R,self.R),math.Rand(-self.R,self.R),math.Rand(0,self.R))
end
pos=self:GetPos()+e
end
w:SetPos(pos)
w:Spawn()
w:SetMoveType(MOVETYPE_FLYGRAVITY)
self:DeleteOnRemove(w)
end
for _,p in pairs(player.GetAll())do
if self.Phase==0 then
p:Spawn()
p:StripWeapons()
p:StripAmmo()
p:SetMoveType(0)
p:SetNoDraw(true)
self.Timer=CurTime()+8
for i=1,math.floor(self.R/105)do G()end
elseif self.Phase==1 then
PUBG308T=1
p:SetMaxHealth(200)
p:SetHealth(200)
p:SetMoveType(2)
p:SetPos(self:GetPos())
p:SetArmor(10)
p:RemoveAllAmmo()
p.Muss3308=CreateSound(p,"music/hl1_song3.mp3")
p.Muss3308:SetSoundLevel(0)
p.Muss3308:Play()
timer.Simple(7.5,function()if IsValid(self)and IsValid(p)then p:SetNoDraw(false)p:GiveAmmo(12,"308block")p:Give("weapon_308_block")end end)
self.Timer=CurTime()+180
GAME308UNSPAWN=1
elseif self.Phase==2 then
Muss330(p,"music/hl2_song1.mp3")
p:ChatPrint(GAME308_LAN1["airdrop"])
G("obj_308_pubgc2")
self.Timer=CurTime()+180
elseif self.Phase==3 then
Muss330(p,"music/hl1_song20.mp3")
p:ChatPrint(GAME308_LAN1["airdrop"])
self.Timer=CurTime()+120
G("obj_308_pubgc2")G("obj_308_pubgc2")
p:ChatPrint(GAME308_LAN1["airdrop"])
elseif self.Phase==4 then
p:ChatPrint(GAME308_LAN1["airdrop"])
Muss330(p,"music/hl2_song14.mp3")
self.Timer=CurTime()+15
G("obj_308_pubgc2")G("obj_308_pubgc2")G("obj_308_pubgc2")
elseif self.Phase==5 then
self.Timer=CurTime()+99999
end
end
end
end

end
