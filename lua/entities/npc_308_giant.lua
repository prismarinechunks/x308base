AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["giant"]
ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_REBELS}

ENT.HP = 150
ENT.Scale = 1.4

ENT.StartSpeed = 100
ENT.MoveAct = ACT_WALK

ENT.Att = {
    {
        Range = 32,
        dmg = 15,
        Time = .4,
        SHit = "Flesh.ImpactHard",
        SMiss = "WeaponFrag.Throw"
    }
}

ENT.SQuestion = _308BotNQuestion
ENT.SAnswer = _308BotNAnswer

function ENT:OnTakeDamage(d)
self:EmitSound(
    "vo/npc/male01/pain0"..math.random(9)..".wav",
               100,
               100
)
end

Add308Nextbot(ENT)
