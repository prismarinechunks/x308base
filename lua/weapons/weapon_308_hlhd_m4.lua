if !util.IsValidModel("models/weapons/half-life/v_9mmar.mdl")then return end--ye ,3x Egg
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "HLHD M4"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/half-life/v_9mmar.mdl"
SWEP.WorldModel = "models/weapons/half-life/w_9mmar.mdl"

SWEP.CusClipMDL="models/weapons/half-life/w_9mmarclip.mdl"
SWEP.TextIcon="vgui/entities/weapon_9mmar"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawAnim="deploy"
SWEP.PA_Sound = "weapons/m4/hks1.wav"
SWEP.ReloadSound={{Delay=.2,Sound="weapons/m4/cliprelease1.wav"},{Delay=.8,Sound="weapons/m4/clipinsert1.wav"}}
SWEP.SA_IsSight=false
SWEP.PA_Damage = 8
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "smg1"
SWEP.PA_Recoil = .9
SWEP.PA_Spread = .018
SWEP.PA_Delay = .1

SWEP.UseHands=false
SWEP.NormalDraw=true
SWEP.HaveBoltPull=false
SWEP.ReloadTime = 1.5
SWEP.ClipoutTime = .3
SWEP.ClipinTime = 1.1

SWEP.Secondary.Ammo="SMG1_Grenade"
SWEP.CenterPos = Vector(0,10,0)
SWEP.CenterAng = Angle(0,-5,0)
SWEP.GLT=CurTime()
if SERVER then

function SWEP:SecondaryAttack()
if self.GLT<CurTime()and self:Ammo2()>0 and self:GetNextPrimaryFire()<CurTime()then
self.GLT=CurTime()+1.2
self:EmitSound("weapons/m4/glauncher.wav")
self:TakeSecondaryAmmo(1)
self:PlayAnim("grenade")
local e=ents.Create("obj_308_grenade")
e:SetAngles(self.Owner:GetAimVector():Angle())
e:SetPos(self.Owner:GetShootPos()+self:GetForward()*60)
e:SetOwner(self.Owner)
e:Spawn(self:GetAngles())
self:SetNextPrimaryFire(CurTime()+1.2)
self.Owner:SetEyeAngles( self.Owner:EyeAngles() + Angle( -9,math.Rand(-9,9),0 ) )
e:SetVelocity(self:GetForward()*700+self:GetUp()*100)
e:Activate()
self.Owner:DeleteOnRemove(e)
end
end

end