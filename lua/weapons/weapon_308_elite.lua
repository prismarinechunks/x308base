SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName="Beretta"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_p228.mdl"
SWEP.WorldModel = "models/weapons/w_pist_elite_single.mdl"
SWEP.CSMuzzleFlashes = true

SWEP.Primary.ClipSize = 15
SWEP.Primary.DefaultClip = 15
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawSound = {
	{Delay=0,Sound="3088083421/wep/deploy/deploy_ava_1.ogg"}
}

SWEP.TextType="308CS"
SWEP.Text="c"
SWEP.BAnim="draw"
SWEP.PA_Sound = "weapons/elite/elite-1.wav"
SWEP.PA_Damage = 34
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .7
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .14
SWEP.SA_Delay = .1
SWEP.SA_Cross = true
SWEP.ReloadAnimRate = 1.2
SWEP.StopRAnimTime = 1.7
SWEP.ReloadTime = 1.8
SWEP.ClipoutTime = .6
SWEP.ClipinTime = 1.5
SWEP.ReloadTime2 = 2.3
SWEP.BoltPullTime=1.9

SWEP.CenterPos = Vector( 0, 90, 0 )
SWEP.CenterAng = Angle( 0, 0, 0 )
SWEP.SightPos = Vector(-5.965, 130, 2.82)
SWEP.SightAng = Angle(0,0,0)

SWEP.VElements = {
	["element_name+"] = { type = "Model", model = "models/props_c17/FurnitureDrawer003a.mdl", bone = "v_weapon.p228_Clip", rel = "", pos = Vector(0, 1.924, 0.9), angle = Angle(-90, 0, 90), size = Vector(0.123, 0.019, 0.078), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["element_name"] = { type = "Model", model = "models/weapons/w_pist_elite_single.mdl", bone = "v_weapon.p228_Parent", rel = "", pos = Vector(0, 1.1, 1.142), angle = Angle(-90, 0, -90), size = Vector(0.763, 0.763, 0.763), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["v_weapon.p228_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
