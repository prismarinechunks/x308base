AddCSLuaFile()

ENT.Base = "npc_308_solider"

ENT.PrintName = GAME308_LANWEP["solider"] .. "(Shotgun)"

ENT.Category = "Xbase | NPCs"

ENT.HP = 70

ENT.Ammo = 6

ENT.Color = Color(0,255,255)

ENT.Factions = {FACTION_REBELS}

ENT.SQuestion = _308BotNQuestion
ENT.SAnswer = _308BotNAnswer

ENT.AttFaceTo = true

ENT.StartSpeed = 120

ENT.Material = "models/props_pipes/GutterMetal01a"

ENT.AttRange = 300

ENT.MoveAct = ACT_WALK

ENT.Weapon = "308_wm_shot"

ENT.RA_Dmg = 5

ENT.RA_Num = 6

ENT.RA_Spread = 60


function ENT:Attack()

if self.Ammo < 1 then

    self:SEQ("reload",0.6)

    self:SoundSlot({
        {
            Sound="weapons/shotgun/shotgun_reload1.wav"
        },
        {
            Sound="weapons/shotgun/shotgun_reload2.wav",
            Delay=.4
        },
        {
            Sound="weapons/shotgun/shotgun_reload3.wav",
            Delay=.7
        },
        {
            Sound="weapons/alyx_gun/alyx_shotgun_cock1.wav",
            Delay=1.2
        }
    })

    self.Timer=CurTime()+1.8

    self.Ammo=6

    return

    end


    self.Ammo=self.Ammo-1


    self:SoundSlot({
        {
            Sound="weapons/shotgun/shotgun_fire7.wav",
            Volume=511,
            Pitch=90+math.random(0,20)
        },
        {
            Sound="weapons/alyx_gun/alyx_shotgun_cock1.wav",
            Delay=.3
        }
    })


    self:SEQ("shootgun2",.4)

    self.Timer=CurTime()+1

    self:FireB()

    end


    function ENT:OnLastEnemy()

    if self.Ammo<6 then

        self:SEQ("reload",.8)

        self:SoundSlot({
            {
                Sound="weapons/shotgun/shotgun_reload1.wav"
            },
            {
                Sound="weapons/shotgun/shotgun_reload2.wav",
                Delay=.4
            },
            {
                Sound="weapons/shotgun/shotgun_reload3.wav",
                Delay=.7
            }
        })

        self.Timer=CurTime()+1.8

        self.Ammo=6

        end

        end


        Add308Nextbot(ENT)
