AddCSLuaFile()

ENT.Base="npc_308_man"

ENT.PrintName=GAME308_LANWEP["zbgiant"]

ENT.Infection="npc_308_freshdead"
ENT.InfectionPM=true

ENT.BloodColor=5

ENT.Category = "Xbase | NPCs"
ENT.Factions={FACTION_ZOMBIES}

ENT.HP=750
ENT.Scale=1.8

ENT.StartSpeed=65

ENT.Model="models/zombie/classic.mdl"

ENT.AttSeq2={"swatrightmid","swatleftmid"}

ENT.MoveAct=ACT_WALK
ENT.AttRate=2.5

function ENT:OnHurt(d)
self:EmitSound("npc/zombie/zombie_pain"..math.random(6)..".wav",100,80)
end

function ENT:OnDead()
self:EmitSound("npc/zombie/zombie_die"..math.random(3)..".wav",100,80)
end

function ENT:CustomThink()
if self:IsOnFire() then
    self.IdleAct=ACT_IDLE_ON_FIRE
    self.MoveAct=ACT_WALK_ON_FIRE
    else
        self.IdleAct=ACT_IDLE
        self.MoveAct=ACT_WALK
        end
        end

        ENT.Att={
            {
                Range=45,
                dmg=35,
                Time=.25,
                SHit="npc/zombie/claw_strike1.wav"
            }
        }

        Add308Nextbot(ENT)
