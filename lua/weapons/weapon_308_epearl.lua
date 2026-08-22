SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["epearl"]
SWEP.Category = "X Base | Misc"
SWEP.HoldType = "grenade"
SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/hunter/misc/sphere025x025.mdl"
SWEP.PickDirectly=1
SWEP.DrawAnim="throw"
SWEP.IdleAnim="throw"
SWEP.DrawAnimRate=0
SWEP.IdleAnimRate=0
SWEP.WorldModelFix=true
SWEP.Material="models/props_combine/com_shield001a"
SWEP.Primary.ClipSize =1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo="308enderpearl"
SWEP.Slot =0
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.NormalDraw = true
SWEP.SA_IsSight = false

SWEP.AmmoHUD=1
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 100, 0 )

game.AddAmmoType({name="308enderpearl"})
if CLIENT then language.Add("308enderpearl_ammo","Ender Pearl")end
function SWEP:Throw(t)
if SERVER and(self:Clip1()>0||self:Ammo1()>0)then
local ply=self.Owner
self.BoltPullTimer=CurTime()+.2
self:SetNextPrimaryFire(CurTime()+.2)
self:SetNextSecondaryFire(CurTime()+.2)
ply:SetAnimation(PLAYER_ATTACK1)
self:EmitSound("minecraft/random/bow.ogg",100,60)
	local e=ents.Create("obj_308_epearl")
	local pos=ply:GetShootPos()+self:GetUp()*-4
	e:SetAngles(ply:GetAimVector():Angle()+Angle(90,0,90))
	e:SetModel("models/hunter/misc/sphere025x025.mdl")
	e:SetCollisionGroup(13)
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	if IsValid(BED308Ent)then BED308Ent:DeleteOnRemove(e)end
	e:SetNoDraw(true)
	local s=ents.Create("obj_308_effect")s:SetPos(e:WorldSpaceCenter())s:SetSprite("entities/weapon_308_epearl.png")s:SetScale(16)s:SetParent(e)s:Spawn()
	ply:DeleteOnRemove(e)
if t<2 then
	e:GetPhysicsObject():SetVelocity(ply:GetForward()*1890+ply:GetUp()*100+ply:GetVelocity()/2)
self:PlayAnim("throw",2)
else
	e:GetPhysicsObject():SetVelocity(ply:GetForward()*390+ply:GetUp()*100+ply:GetVelocity()/2)
self:PlayAnim("roll")
end
	e:SetPhysicsAttacker(ply or self)
	if self:Clip1()<1 and self:Ammo1()<1 then
	SafeRemoveEntityDelayed(self,.5)
	elseif self:Ammo1()>0 then
	self:SetClip1(1)
	--self.Owner:SetAmmo(self:Ammo1()-1,"AR2AltFire")
	else
	SafeRemoveEntityDelayed(self,.5)end
end
end
function SWEP:Reload()end
function SWEP:PrimaryAttack()
self:Throw(1)end
function SWEP:SecondaryAttack()
self:Throw(2)end
