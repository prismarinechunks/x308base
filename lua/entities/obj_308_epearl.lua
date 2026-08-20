AddCSLuaFile()
DEFINE_BASECLASS( "base_anim" )
ENT.PrintName="Ender Pearl"
ENT.Category="308..' Base"
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT

function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/misc/sphere025x025.mdl")
	self:PhysicsInitSphere(16,"metal_bouncy")
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:DrawShadow(false)
	self:SetCollisionGroup(13)
	self._Deaths=0
	if IsValid(self.Owner)then self.Owner:DeleteOnRemove(self)self._Deaths=self.Owner:Deaths()end 
	end
self:Think()
end
function ENT:Think()if CLIENT then return end
if !self:IsInWorld()then SafeRemoveEntity(self)return end
end
BED308=0
function ENT:PhysicsCollide(data)
local o=self.Owner
if IsValid(o)and self._Deaths==o:Deaths()then
local v=self:WorldSpaceCenter()
if !util.IsInWorld(v+Vector(0,0,70))then v=v-Vector(0,0,70)
elseif !util.IsInWorld(v-Vector(0,0,10))then v=v+Vector(0,0,10)
end
if BED308>0 and self:GetPos().z<11500 then self:Remove()return end
o:SetLocalPos(v)
o:SetLocalVelocity(Vector())
o:SetVelocity(Vector())
self.praT=CurTime()+.1
local p=v+VectorRand()*(99+math.random(50))
for l=1,12 do
local e=ents.Create("obj_308_effect")
p=v+VectorRand()*(99+math.random(50))
local c="sprites/physg_glow1"
if MC_NoMissMDL then
c="particles/minecraft/smoke"..math.random(0,5)end
e:SetPos(p)e.Move=(v-p)*math.Rand(.005,.01)e:Spawn()e:SetColor(Color(255,0,255))e:SetSprite(c)e:SetScale(math.Rand(8,10))e.DisaSpeed=3 e.Disappear=1
end
o:TakeDamage(5,game.GetWorld())
o:EmitSound(_308Table({"minecraft/mob/endermen/portal.ogg","minecraft/mob/endermen/portal2.ogg"}))
o:EmitSound("3088083421/wep/hit1.ogg")
end
self:Remove()
end

function ENT:OnTakeDamage(d)d:SetDamageForce(Vector())end

if SERVER then return end
function ENT:Draw()
local b=Material("entities/weapon_308_epearl.png")
	render.SetMaterial(b)
	local pos=self:GetPos()
	local l=render.ComputeLighting(pos,Vector(0,0,1))
	l.x=255*(math.Clamp(l.x,0,1)+0.5)
	l.y=255*(math.Clamp(l.y,0,1)+0.5)
	l.z=255*(math.Clamp(l.z,0,1)+0.5)
	render.DrawSprite(pos,16*self:GetModelScale(),16*self:GetModelScale(),Color(l.x,l.y,l.z))
end
