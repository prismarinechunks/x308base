AddCSLuaFile()
DEFINE_BASECLASS( "base_anim" )
ENT.PrintName="Fire Ball"
ENT.Category = "Xbase | NPCs"
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT

if CLIENT then killicon.Add("obj_308_flowerf","3088083421/mariofireball",color_white)end
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/misc/sphere025x025.mdl")
	self:PhysicsInitSphere(16,"metal_bouncy")
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:DrawShadow(false)
	self:SetCollisionGroup(13)
	if self.TType then self:GetPhysicsObject():EnableGravity(false)end
	if IsValid(self.Owner)then self.Owner:DeleteOnRemove(self)end 
	end
self:Think()
end
function ENT:Think()if CLIENT then return end
if !self:IsInWorld()then SafeRemoveEntity(self)return end
end

function ENT:PhysicsCollide( data, physobj )
	if self.TType then return end
	if IsValid(physobj)then
	local LastSpeed = math.max( data.OurOldVelocity:Length(), data.Speed )
	local NewVelocity = physobj:GetVelocity()
	NewVelocity:Normalize()
	LastSpeed = math.max( NewVelocity:Length(), LastSpeed )
	local TargetVelocity = NewVelocity * LastSpeed
	if TargetVelocity.z>300 then TargetVelocity.z=300 end
	physobj:SetVelocity( TargetVelocity )end
	if IsValid(data.HitEntity)and data.HitEntity:GetClass()!=self:GetClass()then
local d=DamageInfo()
d:SetAttacker(self.Owner or self)
d:SetInflictor(self.Owner or self)
d:SetDamageType(8)
local dm=self.Dmg or 50
d:SetDamage(dm)
	data.HitEntity:TakeDamageInfo(d)
	self:EmitSound("3088083421/mario/kick.ogg",150)
	SafeRemoveEntity(self)
	end
end

function ENT:OnTakeDamage(d)d:SetDamageForce(Vector())end

if SERVER then return end
function ENT:Draw()
local b=Material("3088083421/mariofireball")
	render.SetMaterial(b)
	local pos=self:GetPos()
	local l=render.ComputeLighting(pos,Vector(0,0,1))
	l.x=255*(math.Clamp(l.x,0,1)+0.5)
	l.y=255*(math.Clamp(l.y,0,1)+0.5)
	l.z=255*(math.Clamp(l.z,0,1)+0.5)
	render.DrawSprite(pos,16*self:GetModelScale(),16*self:GetModelScale(),Color(l.x,l.y,l.z))
end
