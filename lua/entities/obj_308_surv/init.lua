if !CanGame308()then return end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
GAME308=0
SU308=0
SU308T=0
ENT.Remain=30
ENT.T=0
ENT.ZTa2={}
local t={
"npc_308_zbfast",
"npc_308_zbfast",
"npc_308_zbfast",
"npc_308_zbfast",
"npc_308_zbfast",
"npc_308_zbfast",
"npc_308_zbfast",
"npc_308_zbfast",
"npc_308_headcrab",
"npc_308_headcrab",
"npc_308_ztstr",
"npc_308_ztstr",
}
local t2={
"npc_308_zbfast",
"npc_308_zbfast",
"npc_308_zbfast",
"npc_308_zbstr",
"npc_308_zbfast3",
"npc_308_zbboom",
"npc_308_zbboom",
"npc_308_zbboom",
"npc_308_zbminiboss",
}
function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) or ply.Shield then return end
	local SpawnPos = tr.HitPos + tr.HitNormal
	local ent = ents.Create("obj_308_surv")
	ent:SetPos(SpawnPos)
	ent:SetCreator(ply)
	ent:Spawn()
return ent end

function ENT:Initialize()
if #ents.FindByClass("obj_308_surv")>1 and !self.Do then self.Dont=1 self:Remove()return end
if game.GetMap()!="gm_flatgrass" and game.GetMap()!="gm_hl1_lily_flatgrass_13" then _308TextAll(GAME308_LAN["gamemap"],{y=.9,chan=3,fxtime=1,col2="255 100 100"})self:Remove()return end
--if !warn30 then if IsValid(self:GetCreator())and self:GetCreator():IsPlayer()then self:GetCreator():ChatPrint(GAME308_LAN["crash"])end self.Dont=1 self:Remove()warn30=1 return end
RunConsoleCommand("wby_CLEANBODY_308")
self:SetMoveType(MOVETYPE_NONE)
self:SetSolid(SOLID_NONE)
self:SetNoDraw(true)
self.Timer=CurTime()+10
self.Timer2=CurTime()+15
self.AmbT1=CurTime()+math.Rand(18,20)
self.AmbT2=CurTime()+math.Rand(18,20)
self.AmbT3=CurTime()+math.Rand(19,22)
RemoveByClass308("prop_physics")
RemoveAllWeapon308()
local s=ents.Create("edit_sky")
s:SetNoDraw(true)
s:Spawn()
s:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
s:SetTopColor(Vector(0,.1,0))
s:SetBottomColor(Vector(0,.2,0))
s:SetDuskColor(Vector(.1,.1,.2))
s:SetDuskIntensity(.3)
s:SetDrawStars(true)
s:SetSunColor(Vector(0,0,0))
s:SetSunSize(1)
self:DeleteOnRemove(s)
local f=ents.Create("edit_fog")
f:SetNoDraw(true)
f:Spawn()
f:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
f:SetFogStart(1)
f:SetFogEnd(800)
f:SetFogColor(Vector(0,0,0))
f:SetDensity(1)
self:DeleteOnRemove(f)
end

