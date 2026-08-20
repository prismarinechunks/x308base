if !CanGame308()then return end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
GAME308=0
SU308=0
SU308T=0
ENT.Remain=30
ENT.Spawn2=1
ENT.ZTa={["npc_308_zb"]=25,["npc_308_zbfast"]=5}
ENT.ZTa2={}
function ENT:SpawnFunction(ply, tr)
	if (!tr.Hit) or ply.Shield then return end
	local SpawnPos = tr.HitPos + tr.HitNormal
	local ent = ents.Create("obj_308_surve")
	ent:SetPos(SpawnPos)
	ent:SetCreator(ply)
	ent:Spawn()
return ent end

function ENT:Initialize()
if #ents.FindByClass("obj_308_surv")>1 and !self.Do then self.Dont=1 self:Remove()return end
if game.GetMap()!="gm_flatgrass" and game.GetMap()!="gm_hl1_lily_flatgrass_13" then _308TextAll(GAME308_LAN["gamemap"],{y=.9,chan=3,fxtime=1,col2="255 100 100"})self:Remove()return end
--if !warn30 then if IsValid(self:GetCreator())and self:GetCreator():IsPlayer()then self:GetCreator():ChatPrint(GAME308_LAN["crash"])end self.Dont=1 self:Remove()warn30=1 return end
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
f:SetFogEnd(1500)
f:SetFogColor(Vector(0,0,0))
f:SetDensity(1)
self:DeleteOnRemove(f)
end

