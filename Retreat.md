```md id="x308retreatdocs"
# X308 Retreat System
## Created By Xero Chunks

---

# About

X308 Retreat is an optional AI behavior module for Garry's Mod NPCs.

It allows NPCs to automatically enter a retreat state when they become damaged or meet retreat conditions.

The system is designed to work with:

- X308 Base NPCs
- Single-file NPCs
- Custom NPC addons
- Enemy NPCs
- Friendly NPCs
- PvE systems

X308 Retreat does not replace your NPC AI. It only provides the retreat state so your NPC can decide what to do when retreating.

Examples:
- Run away
- Find cover
- Return to a spawn point
- Regroup with allies
- Stop attacking
- Enter a defensive mode

---

# Installation

Place the addon in:

```

garrysmod/addons/x308_retreat/

```

The addon should contain:

```

x308_retreat/
└── lua/
└── x308_retreat/
├── shared.lua
├── init.lua
└── cl_init.lua

````

Restart your server after installation.

---

# Enable Retreat On Any NPC

Open your NPC Lua file.

Add:

```lua
ENT.X308_Retreat = true
````

Example:

```lua
AddCSLuaFile()

ENT.Base = "npc_citizen"

ENT.PrintName = "My Custom NPC"

ENT.X308_Retreat = true
```

Your NPC now supports X308 Retreat.

---

# X308 Base NPC Example

If you are using X308 Base:

```lua
ENT.Base = "npc_x308_base"

ENT.PrintName = "X308 Enemy"

ENT.X308_Retreat = true
```

---

# Module Style Example

If your NPC uses X308 modules:

```lua
ENT.X308_Modules = {
    Retreat = true
}
```

Example:

```lua
ENT.Base = "npc_x308_base"

ENT.PrintName = "Advanced Enemy"

ENT.X308_Modules = {
    Retreat = true
}
```

---

# How Retreat Works

When enabled:

1. NPC health is checked.
2. X308 Retreat compares health against the retreat threshold.
3. If health is low enough, retreat begins.
4. NPC receives the retreat state.
5. Your AI decides how the NPC moves or reacts.

The system does not force movement because every NPC handles retreat differently.

---

# Detecting Retreat

When an NPC is retreating:

```lua
self.X308_Retreating == true
```

Example:

```lua
function ENT:Think()

    if self.X308_Retreating then

        print("NPC is retreating")

    end

end
```

---

# Creating Retreat Behavior

Example: Make an NPC stop attacking while retreating.

```lua
function ENT:CanAttack()

    if self.X308_Retreating then
        return false
    end

    return true

end
```

---

# Example: Run Away During Retreat

```lua
function ENT:X308RetreatBehavior()

    if not self.X308_Retreating then
        return
    end

    local escapePos = self:GetPos() - self:GetForward() * 500

    self:SetLastPosition(escapePos)

end
```

Call this inside your NPC Think loop.

---

# Configuration

Default configuration:

```lua
X308_Retreat.Config = {

    -- Enables the system
    Enabled = true,

    -- Health percentage that triggers retreat
    HealthPercent = 25,

    -- How long retreat state lasts
    RetreatTime = 8,

    -- Time before retreat can trigger again
    Cooldown = 10

}
```

---

# Hooks

## Retreat Started

Runs when an NPC enters retreat.

```lua
hook.Add(
    "X308_RetreatStarted",
    "MyNPC_RetreatStarted",
    function(ent)

        print(ent:GetClass().." started retreating")

    end
)
```

---

## Retreat Ended

Runs when an NPC leaves retreat.

```lua
hook.Add(
    "X308_RetreatEnded",
    "MyNPC_RetreatEnded",
    function(ent)

        print(ent:GetClass().." stopped retreating")

    end
)
```

---

# Custom Conditions

Developers can add their own checks:

Example:

```lua
hook.Add(
    "X308_ShouldRetreat",
    "MyCustomRetreat",
    function(ent)

        if ent:GetEnemy() then

            return true

        end

    end
)
```

---

# Recommended Usage

For best performance:

Use X308 Retreat with your NPC's AI loop:

```lua
X308_Retreat:Check(self)
```

This avoids unnecessary checks and gives your NPC full control.

---

# Compatibility

X308 Retreat works with:

* NPCs in one Lua file
* Scripted NPCs
* X308 Base NPCs
* Custom AI frameworks

No special base class is required.

---

# Credits

X308 Retreat

Created By Xero Chunks

```
```
