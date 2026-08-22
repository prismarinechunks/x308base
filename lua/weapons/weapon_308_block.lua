SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["block"]
SWEP.Category = "X Base | Misc"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/v_pistol.mdl"
SWEP.WorldModel = "models/props_junk/wood_crate001a_damaged.mdl"
SWEP.ModelScale=.5
SWEP.WorldModelFix=1
SWEP.Material="models/debug/debugwhite"
SWEP.PickDirectly=true
SWEP.DrawAnim="throw"
SWEP.IdleAnim="throw"
SWEP.DrawAnimRate=0
SWEP.IdleAnimRate=0
SWEP.Primary.ClipSize=1
SWEP.Primary.DefaultClip=1
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo="308block"
SWEP.Text=GAME308_LANWEP["fist"]
SWEP.TextEquip=GAME308_LAN["mc"]
SWEP.Slot = 0
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.SA_IsSight = false

SWEP.AmmoHUD=1
SWEP.DrawTime = .5
SWEP.CenterPos = Vector(0,80,-2)
SWEP.ViewModelBoneMods = {
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(20.825, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, -30, -0.422), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/props_junk/wood_crate001a.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 0, 0), angle = Angle(-49.329, 0, -90), size = Vector(.1,.1,.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/props_junk/wood_crate001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.719, 2.092, -6.014), angle = Angle(0, -42.757, 180), size = Vector(0.3, 0.3, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} }
}
local A=0
if SERVER then
util.AddNetworkString("308block")else
net.Receive("308block",function()A=1 end)end
game.AddAmmoType({name="308block"})
if CLIENT then language.Add("308block_ammo","Block")end
function SWEP:CustomInit()
self:SetVar("Timer",CurTime())
end
function SWEP:CustomEquip()
self:SetClip1(0)
if(game.GetMap()=="gm_minecraft_garden_day"||game.GetMap()=="gm_minecraft_garden_night")and !self.Owner._308_MCMessage then
self.Owner:ChatPrint("You choose a best map(i guess)")self.Owner._308_MCMessage=1
end
end
function SWEP:OnDrop2()if !self.T then self:Remove()return end
self:SetClip1(1)end
function SWEP:CustomThink()local ply=self.Owner
self:PrintNamed()
if self:Ammo1()<1 and !self.CreateM then
self.T=nil
self:SetColor(Color(0,0,0,0))else
self.T=1
local c=ply:GetColor()
if c.r==255 and c.g==255 and c.b==255 then
c=ply:GetPlayerColor()
c=Color(math.floor(c.r*255),math.floor(c.g*255),math.floor(c.b*255))
end
self:SetColor(c)
end
self:SetMaterial(self.Mater)
if !ply:KeyDown(IN_ATTACK)then self.Primary.Automatic=true end
if !ply:KeyDown(IN_ATTACK2)then self:SetNextSecondaryFire(CurTime())end
if CLIENT then
A=math.Clamp(A-.015,0,.4)
local a=A
if a>.2 then a=.4-a end
self.ViewModelBoneMods={
["ValveBiped.base"]={scale=Vector(.009,.009,.009),pos=Vector(20.825+a*55,-a*10,-a*a*10),angle=Angle(-10,-a*80,-10+a*190)},
["ValveBiped.Bip01_R_Clavicle"]={scale=Vector(1,1,1),pos=Vector(0,-30,-0.422),angle=Angle()}
}
self.VElements["1"]["color"]=self:GetColor()
self.VElements["1"]["material"]=self:GetMaterial()
self.WElements["1"]["color"]=self:GetColor()
self.WElements["1"]["material"]=self:GetMaterial()
self:UpdateBonePositions(ply:GetViewModel())
end
end
SWEP.Mater="models/debug/debugwhite"
SWEP.LV=0
SWEP.Bl=1
SWEP.BlHP=30
function SWEP:Reload()if self.Owner:KeyPressed(IN_RELOAD)then
self.LV=self.LV+1
self.Mater="models/debug/debugwhite"
self.Bl=1
self.BlHP=30
if self.LV<2 then self.Mater="hunter/myplastic" self.Bl=2 self.BlHP=60 elseif self.LV<3 then self.Mater="phoenix_storms/cube" self.Bl=3 self.BlHP=90 elseif self.LV<4 then self.Mater="phoenix_storms/metalset_1-2" self.Bl=5 self.BlHP=140 elseif self.LV<5 then self.Mater="models/dav0r/hoverball" self.Bl=8 self.BlHP=200 else self.LV=0 end
end
end
function SWEP:PrimaryAttack()
if CLIENT then return end
local ply=self.Owner
local t=self:TraceL(_308GlobalMeleeRange or 200)
if IsValid(t.Entity)and(t.Entity:GetClass()=="prop_physics"||t.Entity:GetClass()=="prop_physics_multiplayer")then
if(t.Entity.IsMCBlock and t.Entity:Health()-10<1)||self.CreateM then t.Entity:TakeDamage(999,ply)end
t.Entity:TakeDamage(10,ply)
t.Entity:EmitSound("physics/wood/wood_box_impact_soft"..math.random(3)..".wav",400,60)
self:SetNextPrimaryFire(CurTime()+.2)
self:SetNextSecondaryFire(CurTime()+.2)else
if !t.Hit then
self.Primary.Automatic=false elseif IsValid(t.Entity)then
t.Entity:EmitSound("3088083421/wep/hit1.ogg")t.Entity:TakeDamage(5,ply)self.Primary.Automatic=false
end
end
ply:SetAnimation(PLAYER_ATTACK1)
net.Start("308block")
net.Send(ply)
self:SetNextPrimaryFire(CurTime()+.2)
self:SetNextSecondaryFire(CurTime()+.2)
end
function SWEP:SecondaryAttack()
if SERVER and(self:Ammo1()>self.Bl-1||self.CreateM)then
local ply=self.Owner
local t=self:TraceL(200)
if t.Hit then
self:SetNextPrimaryFire(CurTime()+.2)
self:SetNextSecondaryFire(CurTime()+.2)
	local c=ply:GetColor()
	if c.r==255 and c.g==255 and c.b==255 then
	c=ply:GetPlayerColor()
	c=Color(math.floor(c.r*255),math.floor(c.g*255),math.floor(c.b*255))
	end
