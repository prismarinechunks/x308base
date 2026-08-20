AddCSLuaFile()
DEFINE_BASECLASS( "base_anim" )
ENT.PrintName="Dreemer Fire Ball"
ENT.RenderGroup = RENDERGROUP_TRANSLUCENT
if CLIENT then killicon.Add("obj_308ut_dreemerball","undertale/fireb",color_white)
language.Add("obj_308ut_dreemerball",ENT.PrintName)end
function ENT:Initialize()if SERVER then
	self:SetModel("models/hunter/misc/sphere025x025.mdl")
	self:PhysicsInitSphere(10,"metal_bouncy")
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(1)
	self:DrawShadow(false)
	self.V=0
	if self.TType then self:GetPhysicsObject():EnableGravity(false)end
	--Set to not collision
	if IsValid(self:GetCreator())then self:SetOwner(self:GetCreator())end 
	if IsValid(self.Owner)then self.Owner:DeleteOnRemove(self)end 
	end
self:Think()
end
function ENT:Think()if CLIENT then return end
local h=self:GetPhysicsObject()
if !self:IsInWorld()then SafeRemoveEntity(self)return end
if self.TType then
if self.T then
self.V=self.V+5
self.T=nil
else
self.V=self.V-5
self.T=1
end
h:SetLocalVelocity(self:GetVelocity()+self:GetRight()*self.V)
end
--Toriel Set
--if IsHP<3 then
--SetVelocity(反弹)
--end
local dm=(self.Dmg or 1)
for i=1,4 do
timer.Simple(i/20,function()if IsValid(self)then
if self.Toriel then
for _,e in pairs(ents.FindInSphere(self:GetPos(),100*self:GetModelScale()))do
if(e:IsNPC()||IsNextBot3(e)||e:IsPlayer())and e:Health()<=dm and e!=self.Owner then
h:SetVelocity(self:GetVelocity()+(self:GetPos()-e:EyePos())*2)end
end
end
for _,e in pairs(ents.FindInSphere(self:GetPos(),10*self:GetModelScale()))do
if self.Owner!=e and(!self.Toriel||e:Health()>dm)then
e.UT_HurtT=e.UT_HurtT or CurTime()
if !self.HType||e.UT_HurtT<CurTime()then
e.UT_HurtT=CurTime()+.75
if(e:IsNPC()||IsNextBot3(e)||e:IsPlayer())and e:Health()>0 then
e:EmitSound("3088083421/ut/hurtsound.wav")end
local d=DamageInfo()
d:SetAttacker(self.Owner or self)
d:SetInflictor(self)
d:SetDamageType(DMG_CLUB)
d:SetDamage(dm)
e:TakeDamageInfo(d)
end
end end
end end)
end
end

function ENT:PhysicsCollide( data, physobj )
	if self.TType then return end
	sound.Play("undertale/st.wav",self:GetPos())
	local LastSpeed = math.max( data.OurOldVelocity:Length(), data.Speed )
	local NewVelocity = physobj:GetVelocity()
	NewVelocity:Normalize()
	LastSpeed = math.max( NewVelocity:Length(), LastSpeed )
	local TargetVelocity = NewVelocity * LastSpeed
	if TargetVelocity.z>300 then TargetVelocity.z=300 end
	physobj:SetVelocity( TargetVelocity )
end

function ENT:OnTakeDamage(d)d:SetDamageForce(Vector())end

if SERVER then return end
ENT.BEP=1
function ENT:Draw()
local b=Material("undertale/bigfirebullet"..self.BEP..".png")
if self.BEP>1 then self.BEP=1 else self.BEP=2 end
	render.SetMaterial(b)
	local pos=self:GetPos()
	local l=render.ComputeLighting(pos,Vector(0,0,1))
	l.x=255*(math.Clamp(l.x,0,1)+0.5)
	l.y=255*(math.Clamp(l.y,0,1)+0.5)
	l.z=255*(math.Clamp(l.z,0,1)+0.5)
	render.DrawSprite(pos,16*self:GetModelScale(),16*self:GetModelScale(),Color(l.x,l.y,l.z))
end
