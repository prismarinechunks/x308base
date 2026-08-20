if !CanGame308()then return end
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
GAME308=0
BED308=0
bedwar308=0
_308CreateNet("bedwar308_stp0",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30pistol",p:GetNWInt("_30pistol")+5)p:SetAmmo(p:GetAmmoCount("pistol")-5,"pistol")end
end)
_308CreateNet("bedwar308_stp01",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30pistol",p:GetNWInt("_30pistol")-5)p:GiveAmmo(5,"pistol")end
end)
_308CreateNet("bedwar308_stp1",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30pistol",p:GetNWInt("_30pistol")+20)p:SetAmmo(p:GetAmmoCount("pistol")-20,"pistol")end
end)
_308CreateNet("bedwar308_stp11",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30pistol",p:GetNWInt("_30pistol")-20)p:GiveAmmo(20,"pistol")end
end)
_308CreateNet("bedwar308_stp2",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30pistol",p:GetNWInt("_30pistol")+40)p:SetAmmo(p:GetAmmoCount("pistol")-40,"pistol")end
end)
_308CreateNet("bedwar308_stp21",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30pistol",p:GetNWInt("_30pistol")-40)p:GiveAmmo(40,"pistol")end
end)
_308CreateNet("bedwar308_sts",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30SMG",p:GetNWInt("_30SMG")+1)p:SetAmmo(p:GetAmmoCount("smg1")-1,"smg1")end
end)
_308CreateNet("bedwar308_sts1",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30SMG",p:GetNWInt("_30SMG")-1)p:GiveAmmo(1,"smg1")end
end)
_308CreateNet("bedwar308_sta",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30AR2",p:GetNWInt("_30AR2")+1)p:SetAmmo(p:GetAmmoCount("ar2")-1,"ar2")end
end)
_308CreateNet("bedwar308_sta1",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetNWInt("_30AR2",p:GetNWInt("_30AR2")-1)p:GiveAmmo(1,"ar2")end
end)

_308CreateNet("bedwar308_camera",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("gmod_camera")then
p:Give("gmod_camera")p:ChatPrint("its FREE now!")--p:SetAmmo(p:GetAmmoCount("pistol")-1,"pistol")
end
end)
_308CreateNet("bedwar308_b",function()
local p=net.ReadEntity()
if IsValid(p)then
p:GiveAmmo(4,"308block")p:SetAmmo(p:GetAmmoCount("pistol")-1,"pistol")end
end)
_308CreateNet("bedwar308_crowbar",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_crowbar")then
p:Give("weapon_308_crowbar")p:SetAmmo(p:GetAmmoCount("pistol")-30,"pistol")end
end)
_308CreateNet("bedwar308_stunstick",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_stunstick")then
p:Give("weapon_308_stunstick")p:SetAmmo(p:GetAmmoCount("pistol")-35,"pistol")end
end)
_308CreateNet("bedwar308_wornd",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_worndagger")then
p:Give("weapon_308_worndagger")p:SetAmmo(p:GetAmmoCount("smg1")-7,"smg1")end
end)
_308CreateNet("bedwar308_frag",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_frag")then
p:Give("weapon_frag")p:SetAmmo(p:GetAmmoCount("smg1")-4,"smg1")elseif IsValid(p)then
p:GiveAmmo(1,"grenade")p:SetAmmo(p:GetAmmoCount("smg1")-4,"smg1")end
end)
_308CreateNet("bedwar308_begg",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_begg")then
p:Give("weapon_308_begg")p:SetAmmo(p:GetAmmoCount("smg1")-6,"smg1")elseif IsValid(p)then
p:GiveAmmo(1,"AR2AltFire")p:SetAmmo(p:GetAmmoCount("smg1")-6,"smg1")end
end)
_308CreateNet("bedwar308_epearl",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_epearl")then
p:Give("weapon_308_epearl")p:SetAmmo(p:GetAmmoCount("ar2")-2,"ar2")elseif IsValid(p)then
p:GiveAmmo(1,"308enderpearl")p:SetAmmo(p:GetAmmoCount("ar2")-2,"ar2")end
end)
_308CreateNet("bedwar308_rpg",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_rpg")then
p:Give("weapon_308_rpg")p:SetAmmo(p:GetAmmoCount("smg1")-5,"smg1")elseif IsValid(p)then
p:GiveAmmo(1,"RPG_Round")p:SetAmmo(p:GetAmmoCount("smg1")-5,"smg1")end
end)
_308CreateNet("bedwar308_knife",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_knife")then
p:Give("weapon_308_knife")p:SetAmmo(p:GetAmmoCount("smg1")-8,"smg1")end
end)
_308CreateNet("bedwar308_torch",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_torch")then
p:Give("weapon_308_torch")p:SetAmmo(p:GetAmmoCount("smg1")-5,"smg1")end
end)
_308CreateNet("bedwar308_swordd",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_sworddiamond")then
p:Give("weapon_308_sworddiamond")p:SetAmmo(p:GetAmmoCount("ar2")-4,"ar2")end
end)
_308CreateNet("bedwar308_sh",function()
local p=net.ReadEntity()
if IsValid(p)and !p:HasWeapon("weapon_308_sh")then
p:Give("weapon_308_sh")p:SetAmmo(p:GetAmmoCount("ar2")-3,"ar2")end
end)