if SERVER then
function ENT:OnRemove()
if self.Dont then return end
RemoveByClass308("prop_physics")
RunConsoleCommand("wb3_infammo","0")
Muss330()_308StopSoundAll()
for _,p in pairs(player.GetAll())do
if self.End then
p:ChatPrint("YOU MAKE IT TO "..self.T.."!")
_308TextAll("YOU MAKE IT TO "..self.T.."!",{y=.87,fxtime=1,col="255 255 255",chan=1})end
GAME308=0
SU308=0
SU308T=0
GAME308UNWEP=nil
p.NextSpawnTime=CurTime()
end
end
function ENT:SpawnProp()local e0=ents.Create("prop_physics")e0:SetPos(Vector(-260,1018,-12736))e0:SetAngles(Angle(-1,88,-1))e0:SetModel("models/props_wasteland/interior_fence002d.mdl")e0:Spawn()e0:GetPhysicsObject():EnableMotion(false)local e1=ents.Create("prop_physics")e1:SetPos(Vector(-4,1017,-12736))e1:SetAngles(Angle(0,91,-1))e1:SetModel("models/props_wasteland/interior_fence002d.mdl")e1:Spawn()e1:GetPhysicsObject():EnableMotion(false)local e2=ents.Create("prop_physics")e2:SetPos(Vector(252,1024,-12736))e2:SetAngles(Angle(-1,90,-1))e2:SetModel("models/props_wasteland/interior_fence002d.mdl")e2:Spawn()e2:GetPhysicsObject():EnableMotion(false)local e3=ents.Create("prop_physics")e3:SetPos(Vector(260,-1019,-12736))e3:SetAngles(Angle(-1,-92,-1))e3:SetModel("models/props_wasteland/interior_fence002d.mdl")e3:Spawn()e3:GetPhysicsObject():EnableMotion(false)local e4=ents.Create("prop_physics")e4:SetPos(Vector(4,-1015,-12736))e4:SetAngles(Angle(0,-90,-1))e4:SetModel("models/props_wasteland/interior_fence002d.mdl")e4:Spawn()e4:GetPhysicsObject():EnableMotion(false)local e5=ents.Create("prop_physics")e5:SetPos(Vector(-251,-1019,-12736))e5:SetAngles(Angle(-1,-90,-1))e5:SetModel("models/props_wasteland/interior_fence002d.mdl")e5:Spawn()e5:GetPhysicsObject():EnableMotion(false)local e6=ents.Create("prop_physics")e6:SetPos(Vector(-11173,-14050,-8525))e6:SetAngles(Angle(-1,73,0))e6:SetModel("models/props_combine/combine_citadel001.mdl")e6:Spawn()e6:GetPhysicsObject():EnableMotion(false)local e7=ents.Create("prop_physics")e7:SetPos(Vector(-6538,-4681,-12800))e7:SetAngles(Angle(0,99,-1))e7:SetModel("models/props_buildings/project_building02.mdl")e7:Spawn()e7:GetPhysicsObject():EnableMotion(false)local e8=ents.Create("prop_physics")e8:SetPos(Vector(-963,-7867,-12037))e8:SetAngles(Angle(0,-16,0))e8:SetModel("models/props_buildings/watertower_002a.mdl")e8:Spawn()e8:GetPhysicsObject():EnableMotion(false)local e9=ents.Create("prop_physics")e9:SetPos(Vector(4721,-5986,-12799))e9:SetAngles(Angle(0,38,-1))e9:SetModel("models/props_buildings/row_church_fullscale.mdl")e9:Spawn()e9:GetPhysicsObject():EnableMotion(false)local e10=ents.Create("prop_physics")e10:SetPos(Vector(5288,-3910,-11977))e10:SetAngles(Angle(3,171,-4))e10:SetModel("models/props_buildings/watertower_001a.mdl")e10:Spawn()e10:GetPhysicsObject():EnableMotion(false)local e11=ents.Create("prop_physics")e11:SetPos(Vector(6870,-858,-11249))e11:SetAngles(Angle(0,-137,0))e11:SetModel("models/props_buildings/building_002a.mdl")e11:Spawn()e11:GetPhysicsObject():EnableMotion(false)local e12=ents.Create("prop_physics")e12:SetPos(Vector(8656,-4112,-11256))e12:SetAngles(Angle(-1,-140,-1))e12:SetModel("models/props_buildings/building_002a.mdl")e12:Spawn()e12:GetPhysicsObject():EnableMotion(false)local e13=ents.Create("prop_physics")e13:SetPos(Vector(6109,1718,-12803))e13:SetAngles(Angle(0,136,-1))e13:SetModel("models/props_buildings/row_res_1_fullscale.mdl")e13:Spawn()e13:GetPhysicsObject():EnableMotion(false)local e14=ents.Create("prop_physics")e14:SetPos(Vector(4096,5813,-12800))e14:SetAngles(Angle(0,-77,-1))e14:SetModel("models/props_buildings/project_building02.mdl")e14:Spawn()e14:GetPhysicsObject():EnableMotion(false)local e15=ents.Create("prop_physics")e15:SetPos(Vector(1026,6894,-11392))e15:SetAngles(Angle(-1,157,0))e15:SetModel("models/props_buildings/building_002a.mdl")e15:Spawn()e15:GetPhysicsObject():EnableMotion(false)local e16=ents.Create("prop_physics")e16:SetPos(Vector(-3573,6132,-12803))e16:SetAngles(Angle(-1,-150,0))e16:SetModel("models/props_buildings/row_res_1_fullscale.mdl")e16:Spawn()e16:GetPhysicsObject():EnableMotion(false)local e17=ents.Create("prop_physics")e17:SetPos(Vector(-5841,3111,-12800))e17:SetAngles(Angle(0,88,-1))e17:SetModel("models/props_buildings/project_building03.mdl")e17:Spawn()e17:GetPhysicsObject():EnableMotion(false)end
function ENT:Think()
local ti=math.floor(self.Timer-CurTime())
GAME308=1
if !self.Do then
if !self.Do2 then self.Do2=1
timer.Simple(5,function()if IsValid(self)then
self:SpawnProp()end end)end
for _,p in pairs(player.GetAll())do p:PrintMessage(4,GAME308_LAN1["gtf"]..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])end
else
GAME308UNWEP=1
GAME308UNSPAWN=1
local o
for _,p in pairs(player.GetAll())do
if self.T>3 and p:Alive()and(p:Health()>101||GetConVarNumber("ai_disabled")==1)then p:Kill()elseif p:Alive()then o=1 end
if p:GetPos().z>-12648 then
p:SetVelocity(Vector(0,0,-10))end
end
if !o then self.End=1 SafeRemoveEntity(self)end

