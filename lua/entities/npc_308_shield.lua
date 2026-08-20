AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["shield"]

ENT.Category = "308 NPC"

ENT.Factions = {FACTION_REBELS}

ENT.HP = 80

ENT.Color = Color(255,199,199)

ENT.StartSpeed = 250

ENT.AttRate = 2

ENT.Att = {
    {
        Time = .2,
        dmg = 6,
        SHit = "Flesh.ImpactHard",
        SMiss = "WeaponFrag.Throw"
    }
}

ENT.QuickRemove = 1

ENT.SQuestion = _308BotNQuestion

ENT.SAnswer = _308BotNAnswer


function ENT:OnTakeDamage()

self:EmitSound(
    "vo/npc/male01/pain0" .. math.random(9) .. ".wav"
)

end


function ENT:CustomInit()

local shield = ents.Create("prop_physics")

if not IsValid(shield) then return end


    shield:SetModel(
        "models/props_phx/construct/glass/glass_plate1x1.mdl"
    )


    shield:SetPos(
        self:GetPos()
        + Vector(0,0,22)
        + self:GetRight()*11
        + self:GetForward()*20
    )


    shield:SetAngles(
        self:GetAngles()+Angle(-10,0,-50)
    )


    shield:Spawn()


    shield:SetMoveType(MOVETYPE_NONE)

    shield:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

    shield:SetHealth(400)


    shield:SetParent(self,5)


    self.S = shield


    self:DeleteOnRemove(shield)

    end


    function ENT:OnDead()

    if IsValid(self.S) then

        self.S:TakeDamage(100)

        end

        end


        Add308Nextbot(ENT)
