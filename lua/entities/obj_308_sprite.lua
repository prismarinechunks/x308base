AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.PrintName="S"
ENT.Category="308..' Base"
ENT.Spawnable=false
ENT.RenderGroup=RENDERGROUP_TRANSLUCENT
ENT.Dust=0
ENT.DisaSpeed=4
ENT.AppeSpeed=4
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/blocks/cube8x8x8.mdl")
	self:SetMoveType(0)
	self:SetSolid(0)
	self:SetCollisionGroup(0)
	self:DrawShadow(false)
	end
self:Think()
end
function ENT:Think()
for l=1,8 do
timer.Simple(l/20,function()if IsValid(self)then
if self.Dust>0 then
local e=EffectData()e:SetMagnitude(self.Dust)local s=self:GetNWInt("SpriteH")
e:SetOrigin(self:GetPos()+Vector(math.random(-s,s)/4,math.random(-s,s)/4,s/2*(self:GetColor().a/255)))
util.Effect("308ut_dust",e)end
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
function ENT:SetScale(s)self:SetModelScale(s/100)self:SetNWInt("SpriteH",s)end
function ENT:OnTakeDamage()return end
if SERVER then return end
function ENT:DrawTranslucent()
local m=Material(self:GetNetworkedString("Sprite"))
local ss=self:GetNWInt("SpriteH")
local c=self:GetColor()
if m then
local pos=self:GetPos()+Vector(0,0,ss/2)
local l={x=c.r,y=c.g,z=c.b}
if !self:GetNWBool("Lig")then
l=render.ComputeLighting(pos,Vector(0,0,1))
l.x=c.r*(math.Clamp(l.x,0,1)+0.5)
l.y=c.g*(math.Clamp(l.y,0,1)+0.5)
l.z=c.b*(math.Clamp(l.z,0,1)+0.5)end
render.SetMaterial(m)
local n=EyePos()-pos n:Normalize()
local xy=Vector(n.x,n.y,0)xy:Normalize()
local p=math.acos(1)
local cos=math.cos(p)
n=Vector(xy.x*cos,xy.y*cos,math.sin(p))
render.DrawQuadEasy(pos,n,ss,ss,Color(l.x,l.y,l.z,c.a),180)
end
end