--Some Original Code By Minecraft SWEP
local v=t.HitPos+t.HitNormal*18
local m=20
local m2=40
v.x=math.floor(v.x/m2)*m2+m
v.y=math.floor(v.y/m2)*m2+m
local cv=Vector()
if t.HitNonWorld then
v.z=math.floor((v.z-m)/m2)*m2+m2
cv=t.Entity:GetPos()else
v.z=math.floor(v.z/m2)*m2+m2
end
if !t.HitWorld then
local hitz=t.HitPos.z
local vz=cv.z
local hmc=hitz-vz
	if hitz<0 then
	hitz=-hitz
	end
	if vz<0 then
	vz=-vz
	end
local hmc2=hitz-vz
	if hmc2<0 then
	hmc2=-hmc2
	end
local o=0
if hmc2>(m-5.1)&& hmc2<(m-4.9)then // top OR bottom
	if hmc<0 then
	o=2
	elseif hmc>0 then
	o=1
	end
end
if o<1 then  //one of the four sides
	v.z=math.floor(v.z/m2)*m2
	elseif o<2 then //top
		v.z=math.floor(v.z/m2)*m2+m2
		if(v.z-v.z)<-1 then // bug!
		v.z=math.floor(v.z/m2)*m2
		end
	else //bottom
		v.z=math.floor(v.z/m2)*m2
		if v.z-v.z>1 then
		v.z=math.floor(v.z/m2)*m2+m2
		end
	end
