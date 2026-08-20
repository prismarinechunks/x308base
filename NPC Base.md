# x308 Base NPC Documentation

## Overview

npc_x308_base is the main base entity for x308 NPCs.

It provides shared NPC functionality so individual NPCs only need to define their own stats and special behavior.

Supports:

* Multi-file NPCs
* Single-file NPCs
* Custom attacks
* Projectiles
* Factions
* Animation handling
* Custom behavior

---

# Entity Setup

## Multi-File NPC

Used for larger NPCs.

```
lua/entities/

npc_x308_base/
├── shared.lua
├── init.lua
└── cl_init.lua

npc_example/
├── shared.lua
├── init.lua
└── cl_init.lua
```

Example:

```
ENT.Base = "npc_x308_base"
```

---

## Single-File NPC

Used for simple NPCs that do not need separate files.

```
lua/entities/npc_example.lua
```

Example:

```
AddCSLuaFile()

ENT.Type = "ai"
ENT.Base = "npc_x308_base"

ENT.PrintName = "Example NPC"
ENT.Category = "x308 NPCs"

ENT.Spawnable = true
```

---

# Base Features

npc_x308_base provides:

* Health handling
* Faction support
* Movement variables
* Attack variables
* Projectile variables
* Sound variables
* Drop variables
* Animation controller
* Sequence handling
* Custom hooks

NPCs decide their own stats and behavior.

---

# NPC Variables

## Basic

```
ENT.Model = nil
ENT.HP = 100
ENT.MaxHP = nil
ENT.Faction = nil
```

---

## Movement

```
ENT.Speed = nil
ENT.WalkSpeed = nil
ENT.RunSpeed = nil
```

Used by NPCs that need custom movement.

---

## Combat

```
ENT.CanAttack = false

ENT.AttackDamage = nil
ENT.AttackRange = nil
ENT.AttackRate = nil
```

---

## Projectiles

```
ENT.Projectile = nil
ENT.ProjectileDamage = nil
ENT.ProjectileSpeed = nil
ENT.ProjectileRadius = nil
ENT.ProjectileLife = nil
```

NPCs decide projectile behavior and stats.

---

# Animations

Basic NPCs can use:

```
ENT.IdleAnimation = nil
ENT.AttackAnimation = nil
ENT.MoveAnimation = nil
```

Example:

```
ENT.IdleAnimation = "idle"
ENT.MoveAnimation = "run"
ENT.AttackAnimation = "attack2"
```

Advanced NPCs can use:

```
ENT.Animations = {
    Idle = "idle",
    Move = "run",
    Attack = "attack2",
    Death = "death"
}
```

The animation controller provides:

* Safe sequence checking
* Animation state tracking
* Attack animation locking
* Idle return
* Playback control
* Missing animation protection

---

# Sounds

```
ENT.SpawnSound = nil
ENT.AttackSound = nil
ENT.DeathSound = nil
```

---

# Drops

```
ENT.DropItem = nil
ENT.DropChance = 0
```

DropChance uses percentages from 0 to 100.

---

# Hooks

## CustomInit

Runs once when the NPC spawns.

```
function ENT:CustomInit()

end
```

---

## CustomThink

Runs while the NPC is alive.

```
function ENT:CustomThink()

end
```

---

## OnDead

Runs when the NPC dies.

```
function ENT:OnDead()

end
```

---

# Spawn Settings

Hide an NPC:

```
ENT.Spawnable = false
```

Show an NPC:

```
ENT.Spawnable = true
```

Category:

```
ENT.Category = "x308 NPCs"
```

---

# Design

npc_x308_base is designed to stay lightweight.

It does not force:

* A specific combat system
* A specific movement system
* A specific faction system
* A specific projectile system

x308 provides optional helpers, while NPCs decide how they use them.

NPCs define their own:

* Stats
* Attacks
* Movement behavior
* Factions
* Projectiles
* Abilities
* Special logic

---

# Goals

* Keep NPC code clean
* Avoid repeating systems
* Make stats easy to edit
* Support small and large NPCs
* Allow custom behavior
* Keep the base lightweight
* Provide reusable NPC systems
* Let NPCs control their own stats and behavior
