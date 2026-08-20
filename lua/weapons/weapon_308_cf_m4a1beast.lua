if !util.IsValidModel("models/cf/c_m4a1_beast.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CF M4A1-Beast"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/cf/c_m4a1_beast.mdl"
SWEP.WorldModel = "models/cf/w_m4a1_beast.mdl"
SWEP.ViewModelFOV =70

SWEP.TextIcon="killicon/m4a1_beast"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawAnim ="deploy"
SWEP.IdleAnim ="idle"
SWEP.PA_Sound = "weapons/m4a1_beast/rifle_fire_1.wav"
SWEP.PA_Damage = 16
SWEP.ReloadSound={{Sound="weapons/m4a1_beast/rifle_clip_out_1.wav",Delay=.1},{Sound="weapons/m4a1_beast/rifle_clip_in_1.wav",Delay=.6,Pitch=180},{Sound="weapons/m4a1_beast/rifle_clip_locked_1.wav",Delay=.8}}
SWEP.ReloadSound2={{Sound="weapons/m4a1_beast/rifle_clip_out_1.wav",Delay=.1},{Sound="weapons/m4a1_beast/rifle_clip_in_1.wav",Delay=.6,Pitch=150},{Sound="weapons/m4a1_beast/rifle_clip_locked_1.wav",Delay=.8},{Sound="weapons/m4a1_beast/rifle_fullautobutton_1.wav",Delay=1.1}}
SWEP.DrawSound={{Sound="weapons/m4a1_beast/rifle_fullautobutton_1.wav",Delay=.04}}
SWEP.BSound={{Sound="weapons/m4a1_beast/rifle_fullautobutton_1.wav"}}
SWEP.DrawAnimRate=3
SWEP.ReloadAnimRate=1.5
SWEP.Primary.ClipSize = 38
SWEP.Primary.DefaultClip = 38
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "smg1"
SWEP.PA_Delay = .077
SWEP.PA_Damage = 35
SWEP.PA_Recoil = 1.4
SWEP.PA_Spread = .027
SWEP.PA_AimSpread = .018
SWEP.PA_AimRecoil = 1.2

SWEP.NormalDraw=true
SWEP.StopRAnimTime = 1.05
SWEP.ReloadTime = 1.1
SWEP.ReloadTime2 = 1.6
SWEP.BoltPullTime = 1.35
SWEP.ClipoutTime = .2
SWEP.ClipinTime = .9

SWEP.CenterPos = Vector(0,10,0)
SWEP.CenterAng = Angle(-4,-4.2,0)
SWEP.SightPos = Vector(-5.62,-20,1.34)
SWEP.SightAng = Angle(-4.3,-4.6,0)
SWEP.Melee1=105
function SWEP:MeleeSound()self:EmitSound("weapons/knife/knife_hit"..math.random(4)..".wav")end
function SWEP:HitWorld()self:EmitSound("weapons/knife/knife_hitwall1.wav")end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayAnim("melee")self:EmitSound("weapons/m4a1_beast/rifle_melee.wav")
self:Melee(.15,1,.75,40)end
end