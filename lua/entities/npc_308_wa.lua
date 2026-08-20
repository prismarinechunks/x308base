AddCSLuaFile()

ENT.Base = "npc_308_man"
ENT.PrintName = GAME308_LANWEP["wa"]
ENT.Category = "308 NPC"

ENT.Factions = {FACTION_REBELS}

ENT.HP = 85
ENT.Color = Color(119,249,249)

ENT.StartSpeed = 145

ENT.AttRate = 2.5
ENT.AttRange = 30

ENT.Att = {
    {
        Range = 35,
        Time = .25,
        dmg = 10,
        SHit = "physics/metal/metal_canister_impact_hard3.wav",
        SMiss = "weapons/iceaxe/iceaxe_swing1.wav"
    }
}

ENT.Weapon = {
    "weapon_308_axe",
    "weapon_308_sledgehammer"
}

ENT.QuickRemove = 1

function ENT:CustomInit()

if self:HasWeapon("weapon_308_axe") then
    self.Att = {
        {
            Range = 35,
            Time = .25,
            dmg = 9,
            SHit = "weapons/crossbow/bolt_skewer1.wav",
            SMiss = "weapons/iceaxe/iceaxe_swing1.wav"
        }
    }
    end

    local e2 = ents.Create("prop_physics")

    if IsValid(e2) then
        e2:SetModel("models/hunter/blocks/cube025x025x025.mdl")
        e2:SetPos(self:GetPos()+Vector(0,0,67)+self:GetForward()*2.9)
        e2:SetAngles(self:GetAngles()+Angle(-90,0,10))
        e2:Spawn()

        e2:SetMoveType(MOVETYPE_NONE)
        e2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
        e2:SetColor(Color(119,249,249))

        e2:SetParent(self,1)

        self:DeleteOnRemove(e2)
        end
        end

        function ENT:OnTakeDamage(d)
        self:EmitSound("vo/npc/male01/pain0"..math.random(9)..".wav",511,90)
        end

        Add308Nextbot(ENT)