if self.Do then
self.T=self.T+1
for _,p in pairs(player.GetAll())do
p:SetRunSpeed(250)p:SetWalkSpeed(200)p:SetJumpPower(1)end
if self.T>420 then
_308TextAll("Tick:"..self.T,{y=.9,time=9999,fin=.15,chan=1,col="255 0 0",col2="255 0 0"})else
_308TextAll("Tick:"..self.T,{y=.9,time=9999,fin=.15,chan=1})end
for x,z in pairs(self.ZTa2)do
if !IsValid(z)then
RunConsoleCommand("wby_CLEANBODY_308")table.remove(self.ZTa2,x)end
end
if self.AmbT1<CurTime()then
self.AmbT1=CurTime()+math.Rand(3,5)sound.Play("ambient/levels/prison/inside_battle_zombie"..math.random(2,3)..".wav",self:GetPos(),0)end
if self.AmbT2<CurTime()then
self.AmbT2=CurTime()+math.Rand(.5,1.5)sound.Play("ambient/levels/prison/inside_battle"..math.random(9)..".wav",self:GetPos(),0)end
if self.AmbT3<CurTime()then
self.AmbT3=CurTime()+math.Rand(2,4)sound.Play("ambient/levels/prison/inside_battle_soldier"..math.random(3)..".wav",self:GetPos(),0)end
if self.Timer<CurTime()and #self.ZTa2<26 then
if game.SinglePlayer()then
self.Timer=CurTime()+1+#self.ZTa2/10
else
self.Timer=CurTime()+.75
end
local g=_308Table(t)
local z=ents.Create(g)
z:SetAngles(Angle(0,math.random(-360,360),0))
local v=Vector(0,0,-12800)-z:GetForward()*2000
while !util.IsInWorld(v)do
z:SetAngles(Angle(0,math.random(-360,360),0))
v=Vector(0,0,-12800)-z:GetForward()*2000
end
z.JudgeDelay=2
z:SetPos(v)z:Spawn()self:DeleteOnRemove(z)table.insert(self.ZTa2,z)end
if self.Timer2<CurTime()and #self.ZTa2<26 and self.T>420 then
self.Timer2=CurTime()+1.5
local g=_308Table(t2)
local z=ents.Create(g)
z:SetAngles(Angle(0,math.random(-360,360),0))
local v=Vector(0,0,-12800)-z:GetForward()*2000
while !util.IsInWorld(v)do
z:SetAngles(Angle(0,math.random(-360,360),0))
v=Vector(0,0,-12800)-z:GetForward()*2000
end
z.JudgeDelay=2
z:SetPos(v)z:Spawn()self:DeleteOnRemove(z)table.insert(self.ZTa2,z)end
end
end
if self.Timer<=CurTime()and !self.Do then
self.Do=1
RunConsoleCommand("wb3_infammo","1")
Muss330(p,"3088083421/mg/zamb.ogg",100,100)_308PlaySoundAll("3088083421/mg/surv/nz_end.mp3")
for _,p in pairs(player.GetAll())do
p:Spawn()p:SetPos(Vector(288,678,-12800))p:StripWeapons()p:SetHealth(100)p:SetMaxHealth(100)
p:SetArmor(100)p:SetModel("models/player/group03/male_0"..math.random(9)..".mdl")
timer.Simple(2,function()if IsValid(p)then
p:Give("weapon_308_p90")p:Give("weapon_308_sh")end end)
end
timer.Simple(0,function()if IsValid(p)then
SU308T=1
end end)
--if c then
--undo.Create("Undone Survival")
--undo.AddEntity(e)
--undo.SetPlayer(c)
--undo.Finish()
--end
end
end

end
