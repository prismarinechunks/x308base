AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.PrintName="!Special Point"
ENT.Category="308..' Base"
ENT.Spawnable=true
ENT.RenderGroup=RENDERGROUP_TRANSLUCENT
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/blocks/cube2x2x2.mdl")
	self:SetMoveType(0)
	self:SetSolid(0)
	self:SetCollisionGroup(0)
	self:DrawShadow(false)
	end
end
function ENT:Think()
for l=1,8 do
timer.Simple(l/20,function()if IsValid(self)then
if self.Disappear then
self:SetColor(Color(self:GetColor().r,self:GetColor().g,self:GetColor().b,math.Clamp(self:GetColor().a-self.DisaSpeed,0,255)))
if self:GetColor().a<1 then
SafeRemoveEntity(self)
end
elseif self.Appear and self:GetColor().a<255 then
self:SetColor(Color(self:GetColor().r,self:GetColor().g,self:GetColor().b,math.Clamp(self:GetColor().a+self.AppeSpeed,0,255)))
end
if self.Move then
self:SetPos(self:GetPos()+self.Move)
end
end end)
end end
function ENT:Light()self:SetNWBool("Lig",true)end
function ENT:SetSprite(p)self:SetNetworkedString("Sprite",p)end
function ENT:SetScale(s,t)
if t then
for l=1,20 do
timer.Simple((t/20)*l,function()if IsValid(self)then self:SetModelScale((s/100)*l/20)self:SetNWInt("SpriteH",s*l/20)end end)end else
self:SetModelScale(s/100)self:SetNWInt("SpriteH",s)end
end
function ENT:OnTakeDamage()return end
if SERVER then return end
function ENT:Draw()
local m=self:GetNWInt("SpriteH")
local c=self:GetColor()
local b=Material(self:GetNetworkedString("Sprite"))
if !b then return end
render.SetMaterial(b)
local pos=self:GetPos()
local l={x=c.r,y=c.g,z=c.b}
if !self:GetNWBool("Lig")then
l=render.ComputeLighting(pos,Vector(0,0,1))
l.x=c.r*(math.Clamp(l.x,0,1)+0.5)
l.y=c.g*(math.Clamp(l.y,0,1)+0.5)
l.z=c.b*(math.Clamp(l.z,0,1)+0.5)end
render.DrawSprite(pos,m,m,Color(l.x,l.y,l.z,c.a))
end
