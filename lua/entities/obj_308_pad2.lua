AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.PrintName="Teleport Pad"
ENT.Category="308..' Base"
ENT.Editable=true
ENT.Spawnable=true
ENT.Retimer=0
function ENT:SetupDataTables()
self:NetworkVar("Int",0,"CorrespondingCode",{KeyName="correspondingcode",Edit={type="Int",min=1,max=999,order=1}})
end

function ENT:SpawnFunction(ply,tr,c)
if !tr.Hit then return end
local ent=ents.Create(c)
ent:SetPos(tr.HitPos+tr.HitNormal*16)
ent:SetCreator(ply)ent:Spawn()
ent:Activate()
return ent
end
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/plates/plate1x1.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local p=self:GetPhysicsObject()
	if IsValid(p)then
	p:Wake()end
	local e=ents.Create("prop_physics")e:SetModel(self:GetModel())
	e:SetMaterial("models/props_combine/com_shield001a")e:Spawn()e:SetSolid(0)e:SetPos(self:GetPos()+self:GetUp()*3)e:SetAngles(self:GetAngles())e:SetParent(self)
	end
end
function ENT:TeleportEffect(n,e)
if n:GetResetVelocity()then e:SetLocalVelocity(Vector())end
if n:GetEffect()then
if e:IsPlayer()then
e:ScreenFade(SCREENFADE.IN,Color(0,250,0,255),.5,0)end
local r=math.random(4)if r>2 then r=r+4 end
self:EmitSound("beams/beamstart"..r..".wav")
e:EmitSound("beams/beamstart"..r..".wav")end
end
function ENT:PhysicsCollide(d)if SERVER then
local n={}
for g,k in pairs(ents.FindByClass("obj_308_pad2_d"))do
if k:GetCorrespondingCode()==self:GetCorrespondingCode()then
table.insert(n,k)end
end
local e=d.HitEntity
if IsValid(e)and(e:IsNPC()||e:IsPlayer())then
if #n>0 then
local v1,v=e:GetCollisionBounds()v=Vector(0,0,v.z/2)
n=n[math.random(#n)]
e:SetLocalPos(n:GetPos()+v)
timer.Simple(0,function()if IsValid(e)and e:GetPos()!=n:GetPos()+v then
v=v+Vector(0,0,9)
e:SetLocalPos(n:GetPos()+v)
if e:GetPos()!=n:GetPos()+v then
e:ChatPrint("The destination may have been blocked.")else
self:TeleportEffect(n,e)end
else
self:TeleportEffect(n,e)
end
end)
elseif self.Retimer<CurTime()then
self.Retimer=CurTime()+2
self:EmitSound("buttons/button2.wav")if e:IsPlayer()then
e:ChatPrint("Missing corresponding destination!")end
end
end
end
end

function ENT:Think()end
function ENT:OnTakeDamage()return end