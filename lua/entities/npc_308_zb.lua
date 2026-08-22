AddCSLuaFile()

ENT.Base = "npc_308_man"
ENT.PrintName = GAME308_LANWEP["zb"]

ENT.Infection = "npc_308_freshdead"
ENT.InfectionPM = true

ENT.BloodColor = 5
ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_ZOMBIES}

ENT.HP = 50
ENT.StartSpeed = 60

ENT.Model = "models/zombie/classic.mdl"

ENT.AttSeq2 = {
    "swatrightmid",
    "swatleftmid"
}

ENT.AttRate = 2

ENT.MoveAct = ACT_WALK

ENT.AttFaceTo = true

function ENT:OnAttack()
if math.random(2) == 1 then
    self.AttSeq = "swatleftmid"
    else
        self.AttSeq = "swatrightmid"
        end
        end

        function ENT:CustomThink()
        self.OMAct = self.OMAct or self.MoveAct
        self.OIAct = self.OIAct or self.IdleAct

        if self:IsOnFire() then
            self.IdleAct = ACT_IDLE_ON_FIRE
            self.MoveAct = ACT_WALK_ON_FIRE
            else
                self.IdleAct = self.IdleAct
                self.MoveAct = self.OMAct
                end
                end

                function ENT:OnHurt(d)
                self:EmitSound("npc/zombie/zombie_pain" .. math.random(6) .. ".wav")
                end

                function ENT:OnDead()
                self:EmitSound("npc/zombie/zombie_die" .. math.random(3) .. ".wav")
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
