SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Shotgun"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/weapons/c_shotgun.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"

SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Sound = "weapons/shotgun/shotgun_fire6.wav"
SWEP.PA_Sound2 = {
{Delay=.25,Sound="weapons/shotgun/shotgun_cock.wav"}
}
SWEP.PA_Sound3 = {
{Delay=.25,Sound="weapons/shotgun/shotgun_cock.wav"},
{Delay=.35,Sound="weapons/shotgun/shotgun_cock.wav"}
}
SWEP.ReloadSound2 = {
{Delay=0,Sound="weapons/shotgun/shotgun_reload3.wav"}
}
SWEP.PA_AnimD={
{Anim="fire01"},
{Delay=.3,Anim="pump"}
}
SWEP.PA_AnimD2={
{Anim="fire01"},
{Delay=.5,Anim="pump"}
}
SWEP.PA_Damage = 10
SWEP.PA_Num=8
SWEP.PA_Delay = .8
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .2
SWEP.PA_AimSpread = .2
SWEP.PA_AimRecoil = 1.7

SWEP.IdleAnimRate=0
SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "0"
SWEP.Secondary.Ammo="BuckShot"

SWEP.SA_Delay = .1
SWEP.ClipExtraBullet = false
SWEP.NormalDraw=true

SWEP.SightPos = Vector(-9.9, 140, -.8)
SWEP.SightAng = Angle(-.2, .09, -30)
SWEP.CenterPos = Vector( -2, 90, 0 )
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
if self:Clip1()>1 then
self:Recoil()self:Recoil()
self:CustomPrimary()self:CustomPrimary()
self:TakePrimaryAmmo(2)
self:DelayAnim(self.PA_AnimD2)
self:SetNextPrimaryFire(CurTime()+1.1)
self.BoltpullTimer=CurTime()+1.1
self:EmitSound("weapons/shotgun/shotgun_dbl_fire7.wav",511)
self:SoundSlot(self.PA_Sound3)
else
self:PrimaryAttack()
end
end
end