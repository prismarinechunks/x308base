AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
if SERVER then

function ENT:Initialize()
	self:SetModel("models/props_c17/oildrum001.mdl")
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
	self:SetUseType(SIMPLE_USE)
	self:DrawShadow(false)
	self:SetMaterial("null")
local e=ents.Create("obj_308_effect")
e:SetPos(self:GetPos()+Vector(0,0,40))
e:Spawn()e:SetSprite("effects/combinemuzzle2_noz")e:SetScale(100)e:Light()
e:SetColor(Color(0,0,255,100))
e:SetParent(self)
end

end
