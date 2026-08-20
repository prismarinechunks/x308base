SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Assault Rifle 2"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/c_irifle.mdl"
SWEP.WorldModel = "models/weapons/w_irifle.mdl"

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
SWEP.PA_Effect="308_muzzle"

SWEP.CusClipMDL="models/Items/combine_rifle_cartridge01.mdl"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.NormalDraw =true
SWEP.DrawAnim="ir_draw"
SWEP.ReloadAnim="ir_reload"
SWEP.PA_Sound2 = {{Sound="weapons/ar2/fire1.wav",Pitch=90}}
SWEP.PA_Sound = ""
SWEP.PA_Damage = 11
SWEP.PA_Delay = .1
SWEP.PA_Recoil = .1
SWEP.PA_Spread = .03
SWEP.PA_AimSpread = .02
SWEP.PA_AimRecoil = .08
SWEP.SA_SightFOV = 70

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "2"

SWEP.Secondary.Ammo="Ar2AltFire"
SWEP.SA_Delay = .1
SWEP.SA_Cross = true
SWEP.DrawTime = .5
SWEP.ReloadTime = 1.4
SWEP.ClipoutTime = .2
SWEP.ClipinTime = .8
SWEP.HaveBoltPull=false
SWEP.SightPos = Vector(-5.84,80,1.2)
SWEP.CenterPos = Vector(0,80,0)
SWEP.GLT=CurTime()
SWEP.TT=0
SWEP.TF="ir_fire"
SWEP.PA_DryFireSound="weapons/ar2/ar2_empty.wav"

SWEP.PA_Tracer=2
SWEP.PA_TracerName="AR2Tracer"
SWEP.PA_Impact="AR2Impact"
function SWEP:CustomThink()
if CLIENT then
self:UpdateBonePositions(self.Owner:GetViewModel())
if self:GetNWInt("VENT")!=nil then self.ViewModelBoneMods={["Vent"]={scale=Vector(1,1,1),pos=Vector(self:GetNWInt("VENT"),0,0),angle=Angle(0,0,0)}}
else self.ViewModelBoneMods={}end
end
if !self.Owner:KeyDown(IN_ATTACK)||self:Clip1()<1||self.GLT>CurTime()then
self.TT=0 self.TF="ir_fire"
self:SetNWInt("VENT",nil)
end
end
function SWEP:ShootAnim()
self.Owner:ViewPunch(Angle(math.Rand(0,self.TT*.1),math.Rand(-self.TT*.05,self.TT*.05),0)) 
if self.TT<2 then
self.TF="ir_fire"
elseif self.TT<3 then
self.TF="fire2" 
self:SetNWInt("VENT",.2)
elseif self.TT<4 then
self.TF="fire3"
self:SetNWInt("VENT",.3)
elseif self.TT<5 then
self.TF="fire4"
self:SetNWInt("VENT",.4)
end
self:PlayAnim(self.TF)
self.TT=self.TT+1
end
if SERVER then
function SWEP:CusEPA()
if self.GLT<CurTime()and self:Ammo2()>0 and self:GetNextPrimaryFire()<CurTime()then
self:PlayAnim("shake")
self.BoltPullTimer=CurTime()+1
self:SetNextPrimaryFire(CurTime()+1)
self:EmitSound("weapons/cguard/charging.wav")
timer.Simple(.5,function()if IsValid(self.Owner)then
self.GLT=CurTime()+1.2
self.Owner:ViewPunch(Angle(-10,0,0)) 
self:EmitSound("weapons/irifle/irifle_fire2.wav")
self:TakeSecondaryAmmo(1)
self:PlayAnim("ir_fire2")
local b=ents.Create( "prop_combine_ball" )
b:SetPos(self.Owner:GetShootPos())
b:Spawn()
b:Activate()
b:SetOwner(self.Owner)
b:Fire("explode","",4.25)
b:SetSaveValue("m_flRadius",10)
b:SetSaveValue("m_nState",3)
b:SetSaveValue("m_bLaunched",true)
b:SetSaveValue("m_bBounceDie",false)
b:SetSaveValue("m_bWeaponLaunched",true)
b:GetPhysicsObject():SetVelocity(self.Owner:GetAimVector()*1500)
end end)
end
end

end