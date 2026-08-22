AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["wargiant"]
ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_REBELS}

ENT.HP = 2200
ENT.Scale = 2.25

ENT.StartSpeed = 90

ENT.Weapon = "308_wm_wargiant"

ENT.AttRate = 1.5

ENT.Att = {
    {
        dmg = 65,
        Range = 65,
        Time = 0.5,
        SHit = "Flesh.ImpactHard",
        SMiss = "WeaponFrag.Throw"
    }
}

ENT.MoveAct = ACT_WALK

ENT.QuickRemove = 1

function ENT:OnTakeDamage()

self:EmitSound(
    "vo/npc/male01/pain0" .. math.random(9) .. ".wav",
               100,
               70
)

end

Add308Nextbot(ENT)
