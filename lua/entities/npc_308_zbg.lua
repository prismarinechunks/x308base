AddCSLuaFile()

ENT.Base="npc_308_man"

ENT.PrintName=GAME308_LANWEP["zbg"]
ENT.Infection="npc_308_freshdead"
ENT.InfectionPM=true

ENT.BloodColor=5
ENT.Category = "308 NPC"
ENT.Factions={FACTION_ZOMBIES}

ENT.Color=Color(0,0,0)

ENT.NoTarget=true

ENT.HP=80
ENT.Scale=1
ENT.Material="models/spawn_effect"

ENT.StartSpeed=180

ENT.Model="models/zombie/classic.mdl"

ENT.AttSeq2={"swatrightmid","swatleftmid"}

ENT.AttRate=1.5
ENT.MoveAct=ACT_RUN

function ENT:OnHitEnemy()
self:SetNoTarget()
end

function ENT:OnTakeDamage()
self:SetMaterial()
self:SetNoTarget()
end

function ENT:OnDead()
self:EmitSound("3088083421/manif"..math.random(2)..".wav",100,80)
end

ENT.Att={
    {
        Range=35,
        dmg=35,
        Time=.13,
        SHit="physics/body/body_medium_break4.wav"
    }
}

Add308Nextbot(ENT)
