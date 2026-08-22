-- Created By Xero Chunks

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

ENT.AutomaticFrameAdvance = true

ENT.Model = nil

ENT.HP = 100
ENT.MaxHP = nil

ENT.Faction = nil

ENT.Speed = nil
ENT.WalkSpeed = nil
ENT.RunSpeed = nil

ENT.AttackDamage = nil
ENT.AttackRange = nil
ENT.AttackRate = nil

ENT.Projectile = nil
ENT.ProjectileDamage = nil
ENT.ProjectileSpeed = nil
ENT.ProjectileRadius = nil
ENT.ProjectileLife = nil

ENT.Target = nil
ENT.Enemy = nil

ENT.Animations = {
    Idle = "idle",
    Move = "run",
    Attack = "attack2",
    Death = nil
}

ENT.AnimationRate = 1
ENT.AnimationLocked = false
ENT.AnimationEnd = 0
ENT.CurrentAnimation = nil
ENT.PreviousAnimation = nil

ENT.AnimationState = "Idle"
ENT.AnimationSequence = -1

ENT.CanMove = true
ENT.CanAttack = true

ENT.CanRetreat = false
ENT.RetreatSpeed = 100
ENT.RetreatDistance = 500

ENT.SpawnSound = nil
ENT.AttackSound = nil
ENT.DeathSound = nil

ENT.DropItem = nil
ENT.DropChance = 0

ENT.CustomData = {}

function ENT:Initialize()
self.X308 = {
    Dead = false
}

self.CurrentAnimation = nil
self.PreviousAnimation = nil
self.AnimationState = "Idle"
self.AnimationSequence = -1

self.AnimationLocked = false
self.AnimationEnd = 0

