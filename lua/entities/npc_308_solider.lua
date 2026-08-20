AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["solider"]

ENT.Category = "308 NPC"

ENT.Factions = {FACTION_REBELS}

ENT.HP = 65

ENT.Ammo = 12

ENT.StartSpeed = 170

ENT.Model = "models/hl1bar.mdl"

ENT.Material = "point"

ENT.AttRange = 400

ENT.MoveAct = ACT_RUN

ENT.AttFaceTo = true

ENT.RA_Dmg = 8

ENT.SQuestion = _308BotNQuestion
ENT.SAnswer = _308BotNAnswer


function ENT:CustomInit()

self:SetBodygroup(1,2)

if self:GetClass() == "npc_308_solider" then
    self:SetBodygroup(1,1)
    end

    end


    function ENT:Attack()

    if self.Ammo < 1 then

        self:SEQ("reload")

        self:SoundSlot({
            {
                Sound = "weapons/usp/usp_clipout.wav"
            },
            {
                Sound = "weapons/usp/usp_clipin.wav",
                Delay = .5
            },
            {
                Sound = "weapons/usp/usp_slideback.wav",
                Delay = 1
            }
        })

        self.Timer = CurTime() + 1.8

        self.Ammo = 12

        return

        end


        self.Ammo = self.Ammo - 1


        self:SoundSlot({
            {
                Sound = "weapons/usp/usp_unsil-1.wav",
                Volume = 511,
                Pitch = 90 + math.random(0,20)
            }
        })


        self:SEQ("shootgun2")

        self.Timer = CurTime() + 0.7

        self:FireB()

        end


        function ENT:OnLastEnemy()

        if self.Ammo < 12 then

            self:SEQ("reload",1.5)

            self:SoundSlot({
                {
                    Sound = "weapons/usp/usp_clipout.wav"
                },
                {
                    Sound = "weapons/usp/usp_clipin.wav",
                    Delay = .3
                }
            })

            self.Timer = CurTime() + 1.5

            self.Ammo = 12

            end

            end


            function ENT:OnHurt()

            self:EmitSound(
                "3088083421/pl/bhit_flesh-" .. math.random(3) .. ".wav",
                           511
            )

            end


            function ENT:OnDead()

            self:EmitSound(
                "3088083421/pl/die" .. math.random(3) .. ".wav",
                           511
            )

            end


            Add308Nextbot(ENT)
