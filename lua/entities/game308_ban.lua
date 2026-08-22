-- Created By Xero Chunks

AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = ""

function ENT:Draw()
end

function ENT:Initialize()
if CLIENT then return end

    BED308Ent = self

    self:SetMoveType(MOVETYPE_NONE)
    self:SetSolid(SOLID_NONE)

    for _, p in pairs(player.GetAll()) do
        if IsValid(p) then
            p:SetAvoidPlayers(true)
            p:SetMaterial("")
            p:SetColor(color_white)
            p:StripAmmo()
            p:StripWeapons()
            p:GodDisable()
            end
            end

            for _, e in pairs(ents.GetAll()) do
                if not IsValid(e) then continue end

                    local creator = e:GetCreator()

                    if e:IsNPC()
                        or (IsNextBot and IsNextBot(e))
                        or e:IsWeapon()
                        or e:IsRagdoll()
                        or e:IsVehicle()
                        or e.__MustRemove
                        or (IsValid(creator)
                        and creator:IsPlayer()
                        and not string.find(e:GetClass(), "obj_308_")) then

                        SafeRemoveEntity(e)
                        end
                        end

                        local settings = {
                            ["sv_gravity"] = "600",
                            ["sv_friction"] = "8",
                            ["sbox_playershurtplayers"] = "1",
                            ["sbox_godmode"] = "0",
                            ["ai_ignoreplayers"] = "0",
                            ["ai_disabled"] = "0"
                        }

                        for cvar, value in pairs(settings) do
                            local cv = GetConVar(cvar)
                            if cv then
                                RunConsoleCommand(cvar, value)
                                end
                                end
                                end


                                function ENT:OnRemove()

                                if self._Sd then
                                    local cv = GetConVar("shrinkinator_scale_damage")
                                    if cv then
                                        RunConsoleCommand("shrinkinator_scale_damage", "1")
                                        end
                                        end

                                        if self._Sm then
                                            local cv = GetConVar("shrinkinator_scale_movement")
                                            if cv then
                                                RunConsoleCommand("shrinkinator_scale_movement", "1")
                                                end
                                                end

                                                end


                                                function ENT:Think()

                                                local damage = GetConVar("shrinkinator_scale_damage")
                                                if damage and damage:GetFloat() ~= 0 then
                                                    RunConsoleCommand("shrinkinator_scale_damage", "0")
                                                    self._Sd = true
                                                    end


                                                    local movement = GetConVar("shrinkinator_scale_movement")
                                                    if movement and movement:GetFloat() ~= 0 then
                                                        RunConsoleCommand("shrinkinator_scale_movement", "0")
                                                        self._Sm = true
                                                        end


                                                        local settings = {
                                                            ["sv_gravity"] = "600",
                                                            ["sv_friction"] = "8",
                                                            ["sbox_playershurtplayers"] = "1",
                                                            ["sbox_godmode"] = "0",
                                                            ["ai_ignoreplayers"] = "0"
                                                        }


                                                        for cvar, value in pairs(settings) do
                                                            local cv = GetConVar(cvar)

                                                            if cv and cv:GetString() ~= value then
                                                                RunConsoleCommand(cvar, value)
                                                                end
                                                                end


                                                                self:NextThink(CurTime() + 1)
                                                                return true
                                                                end