_308CreateNet("bedwar308_a1",function()
local p=net.ReadEntity()
if IsValid(p)and p._30Armor>.9 then
p._30Armor=.9
if IsValid(p._30Armor2)then p._30Armor2:Remove()end
local w=ents.Create("prop_physics")w:DrawShadow()w:SetSolid(0)w:SetMoveType(0)w:SetColor(p:GetColor())w:SetModel("models/player/police.mdl")
w:ManipulateBoneScale(w:LookupBone("ValveBiped.Bip01_Head1"),Vector(.01,.01,.01))w:SetOwner(p)w:SetParent(p)w:AddEffects(EF_BONEMERGE)p._30Armor2=w
p:SetAmmo(p:GetAmmoCount("pistol")-50,"pistol")p:SetArmor(10)end
end)
_308CreateNet("bedwar308_a2",function()
local p=net.ReadEntity()
if IsValid(p)and p._30Armor>.7 then
p._30Armor=.7
if IsValid(p._30Armor2)then p._30Armor2:Remove()end
local w=ents.Create("prop_physics")w:DrawShadow()w:SetSolid(0)w:SetMoveType(0)w:SetColor(p:GetColor())w:SetModel("models/player/riot.mdl")
w:ManipulateBoneScale(w:LookupBone("ValveBiped.Bip01_Head1"),Vector(.01,.01,.01))w:SetOwner(p)w:SetParent(p)w:AddEffects(EF_BONEMERGE)p._30Armor2=w
p:SetAmmo(p:GetAmmoCount("smg1")-5,"smg1")p:SetArmor(30)end
end)
_308CreateNet("bedwar308_a3",function()
local p=net.ReadEntity()
if IsValid(p)and p._30Armor>.5 then
p._30Armor=.5
if IsValid(p._30Armor2)then p._30Armor2:Remove()end
local w=ents.Create("prop_physics")w:DrawShadow()w:SetSolid(0)w:SetMoveType(0)w:SetColor(p:GetColor())w:SetModel("models/player/combine_super_soldier.mdl")
w:ManipulateBoneScale(w:LookupBone("ValveBiped.Bip01_Head1"),Vector(.01,.01,.01))w:SetOwner(p)w:SetParent(p)w:AddEffects(EF_BONEMERGE)p._30Armor2=w
p:SetAmmo(p:GetAmmoCount("ar2")-4,"ar2")p:SetArmor(50)end
end)
_308CreateNet("bedwar308_pjump",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetGravity(1.2)p:SetAmmo(p:GetAmmoCount("ar2")-2,"ar2")end
end)
_308CreateNet("bedwar308_pspeed",function()
local p=net.ReadEntity()
if IsValid(p)then
p:SetWalkSpeed(275)p:SetRunSpeed(275)p:SetAmmo(p:GetAmmoCount("ar2")-1,"ar2")end
end)
if !game.SinglePlayer()then
function ENT:SpawnFunction(ply, tr)
if !tr.Hit||ply.Shield||#ents.FindByClass("game308_ban")>0 then return end
game.CleanUpMap()
local ent = ents.Create("obj_308_bedwar")
ent:Spawn()
end
end
hook.Add("PlayerSpawn","BEDWAR308",function(p)
if BED308>0 then
p._30Attacker=nil
p._30Armor=1
if IsValid(p._30Armor2)then p._30Armor2:Remove()p._30Armor2=nil end
p:SetMaterial("models/debug/debugwhite")
timer.Simple(0,function()if IsValid(p)and BED308>0 then
p:SetPos(p._30TeamPos)
if p._30Team==1 then 
p:SetColor(Color(255,0,0))else
p:SetColor(Color(0,0,255))end
p:StripWeapons()
p:StripAmmo()
p:Give("weapon_308_block")
p:SetGravity(1.7)
p:SetRunSpeed(250)
p:SetWalkSpeed(250)
p:SetJumpPower(300)
end end)
end
end)
if SERVER then
function ENT:Initialize()
if GAME308>0 then self.Dont=1 self:Remove()return end
if game.GetMap()!="gm_flatgrass" and game.GetMap()!="gm_hl1_lily_flatgrass_13" then _308TextAll(GAME308_LAN["gamemap"],{y=.9,chan=3,fxtime=1,col2="255 100 100"})self:Remove()return end
_30TeamM1=0
_30TeamM2=0
_30TeamVec1=0
_30TeamVec2=0
_30Bedwars=nil
_30ITEM=1
_30ITEM2=1
self.Timer_=10
BED308Ent=self
self:SetNoDraw(true)
_308GlobalMeleeRange=200
	self:SetMoveType(0)
	self:SetSolid(0)
	self.Timer=CurTime()+10
	self.Phase=0
	self.EPos=Vector(0,0,13145)
	local function S(v,m,a)
	local e=ents.Create("prop_physics")
	e:SetModel(m)
	e:SetPos(self.EPos-v)
	e:Spawn()
	e:SetMaterial(a)
	e:GetPhysicsObject():EnableMotion(false)
	self:DeleteOnRemove(e)
	end
	S(Vector(-2500,-2500),"models/hunter/blocks/cube8x8x8.mdl","phoenix_storms/wire/pcb_red")
	S(Vector(-2120,-2500),"models/hunter/blocks/cube8x8x8.mdl","phoenix_storms/wire/pcb_red")
	S(Vector(2500,2500),"models/hunter/blocks/cube8x8x8.mdl","phoenix_storms/wire/pcb_blue")
	S(Vector(2120,2500),"models/hunter/blocks/cube8x8x8.mdl","phoenix_storms/wire/pcb_blue")
	S(Vector(1000,1500),"models/hunter/blocks/cube8x8x8.mdl","brick/brick_model")
	S(Vector(-1000,-1500),"models/hunter/blocks/cube8x8x8.mdl","brick/brick_model")
	S(Vector(1500,-1000),"models/hunter/blocks/cube8x8x8.mdl","models/props_pipes/GutterMetal01a")
	S(Vector(-1500,1000),"models/hunter/blocks/cube8x8x8.mdl","models/props_pipes/GutterMetal01a")
	self:SetPos(Vector(0,0,15240))
