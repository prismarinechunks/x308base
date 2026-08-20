AddCSLuaFile()

if !Material("models/spitball/spitball"):IsError() then

    ENT.Base="npc_308_man"

    ENT.PrintName="Spitter"

    if GAME308_LANMath==2 then
        ENT.PrintName="毒液"
        end

        ENT.Infection="npc_308_freshdead"
        ENT.InfectionPM=true

        ENT.Category = "308 NPC"

        ENT.Factions={FACTION_ZOMBIES}

        ENT.BloodColor=6

        ENT.HP=160

        ENT.StartSpeed=55

        ENT.Color=Color(199,255,199)

        ENT.Model="models/zombie/classic.mdl"

        ENT.AttRate=3.5

        ENT.AttRange=0
        ENT.AttRange2=400

        ENT.MoveAct=ACT_WALK


        function ENT:RangeAtt()

        self.Timer=CurTime()+3.5

        local enemy=self:GetEnemy()

        if !IsValid(enemy) then return end


            for i=1,3 do

                local e=ents.Create("grenade_spit")

                e:SetAngles(AngleRand())

                e:SetPos(self:EyePos())

                e:SetOwner(self)

                e:Spawn()

                e:SetModelScale(math.Rand(.7,1.2))


                e:SetVelocity(
                    (enemy:EyePos()-self:GetPos())*1.4+
                    VectorRand()*self:GetRangeTo(enemy)/8+
                    Vector(0,0,self:GetRangeTo(enemy)/25)
                )


                end


                self:EmitSound("physics/body/body_medium_break4.wav")

                end


                Add308Nextbot(ENT)

                end
