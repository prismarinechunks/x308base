SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Assault Rifle 1"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/c_irifle.mdl"
SWEP.WorldModel = "models/weapons/w_irifle.mdl"
SWEP.ShowWorldModel=false

SWEP.AmmoHUD=2
SWEP.Primary.ClipSize = 0
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Automatic=true
SWEP.Primary.Ammo ="none"
SWEP.PA_TakeAmmo=0
SWEP.PA_Effect="308_muzzle"

SWEP.Canrepick=false
SWEP.UseHands=false
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.NormalDraw =true
SWEP.DrawAnim="ir_draw"
SWEP.ReloadAnim="ir_reload"
SWEP.PA_Sound = "weapons/ar1/ar1_dist"..math.random(2)..".wav"
SWEP.PA_Damage = 15
SWEP.PA_Delay = .08
SWEP.PA_Recoil = .1
SWEP.PA_Spread = .027
SWEP.PA_AimSpread = .018
SWEP.PA_AimRecoil = .08
SWEP.SA_SightFOV = 70

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "2"

SWEP.SA_Delay = .1
SWEP.SA_Cross = true
SWEP.DrawTime = .5
SWEP.HaveBoltPull=false
SWEP.SightPos = Vector(-5.2,90,1.8)
SWEP.CenterPos = Vector(0,80,0)
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/props_combine/bunker_gun01.mdl", bone = "Base", rel = "", pos = Vector(0, 16.004, 5.146), angle = Angle(93.041, 90, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/props_combine/bunker_gun01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.609, 0, 9.991), angle = Angle(-6.286, -2.705, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["Base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.Cooldown=CurTime()

SWEP.PA_Tracer=1
SWEP.PA_TracerName="AR2Tracer"
SWEP.PA_Impact="AR2Impact"
function SWEP:CustomThink()
if !self.Owner:KeyDown(IN_ATTACK)||self.Cooldown>CurTime()then
self.HoldType="shotgun"
self.TT=0 self.TF="ir_fire"
else
self.HoldType="ar2"
if self.Owner:IsOnGround()then self.Owner:SetLocalVelocity(self.Owner:GetVelocity()*.9)end
end
end
function SWEP:ShootAnim()
self.Owner:ViewPunch(Angle(math.random(0,self.TT)*.1,math.random(-self.TT,self.TT)*.05,0)) 
if self.TT<2 then
self.TF="ir_fire"
elseif self.TT<3 then
self.TF="fire2" 
elseif self.TT<4 then
self.TF="fire3"
elseif self.TT<5 then
self.TF="fire4"
elseif self.TT>150 then
self.Cooldown=CurTime()+3
self.BoltPullTimer=CurTime()+3
self:EmitSound("hl1/fvox/buzz.wav")
self:SetNextPrimaryFire(CurTime()+3)
end
self:PlayAnim(self.TF)
self.TT=self.TT+1
end