end
local n=_308CreateBlock(v,ply)
if IsValid(n)then
n:SetColor(self:GetColor())n.Bl=self.Bl
if !self.CreateM then
self:TakePrimaryAmmo(self.Bl)else n.Bl=0
end
net.Start("308block")
net.Send(ply)
ply:SetAnimation(PLAYER_ATTACK1)
n:SetMaxHealth(self.BlHP)
n:SetHealth(self.BlHP)
n:SetMaterial(self:GetMaterial())
if !IsValid(BED308Ent)then
undo.Create("Block")
undo.AddEntity(n)
undo.SetPlayer(ply)
undo.SetCustomUndoText("Undone block")
undo.Finish()
end
else self:EmitSound("common/bugreporter_succeeded.wav",60)end
end
end
end
function _308CreateBlock(v,o)
if CLIENT then return end
local r
if !IsValid(o)then return end
if BED308>0 and IsValid(BED308Ent)then
if v:Distance(_30TeamVec1)<120 then
r=1 elseif v:Distance(_30TeamVec2)<120||v.z<12701 then
r=1 end
end
for k,e in pairs(ents.FindInSphere(v,20))do
if(e:IsNPC()||IsNextBot3(e))and e:Health()>0 then r=1 end
end
for k,e in pairs(ents.FindInSphere(v,25))do
if e!=o and(e:IsPlayer()and e:Alive())then r=1 end
end
for k,e in pairs(ents.FindInSphere(v,19.5))do
if e==o then r=1 end
end
for k,e in pairs(ents.FindInSphere(v,100))do
if e.BEDSP then r=1 end
end
for k,e in pairs(ents.FindInSphere(v,5))do
if((e:GetClass()=="prop_physics"||e:GetClass()=="prop_physics_multiplayer")and e.IsMCBlock)||(e:GetClass()=="minecraft_block"||e:GetClass()=="minecraft_block_waterized"||e:GetClass() == "mc_tnt"||e:GetClass() == "mc_cake")then r=1 end
end
if r||!util.IsInWorld(v)then return end
local n=ents.Create("prop_physics")n:SetCreator(o)n:SetModel("models/props_junk/wood_crate001a.mdl")n:SetPos(v)n:Spawn()n:DrawShadow()n.__MustRemove=1 n.IsMCBlock=1 n:GetPhysicsObject():EnableMotion()n:SetMaterial("models/debug/debugwhite")n:EmitSound("physics/wood/wood_box_impact_hard"..math.random(6)..".wav",400,60)
if IsValid(BED308Ent)then BED308Ent:DeleteOnRemove(n)n:SetSolid(SOLID_BBOX)n:SetSolid(SOLID_BBOX)n:SetCollisionBounds(Vector(20.01,20.01,20),-Vector(20.01,20.01,20))end
return n
end
function SWEP:CusHUD()
if #ents.FindByClass("obj_308_bedwar")>0 then
local p=self.Owner
draw.SimpleText("pistol ammo:"..p:GetAmmoCount("pistol"),"entcheck",ScrW()*.01,ScrH()*.63,Color(194,121,96))
draw.SimpleText("SMG ammo:"..p:GetAmmoCount("smg1"),"entcheck",ScrW()*.01,ScrH()*.67,Color(255,255,255))
draw.SimpleText("AR2 ammo:"..p:GetAmmoCount("ar2"),"entcheck",ScrW()*.01,ScrH()*.71,Color(255,255,0))
end
end
hook.Add("PropBreak","308_mc_block",function(p,d,m)
if d.IsMCBlock then
if d.BED then
_308PlaySoundAll("minecraft/mob/enderdragon/growl"..math.random(4)..".ogg",math.random(95,105))
for _,pl in pairs(player.GetAll())do
if d.BED==1 then
pl:ChatPrint(GAME308_LAN["bed1"])else
pl:ChatPrint(GAME308_LAN["bed2"])end
end
return end
if p:IsPlayer()then p:GiveAmmo(d.Bl or 1,"308block")end
local v=d:WorldSpaceCenter()
local m=d:GetMaterial()
local c=d._30Color or d:GetColor()
if SERVER then
local e=EffectData()e:SetOrigin(d:GetPos())e:SetMagnitude(1)util.Effect("308mc_block",e)end
timer.Simple(0,function()for k,e in pairs(ents.FindInSphere(v,100))do if e:GetClass()=="prop_physics" and e:GetMaterial()==m and string.find(e:GetModel(),"models/props_junk/wood_crate001a_chunk0")then e:Remove()end end end)
end end)

hook.Add("EntityTakeDamage","308_mc_block",function(v,d)
if CLIENT then return end
local a=d:GetAttacker()
if v.IsMCBlock then
if v.BED then
if d:GetDamageType()!=0 and d:GetDamageType()!=4 then
d:SetDamage(0)end
if IsValid(a)and a._30Team==v.BED then d:SetDamage(0)end
return end
if BED308>0 and d:GetDamageType()!=0 and d:GetDamageType()!=4 and d:GetDamageType()!=64 then
d:SetDamage(0)return end
if SERVER then
local e=EffectData()e:SetOrigin(v:GetPos())e:SetMagnitude(math.Clamp(v:GetMaxHealth()/d:GetDamage(),0,1))util.Effect("308mc_poison",e)end
timer.Simple(0,function()if IsValid(v)then
v._30Color=v._30Color or v:GetColor()
local c=v._30Color
local m=v:Health()/v:GetMaxHealth()
v:SetColor(Color(math.Clamp(c.r*m,0,255),math.Clamp(c.g*m,0,255),math.Clamp(c.b*m,0,255),c.a))
end end)
end
if BED308<1 then return end
if v:IsPlayer()then
if IsValid(a)and a._30Team==v._30Team and a!=v then d:ScaleDamage(0)return end
if d:GetDamageType()==32 and d:GetDamage()<10 then d:ScaleDamage(0)return nil elseif d:GetDamageType()==32 then d:ScaleDamage(.35)end
if d:GetDamageType()==64 then d:ScaleDamage(.5)end
v._HurtT=CurTime()+10
v._30Attacker=a
if d:GetDamage()<1 then return end
if _30Bedwars then
d:ScaleDamage(99)return end
if v._30Armor then
d:ScaleDamage(v._30Armor)end
--v:SetGroundEntity(NULL)
--v:SetLocalVelocity(v:GetVelocity()+d:GetDamageForce()/5)
end
end)
