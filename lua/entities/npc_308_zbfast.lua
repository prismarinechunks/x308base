AddCSLuaFile()

ENT.Base = "npc_308_zb"

ENT.PrintName = GAME308_LANWEP["zbfast"]

ENT.Category = "Xbase | NPCs"

ENT.Color = Color(199,199,99)

ENT.HP = 90

ENT.StartSpeed = 150

ENT.AttRate = 1.5

ENT.Att = {
    {
        Range = 50,
        dmg = 10,
        Time = .15,
        SHit = "npc/zombie/claw_strike1.wav"
    }
}

Add308Nextbot(ENT)
