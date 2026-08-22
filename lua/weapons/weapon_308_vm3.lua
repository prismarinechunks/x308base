SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["vamp"].."-II"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"

SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = 8
SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Delay=0,Sound="weapons/xm1014/xm1014-1.wav",Pitch=50,Volume=511},
{Delay=.6,Sound="weapons/m3/m3_pump.wav"}
}
SWEP.PA_Damage = 17
SWEP.PA_Delay = .86
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
SWEP.TextColor=Color(255,0,0)
SWEP.ReloadStart=.4
SWEP.ReloadDelay=.5
SWEP.ReloadIn=.3
SWEP.ReloadInEnd=0
SWEP.ReloadEnd=1

SWEP.SA_Delay = .1
SWEP.NormalDraw=false

SWEP.SightPos = Vector(-7.62, 110, 2.16)
SWEP.SightAng = Angle(1.1, 0, -.1)
SWEP.CenterPos = Vector( -3, 90, 0 )
SWEP.CenterAng = Angle(0, 0, -2)
SWEP.ViewModelBoneMods = {
	["v_weapon.M3_PARENT"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.M3_SHELL"] = { scale = Vector(100,100,100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_shot_m3super90.mdl", bone = "v_weapon.M3_PARENT", rel = "", pos = Vector(0, 2.8, -8), angle = Angle(-90, -90.151, 180), size = Vector(1, 1, 1), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:CustomInit()
self:SetColor(Color(255,0,0))
end
function SWEP:ShootAnim()
self:PlayAnim(self.PA_Anim..math.random(2))
end
function SWEP:DamageNPC(d,e)
local p=self.Owner
local h=p:Health()+d:GetDamage()/5
if d:GetDamage()>e:Health()then h=p:Health()+e:Health()/5 end
if h<p:GetMaxHealth()then
self.Owner:ScreenFade(SCREENFADE.IN,Color(255,0,0,55),.3,0)
self:EmitSound("3088083421/smallmedkit1.wav")
p:SetHealth(math.Clamp(h,1,p:GetMaxHealth()))
else
self.Owner:ScreenFade(SCREENFADE.IN,Color(255,0,0,55),.2,0)
self:EmitSound("3088083421/smallmedkit1.wav")
p:SetHealth(p:GetMaxHealth())
end
end
