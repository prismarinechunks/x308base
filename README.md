# X308Base

A standalone, actively developed extension of the 308 Base system. 

X308Base keeps the original 308 system intact while adding new custom systems, including a new custom NPC base and a new projectile system.

## 308 Limb Health

308 Base supports individual body-part health for custom damage, effects, and animations:

```lua
ENT.CheHP = 70

ENT.ArmRHP = 10
ENT.ArmLHP = 10

ENT.LegRHP = 10
ENT.LegLHP = 10
```

## 308 Damage

```lua
function ENT:OnHurt(dmg, hitgroup)
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

## Documentation

### Garry's Mod
* https://wiki.facepunch.com/gmod/Scripted_Entities
* https://wiki.facepunch.com/gmod/NextBot
* https://wiki.facepunch.com/gmod/NEXTBOT_Hooks

## Credits
**X308Base:** Xero Chunks
**308 Base:** MUKI / QQ3088083421
