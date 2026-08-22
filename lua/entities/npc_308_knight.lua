AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = "Knight"

if GAME308_LANMath == 2 then
    ENT.PrintName = "骑士"
    end

    ENT.Model = "models/Police.mdl"

    ENT.RunAct = ACT_RUN

ENT.Category = "Xbase | NPCs"

    ENT.Factions = {FACTION_REBELS}

    ENT.BloodColor = 0

    ENT.Color = Color(119, 149, 249)

    ENT.Scale = 1.1

    ENT.HP = 250

    ENT.StartSpeed = 210

    ENT.AttRate = 1.5

    ENT.AttRange = 34

    ENT.Att = {
        {
            Range = 50,
            Time = 0.3,
            dmg = 24,
            SHit = {
                "weapons/knife/knife_hit1.wav",
                "weapons/knife/knife_hit2.wav",
                "weapons/knife/knife_hit3.wav",
                "weapons/knife/knife_hit4.wav"
            },
            SMiss = "weapons/iceaxe/iceaxe_swing1.wav"
        }
    }

    ENT.Weapon = {"weapon_308_robloxsword"}

    ENT.QuickRemove = 1

    function ENT:OnAttack()
    if math.random(4) < 2 then
        self.AttRate = 2
        self.AttTime = 0.6

        self.Att = {
            {
                Range = 52,
                Time = 0.2,
                dmg = 50,
                SHit = "weapons/knife/knife_stab.wav"
            }
        }
        else
            self.AttTime = nil
            self.AttRate = 1.5

            self.Att = {
                {
                    Range = 50,
                    Time = 0.3,
                    dmg = 24,
                    SHit = {
                        "weapons/knife/knife_hit1.wav",
                        "weapons/knife/knife_hit2.wav",
                        "weapons/knife/knife_hit3.wav",
                        "weapons/knife/knife_hit4.wav"
                    },
                    SMiss = "weapons/iceaxe/iceaxe_swing1.wav"
                }
            }
            end
            end

            function ENT:CustomInit()
            local e2 = ents.Create("prop_physics")

            if IsValid(e2) then
                e2:SetModel("models/hunter/blocks/cube025x025x025.mdl")

                local v = self:GetBonePosition(6)

                if v then
                    e2:SetPos(v + self:GetForward() * 2.8 + self:GetUp() * 2)
                    else
                        e2:SetPos(self:GetPos() + Vector(0,0,50))
                        end

                        e2:SetAngles(self:GetAngles() + Angle(-90,0,0))
                        e2:Spawn()

                        e2:SetMoveType(MOVETYPE_NONE)
                        e2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
                        e2:SetColor(Color(119,149,249))
                        e2:SetParent(self,1)
                        end
                        end

                        function ENT:OnTakeDamage(d)
                        self:EmitSound("npc/metropolice/pain" .. math.random(4) .. ".wav",90)
                        end

                        Add308Nextbot(ENT)
