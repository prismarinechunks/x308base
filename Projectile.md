# x308 Projectile Documentation

## Overview

x308 projectiles are reusable projectile entities designed for NPC attacks.

Projectiles handle:

- Movement
- Collision
- Damage
- Effects
- Sounds
- Status effects
- Custom impact behavior

NPCs decide the projectile's stats when they fire it.

This allows multiple NPCs to use the same projectile while having different:

- Damage values
- Speeds
- Lifetimes
- Effects
- Colors
- Special abilities

The projectile entity handles how it works. The NPC decides what it should do.

---

# Entity Setup

Projectile entities are stored in:

    lua/entities/

Example:

    obj_x308_projectile/

    ├── shared.lua
    ├── init.lua
    └── cl_init.lua

NPCs choose their projectile:

    ENT.Projectile = "obj_x308_projectile"

---

# NPC Projectile Stats

NPCs control projectile settings.

Example:

    ENT.Projectile = "obj_x308_projectile"

    ENT.ProjectileDamage = 25
    ENT.ProjectileSpeed = 1600
    ENT.ProjectileLife = 8
    ENT.ProjectileRadius = 50

When the NPC fires, these values are passed to the projectile.

Different NPCs can use the same projectile with different stats.

Example:

Peashooter:

    Damage = 7
    Speed = 1600

Boss:

    Damage = 100
    Speed = 800
    Radius = 200

---

# Projectile Variables

## Damage

    ENT.Damage = 25

Controls damage dealt on impact.

Usually set by the NPC.

Example:

    projectile.Damage = self.ProjectileDamage

---

## Radius

    ENT.Radius = 50

Controls splash damage range.

Set to 0 for direct damage only.

Example:

    projectile.Radius = 150

---

## Lifetime

    ENT.LifeTime = 8

Controls how long the projectile exists.

After the lifetime expires, the projectile is removed.

---

## Speed

    ENT.Speed = 1600

Controls projectile movement speed.

Usually assigned by the NPC when launched.

---

## Explosion

    ENT.Explosion = false

Controls explosion effects.

Example:

    projectile.Explosion = true

---

## Damage Type

    ENT.DamageType = DMG_BULLET

Controls the damage type used.

Examples:

    DMG_BULLET
    DMG_BLAST
    DMG_POISON

---

# Visual Settings

Projectile visuals can be changed by either the projectile itself or the NPC.

Examples:

    projectile.PeaColor = Color(0,255,0)

    projectile:SetModelScale(0.35)

This allows different NPCs to share a projectile but use different visuals.

---

# Projectile Movement

Projectiles require physics to move.

Required:

    self:SetMoveType(MOVETYPE_VPHYSICS)

    self:SetSolid(SOLID_VPHYSICS)

The projectile entity is responsible for movement.

The NPC only provides:

- Spawn position
- Direction
- Speed
- Owner

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

NPC example:

    projectile:Launch(
        position,
        direction,
        self
    )

---

# Collision

Projectiles handle their own collisions.

When a projectile hits something:

    PhysicsCollide

runs.

The projectile decides:

- Damage
- Effects
- Sounds
- Status effects
- Removal

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

    target:TakeDamageInfo(dmg)

---

# Impact Effects

Projectiles can create their own impact effects.

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

Projectile sounds are controlled by the projectile.

Fire sound:

    ENT.FireSound = "weapons/fire.wav"

Impact sound:

    ENT.ImpactSound = "physics/body/body_medium_impact.wav"

NPCs can override these when needed.

---

# Status Effects

Projectiles can apply extra effects.

Examples:

- Slow
- Poison
- Burn
- Infection
- Knockback

Example:

    projectile.SlowEnabled = true

    projectile.SlowTime = 3

---

# Ownership

NPCs should always assign ownership.

Example:

    projectile:SetOwner(
        self
    )

The owner controls:

- Damage attribution
- Kill credit
- Faction checks
- Friendly fire checks

---

# NPC Example

Example NPC setup:

    ENT.Projectile = "obj_x308_projectile"

    ENT.ProjectileDamage = 25
    ENT.ProjectileSpeed = 1600
    ENT.ProjectileLife = 8


Firing:

    local projectile =
        ents.Create(
            self.Projectile
        )


    projectile.Damage =
        self.ProjectileDamage


    projectile.Speed =
        self.ProjectileSpeed


    projectile.LifeTime =
        self.ProjectileLife


    projectile:SetOwner(
        self
    )


    projectile:Spawn()

The NPC controls the stats.
The projectile controls the behavior.

---

# Common Bugs

## Projectile has no physics

Cause:

- Missing PhysicsInit
- Invalid model
- Wrong movement type

Fix:

    self:PhysicsInit(
        SOLID_VPHYSICS
    )

    self:SetMoveType(
        MOVETYPE_VPHYSICS
    )

---

## Projectile does not move

Cause:

- Launch was not called
- Velocity was never applied

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

- Work with any NPC
- Keep NPC code simple
- Allow NPC-specific stats
- Support custom effects
- Support different factions
- Allow one projectile to be reused by many NPCs

NPCs decide the projectile's stats.

Projectiles decide how those stats are handled.
