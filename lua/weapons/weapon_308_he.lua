SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "HE Grenade"
SWEP.Category = "x308 Base | Grenades"
SWEP.HoldType = "normal"
SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/weapons/w_eq_fraggrenade.mdl"
SWEP.PickDirectly=1
SWEP.DrawAnim="throw"
SWEP.IdleAnim="throw"
SWEP.DrawAnimRate=0
SWEP.IdleAnimRate=0
SWEP.Primary.ClipSize = 9999
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "grenade"

SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Delay = .35
SWEP.NormalDraw = true
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.SA_IsSight = false

SWEP.AmmoHUD=1
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 100, 0 )
SWEP.ViewModelBoneMods = {
	["ValveBiped.Grenade_body"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_eq_fraggrenade.mdl", bone = "ValveBiped.Grenade_body", rel = "", pos = Vector(0, -0.083, 0.748), angle = Angle(0, -73.783, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.timerr=CurTime()+math.huge
function SWEP:Throw(t)
if SERVER then
local ply=self.Owner
self:SetNextSecondaryFire(CurTime()+.5)
self.BoltPullTimer=CurTime()+.5
ply:SetAnimation(PLAYER_ATTACK1)
	local e=ents.Create("prop_physics")
	local pos=ply:GetShootPos()+self:GetUp()*-4+self:GetForward()*10+self:GetRight()*4.5
	e:SetAngles(ply:GetAimVector():Angle()+Angle(90,0,90))
	e:SetModel("models/weapons/w_eq_fraggrenade_thrown.mdl")
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	ply:DeleteOnRemove(e)
if t<2 then
	e:GetPhysicsObject():SetVelocity(ply:GetForward()*1890+ply:GetUp()*100+ply:GetVelocity())
self:PlayAnim("throw",2)
ply:EmitSound("3088083421/mg/ct_fireinhole.wav")
else
	e:GetPhysicsObject():SetVelocity(ply:GetForward()*390+ply:GetUp()*100+ply:GetVelocity())
self:PlayAnim("roll")
end
	e:SetPhysicsAttacker(self.Owner or self)--Smash them
	timer.Simple(self:GetNextPrimaryFire()-CurTime(),function()if IsValid(e)then
	SafeRemoveEntity(e)
	sound.Play("weapons/explode"..math.random(3,5)..".wav",e:GetPos())
	e:EmitSound("3088083421/exp/explode"..math.random(1,4)..".ogg",511)
	local explo = ents.Create("env_explosion")
		explo:SetOwner(ply or e)
		explo:SetPos(e:GetPos())
		explo:SetKeyValue("iMagnitude", "0")
		explo:SetKeyValue("spawnflags", "369")
		explo:Spawn()
		explo:Activate()
		explo:Fire("Explode", "", 0)
	local explo2 = ents.Create("env_physexplosion")
		explo2:SetOwner(ply or e)
		explo2:SetPos(e:GetPos())
		explo2:SetKeyValue("magnitude", "150")
		explo2:SetKeyValue("radius", "300")
		explo2:SetKeyValue("spawnflags", "3")
		explo2:Spawn()
		explo2:Activate()
		explo2:Fire("Explode", "", 0)
	util.BlastDamage(ply,ply,e:GetPos(),250,200)
local d=EffectData()d:SetOrigin(e:GetPos())d:SetMagnitude(1.1)util.Effect("308_explosion",d)
	end end)
	self:TakePrimaryAmmo(1)
	if self:Clip1()<1 and self:Ammo1()<1 then
	SafeRemoveEntityDelayed(self,.5)
	else
	self:SetClip1(1)
	self.Owner:SetAmmo(self:Ammo1()-1,"grenade")
	end
self:SetNextPrimaryFire(CurTime()+.5)
self.timerr=CurTime()+math.huge
end
end
function SWEP:Reload()end
if SERVER then
function SWEP:CustomThink()local p=self.Owner
if self:Clip1()<1 and self:Ammo1()<1 then SafeRemoveEntity(self)return end
if p:KeyDown(IN_ATTACK)then
self.TType=1
elseif p:KeyDown(IN_ATTACK2)then
self.TType=2
end
if(p:KeyDown(IN_ATTACK)||p:KeyDown(IN_ATTACK2))and self:GetNextSecondaryFire()<CurTime()and self:GetNextPrimaryFire()<CurTime()and self.BoltPullTimer<CurTime()then
self:SetNextSecondaryFire(CurTime()+.5)
self:SetNextPrimaryFire(CurTime()+2)
self.timerr=CurTime()+.5
self:PlayAnim("draw",2,2)
self.BoltPullTimer=CurTime()+math.huge
self:PrintNamed()
timer.Simple(.45,function()if IsValid(self)then self:PlayAnim("drawbackhigh",2,2)self.HoldType="grenade" end end)
elseif !p:KeyDown(IN_ATTACK)and!p:KeyDown(IN_ATTACK2)and self.timerr<CurTime()and self:GetNextSecondaryFire()<CurTime()||self:GetNextPrimaryFire()<CurTime()and self.BoltPullTimer>CurTime()then
self:Throw(self.TType)
timer.Simple(.75,function()if IsValid(self)then self.HoldType="normal" end end)
end
end
function SWEP:PrimaryAttack()
end
end
