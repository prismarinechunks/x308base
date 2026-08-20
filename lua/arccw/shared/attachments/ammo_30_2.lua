att.PrintName="[308]Explode Action"
att.Icon=Material("icon16/bomb.png")
att.Description="Be careful mine bullets!"
att.Desc_Pros={"+ Will explode at your bullet hit place!"}
att.Desc_Cons={"- Choose carefully this perk,"}
att.AutoStats=true
att.Slot="ammo_bullet"
att.Mult_ReloadTime=2
att.Mult_ShootPitch=1.1
att.Mult_ShootVol=2
att.Mult_Recoil=3
att.Mult_RecoilSide=2.5
att.Mult_RPM=.6
att.Mult_DrawTime=1.5
att.Mult_HolsterTime=1.5
att.MagReducer=true
att.Override_DamageType=DMG_BLAST

att.Hook_BulletHit = function(wep, data)
    if CLIENT||!data.tr.Hit then return end
    local p=data.tr.HitPos
	sound.Play("weapons/explode"..math.random(3,5)..".wav",wep:GetPos())
	local e=ents.Create("env_explosion")
		e:SetOwner(wep.Owner)
		e:SetPos(p)
		e:SetKeyValue("iMagnitude", "0")
		e:SetKeyValue("spawnflags", "369")
		e:Spawn()
		e:Activate()
	e:EmitSound("3088083421/exp/explode"..math.random(1,4)..".ogg",511)
		e:Fire("Explode", "", 0)
	local e2 = ents.Create("env_physexplosion")
		e2:SetOwner(wep.Owner)
		e2:SetPos(p)
		e2:SetKeyValue("magnitude", "100")
		e2:SetKeyValue("radius", "240")
		e2:SetKeyValue("spawnflags", "3")
		e2:Spawn()
		e2:Activate()
		e2:Fire("Explode", "", 0)
	util.BlastDamage(wep.Owner,wep.Owner,p,100,150)
end