# x308 Base NPC Documentation

## Overview

npc_x308_base is the main base entity for x308 NPCs.

It provides shared NPC functionality so individual NPCs only need to define their own stats and special behavior.

Supports:

- Multi-file NPCs
- Single-file NPCs
- Custom attacks
- Projectiles
- Factions
- Custom behavior

---

# Entity Setup

## Multi-File NPC

Used for larger NPCs.

    lua/entities/

    npc_x308_base/
    ├── shared.lua
    ├── init.lua
    └── cl_init.lua

    npc_example/
    ├── shared.lua
    ├── init.lua
    └── cl_init.lua

Example:

    ENT.Base = "npc_x308_base"

---

## Single-File NPC

Used for simple NPCs that do not need separate files.

    lua/entities/npc_example.lua

Example:

    AddCSLuaFile()

    ENT.Type = "ai"
    ENT.Base = "npc_x308_base"

    ENT.PrintName = "Example NPC"
    ENT.Category = "x308 NPCs"

    ENT.Spawnable = true

---

# Base Features

npc_x308_base provides:

- Health handling
- Faction support
- Movement variables
- Attack variables
- Projectile variables
- Sound variables
- Drop variables
- Custom hooks

NPCs can override these features when needed.

---

# NPC Variables

## Basic

    ENT.Model = nil
    ENT.HP = 100
    ENT.MaxHP = nil
    ENT.Faction = nil

Example:

    ENT.Model = "models/example.mdl"
    ENT.HP = 250
    ENT.Faction = "FACTION_PLANTS"

---

## Movement

    ENT.Speed = nil
    ENT.WalkSpeed = nil
    ENT.RunSpeed = nil

Used by NPCs that need custom movement.

---

## Combat

    ENT.CanAttack = false

    ENT.AttackDamage = nil
    ENT.AttackRange = nil
    ENT.AttackRate = nil

Example:

    ENT.CanAttack = true
    ENT.AttackDamage = 50
    ENT.AttackRange = 600
    ENT.AttackRate = 1.5

---

## Projectiles

    ENT.Projectile = nil

    ENT.ProjectileDamage = nil
    ENT.ProjectileSpeed = nil
    ENT.ProjectileRadius = nil
    ENT.ProjectileLife = nil

Example:

    ENT.Projectile = "obj_x308_projectile"
    ENT.ProjectileDamage = 25
    ENT.ProjectileSpeed = 1600

---

## Animations

    ENT.IdleAnimation = nil
    ENT.AttackAnimation = nil
    ENT.MoveAnimation = nil

NPCs can override these for custom animations.

---

## Sounds

    ENT.SpawnSound = nil
    ENT.AttackSound = nil
    ENT.DeathSound = nil

Example:

    ENT.AttackSound = "npc/attack.wav"

---

## Drops

    ENT.DropItem = nil
    ENT.DropChance = 0

Example:

    ENT.DropItem = "item_healthkit"
    ENT.DropChance = 25

DropChance uses percentages from 0 to 100.

---

# Hooks

## CustomInit

Runs once when the NPC spawns.

Example:

    function ENT:CustomInit()

        self.NextAttack = 0

    end

---

## CustomThink

Runs while the NPC is alive.

Example:

    function ENT:CustomThink()

        -- Custom behavior

    end

---

## OnDead

Runs when the NPC dies.

Example:

    function ENT:OnDead()

        self:EmitSound("npc/death.wav")

    end

---

# Spawn Settings

Hide an NPC:

    ENT.Spawnable = false

Show an NPC:

    ENT.Spawnable = true

Set category:

    ENT.Category = "x308 NPCs"

---

# Design

npc_x308_base is meant to stay simple.

It does not force:

- A combat system
- A movement system
- A faction system
- A projectile system
- An animation system

NPCs decide what they need.

This allows x308 to support:

- Plants
- Zombies
- Bosses
- Turrets
- Friendly NPCs
- Hostile NPCs
- Custom AI

---

# Goals

- Keep NPC code clean
- Avoid repeating systems
- Make stats easy to edit
- Support small and large NPCs
- Allow custom behavior
- Keep the base lightweight
