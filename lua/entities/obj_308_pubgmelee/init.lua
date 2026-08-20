if !CanGame308()then return end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
if !game.SinglePlayer()then
function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) or ply.Shield then return end
	local SpawnPos = tr.HitPos + tr.HitNormal
	local ent = ents.Create( "obj_308_pubgmelee" )
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
w.Melee=1
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
p:SetMaxHealth(100)
p:SetHealth(150)
p:SetMoveType(2)
p:SetJumpPower(250)
p:SetWalkSpeed(200)
p:SetRunSpeed(400)
p:SetPos(self:GetPos())
p:SetArmor(200)
p:RemoveAllAmmo()
p.Muss3308=CreateSound(p,"music/hl1_song3.mp3")
p.Muss3308:SetSoundLevel(0)
p.Muss3308:Play()
timer.Simple(7.5,function()if IsValid(self)and IsValid(p)then p:SetNoDraw(false)p:Give("weapon_medkit")p:Give("weapon_308_fist")end end)
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
Muss330(p,"music/hl2_song20_submix4.mp3",110)
self.Timer=CurTime()+15
G("obj_308_pubgc2")G("obj_308_pubgc2")G("obj_308_pubgc2")
elseif self.Phase==5 then
self.Timer=CurTime()+99999
end
end
end
end

end
