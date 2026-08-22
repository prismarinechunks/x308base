-- Created By Xero Chunks

AddCSLuaFile()

ENT.Type = "nextbot"
ENT.Base = "npc_308_zb"

ENT.PrintName = "Type 8"

ENT.Category = "Xbase | NPCs"

ENT.Infection = "npc_308_freshdead"
ENT.InfectionPM = true

ENT.BBox = Vector(14,14,72)

ENT.HP = 700
ENT.StartSpeed = 95

ENT.Model = "models/zombie/classic.mdl"

ENT.HasRagdoll = "models/Humans/Charple04.mdl"

ENT.AttSeq2 = {
    "swatrightmid",
    "swatleftmid"
}

ENT.AttRate = 1.7
ENT.MoveAct = ACT_WALK

ENT.CheHP = 70
ENT.ArmRHP = 10
ENT.ArmLHP = 10
ENT.LegRHP = 10
ENT.LegLHP = 10


function ENT:SafeBoneScale(id,scale)

if self.ManipulateBoneScale then
    self:ManipulateBoneScale(id,scale)
    end

    end


    function ENT:SafeBoneJiggle(id,value)

    if self.ManipulateBoneJiggle then
        self:ManipulateBoneJiggle(id,value)
        end

        end


        function ENT:CustomInit()

        self:SetNoDraw(true)
        self:DrawShadow(true)

        if self.CreateDynamicMDL then

            self.Body = self:CreateDynamicMDL(
                "models/Humans/Group01/Male_Cheaple.mdl"
            )

            end

            end


            function ENT:OnAttack()

            if math.random(2) == 1 then
                self.AttSeq = "swatleftmid"
                else
                    self.AttSeq = "swatrightmid"
                    end

                    end

                    function ENT:OnHurt(d,t)

                    self:EmitSound(
                        "physics/flesh/flesh_impact_bullet"..math.random(5)..".wav"
                    )

                    local dm = d:GetDamage()

                    if not IsValid(self.Body) then
                        return
                        end


                        if self:Health() < 350 and not self.D then

                            self.D = 1

                            self:SetHealth(600)

                            if self.SetSpeed then
                                self:SetSpeed(120)
                                end

                                self.Speed = 120


                                self.Att = {

                                    {
                                        Range = 35,
                                        dmg = 18,
                                        Time = .16,
                                        SHit = "npc/zombie/claw_strike1.wav"
                                    },

                                    {
                                        Range = 35,
                                        dmg = 8,
                                        Time = .16,
                                        Type = DMG_POISON,
                                        SHit = "npc/zombie/claw_strike1.wav"
                                    },

                                    {
                                        Range = 35,
                                        dmg = 6,
                                        Time = .16,
                                        Type = DMG_BURN
                                    }

                                }


                                local bones = self:GetBoneCount() or 0

                                for i = 0,bones do

                                    if i ~= 9 and i ~= 10 and i ~= 11 and i ~= 12 then

                                        self:SafeBoneJiggle(i,1)

                                        end

                                        end


                                        local e = EffectData()
                                        e:SetOrigin(self:EyePos())
                                        util.Effect("AntlionGib",e)


                                        self:EmitSound(
                                            "physics/body/body_medium_break3.wav"
                                        )

                                        self:EmitSound(
                                            "npc/zombie/zombie_die"..math.random(3)..".wav",
                                                       150,
                                                       150
                                        )


                                        if IsValid(self.Body) then
                                            self.Body:SetModel(
                                                "models/player/corpse1.mdl"
                                            )
                                            end


                                            self.ArmRHP = 20
                                            self.ArmLHP = 20
                                            self.LegRHP = 20
                                            self.LegLHP = 20


                                            local scale = Vector(1,1,1)

                                            for _,b in ipairs({

                                                1,2,4,5,6,8,
                                                13,14,15,16,17,
                                                25,26,27,28,29

                                            }) do

                                            self:SafeBoneScale(b,scale)

                                            end

                                            end



                                            if t == 4 then

                                                local h = self.ArmLHP

                                                if h > 0 then

                                                    self.ArmLHP = math.max(0,h-dm)

                                                    if self.ArmLHP <= 0 then

                                                        local e = EffectData()
                                                        e:SetOrigin(self:EyePos())
                                                        util.Effect("AntlionGib",e)

                                                        self:EmitSound(
                                                            "physics/flesh/flesh_bloody_break.wav"
                                                        )


                                                        for _,b in ipairs({
                                                            13,14,15,16,17
                                                        }) do

                                                        self:SafeBoneScale(
                                                            b,
                                                            Vector(.01,.01,.01)
                                                        )

                                                        end

                                                        end

                                                        else

                                                            d:SetDamage(0)

                                                            end


                                                            elseif t == 7 then

                                                                local h = self.LegRHP

                                                                if h > 0 then

                                                                    self.LegRHP = math.max(0,h-dm)

                                                                    if self.LegRHP <= 0 then

                                                                        local e = EffectData()
                                                                        e:SetOrigin(self:WorldSpaceCenter())
                                                                        util.Effect("AntlionGib",e)

                                                                        self:EmitSound(
                                                                            "physics/flesh/flesh_bloody_break.wav"
                                                                        )


                                                                        for _,b in ipairs({5,6,8}) do

                                                                            self:SafeBoneScale(
                                                                                b,
                                                                                Vector(.4,.4,.4)
                                                                            )

                                                                            end

                                                                            end

                                                                            end

                                                                            elseif t == 6 then

                                                                                local h = self.LegLHP

                                                                                if h > 0 then

                                                                                    self.LegLHP = math.max(0,h-dm)

                                                                                    if self.LegLHP <= 0 then

                                                                                        local e = EffectData()
                                                                                        e:SetOrigin(self:WorldSpaceCenter())
                                                                                        util.Effect("AntlionGib",e)

                                                                                        self:EmitSound(
                                                                                            "physics/flesh/flesh_bloody_break.wav"
                                                                                        )


                                                                                        for _,b in ipairs({1,2,4}) do

                                                                                            self:SafeBoneScale(
                                                                                                b,
                                                                                                Vector(.4,.4,.4)
                                                                                            )

                                                                                            end

                                                                                            end

                                                                                            end



                                                                                            elseif t == 2 then

                                                                                                local h = self.CheHP

                                                                                                if h > 0 then

                                                                                                    self.CheHP = math.max(0,h-dm)

                                                                                                    if self.CheHP <= 0 then

                                                                                                        local e = EffectData()
                                                                                                        e:SetOrigin(self:EyePos())
                                                                                                        util.Effect("AntlionGib",e)

                                                                                                        self:EmitSound(
                                                                                                            "physics/flesh/flesh_bloody_break.wav"
                                                                                                        )

                                                                                                        self:SafeBoneScale(
                                                                                                            9,
                                                                                                            Vector(.4,.4,.4)
                                                                                                        )

                                                                                                        end

                                                                                                        end



                                                                                                        elseif t == 5 then

                                                                                                            local h = self.ArmRHP

                                                                                                            if h > 0 then

                                                                                                                self.ArmRHP = math.max(0,h-dm)

                                                                                                                if self.ArmRHP <= 0 then

                                                                                                                    local e = EffectData()
                                                                                                                    e:SetOrigin(self:EyePos())
                                                                                                                    util.Effect("AntlionGib",e)

                                                                                                                    self:EmitSound(
                                                                                                                        "physics/flesh/flesh_bloody_break.wav"
                                                                                                                    )


                                                                                                                    for _,b in ipairs({
                                                                                                                        25,26,27,28,29
                                                                                                                    }) do

                                                                                                                    self:SafeBoneScale(
                                                                                                                        b,
                                                                                                                        Vector(.01,.01,.01)
                                                                                                                    )

                                                                                                                    end

                                                                                                                    end

                                                                                                                    else

                                                                                                                        d:SetDamage(0)

                                                                                                                        end

                                                                                                                        end

                                                                                                                        end



                                                                                                                        function ENT:OnDead()

                                                                                                                        self:EmitSound(
                                                                                                                            "npc/zombie_poison/pz_die"..math.random(2)..".wav",
                                                                                                                                       150,
                                                                                                                                       90
                                                                                                                        )


                                                                                                                        for i = 1,5 do

                                                                                                                            sound.Play(
                                                                                                                                "physics/flesh/flesh_bloody_break.wav",
                                                                                                                                self:EyePos(),
                                                                                                                                       120,
                                                                                                                                       90 + 10 * math.random(5)
                                                                                                                            )


                                                                                                                            local d = EffectData()

                                                                                                                            d:SetOrigin(
                                                                                                                                self:WorldSpaceCenter()+VectorRand()*20
                                                                                                                            )

                                                                                                                            util.Effect(
                                                                                                                                "AntlionGib",
                                                                                                                                d
                                                                                                                            )

                                                                                                                            end


                                                                                                                            if IsValid(self.Body) then
                                                                                                                                SafeRemoveEntity(self.Body)
                                                                                                                                end

                                                                                                                                end



                                                                                                                                ENT.Att = {

                                                                                                                                    {
                                                                                                                                        Range = 35,
                                                                                                                                        dmg = 15,
                                                                                                                                        Time = .16,
                                                                                                                                        SHit = "npc/zombie/claw_strike1.wav"
                                                                                                                                    },

                                                                                                                                    {
                                                                                                                                        Range = 35,
                                                                                                                                        dmg = 5,
                                                                                                                                        Time = .16,
                                                                                                                                        Type = DMG_POISON,
                                                                                                                                        SHit = "npc/zombie/claw_strike1.wav"
                                                                                                                                    }

                                                                                                                                }



                                                                                                                                if Add308Nextbot then

                                                                                                                                    Add308Nextbot(ENT)

                                                                                                                                    else

                                                                                                                                        print("[x308 Base] ERROR: Add308Nextbot missing for Type 8")

                                                                                                                                        end
