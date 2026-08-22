SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "XL-3 MK.II"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 10
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "XBowBolt"
SWEP.PA_TakeAmmo=10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.PA_Sound=""
SWEP.PA_Sound2={
{Sound="weapons/ar2/ar2_altfire.wav",Pitch=155,Volume=511}
}
SWEP.ReloadSound={
{Sound="weapons/ar2/ar2_reload.wav",Pitch=145},
{Sound="3088083421/wep/reload/arif3_magin.wav",Delay=1.1,Pitch=75}
}
SWEP.ReloadSound2={
{Sound="weapons/ar2/ar2_reload.wav",Pitch=145},
{Sound="3088083421/wep/reload/arif3_magin.wav",Delay=1.1,Pitch=75}
}
SWEP.PA_Damage = 40
SWEP.BSound={{Sound="weapons/357/357_reload3.wav"}}
SWEP.PA_Anim = nil
SWEP.PA_Anim1 = "fire"
SWEP.PA_Anim2 = "fire"
SWEP.PA_Anim3 = "fire"
SWEP.ReloadAnimD={
{Anim="holster",Time=5},
{Anim="draw",Delay=1.1}
}
SWEP.ReloadAnimD2={
{Anim="holster",Time=5},
{Anim="draw",Delay=1.1}
}
SWEP.NormalDraw = true
SWEP.PA_Recoil = 3
SWEP.PA_Spread = 0
SWEP.PA_AimSpread = 0
SWEP.PA_AimRecoil = 2
SWEP.ClipExtraBullet = false
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .5
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 1.7
SWEP.ReloadTime = 1.8
SWEP.ClipoutTime = .5
SWEP.ClipinTime = 1.3
SWEP.ReloadTime2 = 2.2

SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.SightPos = Vector(-4.69, 45, .7)
SWEP.SightAng = Angle(0, -.14, 0)
SWEP.VElements = {
	["4"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "Python", rel = "1+++", pos = Vector(0, -0.648, 1.641), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.05), color = Color(0, 64, 140, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/Items/battery.mdl", bone = "Python", rel = "", pos = Vector(0, -0.548, 1.172), angle = Angle(0, 0, 0), size = Vector(0.244, 0.244, 0.379), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "Python", rel = "1+++", pos = Vector(0, -6, 3), angle = Angle(0, 90, 0), size = Vector(0.082, 0.082, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "Python", rel = "1+++", pos = Vector(6, 0, 3), angle = Angle(0, 0, 0), size = Vector(0.082, 0.082, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["4+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "Python", rel = "1+++", pos = Vector(0, 0.647, 1.641), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.05), color = Color(0, 64, 140, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "Python", rel = "1", pos = Vector(0, 1.44, 0), angle = Angle(0, 0, 0), size = Vector(0.048, 0.054, 0.082), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "Python", rel = "1", pos = Vector(0, 0, 3.585), angle = Angle(0, 0, 0), size = Vector(0.057, 0.057, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 0.264, -0.641), size = { x = 3.769, y = 3.769 }, color = Color(0, 178, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1++"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "Python", rel = "1+++", pos = Vector(-6, 0, 3), angle = Angle(0, 180, 0), size = Vector(0.082, 0.082, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "Python", rel = "1+++", pos = Vector(0, 6, 3), angle = Angle(0, -90, 0), size = Vector(0.082, 0.082, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -0.137, 11.126), size = { x = 6.657, y = 6.657 }, color = Color(0, 178, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
SWEP.WElements = {
	["4"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(0, -0.648, 1.641), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.05), color = Color(0, 64, 140, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(7.998, 0.943, -3.951), angle = Angle(0, -88.682, -93.659), size = Vector(0.244, 0.244, 0.379), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(0, -6, 3), angle = Angle(0, 90, 0), size = Vector(0.082, 0.082, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(6, 0, 3), angle = Angle(0, 0, 0), size = Vector(0.082, 0.082, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["4+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(0, 0.647, 1.641), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.05), color = Color(0, 64, 140, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.44, 0), angle = Angle(0, 0, 0), size = Vector(0.048, 0.054, 0.082), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 3.585), angle = Angle(0, 0, 0), size = Vector(0.057, 0.057, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.264, -0.641), size = { x = 3.769, y = 3.769 }, color = Color(0, 178, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1++++"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(0, 6, 3), angle = Angle(0, -90, 0), size = Vector(0.082, 0.082, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(-6, 0, 3), angle = Angle(0, 180, 0), size = Vector(0.082, 0.082, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.137, 11.126), size = { x = 6.657, y = 6.657 }, color = Color(0, 178, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
local SpinAng = 0
local SpinAccel = 0
SWEP.PA_Impact="PhyscannonImpact"
function SWEP:CustomThink()
if self:GetNextPrimaryFire()<CurTime()+.1 then
SpinAccel = math.Approach(SpinAccel, 1, 65*FrameTime())
else
SpinAccel = math.Approach(SpinAccel, 35, 50*FrameTime())
end
	if CLIENT then
	SpinAng = SpinAng + SpinAccel
	self.VElements["1+++"].angle.y = SpinAng
	self.WElements["1+++"].angle.y = SpinAng
	end
self:SetNetworkedInt( "Spin",SpinAccel )
end
function SWEP:DoShootEffect(h)
	local e=EffectData()
	e:SetOrigin(h)
	e:SetStart(self.Owner:GetShootPos())
	e:SetAttachment(1)
	e:SetEntity(self)
	util.Effect("ToolTracer",e)
end
function SWEP:EditB(t,tr)if SERVER then
self:DoShootEffect(tr.HitPos)
self.Owner:ViewPunch(Angle(math.random(-5,5),math.random(-5,5),math.random(-5,5)))
for i=1,4 do
local b=ents.Create( "prop_combine_ball" )
b:SetPos(tr.HitPos+Vector(0,0,i*10-30))
b:Spawn()
b:Activate()
b:SetOwner(self.Owner)
b:Fire("explode","",.01)
end
util.BlastDamage(self.Owner,self.Owner,tr.HitPos,150,500)
end
end
