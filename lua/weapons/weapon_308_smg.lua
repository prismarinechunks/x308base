SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "MP7"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Primary.ClipSize = 45
SWEP.Primary.DefaultClip = 45
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.NormalDraw =true
SWEP.PA_Sound = "weapons/smg1/smg1_fire1.wav"
SWEP.PA_Damage = 8
SWEP.PA_TakeAmmo = 1
SWEP.PA_Delay = .072
SWEP.PA_Recoil = .6
SWEP.PA_Spread = .04
SWEP.PA_AimSpread = .02
SWEP.PA_AimRecoil = 0.4
SWEP.SA_SightFOV = 70

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "/"

SWEP.Secondary.Ammo="SMG1_Grenade"
SWEP.SA_Delay = .1
SWEP.SA_Cross = true
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 1.3
SWEP.ReloadTime = 1.3
SWEP.ReloadTime2 = 1.8
SWEP.BoltPullTime=1.6
SWEP.ClipoutTime = 0.2
SWEP.ClipinTime = 0.9
SWEP.IdleAnim="idle02"
SWEP.ReloadSound = {
{Sound="weapons/smg1/smg1_reload.wav"}
}
SWEP.ReloadSound2 = {
{Sound="weapons/smg1/smg1_reload.wav"},
{Delay=1.4,Sound="3088083421/wep/reload/smg_boltpull.ogg"}
}
SWEP.SightPos = Vector(-6.5, 70, -.1)
SWEP.SightAng = Angle(0, 0, -10)
SWEP.CenterPos = Vector(-1,80,-.5)
SWEP.GLT=CurTime()

function SWEP:CustomThink()if !self.Owner:KeyDown(IN_ATTACK)||self:Clip1()<1||self.GLT>CurTime()then
self.TT=0 self.TF="fire01"
end
end
function SWEP:ShootAnim()
self.Owner:ViewPunch(Angle(math.Rand(0,self.TT*.1),math.Rand(-self.TT*.05,self.TT*.05),0)) 
if self.TT<2 then
self.TF="fire01"
elseif self.TT<3 then
self.TF="fire02" 
elseif self.TT<4 then
self.TF="fire03"
elseif self.TT<5 then
self.TF="fire04"
end
self:PlayAnim(self.TF)
self.TT=self.TT+1
end
if SERVER then
function SWEP:CusEPA()
if self.GLT<CurTime()and self:Ammo2()>0 and self:GetNextPrimaryFire()<CurTime()then
self.GLT=CurTime()+2
self:EmitSound("3088083421/wep/shoot/m32-1.wav")
self:TakeSecondaryAmmo(1)
self:PlayAnim("altfire")
local e=ents.Create("obj_308_grenade")
e:SetAngles(self.Owner:GetAimVector():Angle())
e:SetPos(self.Owner:GetShootPos()+self:GetForward()*60)
e:SetOwner(self.Owner)
e:Spawn(self:GetAngles())
self:SetNextPrimaryFire(CurTime()+.5)
self.Owner:SetEyeAngles( self.Owner:EyeAngles() + Angle( -9,math.Rand(-9,9),0 ) )
e:SetVelocity(self:GetForward()*700+self:GetUp()*100)
e:Activate()
self.Owner:DeleteOnRemove(e)
end
end

end