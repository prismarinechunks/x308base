AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = "COF " .. GAME308_LANWEP["stranger"]

ENT.KillName = GAME308_LANWEP["stranger"]

ENT.Infection = "npc_308_freshdead"

ENT.InfectionPM = true

ENT.Model = "models/Humans/Group01/Male_Cheaple.mdl"

ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_ZOMBIES}

ENT.HP = 130

ENT.Color = Color(43,43,43)

ENT.StartSpeed = 50

ENT.MoveAct = ACT_WALK

ENT.BloodColor = -1

ENT.AttRange = 300

ENT.AttSpeed = 50

ENT.AttSeq = nil

ENT.Weapon = "308_wm_b"

ENT.QuickRemove = 1

ENT.Scale = 1.1

ENT.CurT = 0

ENT.OrAngle = Angle(0,0,0)


function ENT:CustomInit()

self:EmitSound("stranger/st_voiceloop.wav")


local head = self:LookupBone("ValveBiped.Bip01_Head1")

if head then
    self:ManipulateBoneScale(head,Vector(.01,.01,.01))
    end


    local bones = {
        {"ValveBiped.Bip01_R_Clavicle",Angle(10,0,30)},
        {"ValveBiped.Bip01_R_Forearm",Angle(0,-40,0)},
        {"ValveBiped.Bip01_L_Clavicle",Angle(-10,0,-30)},
        {"ValveBiped.Bip01_L_Forearm",Angle(0,-40,0)}
    }


    for _,v in ipairs(bones) do
        local id = self:LookupBone(v[1])

        if id then
            self:ManipulateBoneAngles(id,v[2])
            end
            end

            end


            function ENT:CustomOnRemove()

            self:StopSound("stranger/st_voiceloop.wav")

            end


            function ENT:CustomOnKilled()

            self:StopSound("stranger/st_voiceloop.wav")

            self:SetSolid(SOLID_NONE)

            self:EmitSound("stranger/st_death.wav",511)


            self.CurT = CurTime()

            self.OrAngle = self:GetAngles()

            SafeRemoveEntityDelayed(self,1.5)

            end


            function ENT:CustomThink()

            if not self.Dead then return end

                if self.CurT > CurTime()-1.35 then return end


                    local spine = self:LookupBone("ValveBiped.Bip01_Spine")

                    if not spine then return end


                        local c = (self.CurT-CurTime())/2


                        self:NextThink(
                            CurTime()+(self.CurT+1.5-CurTime())/10
                        )


                        self:ManipulateBoneAngles(
                            spine,
                            Angle(
                                math.Rand(-50,50)*c,
                                  math.Rand(-50,50)*c,
                                  math.Rand(-50,50)*c
                            )
                        )


                        self:SetAngles(
                            self.OrAngle+
                            Angle(
                                math.Rand(-10,10)*c,
                                  math.Rand(-10,10)*c,
                                  math.Rand(-10,10)*c
                            )
                        )

                        end


                        function ENT:Attack()

                        local e = self:GetEnemy()

                        if not IsValid(e) then return end


                            local d = self:GetRangeTo(e)


                            self.Timer = CurTime()+math.Clamp(d/300,.1,1)


                            if e:IsPlayer() then

                                e:ScreenFade(
                                    SCREENFADE.IN,
                                    Color(0,0,0,255*(1-d/300)),
                                             .2*(1-d/300),
                                             .4+.3*(1-d/300)
                                )

                                end


                                e:TakeDamage(5,self)

                                e:EmitSound("stranger/st_hearbeat.wav",120)

                                end


                                Add308Nextbot(ENT)
