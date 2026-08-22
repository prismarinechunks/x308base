AddCSLuaFile()
DEFINE_BASECLASS( "base_anim" )
ENT.PrintName="?"
ENT.Category = "Xbase | NPCs"
ENT.RenderGroup=RENDERGROUP_TRANSLUCENT
ENT.BFIX=0

function ENT:Initialize()
self.IsHit={}
if SERVER then
self:SetModel("models/hunter/misc/platehole4x4c.mdl")
self:SetMaterial("model_color")
self:PhysicsInitSphere(10,"metal_bouncy")
self:SetMoveType(MOVETYPE_VPHYSICS)
self:SetSolid(0)
self:SetColor(Color(255,255,0,215))
self:SetCollisionGroup(0)
util.SpriteTrail(self,0,Color(255,255,0,255),true,200,252,1.5,10,"trails/smoke.vmt")
self:DrawShadow(false)
self:SetNoDraw(true)
self:SetColor(Color(255,128,0,235))
local p=self:GetPhysicsObject()
if IsValid(p)then p:EnableGravity(false)p:Wake()end
if self.TType then self:SetColor(Color(0,255,255,235))end
SafeRemoveEntityDelayed(self,15)
end
self:Think()
end
function ENT:Think()if CLIENT then return end
if !self:IsInWorld()then
self.BFIX=self.BFIX+1
end
if self.BFIX>1 then
SafeRemoveEntity(self)
return end
local m=self:GetModelScale()
util.SpriteTrail(self,0,Color(255,255,0,255),true,m*200,252,1.5,10,"trails/smoke.vmt")
for i=1,5 do
timer.Simple(i/20-.1,function()if IsValid(self)then
for _,e in pairs(ents.FindInSphere(self:GetPos(),64*m))do
if self.Owner!=e and !self.IsHit[e]then
self.IsHit[e]=1
if(e:IsNPC()||IsNextBot3(e)||e:IsPlayer())and e:Health()>0 then
e:EmitSound("3088083421/soulknight/death_monster.mp3",511)end
e:TakeDamage(50,self.Owner or self)end
end
end end)
end
end
