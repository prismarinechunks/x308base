AddCSLuaFile()

ENT.Base="npc_308_man"

ENT.PrintName=GAME308_LANWEP["zbheadless"]

ENT.Infection="npc_308_freshdead"
ENT.InfectionPM=true

ENT.BBox=Vector(10,10,45)

ENT.BloodColor=5

ENT.Category = "Xbase | NPCs"
ENT.Factions={FACTION_ZOMBIES}

ENT.HP=120

ENT.StartSpeed=110

ENT.Model="models/Zombie/Fast.mdl"

ENT.AttSeq="melee"

ENT.MoveAct=ACT_RUN

function ENT:CustomInit()
local head=self:LookupBone("ValveBiped.Bip01_Head1")
if head then
    self:ManipulateBoneScale(head,Vector(.1,.1,.1))
    end
    end

    function ENT:OnTakeDamage(d,h)
    if h==1 then
        d:SetDamage(d:GetDamage()/2)
        end

        self:EmitSound("3088083421/zb/zh"..math.random(2)..".wav")
        end

        ENT.Att={
            {
                Range=35,
                dmg=10,
                Time=.1,
                SHit="npc/zombie/claw_strike1.wav"
            },
            {
                Range=35,
                dmg=10,
                Time=.4,
                SHit="npc/zombie/claw_strike2.wav"
            }
        }

        Add308Nextbot(ENT)
