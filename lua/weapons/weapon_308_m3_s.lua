SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M3-Lighter"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"

SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = 8
SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Delay=0,Sound="weapons/shotgun/shotgun_dbl_fire.wav",Pitch=60,Volume=511},
{Delay=.6,Sound="weapons/m3/m3_pump.wav"}
}
SWEP.PA_Damage = 25
SWEP.PA_Delay = .83
SWEP.PA_Recoil = 3
SWEP.PA_Spread = .13
SWEP.PA_AimSpread = .13
SWEP.PA_AimRecoil = 2.8
SWEP.PA_Num=9

SWEP.PA_Anim="shoot"
SWEP.ReloadAnim1="start_reload"
SWEP.ReloadAnim2="insert"
SWEP.ReloadAnim3="after_reload"
SWEP.TextType="308CS"
SWEP.Text="k"
SWEP.TextColor=Color(255,128,0)
SWEP.ReloadStart=.4
SWEP.ReloadDelay=.5
SWEP.ReloadIn=.3
SWEP.ReloadInEnd=0
SWEP.ReloadEnd=1

SWEP.SA_Delay = .1
SWEP.NormalDraw=false

SWEP.SightPos = Vector(-7.69, 110, 3.47)
SWEP.SightAng = Angle(0, 0, -.1)
SWEP.CenterPos = Vector( -3, 90, 0 )
SWEP.CenterAng = Angle(0, 0, -2)
SWEP.VElements = {
	["2"] = { type = "Sprite", sprite = "effects/fire_cloud1", bone = "v_weapon.M3_PARENT", rel = "1", pos = Vector(0, 0.096, -29.824), size = { x = 1.593, y = 6.851 }, color = Color(255, 255, 128, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(0, -4.585, -19.573), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.254), color = Color(255, 163, 25, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(0, -0.839, -24.798), angle = Angle(0, 0, 0), size = Vector(0.057, 0.071, 0.136), color = Color(255, 163, 25, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(0, -3.155, -29.216), angle = Angle(0, 0, 0), size = Vector(0.071, 0.142, 0.221), color = Color(255, 123, 25, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(0, -2.135, -39.135), angle = Angle(0, 0, 5.219), size = Vector(0.009, 0.009, 0.34), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(0, -3.911, -8.865), angle = Angle(0, 0, 0), size = Vector(0.071, 0.101, 0.221), color = Color(255, 202, 0, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.64, -10.721), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.254), color = Color(255, 163, 25, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 3.369, -16.816), angle = Angle(0, 0, 0), size = Vector(0.057, 0.071, 0.136), color = Color(255, 163, 25, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2"] = { type = "Sprite", sprite = "effects/fire_cloud1", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.096, -29.824), size = { x = 1.593, y = 6.851 }, color = Color(255, 255, 128, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(12.994, 0.776, -5.112), angle = Angle(0, 90, -80.378), size = Vector(0.071, 0.101, 0.221), color = Color(255, 202, 0, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.883, -29.882), angle = Angle(0, 0, 5.219), size = Vector(0.009, 0.009, 0.34), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.731, -20.06), angle = Angle(0, 0, 0), size = Vector(0.071, 0.142, 0.221), color = Color(255, 123, 25, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
function SWEP:DamageENT(d,e)
e:Ignite(d:GetDamage()/10)
end
function SWEP:ShootAnim()
self:PlayAnim(self.PA_Anim..math.random(2))
self.Owner:ScreenFade(SCREENFADE.IN,Color(255,128,0,55),.2,0)
end