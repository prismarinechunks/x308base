-- Created By Xero Chunks

AddCSLuaFile()

DEFINE_BASECLASS("base_anim")

ENT.PrintName = GAME308_LANWEP["spawner"]
ENT.Category = "Xbase | Misc"
ENT.AdminOnly = true
ENT.Spawnable = true

function ENT:Initialize()
if SERVER then
    self.__MustRemove = 1

    self:SetMoveType(MOVETYPE_NONE)
    self:SetSolid(SOLID_NONE)
    self:SetNoDraw(true)
    self:DrawShadow(false)

    local effect = ents.Create("obj_308_effect")

    if IsValid(effect) then
        effect:SetPos(self:GetPos() + Vector(0, 0, 50))
        effect:Spawn()
        effect:SetColor()
        effect:SetSprite("effects/ar2_altfire1")
        effect:SetScale(80, 1)

        self:DeleteOnRemove(effect)
        end
        end

        self.Timer = CurTime() + 5
        self.NPC = nil
        end

        function ENT:Think()
        if CLIENT then
            return
            end

            local aiDisabled = GetConVar("ai_disabled")

            if aiDisabled and aiDisabled:GetBool() then
                self:NextThink(CurTime() + 0.1)
                return true
                end

                if not self:IsInWorld() then
                    SafeRemoveEntity(self)
                    return
                    end

                    if self.Timer <= CurTime() and not IsValid(self.NPC) then
                        local npc = ents.Create("npc_308_man")

                        if IsValid(npc) then
                            npc:SetPos(self:GetPos())
                            npc:SetAngles(self:GetAngles())
                            npc:Spawn()
                            npc:SetSpawnEffect(true)

                            self.NPC = npc
                            self:DeleteOnRemove(npc)
                            end

                            self.Timer = CurTime() + 5
                            elseif IsValid(self.NPC) then
                                self.Timer = CurTime() + 5
                                end

                                self:NextThink(CurTime() + 0.1)
                                return true
                                end
