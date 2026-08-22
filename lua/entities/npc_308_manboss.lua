AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["manboss"]
ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_REBELS}

ENT.IsBoss = true

ENT.HP = 4500
ENT.Scale = 1.1
ENT.Color = Color(255, 115, 9)

ENT.StartSpeed = 270

ENT.AttRange = 52
ENT.AttRate = 2

ENT.QuickRemove = 1

ENT.Att = {
    {
        Range = 58,
        Time = 0.2,
        dmg = 16,
        SHit = "Flesh.ImpactHard",
        SMiss = "WeaponFrag.Throw"
    }
}

ENT.SQuestion = _308BotNQuestion
ENT.SAnswer = _308BotNAnswer

function ENT:CustomInit()
local e = ents.Create("prop_physics")

if IsValid(e) then
    e:SetModel("models/weapons/w_spade.mdl")
    e:SetMaterial("models/props_combine/portalball001_sheet")
    e:SetPos(self:GetPos() + Vector(0, 0, 35) + self:GetRight() * 3.9 + self:GetForward() * 42)
    e:SetAngles(self:GetAngles() + Angle(-90, 0, 10))
    e:Spawn()

    e:SetMoveType(MOVETYPE_NONE)
    e:SetSolid(SOLID_NONE)
    e:SetParent(self, 5)
    end

    self.S = ents.Create("prop_physics")

    if IsValid(self.S) then
        self.S:SetMaterial("models/props_combine/com_shield001a")
        self.S:SetModel("models/props_phx/construct/glass/glass_plate1x1.mdl")
        self.S:SetPos(self:GetPos() + Vector(0, 0, 33) + self:GetRight() * -10 + self:GetForward() * 14)
        self.S:SetAngles(self:GetAngles() + Angle(-10, 0, -150))
        self.S:Spawn()

        self.S:SetMoveType(MOVETYPE_NONE)
        self.S:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
        self.S:SetHealth(500)
        self.S:SetParent(self, 6)
        end

        _308PlaySoundAll("ambient/levels/prison/inside_battle_soldier1.wav", 50)
        _308PlaySoundAll("hl1/ambience/port_suckin1.wav", 90)
        end

        function ENT:OnTakeDamage(d)
        self:EmitSound("vo/npc/male01/pain0" .. math.random(9) .. ".wav", 100, 90)
        end

        Add308Nextbot(ENT)
