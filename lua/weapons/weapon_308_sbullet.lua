SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["sbullet"]
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawAnim = "ak47_draw"
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Delay=0,Sound="3088083421/wep/shoot/ak_1.ogg",Pitch=80,Volume=511}
}
SWEP.PA_Delay = .1
SWEP.NormalDraw = false
SWEP.PA_Recoil = .5
SWEP.PA_AimRecoil = .1
SWEP.SA_SightFOV = 70

SWEP.Text="气枪"

SWEP.ReloadAnim = "ak47_reload"
SWEP.ReloadAnim = "ak47_reload"
SWEP.BAnim="ak47_draw"
SWEP.ReloadAnimD2={
{Anim="ak47_reload"},
{Delay=1.8,Anim="ak47_draw",Rate=1.1}
}

SWEP.ReloadAnim = "ak47_reload"
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.ReloadTime = 1.9
SWEP.StopRAnimTime = 1.9
SWEP.ClipoutTime = 0.6
SWEP.ClipinTime = 1.65
SWEP.BoltPullTime=2.2
SWEP.ReloadTime2 = 2.5
SWEP.SightPos = Vector(-6.503, 170, 1.5)
SWEP.SightAng = Angle(2.5, 0.2, 0)
SWEP.CenterPos = Vector( 0, 130, 0 )
SWEP.CenterAng = Angle( 0, 0, 0 )

function SWEP:FireB()
local ply=self.Owner
	if SERVER then
	self:SendWeaponAnim(self.PA_Anim)
	local e=ents.Create("obj_308_sbullet")
	local pos
	if self.Scope>0 then
	pos = ply:GetShootPos()+self:GetUp()*-3+self:GetForward()*40
	else
	pos = ply:GetShootPos()+self:GetUp()*-5+self:GetForward()*30+self:GetRight()*5.5
	end
	e:SetAngles(ply:GetAimVector():Angle())
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	ply:DeleteOnRemove(e)--you know why.
	e:SetVelocity(ply:GetForward()*3000+ply:GetUp()*10+
	ply:GetVelocity()/5)--GoldSource CS1.6 Grenade Throwing
	end
end
