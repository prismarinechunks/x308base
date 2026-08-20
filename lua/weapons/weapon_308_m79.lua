SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M79"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/c_shotgun.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"

SWEP.ShowWorldModel=false
SWEP.DrawCross=false
SWEP.ClipExtraBullet = false
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Slot = 4
SWEP.Spawnable = true
SWEP.PA_Sound = "3088083421/m79-1.wav"
SWEP.ReloadSound = {{Delay=.2,Sound="3088083421/m79_clipout.wav"}}
SWEP.ReloadSound2 = {{Delay=.2,Sound="3088083421/m79_clipout.wav"},{Delay=.9,Sound="3088083421/m79_clipin.wav"},{Delay=1.63,Sound="3088083421/m79_clipon.wav"}}
SWEP.Primary.Ammo="SMG1_Grenade"
SWEP.PA_Delay = .7
SWEP.PA_Recoil = 2.3
SWEP.PA_AimRecoil = 1.8

SWEP.ReloadAnimD={{Anim="holster",Time=2},{Anim="draw",Delay=1}}
SWEP.ReloadAnimD2={{Anim="holster",Time=2},{Anim="draw",Delay=1.6}}
SWEP.ReloadTime = 1.8
SWEP.ClipoutTime = .3
SWEP.ClipinTime = 1.2
SWEP.ReloadTime2 = 2

SWEP.SA_Delay = .2
SWEP.SA_SightFOV = 50

SWEP.SightPos = Vector( -8.9, 110, 1 )
SWEP.SightAng = Angle(0, 0, 0)
SWEP.CenterPos = Vector( -2, 90, 0 )
SWEP.CenterAng = Angle(0, -4, 0)
SWEP.ShowWorldModel = false
SWEP.ViewModelBoneMods = {
	["ValveBiped.Gun"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, 1.241, -2.987), angle = Angle(0, 0, 0), size = Vector(0.128, 0.078, 0.374), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, 1.715, -6.256), angle = Angle(0, 0, -6.975), size = Vector(0.108, 0.153, 0.149), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0, 1.728, -21.788), angle = Angle(0, 0, 0), size = Vector(0.128, 0.193, 0.134), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/metalladder001.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0, -6.501, 7.051), angle = Angle(90, 90, 0), size = Vector(0.128, 0.082, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "METAL4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0, 2.177, -19.06), angle = Angle(0, 0, 2.371), size = Vector(0.057, 0.078, 0.157), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0, -0.191, -6.735), angle = Angle(0, 0, 0), size = Vector(0.123, 0.123, 0.365), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.241, -2.987), angle = Angle(0, 0, 0), size = Vector(0.128, 0.078, 0.374), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/metalladder001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -6.343, 14.057), angle = Angle(90, 90, 0), size = Vector(0.128, 0.082, 0.048), color = Color(255, 255, 255, 255), surpresslightning = false, material = "METAL4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.728, -15.785), angle = Angle(0, 0, 0), size = Vector(0.128, 0.193, 0.134), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.635, 1.212, -4.732), angle = Angle(0, -88.92, -95.68), size = Vector(0.123, 0.123, 0.365), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.456, -12.605), angle = Angle(0, 0, 2.371), size = Vector(0.057, 0.078, 0.157), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.715, -6.256), angle = Angle(0, 0, -6.975), size = Vector(0.108, 0.153, 0.149), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()
self:PlayAnim("fire01")
end
function SWEP:FireB()
	if SERVER then
	local e=ents.Create("obj_308_grenade")
	e:SetAngles(self.Owner:GetAimVector():Angle())
	e:SetPos(self.Owner:GetShootPos()+self:GetForward()*30+self.Owner:GetRight()*12+self.Owner:GetUp()*-9)
	if self.Scope>0 then
	e:SetPos(self.Owner:GetShootPos()+self:GetForward()*30+self.Owner:GetUp()*-7)
	end
	e:SetOwner(self.Owner)
	e:Spawn()
	e:Activate()
	self.Owner:DeleteOnRemove(e)
	e:SetVelocity(self.Owner:GetForward()*2000+self.Owner:GetUp()*160+self:GetVelocity()/5)
	end
end
