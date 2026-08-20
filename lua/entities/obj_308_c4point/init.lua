AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
BOMB308P=0
CS308=0
if SERVER then

function ENT:Initialize()
BOMB308P=BOMB308P+1
	self:SetMoveType(0)
	self:SetSolid(0)
local e=ents.Create("obj_308_effect")
e:SetPos(self:GetPos()+Vector(0,0,40))
e:Spawn()e:SetSprite("effects/combinemuzzle2_noz")e:SetScale(100)e:Light()
e:SetColor(Color(255,255,255,100))
e:SetParent(self)
end

function ENT:OnRemove()
BOMB308P=BOMB308P-1
if CS308>0 then
if IsValid(self:GetCreator())then self:GetCreator():ChatPrint("refuse to undo c4 point!")end
local e=ents.Create("obj_308_c4point")
for k,sp in pairs(ents.FindByClass("obj_308_cs"))do
sp:DeleteOnRemove(e)
end
e:SetPos(self:GetPos())
e:Spawn()
end
end

end
