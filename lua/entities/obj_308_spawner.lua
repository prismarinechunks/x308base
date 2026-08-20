AddCSLuaFile()
DEFINE_BASECLASS("base_anim")
ENT.PrintName=GAME308_LANWEP["spawner"]
ENT.Category="308..' Base"
ENT.AdminOnly=true
ENT.Spawnable=true
ENT.Timer=CurTime()
ENT.NPC=nil
function ENT:Initialize()if SERVER then
self.__MustRemove=1
self:SetMoveType(0)self:SetSolid(0)self:SetNoDraw(true)self:DrawShadow(false)
local e=ents.Create("obj_308_effect")e:SetPos(self:GetPos()+Vector(0,0,50))e:Spawn()e:SetColor()e:SetSprite("effects/ar2_altfire1")e:SetScale(80,1)self:DeleteOnRemove(e)
end self.Timer=CurTime()+5 end
function ENT:Think()if CLIENT||GetConVarNumber("ai_disabled")==1 then return end
if !self:IsInWorld()then SafeRemoveEntity(self)return end

if self.Timer<CurTime()and !IsValid(self.NPC)then
self.NPC=ents.Create("npc_308_man")
self.NPC:SetPos(self:GetPos())
self.NPC:SetAngles(self:GetAngles())
self.NPC:Spawn()
self.NPC:SetSpawnEffect(true)
self:DeleteOnRemove(self.NPC)
elseif IsValid(self.NPC)then
self.Timer=CurTime()+5
end
end