_308TextAll(GAME308_LAN["bedm2"],{y=.2,fin=.01})
end
function ENT:OnRemove()
if self.Dont then return end
hook.Remove("SF3081")
for _,p in pairs(player.GetAll())do
BED308=0
GAME308=0
Muss330(p)
p:SetGravity(1)
_308GlobalMeleeRange=nil
p._30Team=nil
p:SetColor(color_white)
p:SetMaterial()
p:EmitSound("3088083421/mg/end.wav")
p.NextSpawnTime=CurTime()
timer.Simple(0,function()
BED308=0
GAME308=0
p:SetGravity(1)
_308GlobalMeleeRange=nil
p._30Team=nil
p:SetColor(color_white)
p:SetMaterial()
p:EmitSound("3088083421/mg/end.wav")
p.NextSpawnTime=CurTime()
end)
if self.No then
if _30TeamM1>0||IsValid(BED308Ent1)then
p:ChatPrint(GAME308_LAN["bedw1"])elseif _30TeamM2>0||IsValid(BED308Ent2)then
p:ChatPrint(GAME308_LAN["bedw2"])return end
end end
BED308Ent=nil
BED308Ent1=nil
BED308Ent2=nil
end
function ENT:Think()
BED308=1
GAME308=1
local ti=math.floor(self.Timer-CurTime())
if self.Phase<1 then
for _,p in pairs(player.GetAll())do
p:PrintMessage(4,GAME308_LAN1["bedwar"]..GAME308_LAN1["t"]..ti..GAME308_LAN1["t0"])end
if ti!=self.Timer_ and ti>=0 then
self.Timer_=ti
if ti==0 then
_308PlaySoundAll("minecraft/random/anvil_land.ogg",90)elseif ti<3 then
_308PlaySoundAll("minecraft/note/pling.ogg")elseif ti<5 then
_308PlaySoundAll("minecraft/note/harp.ogg")else
_308PlaySoundAll("minecraft/note/hat.ogg")end
end
elseif self.Phase>0 then
local l=GAME308_LAN["bedp"..self.Phase]
local c="255 255 255"
if self.Phase>5 then
l="ERROR"
c="255 0 0"
end
_308TextAll(GAME308_LAN1["rt"]..ti.."\n"..GAME308_LAN1["P"]..l,{fin=.01,y=.87,time=999,col=c})
local s="     √"
local s2=s
if !IsValid(BED308Ent1)then
s="     ×" end
if !IsValid(BED308Ent2)then
s2="     ×" end
_308TextAll(s..GAME308_LAN1["rs"].._30TeamM1,{y=.45,x=.01,fin=.03,time=999,col="255 0 0",chan=4})
_308TextAll(s2..GAME308_LAN1["rs"].._30TeamM2,{y=.54,x=.01,fin=.03,time=999,col="0 0 255",chan=3})
if ti==0 and self.Timer_!=ti then self.Timer_=ti _308PlaySoundAll("minecraft/note/pling.ogg")end
for _,p in pairs(player.GetAll())do
if p:GetPos().z<12000 and p:Alive()then
p:TakeDamage(15,p._30Attacker or game.GetWorld())end
if self.IsTime then p:TakeDamage(.1,game.GetWorld())end end
if(!game.SinglePlayer()and(_30TeamM1==0||_30TeamM2==0))||(game.SinglePlayer()and _30TeamM1==0 and _30TeamM2==0)then
self.No=1 SafeRemoveEntity(self)end
end
if self.Timer<=CurTime()then
self.Phase=self.Phase+1
if self.Phase<2 then
_30TeamVec1=Vector(2500,2500,13500)
_30TeamVec2=Vector(-2500,-2500,13500)
local function B(v,t)
local e=ents.Create("prop_physics")
e:SetModel("models/props_junk/wood_crate002a.mdl")
e:SetColor(Color(255,0,0))
e.IsMCBlock=1
e:SetMaterial("models/props_c17/FurnitureFabric003a")
local eff=ents.Create("obj_308_sprite")eff:SetSprite("icon16/flag_blue.png")
if t then BED308Ent1=e e.BED=1 eff:SetSprite("icon16/flag_red.png")else BED308Ent2=e e.BED=2 end
e:SetPos(v)e:Spawn()
eff:SetScale(64)eff:SetPos(v+Vector(0,0,300))eff:Spawn()e:DeleteOnRemove(eff)
e:SetHealth(1)
e:GetPhysicsObject():EnableMotion(false)
self:DeleteOnRemove(e)
end
local function C(v,t,a)
t=t or 1
a=a or "pistol"
local m="models/props_pipes/GutterMetal01a"
local c=color_white
local e=ents.Create("prop_physics")e.Timer=CurTime()+6
e.BEDSP=1
if a=="ar2" then
e.BEDSP=2 e.Timer=CurTime()+186
c=Color(255,255,0)m="models/shiny"
elseif a=="smg1" then
e.BEDSP=2 e.Timer=CurTime()+66
m="models/shiny"
end
e:SetModel("models/props_c17/SuitCase_Passenger_Physics.mdl")
e:SetColor(c)e.VecT=0
e:SetMaterial(m)e:SetPos(v)e:Spawn()e:SetSolid(0)e:GetPhysicsObject():EnableMotion(false)e.ItemM=0
self:DeleteOnRemove(e)
	bedwar308=bedwar308+1
	local w=bedwar308
	hook.Add("Think","bedwar308"..w,function()
	if !IsValid(e)then hook.Remove("bedwar308"..w)return end
	e:SetAngles(e:GetAngles()+Angle(0,1.5+e.ItemM*.1,0))
	e.VecT=Lerp(.3,e.VecT,math.sin(CurTime()*2))
	e:SetPos(v+Vector(0,0,e.VecT*2))
	local r
	for _,g in pairs(ents.FindInSphere(e:GetPos(),40))do
	if g:IsPlayer()and g:Alive()and !r then
	g:GiveAmmo(e.ItemM,a)e.ItemM=0 r=1
	end
	end
	if e.Timer<CurTime()then
	if a=="pistol" then
	e.Timer=CurTime()+t*_30ITEM2 else e.Timer=CurTime()+t*_30ITEM end
	e.ItemM=e.ItemM+1
	end
	end)
