SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "P90-S"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/weapons/cstrike/c_smg_p90.mdl"
SWEP.WorldModel = "models/weapons/w_smg_p90.mdl"


SWEP.Primary.ClipSize = 50
SWEP.Primary.DefaultClip = 50
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound=""
SWEP.PA_Sound2={{Sound="weapons/tmp/tmp-1.wav"}}
SWEP.PA_Damage = 18
SWEP.PA_Delay = .067
SWEP.PA_Recoil = .65
SWEP.PA_Spread = .01
SWEP.PA_AimSpread = .009
SWEP.PA_AimRecoil = .6
SWEP.SA_SightFOV = 50

SWEP.TextType = "308CS"
SWEP.Text = "m"
SWEP.CustomAmmoIcon ="S"

SWEP.BAnim="draw"
SWEP.SA_Delay = .2
SWEP.SA_Cross = true
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 2.6
SWEP.ReloadTime = 2.6
SWEP.ClipoutTime = 1
SWEP.ClipinTime = 2.15
SWEP.ReloadTime2 = 3.3
SWEP.BoltPullTime=2.7
SWEP.SightPos = Vector(-3,110,2)
SWEP.CenterPos = Vector(-1,80,1)
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.p90_Parent", rel = "", pos = Vector(0, -3.919, -13.796), angle = Angle(0, 0, 0), size = Vector(0.041, 0.041, 0.127), color = Color(125, 125, 125,255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(18.524, 1.503, -6.256), angle = Angle(0, 88.457, 99.794), size = Vector(0.06, 0.06, 0.13), color = Color(125, 125, 125,255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}