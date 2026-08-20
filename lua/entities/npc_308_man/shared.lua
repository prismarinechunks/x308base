ENT.Base = "base_nextbot"
ENT.Type = "nextbot"
ENT.PrintName = GAME308_LANWEP["man"]
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = false
ENT.Category = "308 NPC"

ENT.JudgeDelay = .4
ENT.StartSpeed = 200
ENT.Gravity = 1000
ENT.JumpHeight = 40
ENT.StepHeight = 20
ENT.Acceleration = 200
ENT.Deceleration = 200
ENT.YawRate = 250

ENT.Factions = {}
ENT.HostileIfBelowHP = .5
ENT.DefaultRelationship = D_HT

ENT.BBox = Vector(10, 10, 80)
ENT.Color = color_white
ENT.BloodColor = 0
ENT.HasRagdoll = true
ENT.Scale = 1
ENT.Skin = 0

ENT.AllowMove = 1
ENT.NoChase = false
ENT.StartAI = true
ENT.AttackIgnoreWorld = false

ENT.Disa_Speed = 15
ENT.SpriteShakeMax = 20
ENT.SpriteShakeT = .5
ENT.Sprites = {}
ENT.SpriteRate = {["Run"] = 1, ["Walk"] = 1, ["Move"] = 1, ["Idle"] = 1}
ENT.IdleT = .5
ENT.WalkT = .5
ENT.RunT = .5
ENT.SpriteSequencePer = .5

ENT.AttSeq = "swing"
ENT.AttSpeed = 0
ENT.AttRange = 20
ENT.MeleeMultiple = 1
ENT._DSpeed = .02
ENT.RA_FireAttach = 0
ENT.RA_Dmg = 25
ENT.RA_Num = 1
ENT.RA_Spread = 12
ENT.RA_Tracer = 0
ENT.RA_Muzzle = true
ENT.Ammo = 30

ENT.IdleAct = ACT_IDLE
ENT.MoveAct = ACT_RUN

ENT.LastEnemyTime = 0
ENT.EyePosBone = "ValveBiped.Bip01_Head1"
ENT.EyePosOffset = Vector()

ENT.NextS_L = 6
ENT.NextS_H = 9
ENT.SQuestion = {}
ENT.SAnswer = {}

ENT.StartMusPitch = 100
ENT.SpawnSound = " "
ENT.SKillEnemy = " "

ENT.SAttackPitch = {100, 100}
ENT.SKillEnemyPitch = {100, 100}
ENT.SLastEnemyPitch = {100, 100}
ENT.SFoundEnemyPitch = {100, 100}
ENT.SDiePitch = {100, 100}
ENT.SHurtPitch = {100, 100}
ENT.SAlertPitch = {100, 100}
ENT.STakeDmgPitch = {100, 100}
ENT.SIdlePitch = {100, 100}
ENT.SCombatPitch = {100, 100}

ENT.KillIconColor = color_white

ENT._NextT = 0
ENT._Rot = CurTime()
ENT.SAttack = " "
ENT.SFoundEnemy = " "
ENT.SLastEnemy = " "
ENT.SIdle = " "
ENT.SCombat = " "
ENT.SDie = " "
ENT.SHurt = " "
ENT.SAlert = " "
ENT.STakeDmg = " "
ENT.Is308Bot = true
ENT.__Idle = 0
ENT._Regen = 0
ENT._NextSoundT = 0
ENT._Faction = {}
ENT._ForceSet = {}
ENT.Enemys = {}
ENT._Enemys = {}
ENT.Effect_Wep = {}

_308BotNQuestion = {
    {Snd = "vo/npc/male01/question01.wav", Delay = 3.2},
    {Snd = "vo/npc/male01/question02.wav", Delay = 3.2},
    {Snd = "vo/npc/male01/question03.wav", Delay = 3.2},
    {Snd = "vo/npc/male01/question04.wav", Delay = 5},
    {Snd = "vo/npc/male01/question05.wav", Delay = 3.2},
    {Snd = "vo/npc/male01/question07.wav", Delay = 3.5},
    {Snd = "vo/npc/male01/question08.wav", Delay = 3.5},
    {Snd = "vo/npc/male01/question09.wav", Delay = 4},
    {Snd = "vo/npc/male01/question10.wav", Delay = 3.5},
    {Snd = "vo/npc/male01/question11.wav", Delay = 3.5},
    {Snd = "vo/npc/male01/question12.wav", Delay = 3.5},
    {Snd = "vo/npc/male01/question13.wav", Delay = 3.2},
    {Snd = "vo/npc/male01/question14.wav", Delay = 4.5},
    {Snd = "vo/npc/male01/question15.wav", Delay = 4},
    {Snd = "vo/npc/male01/question16.wav", Delay = 3.5},
    {Snd = "vo/npc/male01/question17.wav", Delay = 3.5},
    {Snd = "vo/npc/male01/question18.wav", Delay = 3.5},
    {Snd = "vo/npc/male01/question19.wav", Delay = 4},
    {Snd = "vo/npc/male01/question20.wav", Delay = 4.7},
    {Snd = "vo/npc/male01/question21.wav", Delay = 3.5},
    {Snd = "vo/npc/male01/question22.wav", Delay = 3.2},
    {Snd = "vo/npc/male01/question23.wav", Delay = 7.5},
    {Snd = "vo/npc/male01/question25.wav", Delay = 4},
    {Snd = "vo/npc/male01/question26.wav", Delay = 3},
    {Snd = "vo/npc/male01/question27.wav", Delay = 3.2},
    {Snd = "vo/npc/male01/question28.wav", Delay = 3.2},
    {Snd = "vo/npc/male01/question29.wav", Delay = 4.5},
}

_308BotNAnswer = {
    {Snd = "vo/npc/male01/answer01.wav"},
    {Snd = "vo/npc/male01/answer02.wav"},
    {Snd = "vo/npc/male01/answer03.wav"},
    {Snd = "vo/npc/male01/answer04.wav"},
    {Snd = "vo/npc/male01/answer05.wav"},
    {Snd = "vo/npc/male01/answer07.wav"},
    {Snd = "vo/npc/male01/answer08.wav"},
    {Snd = "vo/npc/male01/answer09.wav"},
    {Snd = "vo/npc/male01/answer10.wav"},
    {Snd = "vo/npc/male01/answer11.wav"},
    {Snd = "vo/npc/male01/answer12.wav"},
    {Snd = "vo/npc/male01/answer13.wav"},
    {Snd = "vo/npc/male01/answer14.wav"},
    {Snd = "vo/npc/male01/answer15.wav"},
    {Snd = "vo/npc/male01/answer16.wav"},
    {Snd = "vo/npc/male01/answer17.wav"},
    {Snd = "vo/npc/male01/answer18.wav"},
    {Snd = "vo/npc/male01/answer19.wav"},
    {Snd = "vo/npc/male01/answer20.wav"},
    {Snd = "vo/npc/male01/answer21.wav"},
    {Snd = "vo/npc/male01/answer22.wav"},
    {Snd = "vo/npc/male01/answer23.wav"},
    {Snd = "vo/npc/male01/answer25.wav"},
    {Snd = "vo/npc/male01/answer26.wav"},
    {Snd = "vo/npc/male01/answer27.wav"},
    {Snd = "vo/npc/male01/answer28.wav"},
    {Snd = "vo/npc/male01/answer29.wav"},
}

AddCSLuaFile()
Add308Nextbot(ENT)
