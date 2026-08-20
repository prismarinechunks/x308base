SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M32"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"

SWEP.ShowWorldModel=false
SWEP.DrawCross=false
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Slot = 4
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Sound = "3088083421/wep/shoot/m32-1.wav"
SWEP.ReloadSound={
{Delay=0,Sound="3088083421/wep/melee/thanatos9_changeb_1.wav",Pitch=125}
}
SWEP.ReloadSound2 = {
{Delay=.3,Sound="3088083421/wep/reload/insert1.wav"}
}
SWEP.Primary.Ammo="SMG1_Grenade"
SWEP.PA_Delay = .7
SWEP.PA_Recoil = 2.3
SWEP.PA_AimRecoil = 1.8

SWEP.PA_Anim="shoot"
SWEP.ReloadAnim1="start_reload"
SWEP.ReloadAnim2="insert"
SWEP.ReloadAnim3="after_reload"
SWEP.ReRate1=.8
SWEP.ReRate2=.8
SWEP.Text_Auto="Auto"
SWEP.ReloadStart=.6
SWEP.ReloadDelay=.8
SWEP.ReloadIn=.5
SWEP.ReloadInEnd=.1
SWEP.ReloadEnd=.4

SWEP.SA_Delay = .2
SWEP.SA_SightFOV = 50

SWEP.SightPos = Vector( -2, 110, 0 )
SWEP.SightAng = Angle(0, -4, 0)
SWEP.CenterPos = Vector( -2, 90, 0 )
SWEP.CenterAng = Angle(0, -4, 0)
SWEP.ViewModelBoneMods = {
	["v_weapon.xm1014_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["2++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -1.67, -18.831), angle = Angle(0, 0, 0), size = Vector(0.02, 0.02, 0.802), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.xm1014_Parent", rel = "", pos = Vector(0, -3.714, 0.805), angle = Angle(0, 0, 0), size = Vector(0.225, 0.225, 0.46), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, 3.094, 0.667), angle = Angle(0, 0, -15.697), size = Vector(0.097, 0.425, 0.217), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -1.198, 6.603), angle = Angle(0, 0, 0), size = Vector(0.02, 0.056, 0.802), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -3.404, -1.145), angle = Angle(0, 0, 0), size = Vector(0.158, 0.093, 1.468), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -1.351, -12.738), angle = Angle(0, 0, 0), size = Vector(0.026, 0.03, 3.311), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -1.122, -2.643), angle = Angle(0, 0, 0), size = Vector(0.137, 0.347, 0.137), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, 0.3, -5.166), angle = Angle(0, 0, 0), size = Vector(0.067, 0.067, 1.87), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -0.629, -8.907), angle = Angle(0, 0, 0), size = Vector(0.209, 0.395, 0.149), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["2++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.67, -18.831), angle = Angle(0, 0, 0), size = Vector(0.02, 0.02, 0.802), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.122, -2.643), angle = Angle(0, 0, 0), size = Vector(0.137, 0.347, 0.137), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 3.094, 0.667), angle = Angle(0, 0, -15.697), size = Vector(0.097, 0.425, 0.217), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.198, 6.603), angle = Angle(0, 0, 0), size = Vector(0.02, 0.056, 0.802), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.119, 1.123, -3.804), angle = Angle(0, 90, -81.496), size = Vector(0.225, 0.225, 0.46), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.404, -1.145), angle = Angle(0, 0, 0), size = Vector(0.158, 0.093, 1.468), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.351, -12.738), angle = Angle(0, 0, 0), size = Vector(0.026, 0.03, 3.311), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.3, -5.166), angle = Angle(0, 0, 0), size = Vector(0.067, 0.067, 1.87), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.629, -8.907), angle = Angle(0, 0, 0), size = Vector(0.209, 0.395, 0.149), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()
self:PlayAnim(self.PA_Anim..math.random(2))
end
function SWEP:FireB()
	if SERVER then
	local e=ents.Create("obj_308_grenade")
	e:SetAngles(self.Owner:GetAimVector():Angle())
	e:SetPos(self.Owner:GetShootPos()+self:GetForward()*30+self.Owner:GetRight()*7+self.Owner:GetUp()*-4)
	e:SetOwner(self.Owner)
	e:Spawn()
	e:Activate()
	self.Owner:DeleteOnRemove(e)
	e:SetVelocity(self.Owner:GetForward()*2000+self.Owner:GetUp()*160+self:GetVelocity()/5)
	end
end
function SWEP:CusHUD()
x = ScrW()/2
y = ScrH()/2
sw = surface.ScreenWidth()
sh = surface.ScreenHeight()
		surface.SetDrawColor(255,255,255,225)
		surface.DrawLine(x,y,x,y-60)
		surface.DrawLine(x,y,x+12,y)
		surface.DrawLine(x,y-10,x+10,y-10)
		surface.DrawLine(x,y-20,x+10,y-20)
		surface.DrawLine(x,y-30,x+10,y-30)
		surface.DrawLine(x,y-40,x+10,y-40)
		surface.DrawLine(x,y-50,x+10,y-50)
		surface.DrawLine(x,y-60,x+12,y-60)
end
