AddCSLuaFile()

ENT.Base = "npc_308_solider"

ENT.PrintName = GAME308_LANWEP["solider"] .. "(Heavy)"

ENT.BloodColor = 3

ENT.Category = "Xbase | NPCs"

ENT.HP = 250

ENT.Ammo = 100

ENT.Scale = 1.2

ENT.Color = Color(255,255,0)

ENT.Factions = {FACTION_REBELS}

ENT.RA_Dmg = 5

ENT.SQuestion = _308BotNQuestion
ENT.SAnswer = _308BotNAnswer

ENT.AttFaceTo = true

ENT.StartSpeed = 80

ENT.Material = "phoenix_storms/metalset_1-2"

ENT.AttRange = 450

ENT.MoveAct = ACT_WALK

ENT.Weapon = "308_wm_heavy"


function ENT:Attack()

if self.Ammo < 1 then

    self:SEQ("reload",0.5)

    self:SoundSlot({
        {
            Sound="weapons/m249/m249_boxout.wav"
        },
        {
            Sound="weapons/m249/m249_coverup.wav",
            Delay=.5
        },
        {
            Sound="weapons/m249/m249_boxin.wav",
            Delay=1.1
        },
        {
            Sound="weapons/m249/m249_coverdown.wav",
            Delay=1.9
        },
        {
            Sound="3088083421/wep/reload/mach_boltpull.ogg",
            Delay=2.5
        }
    })

    self.Timer = CurTime()+2.5

    self.Ammo = 100

    return

    end


    self.Ammo = self.Ammo-1


    self:SoundSlot({
        {
            Sound="weapons/m249/m249-1.wav",
            Volume=511,
            Pitch=90+math.random(0,20)
        }
    })


    self:SEQ("shootgun2",0.5)

    self.Timer = CurTime()+0.22

    self:FireB()

    end


    function ENT:OnLastEnemy()

    if self.Ammo < 100 then

        self:SEQ("reload",0.6)

        self:SoundSlot({
            {
                Sound="weapons/m249/m249_boxout.wav",
                Volume=511
            },
            {
                Sound="weapons/m249/m249_coverup.wav",
                Delay=.5
            },
            {
                Sound="weapons/m249/m249_boxin.wav",
                Delay=1.1
            },
            {
                Sound="weapons/m249/m249_coverdown.wav",
                Delay=1.9
            }
        })


        self.Timer = CurTime()+2.2

        self.Ammo = 100

        end

        end


        Add308Nextbot(ENT)
