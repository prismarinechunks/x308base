# X308 Retreat System
## Created By Xero Chunks

## About

X308 Retreat is an optional AI module for X308 Base.

It allows X308 NPCs to enter a retreat state when they meet retreat conditions.

Requirements:

- X308 Base must be installed.
- Your NPC must use X308 Base or X308 Man.
- Your NPC must support X308 systems.

X308 Retreat will not work on normal NPCs that do not use X308.

---

## Enabling Retreat

Open your X308 NPC Lua file.

Add:

ENT.X308_Retreat = true


Example:

ENT.Base = "npc_x308_base"

ENT.PrintName = "My X308 Enemy"

ENT.X308_Retreat = true


Your NPC now has retreat enabled.

---

## X308 Man Example

Example:

ENT.Base = "npc_x308_man"

ENT.PrintName = "X308 Soldier"

ENT.X308_Retreat = true


---

## X308 Module Example

If your NPC uses X308 module settings:

ENT.X308_Modules = {

    Retreat = true

}


Example:

ENT.Base = "npc_x308_base"

ENT.PrintName = "Advanced X308 NPC"

ENT.X308_Modules = {

    Retreat = true

}


---

## How It Works

When enabled:

1. X308 checks the NPC.
2. NPC health reaches the retreat threshold.
3. X308 Retreat activates.
4. The NPC enters the retreat state.
5. X308 AI handles the behavior.

The retreat system does not force a specific action.

Developers can decide what the NPC does:

- Run away
- Find cover
- Regroup
- Return to an area
- Stop attacking
- Change behavior

---

## Checking Retreat State

While retreating:

self.X308_Retreating = true


After retreat ends:

self.X308_Retreating = false


Example:

function ENT:Think()

    if self.X308_Retreating then

        -- Retreat behavior

    end

end


---

## Adding Custom Retreat Behavior

Example:

function ENT:X308RetreatBehavior()

    if not self.X308_Retreating then return end

    -- Add custom movement or behavior here

end


---

## Configuration

Default settings:

X308_Retreat.Config = {

    Enabled = true,

    HealthPercent = 25,

    RetreatTime = 8,

    Cooldown = 10

}


---

## Hooks

Retreat Started:

hook.Add(
    "X308_RetreatStarted",
    "Example",
    function(ent)

        print(ent:GetClass().." started retreating")

    end
)


Retreat Ended:

hook.Add(
    "X308_RetreatEnded",
    "Example",
    function(ent)

        print(ent:GetClass().." stopped retreating")

    end
)


---

## Compatibility

Requires:

- X308 Base
- X308 Man
- X308 NPC framework support


Works with:

- Custom X308 enemies
- PvZ zombies
- Military NPCs
- Monsters
- Any NPC built on X308


---

## Credits

X308 Retreat

Created By Xero Chunks
