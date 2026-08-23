# Xbase

## 308 Base + DrGBase

Xbase combines **308 Base and DrGBase** into one project.

It keeps both systems together so 308 and DrGBase NPCs can be used in the same environment.

## 308 → DrGBase

| 308 / Xbase                 | DrGBase                                                                          |
| --------------------------- | -------------------------------------------------------------------------------- |
| `npc_308_man`               | `drgbase_nextbot`                                                                |
| `npc_x308_base`             | `drgbase_nextbot`                                                                |
| `obj_x308_projectile`       | `proj_drg_default`                                                               |
| `Add308Nextbot(ENT)`        | `DrGBase.AddNextbot(ENT)`                                                        |
| `ENT.HP`                    | `ENT.SpawnHealth`                                                                |
| `ENT.Model`                 | `ENT.Models`                                                                     |
| `ENT.StartSpeed`            | `ENT.WalkSpeed` / `ENT.RunSpeed`                                                 |
| `ENT:OnHurt(dmg, hitgroup)` | `ENT:OnTakeDamage(dmg)`                                                          |
| `ENT:OnDead()`              | `ENT:OnDeath(dmg)`                                                               |
| `ENT:OnAttack()`            | `ENT:OnMeleeAttack(enemy)`                                                       |
| `ENT.Att`                   | `ENT.MeleeAttackRange` / `ENT.MeleeAttackDamageMin` / `ENT.MeleeAttackDamageMax` |
| `ENT.BBox`                  | `ENT.CollisionBounds`                                                            |
| `CreateDynamicMDL()`        | `self:AddModel(...)`                                                             |

## 308 Limb Health

308 Base supports individual body-part health:

```lua
ENT.CheHP = 70

ENT.ArmRHP = 10
ENT.ArmLHP = 10

ENT.LegRHP = 10
ENT.LegLHP = 10
```

These can be used for limb damage, effects, animations, and other custom NPC behavior.

## 308 Damage

```lua
function ENT:OnHurt(dmg, hitgroup)
	local damage = dmg:GetDamage()
end
```

DrGBase:

```lua
function ENT:OnTakeDamage(dmg)
	local damage = dmg:GetDamage()
end
```

## 308 Attacks

```lua
ENT.Att = {
	{
		Range = 35,
		dmg = 15,
		Time = .16,
		SHit = "npc/zombie/claw_strike1.wav"
	}
}
```

DrGBase:

```lua
function ENT:OnMeleeAttack(enemy)
	self:Attack({
		damage = 15,
		type = DMG_SLASH
	})
end
```

## Documentation

### Garry's Mod

* https://wiki.facepunch.com/gmod/Scripted_Entities
* https://wiki.facepunch.com/gmod/NextBot
* https://wiki.facepunch.com/gmod/NEXTBOT_Hooks

### DrGBase

* https://github.com/Dragoteryx/drgbase
* https://github.com/thestevec/drgbase-base/blob/master/docs/api/README.md
* https://github.com/thestevec/drgbase-base/blob/master/docs/api/nextbot/README.md

## Credits

**Xbase:** Xero Chunks

**308 Base:** MUKI / QQ3088083421

**DrGBase:** Dragoteryx
