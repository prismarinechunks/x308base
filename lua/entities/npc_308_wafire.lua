AddCSLuaFile()

ENT.Base = "npc_308_man"
ENT.PrintName = GAME308_LANWEP["wafire"]
ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_REBELS}

ENT.Color = Color(255,128,0)

ENT.HP = 180
ENT.StartSpeed = 90

ENT.AttRate = 2.8
ENT.AttRange = 30

ENT.QuickRemove = 1

ENT.Att = {
    {
        Range = 35,
        Time = .25,
        dmg = 15,
        SHit = "weapons/crossbow/bolt_skewer1.wav",
        SMiss = "weapons/iceaxe/iceaxe_swing1.wav"
    }
}

ENT.MoveAct = ACT_WALK

ENT.Weapon = "weapon_308_axe"

ENT.IgnoreFire = 0

function ENT:CustomInit()

local e2 = ents.Create("prop_physics")

if IsValid(e2) then
    e2:SetModel("models/hunter/blocks/cube025x025x025.mdl")
    e2:SetPos(self:GetPos()+Vector(0,0,67)+self:GetForward()*2.9)
    e2:SetAngles(self:GetAngles()+Angle(-90,0,10))
    e2:Spawn()

    e2:SetMoveType(MOVETYPE_NONE)
    e2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
    e2:SetColor(Color(255,128,0))

    e2:Ignite(9999)

    e2:SetParent(self,1)

    self:DeleteOnRemove(e2)
    end

    if IsValid(self:GetActiveWeapon()) then
        self:GetActiveWeapon():Ignite(9999)
        end
        end

        function ENT:OnHitEnemy(v)

        if IsValid(v) then
            v:Ignite(3)
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
