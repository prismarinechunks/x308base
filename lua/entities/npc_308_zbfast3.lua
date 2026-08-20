AddCSLuaFile()

ENT.Base = "npc_308_zb"
ENT.PrintName=GAME308_LANWEP["zbfast"]
ENT.Category = "308 NPC"

ENT.Color=Color(199,199,99)

ENT.HP=90
ENT.StartSpeed=160
ENT.AttRate=1.5

ENT.Att={
    {
        Range=55,
        dmg=8,
        Time=.15,
        SHit="npc/zombie/claw_strike1.wav"
    }
}

Add308Nextbot(ENT)
