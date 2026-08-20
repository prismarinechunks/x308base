AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

function ENT:Initialize()
	self:SetModel("models/props_lab/dogobject_wood_crate001a_damagedmax.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetPos(self:GetPos()+Vector(0,0,120))
	local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
	phys:Wake()
	end
end
local function H(d,self)
if self.D then return end
self.D=1
local a=ents.Create("prop_physics")
a:SetModel("models/props_lab/dogobject_wood_crate001a_damagedmax.mdl")
a:SetPos(self:GetPos())
a:SetAngles(self:GetAngles())
a:Spawn()
a:Activate()

local N="weapon_308_block"
local m=math.random(950)
if m<5 then N="weapon_308_rpg"
elseif m<14 then N="weapon_308_scout"
elseif m<25 then N="weapon_308_laser"
elseif m<42 then N="weapon_308_m249"
elseif m<51 then N="weapon_308_m4a1"
elseif m<75 then N="weapon_308_p90"
elseif m<90 then N="weapon_308_xm1014"
elseif m<110 then N="weapon_308_357"
elseif m<130 then N="weapon_308_deagle"
elseif m<160 then N="weapon_308_fiveseven"
elseif m<195 then N="weapon_308_glock"
elseif m<215 then N="item_healthkit"
elseif m<230 then N="item_healthvial"
elseif m<235 then N="weapon_308_ak47"
elseif m<238 then N="weapon_308_velites"
elseif m<244 then N="weapon_308_m1894"
elseif m<255 then N="weapon_308_mp5"
elseif m<278 then N="weapon_308_db"
elseif m<290 then N="weapon_308_famas"
elseif m<300 then N="weapon_308_famasa"
elseif m<350 then N="weapon_308_pistolb"
elseif m<390 then N="weapon_308_shotguni"
elseif m<405 then N="weapon_308_m3"
elseif m<445 then N="grenade_helicopter"
elseif m<475 then N="item_battery"
elseif m<480 then N="weapon_308_stunstick"
elseif m<495 then N="weapon_308_crowbar"
elseif m<515 then N="weapon_308_frag"
elseif m<555 then N="weapon_physcannon"
elseif m<570 then N="weapon_308_torch"
elseif m<590 then N="weapon_308_robloxsword2"
elseif m<596 then N="weapon_308_laser"
elseif m<603 then N="weapon_308_sterling"
elseif m<607 then N="weapon_308_gun1"
elseif m<614 then N="weapon_308_357"
elseif m<620 then N="weapon_308_ar2"
elseif m<630 then N="weapon_308_smg"
elseif m<633 then N="weapon_308_ar1"
elseif m<637 then N="weapon_308_alyxgun"
elseif m<640 then N="weapon_308_db"
elseif m<644 then N="weapon_308_m60"
end
if self.Melee then
N="weapon_308_branch"
if m<45 then N="weapon_308_epearl"
elseif m<110 then N="weapon_308_stunstick"
elseif m<135 then N="weapon_308_worndagger"
elseif m<155 then N="weapon_308_vsword"
elseif m<190 then N="item_healthkit"
elseif m<230 then N="item_healthvial"
elseif m<285 then N="weapon_308_robloxsword"
elseif m<290 then N="weapon_308_kbhammer"
elseif m<300 then N="weapon_308_sh"
elseif m<340 then N="weapon_308_sh2"
elseif m<345 then N="weapon_308_sworddiamond"
elseif m<405 then N="weapon_308_sledgehammer"
elseif m<465 then N="grenade_helicopter"
elseif m<475 then N="item_battery"
elseif m<490 then N="weapon_308_torch"
elseif m<565 then N="weapon_308_crowbar"
elseif m<655 then N="weapon_physcannon"
elseif m<687 then N="weapon_308_begg"
elseif m<794 then N="weapon_frag"
end
end
if N then
local w=ents.Create(N)
w:SetPos(self:GetPos()+Vector(0,0,5))
w:SetAngles(self:GetAngles())
w:Spawn()
w:SetMoveType(MOVETYPE_NONE)
timer.Simple(10,function()if IsValid(w)and !IsValid(w:GetOwner())then
w:Remove()end end)
end
SafeRemoveEntity(self)
timer.Simple(.01,function()if IsValid(a)then
a:TakeDamage(500,d)
end end)
end
function ENT:OnTakeDamage(d)H(d:GetAttacker(),self)end
function ENT:Use(a)H(a,self)end