if self.Model then
    self:SetModel(self.Model)
    end

    self:SetMoveType(MOVETYPE_STEP)
    self:SetSolid(SOLID_BBOX)
    self:SetCollisionGroup(COLLISION_GROUP_NPC)

    local hp = self.MaxHP or self.HP

    if hp then
        self:SetHealth(hp)
        self:SetMaxHealth(hp)
        end

        if self.Faction then
            self:SetNWString("x308Faction", self.Faction)
            end

            if self.SpawnSound then
                self:EmitSound(self.SpawnSound)
                end

                if self.CustomInit then
                    self:CustomInit()
                    end

                    self:X308PlayAnimation("Idle", true)

                    self:NextThink(CurTime())

                    return true
                    end

                    function ENT:X308SetTarget(ent)
                    if not IsValid(ent) then
                        self.Target = nil
                        self.Enemy = nil
                        return
                        end

                        self.Target = ent
                        self.Enemy = ent
                        end

                        function ENT:X308GetTarget()
                        if IsValid(self.Target) then
                            return self.Target
                            end

                            return nil
                            end

                            function ENT:X308GetAnimation(name)
                            if not self.Animations then
                                return nil
                                end

                                return self.Animations[name]
                                end

                                function ENT:X308GetSequence(name)
                                local animation = self:X308GetAnimation(name)

                                if not animation then
                                    return -1
                                    end

                                    local sequence = self:LookupSequence(animation)

                                    if not sequence or sequence < 0 then
                                        return -1
                                        end

                                        return sequence
                                        end

                                        function ENT:X308HasAnimation(name)
                                        return self:X308GetSequence(name) >= 0
                                        end

                                        function ENT:X308GetAnimationDuration(name)
                                        local sequence = self:X308GetSequence(name)

                                        if sequence < 0 then
                                            return 0
                                            end

                                            return self:SequenceDuration(sequence) or 0
                                            end

                                            function ENT:X308GetAnimationName(name)
                                            return self:X308GetAnimation(name)
                                            end

                                            function ENT:X308PlayAnimation(name, force, lockTime, playbackRate)
                                            if self.X308.Dead and name ~= "Death" then
                                                return false
                                                end

                                                if not self.Animations or not self.Animations[name] then
                                                    return false
                                                    end

                                                    local sequence = self:X308GetSequence(name)

                                                    if sequence < 0 then
                                                        return false
                                                        end

                                                        if self.AnimationLocked and not force then
                                                            return false
                                                            end

                                                            if self.CurrentAnimation == name and not force then
                                                                return true
                                                                end

                                                                self.PreviousAnimation = self.CurrentAnimation
                                                                self.CurrentAnimation = name
                                                                self.AnimationState = name
                                                                self.AnimationSequence = sequence

                                                                self:SetSequence(sequence)
                                                                self:ResetSequenceInfo()
                                                                self:SetCycle(0)

                                                                local rate =
                                                                playbackRate
                                                                or self.AnimationRate
                                                                or 1

                                                                rate = tonumber(rate) or 1

                                                                if rate <= 0 then
                                                                    rate = 1
                                                                    end

                                                                    self:SetPlaybackRate(rate)

                                                                    if lockTime then
                                                                        self.AnimationLocked = true
                                                                        self.AnimationEnd = CurTime() + lockTime
                                                                        else
                                                                            self.AnimationLocked = false
                                                                            self.AnimationEnd = 0
                                                                            end

                                                                            return true
                                                                            end

                                                                            function ENT:X308PlayAnimationOnce(name, force, playbackRate)
                                                                            local duration = self:X308GetAnimationDuration(name)

                                                                            if duration <= 0 then
                                                                                return false
                                                                                end

                                                                                local rate =
                                                                                playbackRate
                                                                                or self.AnimationRate
                                                                                or 1

                                                                                rate = tonumber(rate) or 1

                                                                                if rate <= 0 then
                                                                                    rate = 1
                                                                                    end

                                                                                    local adjustedDuration = duration / rate

                                                                                    return self:X308PlayAnimation(
                                                                                        name,
                                                                                        force,
                                                                                            adjustedDuration,
                                                                                            rate
                                                                                    )
                                                                                    end

                                                                                    function ENT:X308SetAnimation(name, force, lockTime, playbackRate)
                                                                                    return self:X308PlayAnimation(
                                                                                        name,
                                                                                        force,
                                                                                            lockTime,
                                                                                            playbackRate
                                                                                    )
                                                                                    end

                                                                                    function ENT:X308SetIdle()
                                                                                    if self.AnimationLocked then
                                                                                        return false
                                                                                        end

                                                                                        return self:X308PlayAnimation("Idle")
                                                                                        end

                                                                                        function ENT:X308SetMove()
                                                                                        if self.AnimationLocked then
                                                                                            return false
                                                                                            end

                                                                                            return self:X308PlayAnimation("Move")
                                                                                            end

                                                                                            function ENT:X308SetAttack(duration)
                                                                                            local sequence = self:X308GetSequence("Attack")

                                                                                            if sequence < 0 then
                                                                                                return false
                                                                                                end

                                                                                                duration = duration or self:SequenceDuration(sequence)

                                                                                                if not duration or duration <= 0 then
                                                                                                    duration = 0.1
                                                                                                    end

                                                                                                    return self:X308PlayAnimation(
                                                                                                        "Attack",
                                                                                                        true,
                                                                                                        duration
                                                                                                    )
                                                                                                    end

                                                                                                    function ENT:X308SetDeath()
                                                                                                    if self:X308HasAnimation("Death") then
                                                                                                        local duration = self:X308GetAnimationDuration("Death")

                                                                                                        self:X308PlayAnimation(
                                                                                                            "Death",
                                                                                                            true,
                                                                                                            duration > 0 and duration or nil
                                                                                                        )

                                                                                                        return true
                                                                                                        end

                                                                                                        return false
                                                                                                        end

                                                                                                        function ENT:X308IsMoving()
                                                                                                        local velocity = self:GetVelocity()

                                                                                                        if not velocity then
                                                                                                            return false
                                                                                                            end

                                                                                                            local horizontalVelocity = Vector(
                                                                                                                velocity.x,
                                                                                                                velocity.y,
                                                                                                                0
                                                                                                            )

                                                                                                            return horizontalVelocity:LengthSqr() > 25
                                                                                                            end

                                                                                                            function ENT:X308UpdateAnimation()
                                                                                                            if self.X308.Dead then
                                                                                                                return
                                                                                                                end

                                                                                                                if self.AnimationLocked then
                                                                                                                    return
                                                                                                                    end

                                                                                                                    local moving = self:X308IsMoving()

                                                                                                                    if moving then
                                                                                                                        if self:X308HasAnimation("Move") then
                                                                                                                            if self.CurrentAnimation ~= "Move" then
                                                                                                                                self:X308SetMove()
                                                                                                                                end
                                                                                                                                end

                                                                                                                                return
                                                                                                                                end

                                                                                                                                if self:X308HasAnimation("Idle") then
                                                                                                                                    if self.CurrentAnimation ~= "Idle" then
                                                                                                                                        self:X308SetIdle()
                                                                                                                                        end
                                                                                                                                        end
                                                                                                                                        end

                                                                                                                                        function ENT:X308AnimationThink()
                                                                                                                                        if self.X308.Dead then
                                                                                                                                            return
                                                                                                                                            end

                                                                                                                                            if self.AnimationLocked then
                                                                                                                                                if self.AnimationEnd > 0 then
                                                                                                                                                    if CurTime() >= self.AnimationEnd then
                                                                                                                                                        local finishedAnimation =
                                                                                                                                                        self.CurrentAnimation

                                                                                                                                                        self.AnimationLocked = false
                                                                                                                                                        self.AnimationEnd = 0
                                                                                                                                                        self.CurrentAnimation = nil

                                                                                                                                                        if finishedAnimation == "Attack" then
                                                                                                                                                            self:X308UpdateAnimation()
                                                                                                                                                            else
                                                                                                                                                                self:X308UpdateAnimation()
                                                                                                                                                                end
                                                                                                                                                                end
                                                                                                                                                                end

                                                                                                                                                                return
                                                                                                                                                                end

                                                                                                                                                                self:X308UpdateAnimation()
                                                                                                                                                                end

                                                                                                                                                                function ENT:X308Move(direction, speed)
                                                                                                                                                                if not self.CanMove then
                                                                                                                                                                    self:X308StopMove()
                                                                                                                                                                    return
                                                                                                                                                                    end

                                                                                                                                                                    if not direction then
                                                                                                                                                                        self:X308StopMove()
                                                                                                                                                                        return
                                                                                                                                                                        end

                                                                                                                                                                        direction = Vector(
                                                                                                                                                                            direction.x,
                                                                                                                                                                            direction.y,
                                                                                                                                                                            0
                                                                                                                                                                        )

                                                                                                                                                                        if direction:LengthSqr() <= 0 then
                                                                                                                                                                            self:X308StopMove()
                                                                                                                                                                            return
                                                                                                                                                                            end

                                                                                                                                                                            direction:Normalize()

                                                                                                                                                                            local moveSpeed =
                                                                                                                                                                            speed
                                                                                                                                                                            or self.Speed
                                                                                                                                                                            or self.WalkSpeed
                                                                                                                                                                            or 0

                                                                                                                                                                            self:SetMoveVelocity(
                                                                                                                                                                                direction * moveSpeed
                                                                                                                                                                            )
                                                                                                                                                                            end

                                                                                                                                                                            function ENT:X308StopMove()
                                                                                                                                                                            if self.SetMoveVelocity then
                                                                                                                                                                                self:SetMoveVelocity(
                                                                                                                                                                                    Vector(0, 0, 0)
                                                                                                                                                                                )
                                                                                                                                                                                end
                                                                                                                                                                                end

                                                                                                                                                                                function ENT:X308Retreat()
                                                                                                                                                                                if not self.CanRetreat then
                                                                                                                                                                                    return
                                                                                                                                                                                    end

                                                                                                                                                                                    if not self.X308_Retreating then
                                                                                                                                                                                        return
                                                                                                                                                                                        end

                                                                                                                                                                                        local enemy =
                                                                                                                                                                                        self.Enemy
                                                                                                                                                                                        or self.Target

                                                                                                                                                                                        if not IsValid(enemy) then
                                                                                                                                                                                            self:X308StopMove()
                                                                                                                                                                                            return
                                                                                                                                                                                            end

                                                                                                                                                                                            local direction =
                                                                                                                                                                                            self:GetPos()
                                                                                                                                                                                            -
                                                                                                                                                                                            enemy:GetPos()

                                                                                                                                                                                            direction.z = 0

                                                                                                                                                                                            if direction:LengthSqr() <= 0 then
                                                                                                                                                                                                self:X308StopMove()
                                                                                                                                                                                                return
                                                                                                                                                                                                end

                                                                                                                                                                                                direction:Normalize()

                                                                                                                                                                                                self:X308Move(
                                                                                                                                                                                                    direction,
                                                                                                                                                                                                    self.RetreatSpeed
                                                                                                                                                                                                )
                                                                                                                                                                                                end

                                                                                                                                                                                                function ENT:OnTakeDamage(dmg)
                                                                                                                                                                                                if self.X308.Dead then
                                                                                                                                                                                                    return
                                                                                                                                                                                                    end

                                                                                                                                                                                                    local damage =
                                                                                                                                                                                                    dmg:GetDamage()

                                                                                                                                                                                                    if damage <= 0 then
                                                                                                                                                                                                        return
                                                                                                                                                                                                        end

                                                                                                                                                                                                        local hp =
                                                                                                                                                                                                        math.max(
                                                                                                                                                                                                            self:Health() - damage,
                                                                                                                                                                                                                 0
                                                                                                                                                                                                        )

                                                                                                                                                                                                        self:SetHealth(hp)

                                                                                                                                                                                                        if self.OnDamaged then
                                                                                                                                                                                                            self:OnDamaged(dmg)
                                                                                                                                                                                                            end

                                                                                                                                                                                                            if hp <= 0 then
                                                                                                                                                                                                                self.X308.Dead = true

                                                                                                                                                                                                                self:X308StopMove()

                                                                                                                                                                                                                self:OnDead()
                                                                                                                                                                                                                end
                                                                                                                                                                                                                end

                                                                                                                                                                                                                function ENT:OnDead()
                                                                                                                                                                                                                if self.DeathSound then
                                                                                                                                                                                                                    self:EmitSound(
                                                                                                                                                                                                                        self.DeathSound
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                    end

                                                                                                                                                                                                                    if self.CustomDeath then
                                                                                                                                                                                                                        self:CustomDeath()
                                                                                                                                                                                                                        end

                                                                                                                                                                                                                        if self:X308HasAnimation("Death") then
                                                                                                                                                                                                                            local duration =
                                                                                                                                                                                                                            self:X308GetAnimationDuration("Death")

                                                                                                                                                                                                                            self:X308SetDeath()

                                                                                                                                                                                                                            if duration > 0 then
                                                                                                                                                                                                                                SafeRemoveEntityDelayed(
                                                                                                                                                                                                                                    self,
                                                                                                                                                                                                                                    duration
                                                                                                                                                                                                                                )

                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                SafeRemoveEntityDelayed(
                                                                                                                                                                                                                                    self,
                                                                                                                                                                                                                                    0
                                                                                                                                                                                                                                )
                                                                                                                                                                                                                                end

                                                                                                                                                                                                                                function ENT:Think()
                                                                                                                                                                                                                                if self.X308.Dead then
                                                                                                                                                                                                                                    self:NextThink(CurTime())
                                                                                                                                                                                                                                    return true
                                                                                                                                                                                                                                    end

                                                                                                                                                                                                                                    self:X308AnimationThink()

                                                                                                                                                                                                                                    if self.X308_Retreating then
                                                                                                                                                                                                                                        self:X308Retreat()
                                                                                                                                                                                                                                        elseif self.CustomThink then
                                                                                                                                                                                                                                            self:CustomThink()
                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                            self:NextThink(CurTime())

                                                                                                                                                                                                                                            return true
                                                                                                                                                                                                                                            end

                                                                                                                                                                                                                                            function ENT:OnRemove()
                                                                                                                                                                                                                                            self:X308StopMove()
                                                                                                                                                                                                                                            end
