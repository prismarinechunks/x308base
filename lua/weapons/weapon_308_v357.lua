SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["vamp"].."-III"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"

SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "357"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawSound = {
	{Delay=0,Sound="3088083421/wep/deploy/deploy_cod_2.wav"}
}

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "."
SWEP.TextColor=Color(255,0,0)
SWEP.Color=Color(255,0,0)

SWEP.NoUseClip=true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Delay=0,Sound="weapons/357/357_fire2.wav",Pitch=50,Volume=511}
}
SWEP.BSound={{Sound="weapons/357/357_reload3.wav"}}
SWEP.PA_Damage = 40
SWEP.NormalDraw = true
SWEP.PA_Recoil = 7
SWEP.PA_Spread = 0.02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 5
SWEP.ClipExtraBullet = false
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .3
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 2.7
SWEP.ReloadTime = 2.8
SWEP.ClipoutTime = 1.5
SWEP.ClipinTime = 2.3
SWEP.ReloadTime2 = 3.2
SWEP.BoltPullTime=2.9

SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.CenterAng = Angle( 0, 0, 0 )
SWEP.SightPos = Vector(-4.6, 45, 0.65)
SWEP.SightAng = Angle(0, 0, 0)
SWEP.ViewModelBoneMods = {
	["Bullet1"] = { scale = Vector(100, 100, 100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet2"] = { scale = Vector(100, 100, 100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet3"] = { scale = Vector(100, 100, 100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet4"] = { scale = Vector(100, 100, 100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet5"] = { scale = Vector(100, 100, 100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Bullet6"] = { scale = Vector(100, 100, 100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["Python"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_357.mdl", bone = "Python", rel = "", pos = Vector(-0.205, 1.475, -5.549), angle = Angle(86.12, -90, 0), size = Vector(1, 1, 1), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()
self:PlayAnim("fire")
end
function SWEP:DamageNPC(d,e)
local p=self.Owner
local h=p:Health()+d:GetDamage()/3
if d:GetDamage()>e:Health()then h=p:Health()+e:Health()/3 end
if h<p:GetMaxHealth()then
self.Owner:ScreenFade(SCREENFADE.IN,Color(255,0,0,55),.3,0)
self:EmitSound("3088083421/smallmedkit1.wav")
p:SetHealth(math.Clamp(h,0,p:GetMaxHealth()))
else
self.Owner:ScreenFade(SCREENFADE.IN,Color(255,0,0,55),.2,0)
self:EmitSound("3088083421/smallmedkit1.wav")
p:SetHealth(p:GetMaxHealth())
end
end
