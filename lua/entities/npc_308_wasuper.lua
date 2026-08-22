AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["wasuper"]
ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_REBELS}

ENT.Color = Color(255,0,0)

ENT.HP = 400

ENT.StartSpeed = 80

ENT.AttRange = 40
ENT.AttRate = 2.2
ENT.AttTime = .5

ENT.QuickRemove = 1

ENT.Att = {
    {
        Range = 49,
        Time = .35,
        dmg = 25,
        SHit = "physics/flesh/flesh_bloody_break.wav",
        SMiss = "weapons/iceaxe/iceaxe_swing1.wav"
    }
}

ENT.MoveAct = ACT_WALK

function ENT:CustomInit()

local e = ents.Create("prop_physics")

if IsValid(e) then
    e:SetModel("models/weapons/w_spade.mdl")
    e:SetModelScale(2)

    e:SetPos(
        self:GetPos()
        + Vector(0,0,31)
        + self:GetRight()*-7.1
        + self:GetForward()*99
    )

    e:SetAngles(self:GetAngles()+Angle(-90,0,10))
    e:Spawn()

    e:SetMoveType(MOVETYPE_NONE)
    e:SetSolid(SOLID_NONE)
    e:SetColor(Color(255,0,0))
    e:SetParent(self,5)

    self:DeleteOnRemove(e)
    end


    local e2 = ents.Create("prop_physics")

    if IsValid(e2) then
        e2:SetModel("models/hunter/blocks/cube025x025x025.mdl")
        e2:SetModelScale(1.2)

        e2:SetPos(
            self:GetPos()
            + Vector(0,0,67)
            + self:GetForward()*2.9
        )

        e2:SetAngles(self:GetAngles()+Angle(-90,0,10))
        e2:Spawn()

        e2:SetMoveType(MOVETYPE_NONE)
        e2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
        e2:SetColor(Color(255,0,0))
        e2:SetParent(self,1)

        self:DeleteOnRemove(e2)
        end

        end

        function ENT:OnTakeDamage(d)

        self:EmitSound(
            "vo/npc/male01/pain0"..math.random(9)..".wav",
                       511,
                       110
        )

        end

        Add308Nextbot(ENT)
