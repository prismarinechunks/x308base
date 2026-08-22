-- Created By Xero Chunks

AddCSLuaFile()

ENT.Base = "npc_308_zb"

ENT.PrintName = "Fresh Dead"

if GAME308_LANMath == 2 then
    ENT.PrintName = "尸体"
    end

ENT.Category = "Xbase | NPCs"

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

    self:SetNoDraw(true)
    self:DrawShadow(true)

    local model = "models/zombie/classic.mdl"

    if self._IModel then

        if istable(self._IModel) then

            model = self._IModel[1] or model

            elseif isstring(self._IModel) then

                model = self._IModel

                end

                end


                if self.CreateDynamicMDL then

                    self.Body = self:CreateDynamicMDL(model)

                    end


                    if IsValid(self.Body) then

                        self.Body:SetColor(
                            Color(200,255,200)
                        )

                        self.Body:SetMaterial(
                            self:GetMaterial()
                        )

                        self.Body:SetSkin(
                            self:GetSkin()
                        )

                        end


                        self.HasRagdoll = model

                        end



                        function ENT:OnAttack()

                        self:EmitSound(
                            "nazi/nz/att_0"..math.random(5)..".mp3"
                        )


                        if math.random(2) == 1 then

                            self.AttSeq = "swatleftmid"

                            else

                                self.AttSeq = "swatrightmid"

                                end

                                end



                                function ENT:OnHurt(d)

                                self:EmitSound(
                                    "npc/zombie/zombie_pain"..math.random(6)..".wav",
                                               120,
                                               110
                                )

                                end



                                function ENT:OnDead()

                                self:EmitSound(
                                    "nazi/nz/die_0"..math.random(5)..".mp3",
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



                                    if Add308Nextbot then

                                        Add308Nextbot(ENT)

                                        else

                                            print("[x308 Base] Missing Add308Nextbot for Fresh Dead")

                                            end
