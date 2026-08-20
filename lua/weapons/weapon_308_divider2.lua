SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
if system.GetCountry()=="CN" then
SWEP.PrintName = "分裂者 MK.II"
else
SWEP.PrintName = "Divider MK.II"
end
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel = "models/weapons/w_rif_famas.mdl"
SWEP.AdminOnly=true
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "XBowBolt"

SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawSound={{Sound="3088083421/wep/deploy/deploy_roz_arif.wav"}}
SWEP.PA_Sound2={{Sound="3088083421/wep/shoot/rpg_1.ogg",Pitch=30}}
SWEP.PA_Sound = ""
SWEP.PA_Delay = .5
SWEP.PA_TakeAmmo = 3
SWEP.PA_Recoil = .4
SWEP.PA_AimRecoil = .1
SWEP.SA_SightFOV = 50
SWEP.ClipExtraBullet = false

SWEP.TextColor=Color(255,165,0)

SWEP.ReloadAnimD2={
{Anim="reload",Time=2}
}
SWEP.ReloadSound2={{Delay=2.7,Sound="weapons/awp/awp_clipin.wav",Pitch=80}}
SWEP.NormalDraw=true
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 2
SWEP.ClipoutTime = .62
SWEP.ClipinTime = 1.6
SWEP.ReloadTime = 2.1
SWEP.ReloadTime2 = 3.3
SWEP.BoltPullTime=3.1
SWEP.SightPos = Vector(-6.26,60,2.47)
SWEP.CenterPos = Vector( -1.5, 50, 0 )
SWEP.CenterAng = Angle( 0, -2.1, 0 )
SWEP.ShowWorldModel=false
SWEP.Text_Auto="Orb"
SWEP.ViewModelBoneMods = {
	["v_weapon.famas"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["3++"] = { type = "Sprite", sprite = "sprites/physcannon_bluecore1b", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 0, 21.958), size = { x = 5.584, y = 5.584 }, color = Color(255, 125, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["2++"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "v_weapon.famas", rel = "2", pos = Vector(-4, 0, 8.619), angle = Angle(0, 180, 0), size = Vector(0.093, 0.093, 0.093), color = Color(255, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "", pos = Vector(0, -0.561, -1.609), angle = Angle(0, 0, 0), size = Vector(0.096, 0.115, 0.666), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, -0.48, 23.122), angle = Angle(0, 0, 0), size = Vector(0.09, 0.081, 0.09), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, 0.17, 16.068), angle = Angle(0, 0, 0), size = Vector(0.107, 0.107, 0.243), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/Items/battery.mdl", bone = "v_weapon.magazine", rel = "", pos = Vector(-0.08, -2.813, -7.251), angle = Angle(0, -90, -0.313), size = Vector(0.626, 0.626, 0.626), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/mechanics/solid_steel/box_beam_4.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, -2.586, 13.451), angle = Angle(0, 45, 90), size = Vector(0.126, 0.126, 0.126), color = Color(255, 165, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, 0.546, -0.09), angle = Angle(0, 0, 0), size = Vector(0.107, 0.151, 0.162), color = Color(80, 77, 82, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3"] = { type = "Sprite", sprite = "sprites/physcannon_bluecore1b", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 0, 36.882), size = { x = 10, y = 10 }, color = Color(84, 42, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, -1.109, 0.204), angle = Angle(0, 0, 0), size = Vector(0.041, 0.041, 0.661), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.bolt", rel = "", pos = Vector(-.2, 1.8, 10), angle = Angle(0, 0, 0), size = Vector(0.098, 0.098, 0.159), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, 5.579, 13.039), angle = Angle(0, 0, -69.754), size = Vector(0.041, 0.093, 0.142), color = Color(255, 200, 59, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["3+"] = { type = "Sprite", sprite = "sprites/physcannon_bluecore1b", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 0, 33.485), size = { x = 4.843, y = 4.843 }, color = Color(255, 125, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["2+"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "v_weapon.famas", rel = "2", pos = Vector(4, 0, 8.619), angle = Angle(0, 0, 0), size = Vector(0.093, 0.093, 0.093), color = Color(255, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["3++"] = { type = "Sprite", sprite = "sprites/physcannon_bluecore1b", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 21.958), size = { x = 5.584, y = 5.584 }, color = Color(255, 125, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["2++"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2", pos = Vector(-4, 0, 8.619), angle = Angle(0, 180, 0), size = Vector(0.093, 0.093, 0.093), color = Color(255, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-10.763, 0.814, -1.04), angle = Angle(0, -90, -99.356), size = Vector(0.096, 0.115, 0.666), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.48, 23.122), angle = Angle(0, 0, 0), size = Vector(0.09, 0.081, 0.09), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.17, 16.068), angle = Angle(0, 0, 0), size = Vector(0.107, 0.107, 0.243), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.426, 1.031), angle = Angle(0, -90, -0.313), size = Vector(0.626, 0.626, 0.626), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/mechanics/solid_steel/box_beam_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.586, 13.451), angle = Angle(0, 45, 90), size = Vector(0.126, 0.126, 0.126), color = Color(255, 165, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3+"] = { type = "Sprite", sprite = "sprites/physcannon_bluecore1b", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 33.485), size = { x = 4.843, y = 4.843 }, color = Color(255, 125, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["3"] = { type = "Sprite", sprite = "sprites/physcannon_bluecore1b", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 36.882), size = { x = 10, y = 10 }, color = Color(84, 42, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.546, -0.09), angle = Angle(0, 0, 0), size = Vector(0.107, 0.151, 0.162), color = Color(80, 77, 82, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 24.628), angle = Angle(0, 0, 0), size = Vector(0.098, 0.098, 0.159), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 5.579, 13.039), angle = Angle(0, 0, -69.754), size = Vector(0.041, 0.093, 0.142), color = Color(255, 200, 59, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.109, 0.204), angle = Angle(0, 0, 0), size = Vector(0.041, 0.041, 0.661), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_combine/tprotato2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2", pos = Vector(4, 0, 8.619), angle = Angle(0, 0, 0), size = Vector(0.093, 0.093, 0.093), color = Color(255, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
local SpinAng = 0
local SpinAccel = 0

function SWEP:CustomThink()
if self:GetNWInt("R")>.4||(self.Owner:KeyDown(IN_ATTACK)and self:Clip1()>0)then
SpinAccel = math.Approach(SpinAccel, -5, 60*FrameTime())else
SpinAccel = math.Approach(SpinAccel, 1, 9*FrameTime())
end
	if CLIENT then
	SpinAng = SpinAng + SpinAccel
	self.VElements["2"].angle.y = SpinAng
	self.WElements["2"].angle.y = SpinAng
	end
self:SetNetworkedInt( "Spin",SpinAccel )
end
if SERVER then

function SWEP:CustomPrimary()
self:PlayAnim("shoot1",1,.5)
local p=self.Owner
local k=ents.Create("obj_308_dividerb2")
if self.Scope<1 then
k:SetPos(p:EyePos()+p:GetForward()*50+p:GetRight()*5+p:GetUp()*-5)else
k:SetPos(p:EyePos()+p:GetForward()*50+p:GetUp()*-4)end
k:SetAngles(p:GetAimVector():Angle())
k:SetOwner(p)
k:Spawn()
k:SetVelocity(self:GetForward()*3500+self.Owner:GetVelocity()/3)
local l=ents.Create("light_dynamic")
l:SetKeyValue("brightness", "4")
l:SetKeyValue("distance", "150")
l:SetLocalPos(p:GetShootPos())
l:SetLocalAngles(self:GetAngles())
l:Fire("Color", "255 0 0")
l:Spawn()
l:Activate()
l:Fire("TurnOn", "", 0)
SafeRemoveEntityDelayed(l,.1)
end

end