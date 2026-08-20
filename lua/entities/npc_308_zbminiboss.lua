AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["zbminiboss"]

ENT.Infection = "npc_308_freshdead"
ENT.InfectionPM = true

ENT.BloodColor = 5

ENT.Category = "308 NPC"

ENT.Factions = {FACTION_ZOMBIES}

ENT.Color = Color(255,199,195)

ENT.HP = 1500

ENT.Scale = 1.1

ENT.StartSpeed = 80

ENT.Model = "models/zombie/classic.mdl"

ENT.Material = "phoenix_storms/stripes"

ENT.AttSeq2 = {
    "swatrightmid",
    "swatleftmid"
}

ENT.MoveAct = ACT_WALK

ENT.AttRate = 1.5

ENT.W = nil

ENT.Att = {
    {
        Range = 35,
        dmg = 15,
        Time = 0.3,
        SHit = "npc/zombie/claw_strike1.wav"
    }
}

function ENT:CustomInit()
self:SetBodygroup(1,1)
end

if SERVER then

    function ENT:CustomThink()
    if not IsValid(self.W) then
        self.W = self:CreateEntourage("npc_308_zbfast")

        if IsValid(self.W) then
            self.W:SetSpawnEffect(true)
            self.W:SetHealth(250)
            self.W:SetModelScale(1.1)
            self.W:EmitSound("npc/antlion/digup1.wav",511)
            end
            end
            end

            end

            function ENT:OnHurt(d)
            self:EmitSound("npc/zombie/zombie_pain" .. math.random(6) .. ".wav",100,80)

            if self:Health() <= 750 and not self.P then
                self.P = true

                self:EmitSound("npc/zombie_poison/pz_die2.wav",511,110)

                self:SetColor(Color(255,129,125))
                self:SetBodygroup(1,0)

                self:SetSpeed(120)
                self.Speed = 120
                end
                end

                function ENT:OnDead()
                if IsValid(self.W) then
                    self.W:Kill()
                    end

                    self:EmitSound("3088083421/zb/zd" .. math.random(2) .. ".wav",100,70)
                    end

                    function ENT:OnRemove()
                    if IsValid(self.W) then
                        self.W:Remove()
                        end
                        end

                        Add308Nextbot(ENT)
