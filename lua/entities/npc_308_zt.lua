AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["zt"]

ENT.Infection = "npc_308_freshdead"
ENT.InfectionPM = true

ENT.BloodColor = 5

ENT.BBox = Vector(10,10,20)

ENT.Category = "308 NPC"

ENT.Factions = {FACTION_ZOMBIES}

ENT.HP = 40

ENT.StartSpeed = 40

ENT.Model = "models/zombie/fast_torso.mdl"

ENT.AttSeq = "attack01"

ENT.MoveAct = ACT_WALK

ENT.AttRate = 1.5

ENT.Att = {
    {
        Range = 28,
        dmg = 3,
        Time = 0.3,
        SHit = "npc/zombie/claw_strike1.wav",
        SMiss = "WeaponFrag.Throw"
    }
}

function ENT:OnTakeDamage(d)
self:EmitSound("3088083421/zb/zh" .. math.random(2) .. ".wav")
end

Add308Nextbot(ENT)
