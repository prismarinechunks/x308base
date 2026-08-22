AddCSLuaFile()

ENT.Base = "npc_308_man"
ENT.PrintName = "Headcrab"

if GAME308_LANMath == 2 then
    ENT.PrintName = "猎头蟹"
    end

    ENT.Infection = "npc_308_freshdead"
    ENT.InfectionPM = true
ENT.Category = "Xbase | NPCs"

    ENT.HP = 15
    ENT.StartSpeed = 80
    ENT.BBox = Vector(15, 15, 15)
    ENT.BloodColor = 5
    ENT.Factions = {FACTION_ZOMBIES}

    ENT.Model = "models/headcrabclassic.mdl"

    ENT.AttRange = 200
    ENT.AttRange2 = 0
    ENT.MoveAct = ACT_RUN
    ENT.AttFaceTo = true

    function ENT:Attack()
    if not self:IsOnGround() then
        self.Timer = 0
        return
        end

        self:StartActivity(ACT_RANGE_ATTACK1)

        local enemy = self:GetEnemy()
        if not IsValid(enemy) then
            return
            end

            local a = enemy:EyePos() - self:WorldSpaceCenter() + Vector(0, 0, 200 - self:GetRangeTo(enemy) * 0.5)

            self.Timer2 = CurTime() + 4

            self:EmitSound("npc/headcrab/attack" .. math.random(3) .. ".wav", 120)

            self:Jump(10)
            self.Timer = CurTime() + 2

            timer.Simple(0.15, function()
            if IsValid(self) and self.loco then
                self.loco:SetVelocity(a * 2.5)
                end
                end)

            self:Melee({
                {
                    Range = 45,
                    dmg = 5,
                    Time = 0.5,
                    SHit = "npc/headcrab/headbite.wav"
                }
            })
            end

            function ENT:OnKillEnemy()
            if IsValid(self.Infect) then
                self.Infect:SetHealth(85)
                end

                self:Remove()
                end

                ENT.SIdle2 = {
                    "npc/headcrab/idle1.wav",
                    "npc/headcrab/idle2.wav",
                    "npc/headcrab/idle3.wav",
                }

                ENT.SFoundEnemy = "npc/headcrab/alert1.wav"

                ENT.SDie2 = {
                    "npc/headcrab/pain1.wav",
                    "npc/headcrab/pain2.wav",
                    "npc/headcrab/pain3.wav",
                }

                ENT.SHurt2 = {
                    "npc/headcrab/die1.wav",
                    "npc/headcrab/die2.wav",
                }

                Add308Nextbot(ENT)
