AddCSLuaFile()

ENT.Base = "npc_308_solider"

ENT.PrintName = GAME308_LANWEP["solider"] .. "(AK47)"

ENT.Category = "308 NPC"

ENT.HP = 80

ENT.Ammo = 30

ENT.Color = Color(255,0,0)

ENT.Factions = {FACTION_REBELS}

ENT.RA_Dmg = 6

ENT.SQuestion = _308BotNQuestion
ENT.SAnswer = _308BotNAnswer

ENT.AttFaceTo = true

ENT.StartSpeed = 140

ENT.Material = "models/props_c17/paper01"

ENT.AttRange = 425

ENT.MoveAct = ACT_RUN

ENT.Weapon = "308_wm_ak"


function ENT:Attack()

if self.Ammo < 1 then

    self:SEQ("reload",0.8)

    self:SoundSlot({
        {
            Sound="weapons/ak47/ak47_clipout.wav"
        },
        {
            Sound="weapons/ak47/ak47_clipin.wav",
            Delay=.8
        },
        {
            Sound="weapons/ak47/ak47_boltpull.wav",
            Delay=1.5
        }
    })

    self.Timer=CurTime()+2

    self.Ammo=30

    return

    end


    self.Ammo=self.Ammo-1


    self:SoundSlot({
        {
            Sound="weapons/ak47/ak47-1.wav",
            Volume=511,
            Pitch=90+math.random(0,20)
        }
    })


    self:SEQ("shootgun2",.5)

    self.Timer=CurTime()+0.3

    self:FireB()

    end


    function ENT:OnLastEnemy()

    if self.Ammo<30 then

        self:SEQ("reload",.8)

        self:SoundSlot({
            {
                Sound="weapons/ak47/ak47_clipout.wav"
            },
            {
                Sound="weapons/ak47/ak47_clipin.wav",
                Delay=.8
            }
        })

        self.Timer=CurTime()+1.5

        self.Ammo=30

        end

        end


        Add308Nextbot(ENT)
