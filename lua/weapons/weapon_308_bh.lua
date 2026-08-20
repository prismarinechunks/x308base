SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["bh"]
SWEP.Category = "x308 Base | Misc"
SWEP.HoldType = "normal"
SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/Combine_Helicopter/helicopter_bomb01.mdl"
SWEP.PickDirectly=1
SWEP.DrawAnim="throw"
SWEP.IdleAnim="throw"
SWEP.DrawAnimRate=0
SWEP.IdleAnimRate=0
SWEP.Primary.ClipSize = 9999
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "grenade"
SWEP.AdminOnly=true
SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Delay = .35
SWEP.NormalDraw = true
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.SA_IsSight = false

SWEP.TextColor=Color(255,0,255)
SWEP.AmmoHUD=1
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 100, 0 )
SWEP.timerr=CurTime()+math.huge
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/Combine_Helicopter/helicopter_bomb01.mdl", bone = "ValveBiped.Grenade_body", rel = "", pos = Vector(0.638, 1.016, -1.515), angle = Angle(0, 0, 0), size = Vector(0.2, 0.2, 0.2), color = Color(255, 0, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/Combine_Helicopter/helicopter_bomb01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.95, 3.321, -0.684), angle = Angle(0, 0, 0), size = Vector(0.2, 0.2, 0.2), color = Color(255, 0, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["ValveBiped.Grenade_body"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
if SERVER then
function SWEP:CustomInit()
self:SetModelScale(.2)
self:SetColor(Color(0,0,255))
end
function SWEP:CustomEquip()
self:SetMaterial("null")
end
function SWEP:OnDrop2()
self:SetMaterial("")
end
function SWEP:Throw(t)
local ply=self.Owner
self:SetNextSecondaryFire(CurTime()+.5)
self.BoltPullTimer=CurTime()+.5
ply:SetAnimation(PLAYER_ATTACK1)
	local e=ents.Create("prop_physics")
	local pos=ply:GetShootPos()+self:GetUp()*-4+self:GetForward()*10+self:GetRight()*4.5
	e:SetModel("models/Combine_Helicopter/helicopter_bomb01.mdl")
	e:SetAngles(ply:GetAimVector():Angle())
	e:SetPos(pos)
	e:SetOwner(ply)
	e:SetModelScale(.2)
	e:Spawn()
	e:SetColor(Color(255,0,255))
	e:DrawShadow(false)
	e:Activate()
	ply:DeleteOnRemove(e)
if t<2 then
	e:GetPhysicsObject():SetVelocity(ply:GetAimVector()*1890+ply:GetUp()*100+ply:GetVelocity())
self:PlayAnim("throw")
else
	e:GetPhysicsObject():SetVelocity(ply:GetAimVector()*390+ply:GetUp()*100+ply:GetVelocity())
self:PlayAnim("roll")
end
	e:SetPhysicsAttacker(self.Owner or self)--Smash them
timer.Simple(self:GetNextPrimaryFire()-CurTime(),function()if IsValid(e)then
	e:EmitSound("hl1/ambience/particle_suck2.wav",511)
	SafeRemoveEntity(e)
	local b=ents.Create("obj_308_bh")
	b:SetPos(e:GetPos())
	b:SetOwner(ply)
	b:Spawn()
	ply:DeleteOnRemove(b)
	local l=ents.Create("light_dynamic")
	l:SetKeyValue("brightness","10")
	l:SetKeyValue("distance","1500")
	l:SetLocalPos(e:GetPos())
	l:SetLocalAngles(e:GetAngles())
	l:Fire("Color","255 0 255")
	l:Spawn()
	l:Activate()
	l:Fire("TurnOn","",0)
	b:DeleteOnRemove(l)
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
function SWEP:Reload()end
function SWEP:CustomThink()local p=self.Owner
if self:Clip1()<1 and self:Ammo1()<1 then SafeRemoveEntity(self)return end
if p:KeyDown(IN_ATTACK)then
self.TType=1
elseif p:KeyDown(IN_ATTACK2)then
self.TType=2
end
if(p:KeyDown(IN_ATTACK)||p:KeyDown(IN_ATTACK2))and self:GetNextSecondaryFire()<CurTime()and self:GetNextPrimaryFire()<CurTime()and self.BoltPullTimer<CurTime()then
self:SetNextSecondaryFire(CurTime()+.5)
self:SetNextPrimaryFire(CurTime()+3)
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
end
function SWEP:PrimaryAttack()
end
