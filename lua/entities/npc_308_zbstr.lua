AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["zbstr"]

ENT.Infection = "npc_308_freshdead"
ENT.InfectionPM = true

ENT.BloodColor = 5

ENT.Category = "308 NPC"

ENT.Factions = {FACTION_ZOMBIES}

ENT.BBox = Vector(14,14,52)

ENT.HP = 125

ENT.StartSpeed = 70

ENT.Model = "models/Zombie/Poison.mdl"

ENT.AttSeq = "melee_01"

ENT.AttRate = 2

ENT.MoveAct = ACT_WALK

ENT.Att = {
    {
        Range = 35,
        dmg = 15,
        Time = 0.5,
        SHit = "npc/zombie/claw_strike3.wav",
        SMiss = "WeaponFrag.Throw"
    }
}

function ENT:OnHurt(d)
self:EmitSound("3088083421/zb/zh" .. math.random(2) .. ".wav")
end

function ENT:OnDead()
self:EmitSound("3088083421/zb/zd" .. math.random(2) .. ".wav")
end

Add308Nextbot(ENT)
