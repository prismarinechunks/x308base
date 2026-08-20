AddCSLuaFile()

ENT.Type="anim"
ENT.PrintName=""

function ENT:Draw()
end

function ENT:Initialize()
if CLIENT then return end

    BED308Ent=self

    self:SetMoveType(MOVETYPE_NONE)
    self:SetSolid(SOLID_NONE)

    for _,p in pairs(player.GetAll()) do
        p:SetAvoidPlayers(true)
        p:SetMaterial("")
        p:SetColor(color_white)
        p:StripAmmo()
        p:StripWeapons()
        p:GodDisable()

        if p:IsAdmin() or p:IsSuperAdmin() then
            p:ConCommand("mp_falldamage 1")
            end
            end

            for _,e in pairs(ents.GetAll()) do
                if not IsValid(e) then continue end

                    if e:IsNPC()
                        or IsNextBot3(e)
                        or e:IsWeapon()
                        or e:IsRagdoll()
                        or e:IsVehicle()
                        or e.__MustRemove
                        or (IsValid(e:GetCreator())
                        and e:GetCreator():IsPlayer()
                        and not string.find(e:GetClass(),"obj_308_")) then

                        SafeRemoveEntity(e)
                        end
                        end

                        RunConsoleCommand("skill","1")
                        RunConsoleCommand("sv_gravity","600")
                        RunConsoleCommand("sv_friction","8")
                        RunConsoleCommand("sbox_playershurtplayers","1")
                        RunConsoleCommand("sbox_godmode","0")
                        RunConsoleCommand("ai_ignoreplayers","0")
                        RunConsoleCommand("ai_disabled","0")
                        end


                        function ENT:OnRemove()

                        if self._Sd then
                            RunConsoleCommand("shrinkinator_scale_damage","1")
                            end

                            if self._Sm then
                                RunConsoleCommand("shrinkinator_scale_movement","1")
                                end

                                end


                                function ENT:Think()

                                if GetConVar("shrinkinator_scale_damage")
                                    and GetConVarNumber("shrinkinator_scale_damage") != 0 then

                                    RunConsoleCommand("shrinkinator_scale_damage","0")
                                    self._Sd=true
                                    end


                                    if GetConVar("shrinkinator_scale_movement")
                                        and GetConVarNumber("shrinkinator_scale_movement") != 0 then

                                        RunConsoleCommand("shrinkinator_scale_movement","0")
                                        self._Sm=true
                                        end


                                        if GetConVarNumber("sv_gravity") != 600 then
                                            RunConsoleCommand("sv_gravity","600")
                                            end

                                            if GetConVarNumber("sv_friction") != 8 then
                                                RunConsoleCommand("sv_friction","8")
                                                end

                                                if GetConVarNumber("sbox_playershurtplayers") != 1 then
                                                    RunConsoleCommand("sbox_playershurtplayers","1")
                                                    end

                                                    if GetConVarNumber("sbox_godmode") != 0 then
                                                        RunConsoleCommand("sbox_godmode","0")
                                                        end

                                                        if GetConVarNumber("ai_ignoreplayers") != 0 then
                                                            RunConsoleCommand("ai_ignoreplayers","0")
                                                            end


                                                            self:NextThink(CurTime()+1)
                                                            return true
                                                            end
