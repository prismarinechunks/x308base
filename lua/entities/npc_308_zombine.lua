AddCSLuaFile()

ENT.Base = "npc_308_zb"

ENT.PrintName = "Zombine"

if GAME308_LANMath == 2 then
    ENT.PrintName = "联合军僵尸"
    end

ENT.Category = "Xbase | NPCs"

    ENT.Factions = {FACTION_ZOMBIES}

    ENT.HP = 100

    ENT.StartSpeed = 80

    ENT.Model = "models/zombie/classic.mdl"

    ENT.AttSeq2 = {
        "swatrightmid",
        "swatleftmid"
    }

    ENT.AttRate = 2

    ENT.MoveAct = ACT_WALK

    ENT.HasRagdoll = "models/player/zombie_soldier.mdl"

    ENT.Att = {
        {
            Range = 32,
            dmg = 12,
            Time = 0.16,
            SHit = "npc/zombie/claw_strike1.wav"
        }
    }

    function ENT:CustomInit()
    self:DrawShadow()

    self.Body = self:CreateDynamicMDL("models/player/zombie_soldier.mdl")
    end

    function ENT:OnAttack()
    if math.random(2) == 1 then
        self.AttSeq = "swatleftmid"
        else
            self.AttSeq = "swatrightmid"
            end
            end

            function ENT:OnHurt(d)
            self:EmitSound("npc/zombie/zombie_pain" .. math.random(6) .. ".wav",95)
            end

            function ENT:OnDead()
            self:EmitSound("npc/zombie/zombie_die" .. math.random(3) .. ".wav",95)

            if IsValid(self.Body) then
                SafeRemoveEntity(self.Body)
                end
                end

                function ENT:OnRemove()
                if IsValid(self.Body) then
                    SafeRemoveEntity(self.Body)
                    end
                    end

                    Add308Nextbot(ENT)
