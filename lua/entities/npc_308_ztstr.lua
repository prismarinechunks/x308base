AddCSLuaFile()

ENT.Base = "npc_308_zt"

ENT.PrintName = GAME308_LANWEP["ztstr"]

ENT.Category = "308 NPC"

ENT.Factions = {FACTION_ZOMBIES}

ENT.HP = 75

ENT.StartSpeed = 70

ENT.Model = "models/Zombie/classic_torso.mdl"

ENT.AttSeq = "attack"

ENT.MoveAct = ACT_WALK

ENT.AttRate = 2

ENT.Att = {
    {
        Range = 30,
        dmg = 5,
        Time = 0.3,
        SHit = "npc/zombie/claw_strike1.wav",
        SMiss = "WeaponFrag.Throw"
    }
}

Add308Nextbot(ENT)
