AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["crazy"]
ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_ZOMBIES}

ENT.Infection = "npc_308_freshdead"
ENT.InfectionPM = true

ENT.BloodColor = 5
ENT.Color = Color(255,199,195)

ENT.HP = 750
ENT.Scale = 1.3

ENT.StartSpeed = 60
ENT.MoveAct = ACT_WALK

ENT.Model = "models/Zombie/Fast.mdl"

ENT.BBox = Vector(12,12,55)

ENT.AttSeq = "melee"

ENT.Att = {
    {
        Range = 32,
        dmg = 5,
        Time = .1,
        SHit = "npc/zombie/claw_strike1.wav"
    },
    {
        Range = 32,
        dmg = 5,
        Time = .4,
        SHit = "npc/zombie/claw_strike2.wav",
        SMiss = "npc/zombie/claw_miss1.wav"
    }
}

function ENT:CustomInit()
if self:GetNumBodyGroups() > 1 then
    self:SetBodygroup(1,1)
    end

    local bones = {
        ["ValveBiped.Bip01_Head1"] = Vector(.8,.8,.8),
        ["ValveBiped.Bip01_L_Hand"] = Vector(2.5,2.5,2.5),
        ["ValveBiped.Bip01_R_Hand"] = Vector(2.5,2.5,2.5),
        ["ValveBiped.Bip01_L_Foot"] = Vector(2,2,2),
        ["ValveBiped.Bip01_R_Foot"] = Vector(2,2,2)
    }

    for bone,scale in pairs(bones) do
        local id = self:LookupBone(bone)

        if id then
            self:ManipulateBoneScale(id,scale)
            end
            end
            end

            function ENT:OnHurt(d)
            self:EmitSound(
                "3088083421/zb/zh"..math.random(2)..".wav",
                           100,
                           80
            )

            if self:Health() < 500 and not self.Enraged then
                self.Enraged = true

                self:EmitSound(
                    "npc/zombie_poison/pz_die2.wav"
                )

                self:SetColor(Color(255,129,125))

                if self:GetNumBodyGroups() > 1 then
                    self:SetBodygroup(1,0)
                    end

                    self.Speed = 220
                    self:SetSpeed(250)

                    self.AttRate = 2

                    self.Att = {
                        {
                            Range = 55,
                            dmg = 4,
                            Time = .05,
                            SHit = "npc/zombie/claw_strike3.wav"
                        },
                        {
                            Range = 55,
                            dmg = 4,
                            Time = .2,
                            SHit = "npc/zombie/claw_strike2.wav",
                            SMiss = "npc/zombie/claw_miss1.wav"
                        }
                    }
                    end
                    end

                    function ENT:OnDead()
                    self:EmitSound(
                        "3088083421/zb/zd"..math.random(2)..".wav",
                                   100,
                                   70
                    )
                    end

                    Add308Nextbot(ENT)
