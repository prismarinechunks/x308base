SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Bouncer"
SWEP.Category = "x308 Base | Misc"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"

SWEP.ShowWorldModel=false
SWEP.Primary.ClipSize = 18
SWEP.Primary.DefaultClip = 18
SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Sound2 = {
{Sound="3088083421/wep/shoot/shotgun1.ogg",Pitch=300,Volume=511},
{Sound="3088083421/wep/reload/arif_boltpull.ogg",Delay=.3}
}
SWEP.PA_Sound = ""
SWEP.PA_Delay = .8
SWEP.PA_TakeAmmo=2
SWEP.PA_Recoil = 2.3
SWEP.PA_AimRecoil = 2
SWEP.HIGHPINGWep=true

SWEP.PA_Anim="shoot"
SWEP.ReloadAnim1="start_reload"
SWEP.ReloadAnim2="insert"
SWEP.ReloadAnim3="after_reload"
SWEP.Text_Auto="Auto"
SWEP.TextType="308CS"
SWEP.Text="B"
SWEP.TextColor=Color(0,255,255)
SWEP.ReloadStart=.6
SWEP.ReloadDelay=.5
SWEP.ReloadIn=.4
SWEP.ReloadInEnd=.05
SWEP.ReloadEnd=.4

SWEP.SA_Delay = .1
SWEP.NormalDraw=true

SWEP.SightPos = Vector(-6.9, 110, 1)
SWEP.SightAng = Angle(0, -.7, 0)
SWEP.CenterPos = Vector( -2, 90, 0 )
SWEP.CenterAng = Angle(0, -4, 0)
SWEP.ViewModelBoneMods = {
	["v_weapon.xm1014_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.xm1014_Shell"] = { scale = Vector(100, 100, 100), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -0.283, -9.349), angle = Angle(0, 0, 0), size = Vector(0.093, 0.128, 0.152), color = Color(0, 77, 75, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, 0.388, -10.388), angle = Angle(0, 0, 0), size = Vector(0.068, 0.068, 0.577), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["4"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, 1.462, 13.939), angle = Angle(0, 0, 20.996), size = Vector(0.057, 0.009, 0.164), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["5"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -0.885, -11.908), angle = Angle(0, 0, 0), size = Vector(0.068, 0.068, 0.861), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["6"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, 0.143, 11.678), angle = Angle(0, 0, 0), size = Vector(0.097, 0.112, 0.331), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["7"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, 1.843, 25.367), angle = Angle(0, 0, 0), size = Vector(0.057, 0.097, 0.222), color = Color(153, 203, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["8"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -1.331, 0.432), angle = Angle(0, 0, 0), size = Vector(0.087, 0.087, 0.149), color = Color(118, 103, 127, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "", pos = Vector(0, -4.213, -17.907), angle = Angle(0, 0, 0), size = Vector(0.078, 0.112, 0.326), color = Color(110, 97, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["9"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -0.013, 17.67), angle = Angle(0, 0, 63.334), size = Vector(0.057, 0.103, 0.184), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.283, -9.349), angle = Angle(0, 0, 0), size = Vector(0.093, 0.128, 0.152), color = Color(0, 77, 75, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(21.799, 0.982, -6.375), angle = Angle(0, 90, -80.903), size = Vector(0.078, 0.112, 0.326), color = Color(110, 97, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.462, 13.939), angle = Angle(0, 0, 20.996), size = Vector(0.057, 0.009, 0.164), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["4"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.885, -11.908), angle = Angle(0, 0, 0), size = Vector(0.068, 0.068, 0.861), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["5"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.843, 25.367), angle = Angle(0, 0, 0), size = Vector(0.057, 0.097, 0.222), color = Color(153, 203, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.013, 17.67), angle = Angle(0, 0, 63.334), size = Vector(0.057, 0.103, 0.184), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["6"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.331, 0.432), angle = Angle(0, 0, 0), size = Vector(0.087, 0.087, 0.149), color = Color(118, 103, 127, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["7"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.143, 11.678), angle = Angle(0, 0, 0), size = Vector(0.097, 0.112, 0.331), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["8"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.388, -10.388), angle = Angle(0, 0, 0), size = Vector(0.068, 0.068, 0.577), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()self:PlayAnim(self.PA_Anim..math.random(2))end
function SWEP:FireB()
if SERVER then
for i=1,20 do
local e=ents.Create("obj_308_bounce")
if self.Scope<1 then
e:SetPos(self.Owner:GetShootPos()+self:GetForward()*30+self:GetRight()*9+self:GetUp()*-3)
else
e:SetPos(self.Owner:GetShootPos()+self:GetForward()*30+self:GetUp()*-2)
end
e:SetOwner(self.Owner)
e:Spawn()
e:GetPhysicsObject():SetVelocity(self.Owner:GetForward()*3000+self.Owner:GetVelocity()+self:GetRight()*math.Rand(-400,400)+self:GetUp()*math.Rand(-400,400))
end end
end