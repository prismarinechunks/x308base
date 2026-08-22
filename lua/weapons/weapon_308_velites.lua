SWEP.Base = "weapon_308_basedual" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["vamp"].."-I"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "duel"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_pist_deagle.mdl"
SWEP.SwayScale=3
SWEP.Primary.ClipSize=7
SWEP.Primary.DefaultClip=7
SWEP.Slot = 1
SWEP.Spawnable = true
SWEP.DrawSound = {{Sound="3088083421/wep/deploy/deploy_cod_2.wav"}}
SWEP.Color=Color(255,0,0)

SWEP.TextType="308CS"
SWEP.Text="ff"
SWEP.TextColor=Color(255,0,0)
SWEP.CustomAmmoIcon ="U"

SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Delay=0,Sound="weapons/deagle/deagle-1.wav",Pitch=170,Volume=511}
}
SWEP.PA_Damage = 45
SWEP.PA_Recoil = 1.2
SWEP.PA_Spread = .016
SWEP.PA_Delay = .01
SWEP.CenterPos=Vector(0,100,-2)

SWEP.StopRAnimTime = 2.9
SWEP.ClipoutTime = .54--Left
SWEP.ClipoutTime2 = .58--Right
SWEP.ClipinTime = 1.7--Left
SWEP.ClipinTime2 = 2.7--Right
SWEP.ReloadTime = 3.1
SWEP.ReloadTime2 = 3.5

SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "v_weapon.elite_right", rel = "", pos = Vector(0.231, 3.26, 0.1), angle = Angle(90, 180, 90), size = Vector(0.976, 0.976, 0.976), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["4"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "v_weapon.elite_left", rel = "", pos = Vector(0.231, 3, 0.1), angle = Angle(90, 180, 90), size = Vector(0.976, 0.976, 0.976), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/consolebox01a.mdl", bone = "v_weapon.magazine_right", rel = "", pos = Vector(0.51, -1.913, .54), angle = Angle(0, -90, 90), size = Vector(0.158, 0.071, 0.068), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/props_c17/consolebox01a.mdl", bone = "v_weapon.magazine_left", rel = "", pos = Vector(0.51, -1.913, .54), angle = Angle(0, -90, 90), size = Vector(0.158, 0.071, 0.068), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/weapons/w_pist_deagle.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(3.47, 0.845, -2.096), angle = Angle(0, 0, -0), size = Vector(1, 1, 1), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["v_weapon.elite_right"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.elite_left"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

function SWEP:DamageNPC(d,e)
local p=self.Owner
local h=p:Health()+d:GetDamage()/4
if d:GetDamage()>e:Health()then h=p:Health()+e:Health()/4 end
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