if SERVER then
function ENT:OnRemove()
if self.Dont then return end
RemoveByClass308("prop_physics")
Muss330()_308StopSoundAll()
for _,p in pairs(player.GetAll())do
if self.End then
p:ChatPrint("YOU STICK TO WAVE "..self.Do.."!")
_308TextAll("YOU STICK TO WAVE "..self.Do.."!",{y=.87,fxtime=1,col="255 255 255",chan=1})end
GAME308=0
SU308=0
SU308T=0
GAME308UNWEP=nil
p.NextSpawnTime=CurTime()
end
end
function ENT:SpawnProp()
local e0=ents.Create("prop_physics")e0:SetPos(Vector(386,1153,-12736))e0:SetAngles(Angle(-1,178,-1))e0:SetModel("models/props_wasteland/interior_fence002d.mdl")e0:Spawn()e0:GetPhysicsObject():EnableMotion(false)local e1=ents.Create("prop_physics")e1:SetPos(Vector(390,1409,-12736))e1:SetAngles(Angle(0,-180,-1))e1:SetModel("models/props_wasteland/interior_fence002d.mdl")e1:Spawn()e1:GetPhysicsObject():EnableMotion(false)local e2=ents.Create("prop_physics")e2:SetPos(Vector(386,1665,-12736))e2:SetAngles(Angle(-1,-180,-1))e2:SetModel("models/props_wasteland/interior_fence002d.mdl")e2:Spawn()e2:GetPhysicsObject():EnableMotion(false)local e3=ents.Create("prop_physics")e3:SetPos(Vector(254,1794,-12736))e3:SetAngles(Angle(-1,-91,-1))e3:SetModel("models/props_wasteland/interior_fence002d.mdl")e3:Spawn()e3:GetPhysicsObject():EnableMotion(false)local e4=ents.Create("prop_physics")e4:SetPos(Vector(-1,1793,-12736))e4:SetAngles(Angle(0,-89,-1))e4:SetModel("models/props_wasteland/interior_fence002d.mdl")e4:Spawn()e4:GetPhysicsObject():EnableMotion(false)local e5=ents.Create("prop_physics")e5:SetPos(Vector(-257,1784,-12736))e5:SetAngles(Angle(-1,-88,-1))e5:SetModel("models/props_wasteland/interior_fence002d.mdl")e5:Spawn()e5:GetPhysicsObject():EnableMotion(false)local e6=ents.Create("prop_physics")e6:SetPos(Vector(-384,1662,-12735))e6:SetAngles(Angle(0,-179,-1))e6:SetModel("models/props_wasteland/interior_fence002d.mdl")e6:Spawn()e6:GetPhysicsObject():EnableMotion(false)local e7=ents.Create("prop_physics")e7:SetPos(Vector(-376,1407,-12736))e7:SetAngles(Angle(-1,-179,-1))e7:SetModel("models/props_wasteland/interior_fence002d.mdl")e7:Spawn()e7:GetPhysicsObject():EnableMotion(false)local e8=ents.Create("prop_physics")e8:SetPos(Vector(-378,1151,-12736))e8:SetAngles(Angle(-1,178,0))e8:SetModel("models/props_wasteland/interior_fence002d.mdl")e8:Spawn()e8:GetPhysicsObject():EnableMotion(false)local e9=ents.Create("prop_physics")e9:SetPos(Vector(386,-1150,-12736))e9:SetAngles(Angle(-1,-179,-1))e9:SetModel("models/props_wasteland/interior_fence002d.mdl")e9:Spawn()e9:GetPhysicsObject():EnableMotion(false)local e10=ents.Create("prop_physics")e10:SetPos(Vector(396,-1405,-12736))e10:SetAngles(Angle(0,-179,-1))e10:SetModel("models/props_wasteland/interior_fence002d.mdl")e10:Spawn()e10:GetPhysicsObject():EnableMotion(false)local e11=ents.Create("prop_physics")e11:SetPos(Vector(267,-1786,-12736))e11:SetAngles(Angle(0,89,-1))e11:SetModel("models/props_wasteland/interior_fence002d.mdl")e11:Spawn()e11:GetPhysicsObject():EnableMotion(false)local e12=ents.Create("prop_physics")e12:SetPos(Vector(398,-1661,-12736))e12:SetAngles(Angle(-1,179,-1))e12:SetModel("models/props_wasteland/interior_fence002d.mdl")e12:Spawn()e12:GetPhysicsObject():EnableMotion(false)local e13=ents.Create("prop_physics")e13:SetPos(Vector(83,-1787,-12800))e13:SetAngles(Angle(0,89,0))e13:SetModel("models/props_lab/blastdoor001a.mdl")e13:Spawn()e13:SetCollisionGroup(20)e13:GetPhysicsObject():EnableMotion(false)local e14=ents.Create("prop_physics")e14:SetPos(Vector(12,-1788,-12736))e14:SetAngles(Angle(0,90,-1))e14:SetModel("models/props_wasteland/interior_fence002d.mdl")e14:Spawn()e14:GetPhysicsObject():EnableMotion(false)local e15=ents.Create("prop_physics")e15:SetPos(Vector(-367,-1661,-12736))e15:SetAngles(Angle(0,1,-1))e15:SetModel("models/props_wasteland/interior_fence002d.mdl")e15:Spawn()e15:GetPhysicsObject():EnableMotion(false)local e16=ents.Create("prop_physics")e16:SetPos(Vector(-244,-1782,-12736))e16:SetAngles(Angle(-1,87,0))e16:SetModel("models/props_wasteland/interior_fence002d.mdl")e16:Spawn()e16:GetPhysicsObject():EnableMotion(false)local e17=ents.Create("prop_physics")e17:SetPos(Vector(-378,-1405,-12736))e17:SetAngles(Angle(0,2,-1))e17:SetModel("models/props_wasteland/interior_fence002d.mdl")e17:Spawn()e17:GetPhysicsObject():EnableMotion(false)local e18=ents.Create("prop_physics")e18:SetPos(Vector(-382,-1150,-12736))e18:SetAngles(Angle(-1,-1,-1))e18:SetModel("models/props_wasteland/interior_fence002d.mdl")e18:Spawn()e18:GetPhysicsObject():EnableMotion(false)
local e19=ents.Create("prop_physics")e19:SetPos(Vector(-963,-7867,-12037))e19:SetAngles(Angle(0,-16,0))e19:SetModel("models/props_buildings/watertower_002a.mdl")e19:Spawn()e19:GetPhysicsObject():EnableMotion(false)local e20=ents.Create("prop_physics")e20:SetPos(Vector(-6538,-4681,-12800))e20:SetAngles(Angle(0,99,-1))e20:SetModel("models/props_buildings/project_building02.mdl")e20:Spawn()e20:GetPhysicsObject():EnableMotion(false)local e21=ents.Create("prop_physics")e21:SetPos(Vector(4721,-5986,-12799))e21:SetAngles(Angle(0,38,-1))e21:SetModel("models/props_buildings/row_church_fullscale.mdl")e21:Spawn()e21:GetPhysicsObject():EnableMotion(false)local e22=ents.Create("prop_physics")e22:SetPos(Vector(5288,-3910,-11977))e22:SetAngles(Angle(3,171,-4))e22:SetModel("models/props_buildings/watertower_001a.mdl")e22:Spawn()e22:GetPhysicsObject():EnableMotion(false)local e23=ents.Create("prop_physics")e23:SetPos(Vector(8656,-4112,-11256))e23:SetAngles(Angle(-1,-140,-1))e23:SetModel("models/props_buildings/building_002a.mdl")e23:Spawn()e23:GetPhysicsObject():EnableMotion(false)local e24=ents.Create("prop_physics")e24:SetPos(Vector(6882,-848,-11392))e24:SetAngles(Angle(0,-137,-1))e24:SetModel("models/props_buildings/building_002a.mdl")e24:Spawn()local e25=ents.Create("prop_physics")e25:SetPos(Vector(6109,1718,-12803))e25:SetAngles(Angle(0,136,-1))e25:SetModel("models/props_buildings/row_res_1_fullscale.mdl")e25:Spawn()e25:GetPhysicsObject():EnableMotion(false)local e26=ents.Create("prop_physics")e26:SetPos(Vector(2551,-2738,-12800))e26:SetAngles(Angle(-1,79,-1))e26:SetModel("models/props_phx/huge/road_long.mdl")e26:Spawn()e26:GetPhysicsObject():EnableMotion(false)local e27=ents.Create("prop_physics")e27:SetPos(Vector(1733,-1258,-12800))e27:SetAngles(Angle(-1,-10,0))e27:SetModel("models/props_phx/huge/road_long.mdl")e27:Spawn()e27:GetPhysicsObject():EnableMotion(false)local e28=ents.Create("prop_physics")e28:SetPos(Vector(184,-2343,-12800))e28:SetAngles(Angle(-1,-99,-1))e28:SetModel("models/props_phx/huge/road_long.mdl")e28:Spawn()e28:GetPhysicsObject():EnableMotion(false)local e29=ents.Create("prop_physics")e29:SetPos(Vector(-2161,-1927,-12800))e29:SetAngles(Angle(-1,-102,-1))e29:SetModel("models/props_phx/huge/road_long.mdl")e29:Spawn()e29:GetPhysicsObject():EnableMotion(false)local e30=ents.Create("prop_physics")e30:SetPos(Vector(2136,1105,-12800))e30:SetAngles(Angle(0,170,0))e30:SetModel("models/props_phx/huge/road_long.mdl")e30:Spawn()e30:SetCollisionGroup(20)e30:GetPhysicsObject():EnableMotion(false)local e31=ents.Create("prop_physics")e31:SetPos(Vector(1789,-1116,-12775))e31:SetAngles(Angle(-1,-87,-1))e31:SetModel("models/props_vehicles/car004a_physics.mdl")e31:Spawn()local e32=ents.Create("prop_physics")e32:SetPos(Vector(3384,1593,-12401))e32:SetAngles(Angle(-1,-172,0))e32:SetModel("models/props_buildings/collapsedbuilding02b.mdl")e32:Spawn()e32:GetPhysicsObject():EnableMotion(false)local e33=ents.Create("prop_physics")e33:SetPos(Vector(4096,5813,-12800))e33:SetAngles(Angle(0,-77,-1))e33:SetModel("models/props_buildings/project_building02.mdl")e33:Spawn()e33:GetPhysicsObject():EnableMotion(false)local e34=ents.Create("prop_physics")e34:SetPos(Vector(1026,6894,-11392))e34:SetAngles(Angle(-1,157,0))e34:SetModel("models/props_buildings/building_002a.mdl")e34:Spawn()e34:GetPhysicsObject():EnableMotion(false)local e35=ents.Create("prop_physics")e35:SetPos(Vector(-13083,10496,-8521))e35:SetAngles(Angle(0,-22,-2))e35:SetModel("models/props_combine/combine_citadel001.mdl")e35:Spawn()e35:GetPhysicsObject():EnableMotion(false)local e36=ents.Create("prop_physics")e36:SetPos(Vector(-3573,6132,-12803))e36:SetAngles(Angle(-1,-150,0))e36:SetModel("models/props_buildings/row_res_1_fullscale.mdl")e36:Spawn()e36:GetPhysicsObject():EnableMotion(false)local e37=ents.Create("prop_physics")e37:SetPos(Vector(-5841,3111,-12800))e37:SetAngles(Angle(0,88,-1))e37:SetModel("models/props_buildings/project_building03.mdl")e37:Spawn()e37:GetPhysicsObject():EnableMotion(false)
end
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
if self.Timer<CurTime()-.5 and p:Alive()and(p:Health()>101||GetConVarNumber("ai_disabled")==1)then p:Kill()elseif p:Alive()then o=1 end
if p:GetPos().z>-12648 then
p:SetVelocity(Vector(0,0,-10))end
end
if !o then self.End=1 SafeRemoveEntity(self)end

