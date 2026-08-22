AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.PrintName="Ambient Sound Emitter"
ENT.Category = "Xbase | NPCs"
ENT.RenderGroup=8
ENT.Editable=true
ENT.Spawnable=true
ENT.ETIME=0

function ENT:SetupDataTables()
self:NetworkVar("String",0,"Sound",{KeyName="sound",Edit={type="String",order=1}})
self:NetworkVar("Int",1,"Volume",{KeyName="volume",Edit={type="Int",min=0,max=511,order=2}})
self:NetworkVar("Int",2,"Pitch",{KeyName="pitch",Edit={type="Int",min=25,max=400,order=3}})
self:NetworkVar("Float",3,"EmitDelay",{KeyName="emitdelay",Edit={type="Float",title="EmitDelay(0=play once)",min=0,max=999,order=4}})
self:NetworkVar("Bool",4,"Visible",{KeyName="visible",Edit={type="Bool",title="AlwaysVisible",order=5}})
if SERVER then
self:NetworkVarNotify("Sound",self.OnChanged3)
self:NetworkVarNotify("Volume",self.OnChanged)
self:NetworkVarNotify("Pitch",self.OnChanged)
self:NetworkVarNotify("EmitDelay",self.OnChanged)
end
end
if SERVER then
function ENT:OnChanged(v,o,n)
if o!=n then
self.ETIME=0
end
end
function ENT:OnChanged3(v,o,n)
if o!=n then
self:StopSound(o)end
end
end

function ENT:SpawnFunction(p,tr,c)
if !tr.Hit then return end

local ent=ents.Create(c)
ent:SetPos(tr.HitPos+tr.HitNormal*16)
ent:SetVolume(70)
ent:SetPitch(100)
ent:SetEmitDelay(0)
ent:SetSound("vo/npc/male01/hi0"..math.random(2)..".wav")
ent:SetColor(Color(255,255,0))
ent:SetCreator(p)ent:Spawn()
ent:Activate()
return ent
end
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/blocks/cube025x025x025.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(8)
	self:DrawShadow(false)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(1)
	local p=self:GetPhysicsObject()
	if IsValid(p)then
	p:Wake()end
	self:NextThink(CurTime())
	local p=self:GetCreator()
	if IsValid(p)and p._308_ENTN then p._308_ENTN=1
	if !file.Find("rb655_extended_spawnmenu.lua","LUA")then
	p:ChatPrint("If you want more convient to find the sounds, you can visit this mod websites to get Extended Spawnmenu\nthat mod can help you a lot :)")
	end
	end
	end
end
function ENT:OnRemove()self:StopSound(self:GetSound())end
function ENT:Think()self:NextThink(CurTime()+.01)if SERVER and self.ETIME and self:GetSound()!="" and self.ETIME<CurTime()then
self.ETIME=CurTime()+self:GetEmitDelay()self:EmitSound(self:GetSound(),self:GetVolume(),self:GetPitch())
if self:GetEmitDelay()==0 then self.ETIME=nil return end
end
end
function ENT:OnTakeDamage()return end
if CLIENT then
local c={["gmod_tool"]=1,["weapon_physgun"]=1}
function ENT:Draw()
local p=LocalPlayer()
if IsValid(p)then
local w=p:GetActiveWeapon()
if self:GetVisible()||(IsValid(w)and c[w:GetClass()])then
render.SetMaterial(Material("icon32/unmuted.png"))render.DrawSprite(self:GetPos(),32,32,self:GetColor())end
end
end
end