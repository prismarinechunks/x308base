AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["zbboss"]

ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_ZOMBIES}

ENT.Infection = "npc_308_freshdead"
ENT.InfectionPM = true

ENT.Color = Color(255,0,0)

ENT.IsBoss = true

ENT.BloodColor = 5

ENT.HP = 3500

ENT.Scale = 1.2

ENT.Material = "models/spawn_effect2"

ENT.StartSpeed = 70

ENT.Model = "models/zombie/classic.mdl"

ENT.AttSeq2 = {
    "swatrightmid",
    "swatleftmid"
}

ENT.AttRate = 3

ENT.MoveAct = ACT_WALK

ENT.Minions = 0


function ENT:CustomInit()

self:SetBodygroup(1,1)

self.T = CurTime()+10

_308PlaySoundAll(
    "ambient/levels/prison/inside_battle_zombie2.wav",
    50
)

_308PlaySoundAll(
    "hl1/ambience/port_suckin1.wav",
    90
)

end


function ENT:CustomThink()

if self.T < CurTime() and self:HasEnemy() then

    if self.Minions < 2 then

        self.T = CurTime()+45

        self.Minions = self.Minions + 1

        _308PlaySoundAll(
            "ambient/creatures/town_zombie_call1.wav"
        )

        local e = ents.Create("npc_308_zbminiboss")

        if IsValid(e) then

            e:SetPos(self:GetPos())

            e:SetAngles(self:GetAngles())

            e:Spawn()

            e:SetSpawnEffect(true)

            self:DeleteOnRemove(e)

            end

            self:SEQ("releasecrab",.5)

            end

            end

            end


            function ENT:OnHurt(d)

            local hp = self:Health()/self.HP

            local speed = 70 + 80*(1-hp)

            self:SetSpeed(math.Clamp(speed,70,150))

            self.Speed = math.Clamp(speed,70,150)

            self:EmitSound(
                "npc/zombie/zombie_pain"..math.random(6)..".wav",
                           100,
                           80
            )

            end


            function ENT:OnDead()

            self:EmitSound(
                "3088083421/zb/zd"..math.random(2)..".wav",
                           100,
                           70
            )

            end


            ENT.Att = {
                {
                    Range = 40,
                    dmg = 40,
                    Time = .15,
                    SHit = "npc/ichthyosaur/snap.wav"
                }
            }


            if game.SinglePlayer() then
                Add308Nextbot(ENT)
                end
