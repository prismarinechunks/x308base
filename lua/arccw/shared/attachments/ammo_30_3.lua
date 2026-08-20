att.PrintName="[308]Explode Action"
att.Icon=Material("icon16/bomb.png")
att.Description="Be careful mine bullets!"
att.Desc_Pros={"+ Will explode at your bullet hit place!"}
att.Desc_Cons={"- Choose carefully this perk,"}
att.AutoStats=true
att.Slot="ammo_shotgun"
att.Mult_SpeedMult=0.85
att.Mult_ReloadTime=1.75
att.Mult_SightTime=1.1
att.Mult_Recoil=2
att.Mult_RPM=.6
att.Mult_Penetration=.75
att.Mult_DrawTime=1.5
att.Mult_HolsterTime=1.5
att.MagReducer=true
att.Override_DamageType=DMG_BLAST
att.Hook_BulletHit=function(wep,data)
    if CLIENT||!data.tr.Hit then return end
    local p=data.tr.HitPos
	sound.Play("weapons/explode"..math.random(3,5)..".wav",wep:GetPos())
local e=ents.Create("obj_308_effect")
e:SetPos(p)
e:Spawn()e:SetSprite("sprites/orangeflare1")e:SetScale(50)e:Light()
e:EmitSound("3088083421/exp/explode"..math.random(1,4)..".ogg",511)
e.Disappear=1
e.DisaSpeed=7
local e2=ents.Create("obj_308_effect")
e2:SetPos(p)
e2:Spawn()e2:SetSprite("sprites/orangeflare1")e2:SetScale(300,.5)e2:Light()
e2.Disappear=1
e2.DisaSpeed=12
	util.BlastDamage(wep.Owner,wep.Owner,p,60,30)
end
