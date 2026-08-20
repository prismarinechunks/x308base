SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["pistolb"]
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_p228.mdl"
SWEP.WorldModel = "models/weapons/w_pist_p228.mdl"
SWEP.ShowWorldModel = false

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Delay=0,Sound="3088083421/soulknight/shoot1.mp3",Volume=511}
}
SWEP.PA_TakeAmmo = 0
SWEP.PA_Recoil = .1
SWEP.PA_AimRecoil = 0
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .3
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 2.2
SWEP.ReloadTime = 2.3
SWEP.ClipoutTime = .85
SWEP.ClipinTime = 1.85
SWEP.ReloadTime2 = 2.7
SWEP.AmmoHUD=2

SWEP.CenterPos = Vector( 0, 90, 0 )
SWEP.SightPos = Vector(-5.93, 110, 2.4)
SWEP.VElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.p228_Parent", rel = "1", pos = Vector(0, -0.459, 2.832), angle = Angle(0, 0, 0), size = Vector(0.064, 0.083, 0.024), color = Color(255, 255, 0, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.p228_Parent", rel = "1", pos = Vector(0, 0.014, 5.524), angle = Angle(0, 0, 70.112), size = Vector(0.028, 0.064, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.p228_Slide", rel = "", pos = Vector(0, -0.16, -6.499), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.173), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "v_weapon.p228_Parent", rel = "1", pos = Vector(0, -1, 1.325), angle = Angle(0, 45, 0), size = Vector(0.023, 0.023, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "v_weapon.p228_Parent", rel = "1", pos = Vector(0, 0.597, 6.314), angle = Angle(90, 0, 0), size = Vector(0.158, 0.064, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.p228_Parent", rel = "", pos = Vector(0, -3.175, -5.054), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.173), color = Color(155, 155, 155, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.459, 2.832), angle = Angle(0, 0, 0), size = Vector(0.064, 0.083, 0.024), color = Color(255, 255, 0, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1, 1.325), angle = Angle(0, 45, 0), size = Vector(0.023, 0.023, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.885, 0), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.173), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.817, 2.065, -3.343), angle = Angle(0, 85.106, -86.755), size = Vector(0.048, 0.048, 0.173), color = Color(155, 155, 155, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.597, 6.314), angle = Angle(90, 0, 0), size = Vector(0.158, 0.064, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.014, 5.524), angle = Angle(0, 0, 70.112), size = Vector(0.028, 0.064, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["v_weapon.p228_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
function SWEP:Reload()end
function SWEP:FireB()if SERVER then
local ply=self.Owner
	self:SendWeaponAnim(self.PA_Anim)
	local e=ents.Create("obj_308_sbullet")
	if self.Scope>0 then
	pos = ply:GetShootPos()+self:GetUp()*-1+self:GetForward()*30
	m=12
	else
	pos = ply:GetShootPos()+self:GetUp()*-5+self:GetForward()*30+self:GetRight()*9
	m=25
	end
	e:SetAngles(ply:GetAimVector():Angle())
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	ply:DeleteOnRemove(e)
	e:SetVelocity(ply:GetForward()*3600+ply:GetUp()*math.random(-m,m)+ply:GetRight()*math.random(-m,m)+ply:GetVelocity()/5)
	e:SetGravity(.01)
	e.DMG=10
end end
function SWEP:IfOwnHurt()
self.Owner:EmitSound("3088083421/soulknight/hurt.mp3")
end