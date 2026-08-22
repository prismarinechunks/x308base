AddCSLuaFile()

ENT.Base = "npc_308_man"

ENT.PrintName = GAME308_LANWEP["zbboom"]

ENT.Infection = "npc_308_freshdead"
ENT.InfectionPM = true

ENT.Category = "Xbase | NPCs"

ENT.Factions = {FACTION_ZOMBIES}

ENT.BloodColor = 6

ENT.HP = 60

ENT.StartSpeed = 100

ENT.Color = Color(0,255,0)

ENT.Model = "models/zombie/classic.mdl"

ENT.AttRate = 2

ENT.IdleAct = ACT_IDLE_ON_FIRE
ENT.MoveAct = ACT_WALK_ON_FIRE

ENT.QuickRemove = 1

function ENT:Attack()

self:Kill()

end


function ENT:OnDead(d)

local a

if d and IsValid(d:GetAttacker()) then
    a = d:GetAttacker()
    end


    local e = ents.Create("env_explosion")

    if IsValid(e) then
        e:SetOwner(self)

        e:SetPos(self:GetPos())

        e:SetKeyValue("iMagnitude","0")
        e:SetKeyValue("spawnflags","305")

        e:Spawn()
        e:Activate()

        e:Fire("Explode","",0)
        end


        local e2 = ents.Create("env_physexplosion")

        if IsValid(e2) then
            e2:SetOwner(self)

            e2:SetPos(self:GetPos())

            e2:SetKeyValue("magnitude","120")
            e2:SetKeyValue("radius","260")
            e2:SetKeyValue("spawnflags","3")

            e2:Spawn()
            e2:Activate()

            e2:Fire("Explode","",0)
            end


            self:EmitSound(
                "3088083421/nanoboom.mp3",
                511
            )


            self.HasRagdoll = "models/Humans/Charple01.mdl"

            self:EXPLOAD(90,90,a)

            end

            Add308Nextbot(ENT)
