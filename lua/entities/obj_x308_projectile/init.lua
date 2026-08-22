-- Created By Xero Chunks

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


ENT.Damage = 25
ENT.Speed = 1600
ENT.LifeTime = 8

ENT.PeaColor = Color(0,255,0)


function ENT:Initialize()

self:SetModel(
    "models/hunter/misc/sphere025x025.mdl"
)


self:SetMaterial(
    "models/debug/debugwhite"
)


self:SetColor(
    self.PeaColor
    or
    Color(0,255,0)
)


self:SetModelScale(
    0.35
)


self:PhysicsInit(
    SOLID_VPHYSICS
)


self:SetMoveType(
    MOVETYPE_VPHYSICS
)


self:SetSolid(
    SOLID_VPHYSICS
)


self:SetCollisionGroup(
    COLLISION_GROUP_PROJECTILE
)



local phys =
self:GetPhysicsObject()


if IsValid(phys) then

    phys:Wake()

    phys:SetMass(1)

    phys:EnableGravity(false)

    phys:SetDragCoefficient(0)

    end



    local glow =
    ents.Create(
        "env_sprite"
    )


    if IsValid(glow) then

        glow:SetKeyValue(
            "model",
            "sprites/light_glow02_add.vmt"
        )


        glow:SetKeyValue(
            "scale",
            "0.25"
        )


        glow:SetKeyValue(
            "rendermode",
            "5"
        )


        glow:SetColor(
            self.PeaColor
            or
            Color(0,255,0)
        )


        glow:SetPos(
            self:GetPos()
        )


        glow:SetParent(
            self
        )


        glow:Spawn()


        self.Glow =
        glow

        end



        self.SpawnTime =
        CurTime()

        end



        function ENT:Launch(pos,dir,owner)

        self:SetPos(pos)

        self:SetOwner(owner)


        local phys =
        self:GetPhysicsObject()


        if IsValid(phys) then

            phys:SetVelocity(
                dir *
                self.Speed
            )

            end

            end



            function ENT:Think()

            if CurTime() >= self.SpawnTime + self.LifeTime then

                SafeRemoveEntity(self)

                return

                end


                self:NextThink(
                    CurTime()
                )


                return true

                end



                function ENT:PhysicsCollide(data,phys)

                if self.Hit then
                    return
                    end


                    self.Hit = true



                    local hit =
                    data.HitEntity


                    if IsValid(hit) and hit != self then

                        local dmg =
                        DamageInfo()


                        dmg:SetDamage(
                            self.Damage
                        )


                        dmg:SetDamageType(
                            DMG_BULLET
                        )


                        dmg:SetAttacker(
                            IsValid(self:GetOwner())
                            and self:GetOwner()
                            or self
                        )


                        dmg:SetInflictor(
                            self
                        )


                        hit:TakeDamageInfo(
                            dmg
                        )

                        end



                        local fx =
                        EffectData()


                        fx:SetOrigin(
                            self:GetPos()
                        )


                        util.Effect(
                            "cball_explode",
                            fx
                        )



                        self:EmitSound(
                            "pvz/pea_hit.wav"
                        )


                        if IsValid(self.Glow) then

                            self.Glow:Remove()

                            end


                            SafeRemoveEntity(
                                self
                            )

                            end



                            function ENT:OnRemove()

                            if IsValid(self.Glow) then

                                self.Glow:Remove()

                                end

                                end
