# x308 Projectile Documentation

## Overview

x308 projectiles are reusable projectile entities designed for NPC attacks.

They handle:

- Movement
- Damage
- Collision
- Effects
- Sounds
- Status effects
- Custom behavior

NPCs can use the same projectile entity while changing its stats.

---

# Entity Setup

Projectile entities are usually stored in:

    lua/entities/

Example:

    obj_x308_projectile/

    ├── shared.lua
    ├── init.lua
    └── cl_init.lua

NPCs can spawn projectiles using:

    ENT.Projectile = "obj_x308_projectile"

---

# Projectile Variables

## Damage

    ENT.Damage = 25

Controls how much damage the projectile deals.

Example:

    ENT.Damage = 50

---

## Radius

    ENT.Radius = 50

Used for splash damage projectiles.

Example:

    ENT.Radius = 150

Set to 0 for direct hit only.

---

## Lifetime

    ENT.LifeTime = 8

Controls how long the projectile exists before being removed.

Example:

    ENT.LifeTime = 10

---

## Speed

    ENT.Speed = 1600

Controls projectile travel speed.

Example:

    ENT.Speed = 2000

---

## Explosion

    ENT.Explosion = false

Enables explosion effects.

Example:

    ENT.Explosion = true

---

## Damage Type

    ENT.DamageType = DMG_BULLET

Controls the damage type.

Examples:

    DMG_BULLET
    DMG_BLAST
    DMG_POISON

---

# Visual Settings

## Projectile Model

Example:

    self:SetModel(
        "models/hunter/misc/sphere025x025.mdl"
    )

Projectiles can use any model.

---

## Color

Example:

    ENT.PeaColor = Color(0,255,0)

Changes projectile color.

---

## Model Scale

Example:

    self:SetModelScale(0.35)

Changes projectile size.

---

## Trail

Projectiles can use trails:

    util.SpriteTrail(
        self,
        0,
        Color(0,255,0),
        true,
        4,
        0,
        0.4,
        1,
        "trails/laser"
    )

---

# Movement

Projectiles require physics to move.

The projectile must have:

    MOVETYPE_VPHYSICS

and:

    SOLID_VPHYSICS


Example:

    self:SetMoveType(MOVETYPE_VPHYSICS)

    self:SetSolid(SOLID_VPHYSICS)

---

# Launch System

Projectiles should have a Launch function.

Example:

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

NPCs can then fire:

    projectile:Launch(
        position,
        direction,
        npc
    )

---

# Collision

When the projectile hits something:

    PhysicsCollide

is called.

Example:

    function ENT:PhysicsCollide(data,phys)

        local hit =
            data.HitEntity

    end

---

# Damage Handling

Example:

    local dmg = DamageInfo()

    dmg:SetDamage(
        self.Damage
    )

    dmg:SetAttacker(
        self:GetOwner()
    )

    dmg:SetInflictor(
        self
    )

    hit:TakeDamageInfo(dmg)

---

# Effects

Projectiles can create impact effects.

Example:

    local effect = EffectData()

    effect:SetOrigin(
        self:GetPos()
    )

    util.Effect(
        "cball_explode",
        effect
    )

---

# Sounds

## Fire Sound

Example:

    ENT.FireSound = "weapons/fire.wav"

---

## Impact Sound

Example:

    ENT.ImpactSound = "physics/body/body_medium_impact.wav"

---

# Status Effects

Projectiles can apply effects after hitting.

Examples:

- Slow
- Poison
- Burning
- Infection
- Knockback

---

## Slow Example

Variables:

    ENT.SlowEnabled = true

    ENT.SlowAmount = 0.5

    ENT.SlowTime = 3

Example:

    target:SetPlaybackRate(
        self.SlowAmount
    )

---

# Ownership

Projectiles should always have an owner.

Example:

    projectile:SetOwner(
        npc
    )

The owner is used for:

- Damage attribution
- Faction checks
- Kill tracking

---

# NPC Usage Example

Example NPC projectile setup:

    ENT.Projectile = "obj_x308_projectile"

    ENT.ProjectileDamage = 25

    ENT.ProjectileSpeed = 1600

    ENT.ProjectileLife = 8


Creating the projectile:

    local projectile =
        ents.Create(
            self.Projectile
        )


    projectile.Damage =
        self.ProjectileDamage


    projectile.Speed =
        self.ProjectileSpeed


    projectile:SetOwner(
        self
    )


    projectile:Spawn()

---

# Common Bugs

## Projectile has no physics

Cause:

- Missing PhysicsInit
- Wrong MoveType
- Model has no physics mesh

Fix:

    self:PhysicsInit(
        SOLID_VPHYSICS
    )

    self:SetMoveType(
        MOVETYPE_VPHYSICS
    )

---

## Projectile stays still

Cause:

- Launch function missing
- Velocity not applied

Fix:

    phys:SetVelocity(
        direction * speed
    )

---

## Projectile damages wrong targets

Cause:

- Missing owner
- Missing faction checks

Fix:

    projectile:SetOwner(
        attacker
    )

---

# Design Goals

x308 projectiles are designed to:

- Be reusable
- Work with any NPC
- Support custom effects
- Keep NPC code simple
- Allow easy stat editing
- Support PvZ and other x308 systems

Projectiles should handle their own movement and impact logic while NPCs only decide when and where to fire.
