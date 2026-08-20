AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["manstr"]
ENT.Category = "308 NPC"

ENT.Factions = {FACTION_REBELS}

ENT.HP = 175
ENT.BloodColor = 1

ENT.Color = Color(255, 199, 199)

ENT.StartSpeed = 220
ENT.AttRate = 2

ENT.Att = {
    {
        Range = 35,
        dmg = 20,
        Time = 0.2,
        SHit = "Flesh.ImpactHard",
        SMiss = "WeaponFrag.Throw"
    }
}

function ENT:OnTakeDamage(d)
self:EmitSound("vo/npc/male01/pain0" .. math.random(9) .. ".wav")
end

Add308Nextbot(ENT)
