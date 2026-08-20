-- Created By Xero Chunks

AddCSLuaFile()

ENT.Base = "npc_308_zb"

ENT.PrintName = "Fresh Dead"

if GAME308_LANMath == 2 then
    ENT.PrintName = "尸体"
    end

    ENT.Category = "308 NPC"

    ENT.Factions = {FACTION_ZOMBIES}

    ENT.HP = 100
    ENT.StartSpeed = 100

    ENT.Model = "models/zombie/classic.mdl"

    ENT.AttSeq2 = {
        "swatrightmid",
        "swatleftmid"
    }

    ENT.AttRate = 2
    ENT.MoveAct = ACT_WALK

    ENT.Color = Color(200,255,200)

    ENT.SIdle2 = {
        "nazi/nz/amb1.mp3",
        "nazi/nz/amb2.mp3",
        "nazi/nz/amb3.mp3",
        "nazi/nz/amb4.mp3"
    }

    ENT.SCombat2 = ENT.SIdle2
    ENT.SFoundEnemy2 = ENT.SCombat2


    function ENT:CustomInit()

    local models = {}

    if self._IModel then

        models = self._IModel

        self:SEQ("slumprise_b",0.5)

        self:EmitSound(
            "3088083421/manif" .. math.random(2) .. ".wav",
                       100,
                       math.random(75,90)
        )

        elseif GetConVar("wb3_n_mode")
            and GetConVar("wb3_n_mode"):GetInt() == 2
            and IsValid(self.GetCreator and self:GetCreator()) then

            local creator = self:GetCreator()

            models = {
                creator:GetModel()
            }

            self:SetMaterial(creator:GetMaterial())
            self:SetColor(creator:GetColor())
            self:SetSkin(creator:GetSkin())

            self._IBg = creator:GetBodyGroups()

            else

                local validModels = player_manager.AllValidModels()

                if validModels then

                    for i = 1, math.min(table.Count(validModels),20) do

                        table.insert(
                            models,
                            table.Random(validModels)
                        )

                        end

                        end

                        end


                        if istable(models) and #models > 0 then

                            models = _308Table(models)

                            self:SetNoDraw(true)

                            if self.CreateDynamicMDL then

                                self.Body = self:CreateDynamicMDL(models)

                                end


                                if IsValid(self.Body) then

                                    self.Body:SetMaterial(
                                        self:GetMaterial()
                                    )

                                    self.Body:SetSkin(
                                        self:GetSkin()
                                    )


                                    if self._IModel and self._IBg then

                                        for _,bg in pairs(self._IBg) do

                                            if bg and bg.id then

                                                self.Body:SetBodygroup(
                                                    bg.id,
                                                    self:GetBodygroup(bg.id)
                                                )

                                                end

                                                end

                                                else

                                                    self.Color = Color(
                                                        200,
                                                        255,
                                                        200
                                                    )

                                                    end


                                                    if self._IModel then

                                                        self.Body:SetColor(
                                                            self:GetColor()
                                                        )

                                                        end

                                                        self.HasRagdoll = models

                                                        end

                                                        end

                                                        end


                                                        function ENT:OnAttack()

                                                        self:EmitSound(
                                                            "nazi/nz/att_0" .. math.random(5) .. ".mp3"
                                                        )


                                                        if math.random(2) == 1 then

                                                            self.AttSeq = "swatleftmid"

                                                            else

                                                                self.AttSeq = "swatrightmid"

                                                                end

                                                                end


                                                                function ENT:OnHurt(d)

                                                                self:EmitSound(
                                                                    "npc/zombie/zombie_pain" .. math.random(6) .. ".wav",
                                                                               120,
                                                                               110
                                                                )

                                                                end


                                                                function ENT:OnDead()

                                                                self:EmitSound(
                                                                    "nazi/nz/die_0" .. math.random(5) .. ".mp3",
                                                                               120
                                                                )


                                                                if IsValid(self.Body) then
                                                                    SafeRemoveEntity(self.Body)
                                                                    end


                                                                    self:SetNoDraw(true)

                                                                    end


                                                                    ENT.Att = {
                                                                        {
                                                                            Range = 30,
                                                                            dmg = 8,
                                                                            Time = 0.16,
                                                                            SHit = "npc/zombie/claw_strike1.wav"
                                                                        }
                                                                    }


                                                                    Add308Nextbot(ENT)
