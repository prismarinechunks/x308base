AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["mansum"]

ENT.AdminOnly = true

ENT.Category = "308 NPC"

ENT.Factions = {FACTION_REBELS}

ENT.HP = 150

ENT.Color = Color(255,0,255)

ENT.StartSpeed = 20

ENT.AttRange = 30

ENT.MoveAct = ACT_WALK

ENT.Att = {
    {
        Time = .4,
        SHit = "Flesh.ImpactHard",
        SMiss = "WeaponFrag.Throw"
    }
}

ENT.QuickRemove = 1


function ENT:OnHurt()

self:EmitSound(
    "3088083421/pl/bhit_flesh-" .. math.random(3) .. ".wav"
)

end


function ENT:OnDead()

self:EmitSound(
    "3088083421/pl/die" .. math.random(3) .. ".wav"
)

end


if SERVER then


    function ENT:CustomInit()

    self.T = CurTime()+10


    local e = ents.Create("prop_physics")


    if IsValid(e) then

        e:SetModel(
            "models/props_phx/construct/glass/glass_curve360x2.mdl"
        )

        e:SetMaterial(
            "models/props_combine/com_shield001a"
        )

        e:SetPos(self:GetPos())

        e:SetAngles(self:GetAngles())

        e:Spawn()

        e:SetParent(self)

        e:SetCollisionGroup(COLLISION_GROUP_DEBRIS_TRIGGER)


        self:DeleteOnRemove(e)

        end

        end



        function ENT:CustomThink()

        if self.T > CurTime() then return end


            self.Speed = 10


            self.T = CurTime()+5


            local e = self:CreateEntourage("npc_308_man")


            if IsValid(e) then

                e:SetSpawnEffect(true)

                e.Speed = 200

                e:SetSpeed(200)

                e:EmitSound(
                    "3088083421/soulknight/spawn.mp3",
                    511
                )

                self:DeleteOnRemove(e)

                end

                end


                end


                Add308Nextbot(ENT)
