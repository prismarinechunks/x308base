AddCSLuaFile()
DEFINE_BASECLASS( "base_anim" )
ENT.PrintName="Asgore"
ENT.Category="308..' Base"
ENT.RenderGroup=RENDERGROUP_TRANSLUCENT

function ENT:Initialize()
self.IsHit={}
if SERVER then
self:SetModel("models/hunter/misc/sphere025x025.mdl")
self:PhysicsInitSphere(10,"metal_bouncy")
self:SetMoveType(MOVETYPE_VPHYSICS)
self:SetSolid(0)
self:SetCollisionGroup(0)
self:DrawShadow(false)
self:SetColor(Color(255,128,0,235))
local p=self:GetPhysicsObject()
if IsValid(p)then p:EnableGravity(false)end
if self.TType then self:SetColor(Color(0,255,255,235))end
end
self:Think()
end
function ENT:Think()if CLIENT then return end
if !self:IsInWorld()then SafeRemoveEntity(self)return end
if self.IsEffect then return end
local m=self:GetModelScale()
for i=1,8 do
timer.Simple(i/40,function()if IsValid(self)then
for _,e in pairs(ents.FindInSphere(self:GetPos(),64*m))do
if self.Owner!=e then
e.UT_HurtT=e.UT_HurtT or CurTime()
if !self.HType||e.UT_HurtT<CurTime()then
e.UT_HurtT=CurTime()+.75
if(((e:GetVelocity():Length()>0 and self.TType)||(e:GetVelocity():Length()<=1 and !self.TType))and !e:IsNPC()||e:IsNPC())and !self.IsHit[e]then
self.IsHit[e]=1
if(e:IsNPC()||IsNextBot3(e)||e:IsPlayer())and e:Health()>0 then
e:EmitSound("3088083421/ut/hurtsound.wav")end
e:TakeDamage(self.Dmg or 25,self.Owner or self)end end
end
end
end end)
end
end

function ENT:OnTakeDamage(d)d:SetDamageForce(Vector())end
function ENT:PhysicsCollide()SafeRemoveEntity(self)end
if SERVER then return end
function ENT:Draw()
local m=self:GetModelScale()
local b=Material("undertale/spear_spearswing.png")
	render.SetMaterial(b)
	local pos=self:GetPos()
	render.DrawSprite(pos,128*m,64*m,self:GetColor())
end
