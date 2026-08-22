-- Created By Xero Chunks

AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["target"]

ENT.Category = "Xbase | NPCs"

ENT.BloodColor = 3

ENT.HP = 100

ENT.StartAI = false
ENT.NoChase = true

ENT.IdleAct = ACT_WALK

ENT.Model = "models/Humans/Group01/male_07.mdl"

ENT.Material = "models/props_wasteland/wood_fence01a"


function ENT:Attack()
end


function ENT:Use(a)

if not IsValid(a) or not a:IsPlayer() then
    return
    end

    if not self.Kable then

        a:PrintMessage(
            HUD_PRINTTALK,
            "Unkillable"
        )

        self:SetMaterial(
            "phoenix_storms/metalfloor_2-3"
        )

        self.Kable = true

        else

            a:PrintMessage(
                HUD_PRINTTALK,
                "Killable"
            )

            self:SetMaterial(
                "models/props_wasteland/wood_fence01a"
            )

            self.Kable = false

            end

            end


            function ENT:OnTakeDamage(d,h)

            local attacker = d:GetAttacker()

            local hitgroup = h

            local hitNames = {
                [1] = "Head",
                [2] = "Chest",
                [3] = "Stomach",
                [4] = "Left Arm",
                [5] = "Right Arm",
                [6] = "Left Leg",
                [7] = "Right Leg"
            }


            if hitNames[hitgroup] then
                hitgroup = hitgroup .. "-" .. hitNames[hitgroup]
                else
                    hitgroup = "none or whole"
                    end


                    if IsValid(attacker) and attacker:IsPlayer() then

                        attacker:ChatPrint(
                            "\n\n\nStat\nDamage Type: "
                            .. tostring(d:GetDamageType())
                            .. "\nDamage: "
                            .. tostring(d:GetDamage())
                            .. "\nHit group: "
                            .. tostring(hitgroup)
                        )

                        end


                        if self.Kable then
                            d:SetDamage(0)
                            end

                            end


                            function ENT:OnHurt(d)

                            self:EmitSound(
                                "3088083421/pl/bhit_flesh-" .. math.random(3) .. ".wav",
                                           511
                            )

                            end


                            function ENT:OnDead()

                            self:EmitSound(
                                "3088083421/pl/die" .. math.random(3) .. ".wav",
                                           511
                            )

                            end


                            Add308Nextbot(ENT)
