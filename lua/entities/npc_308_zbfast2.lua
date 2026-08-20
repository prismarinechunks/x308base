AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = "Leaper"

if GAME308_LANMath == 2 then
    ENT.PrintName = "飞扑"
    end

    ENT.Infection = "npc_308_freshdead"
    ENT.InfectionPM = true

    ENT.Acceleration = 900
    ENT.Deceleration = 100

    ENT.Category = "308 NPC"

    ENT.HP = 60

    ENT.StartSpeed = 280

    ENT.BBox = Vector(12,12,55)

    ENT.BloodColor = 5

    ENT.Factions = {FACTION_ZOMBIES}

    ENT.Model = "models/Zombie/Fast.mdl"

    ENT.AttSeq = "melee"

    ENT.AttSpeed = 260

    ENT.AttRange = 40
    ENT.AttRange2 = 300

    ENT.MoveAct = ACT_RUN

    ENT.Timer2 = 0


    function ENT:RangeAtt()

    if self.Timer2 < CurTime() and self:IsOnGround() then

        local a =
        self:GetEnemy():WorldSpaceCenter()
        - self:WorldSpaceCenter()
        + Vector(0,0,self:GetRangeTo(self:GetEnemy())/12)

        self.Timer2 = CurTime()+5

        self:EmitSound(
            "npc/fast_zombie/leap1.wav",
            120
        )

        self:StartActivity(ACT_LEAP)

        self:Jump(70)

        self.Timer = CurTime()+2


        timer.Simple(.2,function()

        if IsValid(self) then

            self:EmitSound(
                "npc/fast_zombie/fz_scream1.wav",
                120
            )

            self:SetAnimation("leapstrike")

            self.loco:SetVelocity(a*2.8)

            end

            end)


        self:Melee({

            {
                Range=60,
                dmg=7,
                Time=.2,
                SHit="npc/zombie/claw_strike1.wav"
            },

            {
                Range=60,
                dmg=7,
                Time=.35,
                SHit="npc/zombie/claw_strike1.wav"
            },

            {
                Range=60,
                dmg=7,
                Time=.5,
                SHit="npc/zombie/claw_strike1.wav"
            },

            {
                Range=60,
                dmg=7,
                Time=.65,
                SHit="npc/zombie/claw_strike1.wav"
            },

            {
                Range=60,
                dmg=7,
                Time=.8,
                SHit="npc/zombie/claw_strike1.wav"
            }

        })

        end

        end


        function ENT:OnHurt(d)

        self:EmitSound(
            "npc/zombie/zombie_pain"..math.random(6)..".wav"
        )

        end


        function ENT:OnDead()

        self:EmitSound(
            "npc/zombie/zombie_die"..math.random(3)..".wav"
        )

        end


        ENT.Att = {

            {
                Range=55,
                dmg=6,
                Time=.1,
                SHit="npc/zombie/claw_strike1.wav"
            },

            {
                Range=55,
                dmg=6,
                Time=.4,
                SHit="npc/zombie/claw_strike2.wav",
                SMiss="npc/zombie/claw_miss1.wav"
            }

        }


        Add308Nextbot(ENT)
