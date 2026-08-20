AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

function ENT:Initialize()
if SERVER then
	self:SetModel("models/props_junk/wood_crate002a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor(Color(255,0,0))
	self:SetPos(self:GetPos()+Vector(0,0,120))
	local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
	phys:Wake()
	end
local w=ents.Create("obj_308_sprite")
w:SetPos(self:GetPos())
w:Spawn()w:SetSprite("sprites/tp_beam001")w:SetScale(3500)w:Light()
w:SetColor(Color(255,0,0))
w:SetParent(self)
timer.Simple(25,function()if IsValid(w)then w.Disappear=1 w.DisaSpeed=.1 end end)
local e=ents.Create("obj_308_effect")
e:SetPos(self:GetPos())
e:Spawn()e:SetSprite("effects/combinemuzzle2_noz")e:SetScale(100)e:Light()
e:SetColor(Color(255,0,0))
e:SetParent(self)
timer.Simple(15,function()if IsValid(e)then e.Disappear=1 e.DisaSpeed=.1 end end)
end end
local function H(d,self)
if self.D then return end
self.D=1
local N="weapon_308_famasa"
local m=math.random(100)
if m<5 then N="weapon_308_manhack2"
elseif m<12 then N="weapon_308_manhack"
elseif m<16 then N="weapon_308_m3_s"
elseif m<23 then N="weapon_308_m134"
elseif m<26 then N="weapon_308_ca300"
elseif m<31 then N="weapon_308_m249g"
elseif m<33 then N="weapon_308_m82a1"
elseif m<41 then N="weapon_308_m3_buff"
elseif m<48 then N="weapon_308_vm3"
elseif m<54 then N="weapon_308_v357"
elseif m<65 then N="weapon_308_pandoragun"
elseif m<70 then N="weapon_308_laser2"
elseif m<80 then N="weapon_308_slicktalk"
elseif m<85 then N="weapon_308_poker"
elseif m<92 then N="weapon_308_mac10s"
elseif m<94 then N="weapon_308_plasma"
end
if self.Melee then
m=math.random(590)
N="weapon_308_sh2"
if m<55 then N="weapon_308_robloxsword2"
elseif m<120 then N="weapon_308_sh"
elseif m<255 then N="weapon_308_vsword"
elseif m<310 then N="weapon_308_kbhammer"
elseif m<395 then N="weapon_308_sworddiamond"
elseif m<490 then N="weapon_308_torch"
end
end
local w=ents.Create(N)
w:SetPos(self:GetPos()+Vector(0,0,5))
w:SetAngles(self:GetAngles())
w:Spawn()
timer.Simple(10,function()if IsValid(w)and !IsValid(w:GetOwner()) then
w:Remove()
end end)
self:SetSolid(SOLID_NONE)
self:SetMoveType(MOVETYPE_NONE)
self:DrawShadow(false)
self:SetModelScale(.001,.5)
SafeRemoveEntityDelayed(self,.5)
end
function ENT:OnTakeDamage(d)H(d:GetAttacker(),self)end
function ENT:Use(a)H(a,self)end
