AddCSLuaFile()
DEFINE_BASECLASS( "base_anim" )
ENT.PrintName="Asgore Attack"
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT
function ENT:Initialize()
local tr=util.TraceLine({
start=self:GetPos(),
endpos=self:GetPos()+Vector(0,0,99999),
filter=self,
mask=MASK_SHOT_HULL})
local tr2=util.TraceLine({
start=self:GetPos(),
endpos=self:GetPos()-Vector(0,0,99999),
filter=self,
mask=MASK_SHOT_HULL})
if !tr.Hit||!tr2.Hit then return end
if SERVER then
self:SetMoveType(0)
self:SetSolid(0)
self:SetCollisionGroup(0)
self:DrawShadow(false)
if IsValid(self.Owner)then self.Owner:DeleteOnRemove(self)end 
SafeRemoveEntityDelayed(self,1.8)
local m=50
for i=1,20 do
timer.Simple(i/40+.8,function()if IsValid(self)then
self:SetNoDraw(true)
local e=ents.Create("obj_308ut_dreemerball")
e:SetPos(tr.HitPos+Vector(math.random(-m,m),math.random(-m,m),0))
e:SetOwner(self.Owner)
e:SetModelScale(1.5)
e.Dmg=self.Dmg or 1
e.HType=self.HType
e:Spawn()
e:Think()
SafeRemoveEntityDelayed(e,1)
e:GetPhysicsObject():EnableGravity(false)
e:SetSolid(0)
e:GetPhysicsObject():SetVelocity(Vector(0,0,-1200))
local e2=ents.Create("obj_308ut_dreemerball")
e2:SetPos(tr2.HitPos+Vector(math.random(-m,m),math.random(-m,m),0))
e2:SetOwner(self.Owner)
e2:SetModelScale(1.5)
e2.Dmg=self.Dmg or 1
e2.HType=self.HType
e2:Spawn()
e2:Think()
SafeRemoveEntityDelayed(e2,1)
e2:GetPhysicsObject():EnableGravity(false)
e2:SetSolid(0)
e2:GetPhysicsObject():SetVelocity(Vector(0,0,1200))
end end)
end
end
timer.Simple(.8,function()if IsValid(self)then
_308PlaySoundAll("undertale/warn_fire.wav")self.Warn=1 end end)
self:Think()
end
function ENT:Think()
if SERVER and !self:IsInWorld()then
self:Remove()end
if !self.Warn then
_308PlaySoundAll("undertale/warn.wav")end
if self.T!=255 then
self.T=255
else
self.T=0
end
self:SetColor(Color(255,self.T,0))
end
function ENT:OnTakeDamage(d)d:SetDamageForce(Vector())end
if SERVER then return end
function ENT:Draw()
local b=Material("undertale/warnarea.png")
	render.SetMaterial(b)
	local pos=self:GetPos()
	render.DrawSprite(pos,32,32,self:GetColor())
end
