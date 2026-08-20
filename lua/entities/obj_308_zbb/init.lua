AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

function ENT:Initialize()if SERVER then
	self:SetModel("models/props_lab/dogobject_wood_crate001a_damagedmax.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetPos(self:GetPos()+Vector(0,0,120))
	local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
	phys:Wake()
	end
	self:EmitSound("3088083421/wep/zbox.wav",511)
local w=ents.Create("obj_308_sprite")
w:SetPos(self:GetPos())
w:Spawn()w:SetSprite("sprites/tp_beam001")w:SetScale(3500)w:Light()
w:SetColor(Color(0,255,0))
w:SetParent(self)
timer.Simple(35,function()if IsValid(w)then w.Disappear=1 w.DisaSpeed=.1 end end)
local e=ents.Create("obj_308_effect")
e:SetPos(self:GetPos())
e:Spawn()e:SetSprite("effects/combinemuzzle2_noz")e:SetScale(100)e:Light()
e:SetColor(Color(0,255,0))
e:SetParent(self)
timer.Simple(15,function()if IsValid(e)then e.Disappear=1 e.DisaSpeed=.1 end end)
end end
local function H(d,self)
if self.D||d.ZB3088 then return end
self:EmitSound("3088083421/s_pu.wav")
self.D=1
local a=ents.Create("prop_physics")
a:SetModel("models/props_lab/dogobject_wood_crate001a_damagedmax.mdl")
a:SetPos(self:GetPos())
a:SetAngles(self:GetAngles())
a:Spawn()
a:Activate()

local N="weapon_308_m249g"
local m=math.random(55)
if m<5 then N="weapon_308_m82a1"
elseif m<11 then N="weapon_308_kbhammer"
elseif m<18 then N="weapon_308_m134"
elseif m<26 then N="weapon_308_lavam"
elseif m<34 then N="weapon_308_m3_s"
elseif m<48 then N="weapon_308_sh2"
elseif m<52 then N="weapon_308_poker"
end
if N then
local w=ents.Create(N)
w:SetPos(self:GetPos()+Vector(0,0,5))
w:SetAngles(self:GetAngles())
w:Spawn()
w:SetMoveType(MOVETYPE_NONE)
timer.Simple(10,function()if IsValid(w)and !IsValid(w:GetOwner()) then
w:Remove()
end end)
end
SafeRemoveEntity(self)
timer.Simple(.01,function()if IsValid(a)then
a:TakeDamage(500,d)
end end)
end
function ENT:Use(a)H(a,self)end
