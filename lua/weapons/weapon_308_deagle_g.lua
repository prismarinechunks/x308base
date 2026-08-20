SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Golden Deagle"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound="weapons/deagle/deagle-1.wav",Pitch=120,Volume=511}
}
SWEP.PA_Damage = 58
SWEP.PA_TakeAmmo = 1

SWEP.PA_Recoil = 5.2
SWEP.PA_Spread = 0.02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 4.1

SWEP.SA_SightFOV = 70
SWEP.SA_Delay = .1
SWEP.SA_Cross=true
SWEP.DrawTime = .5

SWEP.ReloadTime = 1.5
SWEP.ReloadTime2 = 2
SWEP.BoltPullTime=1.7

SWEP.TextType="308CS"
SWEP.Text="f"
SWEP.TextColor = Color(255,255,4)
SWEP.CustomAmmoIcon ="U"

SWEP.NormalDraw = true
SWEP.StopRAnimTime = 1.4
SWEP.ClipoutTime = 0.54
SWEP.ClipinTime = 1.4
SWEP.ViewModelBoneMods = {
	["v_weapon.Deagle_Parent"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.Deagle_Clip"] = { scale = Vector(100, 100, 100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "v_weapon.Deagle_Parent", rel = "", pos = Vector(-0, 2.191, 2.289), angle = Angle(-90, 90, -0.353), size = Vector(1, 1, 1), color = Color(255, 212, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.CenterPos = Vector( 0, 68, 0 )
SWEP.SightPos = Vector(-6.361, 125, 1.5)

function SWEP:CustomInit()
self:SetColor(Color(255,212,0))
end