_308TextAll("Wave "..self.Do,{y=.93,fin=.15})
if self.Remain>0 and self.Timer<CurTime()then
if !self.Do2 then self.Do2=1
RunConsoleCommand("wby_CLEANBODY_308")
_308PlaySoundAll("3088083421/mg/surv/nz_start.mp3")
for _,p in pairs(player.GetAll())do
p:SendLua("GAMEMODE:AddNotify(\"==Wave "..self.Do.." Begin==\",1,7)")end
end
_308TextAll("Remain:"..self.Remain,{y=.9,time=9999,fin=.15,chan=1})self.Do2=1
for x,z in pairs(self.ZTa2)do
if !IsValid(z)then
RunConsoleCommand("wby_CLEANBODY_308")
self.Remain=self.Remain-1
table.remove(self.ZTa2,x)elseif self.Remain<7 and !z.Spp then

z.Spp=ents.Create("obj_308_effect")
z.Spp:SetPos(z:GetPos()+Vector(0,0,150))
z.Spp:Spawn()z.Spp:SetSprite("effects/combinemuzzle2_noz")z.Spp:SetScale(100)z.Spp:Light()
z.Spp:SetColor(Color(255,255,255,100))z.Spp:SetParent(z)

end
end
if self.AmbT1<CurTime()then
self.AmbT1=CurTime()+math.Rand(9,18)sound.Play("ambient/levels/prison/inside_battle_zombie"..math.random(2,3)..".wav",self:GetPos(),0)end
if self.AmbT2<CurTime()then
self.AmbT2=CurTime()+math.Rand(1.5,3)sound.Play("ambient/levels/prison/inside_battle"..math.random(9)..".wav",self:GetPos(),0)end
if self.AmbT3<CurTime()then
self.AmbT3=CurTime()+math.Rand(4,9)sound.Play("ambient/levels/prison/inside_battle_soldier"..math.random(3)..".wav",self:GetPos(),0)end
if self.Timer<CurTime()and #self.ZTa2<11 then
self.Timer=CurTime()+1
local t={}
for c,z in pairs(self.ZTa)do
if z>0 then
table.insert(t,c)end
end
if #t>0 then
t=_308Table(t)
local z=ents.Create(t)self.ZTa[t]=self.ZTa[t]-1
z:SetAngles(Angle(0,math.random(-360,360),0))
local v=Vector(0,0,-12800)-z:GetForward()*3000
while !util.IsInWorld(v)do
z:SetAngles(Angle(0,math.random(-360,360),0))
v=Vector(0,0,-12800)-z:GetForward()*3000
end
z.JudgeDelay=2
z:SetPos(v)z:Spawn()self:DeleteOnRemove(z)table.insert(self.ZTa2,z)
end
end
if self.Timer2<CurTime()and #self.ZTa2<26 and self.Spawn2 then
self.Timer2=CurTime()+1.5
local t={}
for c,z in pairs(self.ZTa)do
if z>0 then
table.insert(t,c)end
end
if #t>0 then
t=_308Table(t)
local z=ents.Create(t)self.ZTa[t]=self.ZTa[t]-1
z:SetAngles(Angle(0,math.random(-360,360),0))
local v=Vector(0,0,-12800)-z:GetForward()*3000
while !util.IsInWorld(v)do
z:SetAngles(Angle(0,math.random(-360,360),0))
v=Vector(0,0,-12800)-z:GetForward()*3000
end
z.JudgeDelay=2
z:SetPos(v)z:Spawn()self:DeleteOnRemove(z)table.insert(self.ZTa2,z)
end
end
elseif self.Remain<1||!self.Do2 then
if self.Do2 then self.Do2=nil
--Add some end effect
self.Do=self.Do+1
self.Timer=CurTime()+20
_308PlaySoundAll("3088083421/mg/surv/nz_end.mp3")
for _,p in pairs(player.GetAll())do
p:SendLua("GAMEMODE:AddNotify(\"Wave "..(self.Do-1).." End\",1,7)")
if !p:Alive()then
p:Spawn()p:SetPos(Vector(288,678,-12800))p:StripWeapons()p:SetHealth(100)p:SetMaxHealth(100)
p:SetRunSpeed(300)p:SetWalkSpeed(200)p:SetJumpPower(1)
p:SetModel("models/player/group03/male_0"..math.random(9)..".mdl")
p:Give("weapon_308__usp")p:Give("weapon_308_knife")end
p:SetHealth(100)p:SetArmor(50)if self.Do<3 then
self.ZTa={["npc_308_zb"]=15,["npc_308_zombine"]=5,["npc_308_zbfast"]=25}self.Remain=45
p:Give("weapon_308_usp")p:Give("weapon_308_p228")elseif self.Do<4 then
self.ZTa={["npc_308_zb"]=25,["npc_308_zombine"]=10,["npc_308_zbstr"]=10,["npc_308_zbfast3"]=5}self.Remain=50
p:Give("weapon_308_m1894")elseif self.Do<5 then
self.Spawn2=nil
p:SendLua("GAMEMODE:AddNotify(\"Warning:Leaper Wave\",1,7)")self.ZTa={["npc_308_zbfast2"]=30}self.Remain=30
p:Give("weapon_308_shotgun")elseif self.Do<6 then self.Spawn2=1
self.ZTa={["npc_308_zb"]=15,["npc_308_zbgiant"]=5,["npc_308_headcrab"]=10,["npc_308_zbheadless"]=15,["npc_308_type8"]=5}self.Remain=50
p:Give("weapon_308_smg")elseif self.Do<7 then
p:SendLua("GAMEMODE:AddNotify(\"Warning:Boss Wave\",1,7)")_308PlaySoundAll("3088083421/mg/surv/th_checkpoint.mp3",50)local m=math.Clamp(math.floor(2+#player.GetAll()/2),2,5)
self.ZTa={["npc_308_ztank"]=m}self.Remain=m
p:Give("weapon_308_g3sg1")else
SafeRemoveEntity(self)p:ChatPrint("Thanks for testing!")end
end
end
_308TextAll("New wave will begin at next "..math.floor(self.Timer-CurTime()).." sec",{y=.9,time=9999,fin=.15,chan=1})--it stuck?
end
end
if self.Timer<=CurTime()and !self.Do then
self.Do=1
Muss330(p,"3088083421/mg/zamb.ogg",100,100)
_308PlaySoundAll("3088083421/mg/surv/nz_start.mp3",90)
for _,p in pairs(player.GetAll())do
p:SendLua("GAMEMODE:AddNotify(\"Wave 1 Begin\",1,7)")
p:Spawn()p:SetPos(Vector(288,678,-12800))p:StripWeapons()p:SetHealth(100)p:SetMaxHealth(100)
p:SetArmor(50)p:SetModel("models/player/group03/male_0"..math.random(9)..".mdl")
timer.Simple(1,function()if IsValid(p)then
p:SetRunSpeed(300)p:SetWalkSpeed(200)p:SetJumpPower(1)p:Give("weapon_308_glock")p:Give("weapon_308_knife")end end)
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
