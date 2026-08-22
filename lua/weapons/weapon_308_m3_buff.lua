SWEP.Base = "weapon_308_baseshotgun"
SWEP.PrintName = "M3-BUFF"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"

SWEP.Primary.ClipSize = 9
SWEP.Primary.DefaultClip = 9
SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Sound = "weapons/xm1014/xm1014-1.wav"
SWEP.PA_Sound2 = {
{Delay=.3,Sound="weapons/m3/m3_pump.wav",Pitch=200}
}
SWEP.PA_Damage = 20
SWEP.PA_Delay = .43
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .1
SWEP.PA_AimSpread = .08
SWEP.PA_AimRecoil = .1
SWEP.PA_Num=9

SWEP.PA_Anim="shoot"
SWEP.ReloadAnim1="start_reload"
SWEP.ReloadAnim2="insert"
SWEP.ReloadAnim3="after_reload"
SWEP.TextColor=Color(255,128,0)
SWEP.ReloadStart=.2
SWEP.ReloadDelay=.25
SWEP.ReloadIn=.15
SWEP.ReloadInEnd=0
SWEP.ReloadEnd=.5
SWEP.ReRate1=2
SWEP.ReRate2=2
SWEP.ReRate3=2

SWEP.SA_Delay = .1
SWEP.NormalDraw=false
SWEP.Material="models/spawn_effect2"
SWEP.Color=Color(255,128,0)
SWEP.SightPos = Vector(-7.62, 110, 2.16)
SWEP.SightAng = Angle(1.1, 0, -.1)
SWEP.CenterPos = Vector( -3, 90, 0 )
SWEP.CenterAng = Angle(0, 0, -2)
SWEP.ViewModelBoneMods = {
	["v_weapon.M3_PARENT"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.M3_SHELL"] = { scale = Vector(100,100,100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_shot_m3super90.mdl", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(0, 2.8, -8), angle = Angle(-90, -90.151, 180), size = Vector(1, 1, 1), color = Color(255,128,0), surpresslightning = true, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["2"] = { type = "Sprite", sprite = "sprites/orangeflare1", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(-.1, -5, -25), size = {x=10,y=10}, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
SWEP.WElements = {
	["2"] = { type = "Sprite", sprite = "sprites/orangeflare1", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(28.777, 0.7, -8.419), size = {x=10,y=10}, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
function SWEP:ShootAnim()self:PlayAnim(self.PA_Anim..math.random(2),2)end
function SWEP:EditB(a,tr,d)
if SERVER then
if !tr.HitSky then
local e=EffectData()
e:SetOrigin(tr.HitPos)
e:SetStart(self.Owner:GetShootPos())
e:SetAttachment(1)
e:SetEntity(self)
util.Effect("PhyscannonImpact",e)
end
end
end