return e
end
B(_30TeamVec1+Vector(120,100),1)B(_30TeamVec2-Vector(120,100))
C(Vector(2400,2400,13540))C(Vector(-2400,-2400,13540))
local c=C(Vector(-2000,-2500,13540),35,"smg1")
c.Timer=CurTime()+6
local c2=C(Vector(2000,2500,13540),35,"smg1")
c2.Timer=CurTime()+6
C(Vector(1000,1500,13540),35,"smg1")C(Vector(-1000,-1500,13540),35,"smg1")
C(Vector(-1500,1000,13550),60,"ar2")C(Vector(1500,-1000,13550),60,"ar2")
_30TeamVec1=_30TeamVec1+Vector(-400,0,25)
_30TeamVec2=_30TeamVec2+Vector(400,0,25)
for _,p in pairs(player.GetAll())do
p:SetNWInt("_30pistol",0)
p:SetNWInt("_30SMG",0)
p:SetNWInt("_30AR2",0)
p:Spawn()
local r=math.random(2)
if r>1 then
if _30TeamM2>=_30TeamM1 then
p._30TeamPos=_30TeamVec1
p._30Team=1
_30TeamM1=_30TeamM1+1
else
p._30TeamPos=_30TeamVec2
p._30Team=2
_30TeamM2=_30TeamM2+1
end
else
if _30TeamM2<=_30TeamM1 then
p._30TeamPos=_30TeamVec2
p._30Team=2
_30TeamM2=_30TeamM2+1
else
p._30TeamPos=_30TeamVec1
p._30Team=1
_30TeamM1=_30TeamM1+1
end
end
--p:SetMoveType(MOVETYPE_NOCLIP)--Used for texting
p:StripWeapons()
p:StripAmmo()
p:Give("weapon_308_block")
end
self.Timer=CurTime()+606
Muss330(p,"music/hl1_song3.mp3")
elseif self.Phase<3 then
_30ITEM2=.5
self.Timer=CurTime()+600
Muss330(p,"music/hl2_song20_submix0.mp3")
elseif self.Phase<4 then
_30ITEM=.5
self.Timer=CurTime()+900
Muss330(p,"music/hl2_song1.mp3")
elseif self.Phase<5 then
self.Timer=CurTime()+900
_30Bedwars=1
Muss330(p,"music/hl2_song20_submix4.mp3")
elseif self.Phase<6 then
if IsValid(BED308Ent1)then
BED308Ent1:TakeDamage(100)end
BED308Ent1=nil
if IsValid(BED308Ent2)then
BED308Ent2:TakeDamage(100)end
BED308Ent2=nil
self.Timer=CurTime()+600
Muss330(p,"music/hl2_song14.mp3")
else self.IsTime=1
self.Timer=CurTime()+1200
Muss330(p,"music/hl2_song25_teleporter.mp3")
end
end
end

end
