AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.Type 			= "anim"
ENT.PrintName		= ""
ENT.Spawnable		= false
CS308=0
if SERVER then

function ENT:Initialize()
self.__MustRemove=1
	self:SetModel("models/weapons/w_c4_planted.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_FLYGRAVITY)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType(CONTINUOUS_USE)
	self:SetCollisionGroup(13)
	self:SetModelScale(.5)
	
	self.Timer=CurTime()+GetConVarNumber("wb3_c4")
	self.TimerDef=CurTime()
	self.TimerUn=CurTime()
	self.Def=20
	self.Beep=CurTime()+1.8
end

function ENT:OnRemove()
if CS308>0 then
for _,t in pairs(ents.FindByClass("obj_308_cs"))do t:Remove()end
timer.Simple(.5,function()BOMBTIME3088=nil
end)
else BOMBTIME3088=nil
end
if self.Timer>CurTime()then
return end
	util.ScreenShake(self:GetPos(),16,16,5,7500)
	local d=EffectData()d:SetOrigin(self:GetPos())util.Effect("308_c4",d)
	self:EmitSound("weapons/c4/c4_explode1.wav",511,70)
	sound.Play("weapons/c4/c4_explode1.wav",self:GetPos())
	local g=self:GetOwner()or self
	local e=ents.Create("env_explosion")
	e:SetOwner(g)
	e:SetPos(self:GetPos())
	e:SetKeyValue("iMagnitude","0")
	e:SetKeyValue("spawnflags","369")
	e:Spawn()
	e:Activate()
	e:Fire("Explode","",0)
	local e2=ents.Create("env_physexplosion")
	e2:SetOwner(g)
	e2:SetPos(self.Entity:GetPos())
	e2:SetKeyValue("magnitude","1200")
	e2:SetKeyValue("radius","1500")
	e2:SetKeyValue("spawnflags","3")
	e2:Spawn()
	e2:Activate()
	e2:Fire("Explode","",0)
	for k,v in pairs(ents.FindInSphere(self:GetPos(),2500))do
	local d=self:GetPos():Distance(v:GetPos())/5
	v:TakeDamage(d,g,g)
	end
	for w,p in pairs(player.GetAll())do
	p:ScreenFade(SCREENFADE.IN,Color(255,255,255,255),1,.3)
	p:EmitSound("weapons/c4/c4_explode1.wav",511,80)
	p:ChatPrint(GAME308_LAN1["cs3"])
	end
end
ENT.Warn={}
function ENT:Think()
if self.Beep<CurTime()then
self:EmitSound("weapons/c4/c4_beep1.wav",511)
local d=EffectData()d:SetOrigin(self:GetPos())util.Effect("308_c4beep",d)
for w,p in pairs(player.GetAll())do
p:PrintMessage(4,math.floor(self.Timer-CurTime()))
if self.Timer<CurTime()then
SafeRemoveEntity(self)
elseif self.Timer<CurTime()+2 then
self.Beep=CurTime()+.1
_308PlaySoundAll("weapons/c4/c4_beep1.wav")
self:SetColor(Color(255,0,0))
elseif self.Timer<CurTime()+5 then
self.Beep=CurTime()+.2
elseif self.Timer<=CurTime()+10 then
if !self.Warn[p]then
self.Warn[p]=1
if p.IsCSTE then
Muss330Personal(p,"3088083421/mg/t/tenseccount.mp3")else
Muss330Personal(p,"3088083421/mg/ct/tenseccount.mp3")end
end
self.Beep=CurTime()+.3
elseif self.Timer<CurTime()+15 then
self.Beep=CurTime()+.6
elseif self.Timer<CurTime()+25 then
self.Beep=CurTime()+.8
elseif self.Timer<CurTime()+35 then
self.Beep=CurTime()+1
else
self.Beep=CurTime()+1.5
end
end
end

if self.TimerUn<CurTime()then
self.Def=20
end
end
function ENT:Use(a)if CS308>0 and !a.IsCSCT then return end
if IsValid(a)and a:IsPlayer()then
if self.TimerDef<CurTime()then
a:PrintMessage(4,"Defusing "..self.Def.."/20")
self.Def=self.Def-1
self.TimerDef=CurTime()+.35
self.TimerUn=CurTime()+1
if self.Def>18 then
self:EmitSound("weapons/c4/c4_disarm.wav")
elseif self.Def>=0 then
self:EmitSound("weapons/c4/c4_click.wav")
else
for w,p in pairs(player.GetAll())do
p:ChatPrint("Bomb has been defused by "..a:Nick())
p:EmitSound("3088083421/mg/bombdef.wav",511)
end
BOMBTIME3088=nil
self:Remove()
end
end
end

end end