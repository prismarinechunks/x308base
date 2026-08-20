SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Redeemer"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "rpg"
SWEP.ViewModel = "models/weapons/c_shotgun.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"
SWEP.ShowWorldModel = false
SWEP.AdminOnly=true

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Ammo = "RPG_Round"

SWEP.Slot = 4
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/physcannon/energy_disintegrate4.wav"
SWEP.PA_Sound2 = {{Sound="weapons/rpg/rocketfire1.wav",Pitch=120}}
SWEP.PA_Delay = 1
SWEP.PA_Recoil = 7
SWEP.PA_Recoil = 7
SWEP.PA_AimRecoil = 6
SWEP.DrawCross=false
SWEP.Text_Semi="Rocket"
SWEP.SA_Delay = .1
SWEP.ClipExtraBullet = false
SWEP.NormalDraw=true
SWEP.ReloadAnimD2={
{Anim="holster",Time=2.2,Rate=.5},
{Delay=2.1,Anim="draw",Rate=.5}
}
SWEP.ReloadAnimD={
{Anim="holster",Time=2.2,Rate=.5},
{Delay=2.1,Anim="draw",Rate=.5}
}
SWEP.ReloadSound = {
{Delay=.1,Sound="vehicles/tank_readyfire1.wav"}
}
SWEP.ReloadSound2 = {
{Sound="vehicles/tank_readyfire1.wav",Pitch=70}
}
SWEP.ClipoutTime=0
SWEP.ClipinTime=2.1
SWEP.StopRAnimTime = 2.1
SWEP.ReloadAnimRate = .5
SWEP.ReloadTime = 2.2
SWEP.ReloadTime2 = 3.2
SWEP.SA_IsSight=false
SWEP.SightPos = Vector(-3, 80, -1)
SWEP.SightAng = Angle(0,-1,0)
SWEP.CenterPos = Vector(-2, 90, 0)
SWEP.CenterAng = Angle( 0,-1, 0 )
SWEP.ViewModelBoneMods = {
	["ValveBiped.Gun"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, 2.009, -12.804), angle = Angle(0, 0, 27.736), size = Vector(0.118, 0.393, 0.163), color = Color(255, 177, 114, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0.4, 0.56, -3.052), angle = Angle(0, 0, 0), size = Vector(0.231, 0.221, 0.87), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, -2.225, -0.026), angle = Angle(0, 45, 0), size = Vector(0.207, 0.207, 1.69), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, -1.3, 0.898), angle = Angle(0, 45, 0), size = Vector(0.231, 0.221, 1.46), color = Color(218, 212, 212, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "2+++++", pos = Vector(0, 0, 60.317), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 10), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, 0.316, -10.053), angle = Angle(0, 0, -7.152), size = Vector(0.026, 0.18, 0.026), color = Color(255, 177, 114, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, -1.905, -13.502), angle = Angle(0, 0, 0), size = Vector(0.172, 0.122, 0.136), color = Color(255, 145, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(2.193, -2.866, 12.642), angle = Angle(0, 0, 0), size = Vector(0.028, 0.028, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["3"] = { type = "Sprite", sprite = "sprites/orangeflare1", bone = "ValveBiped.Gun", rel = "2++++++", pos = Vector(0, 0, 80), size = { x = 1.249, y = 1.249 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, -2.158, 1.123), angle = Angle(0, 0, 0), size = Vector(0.24, 0.24, 1.776), color = Color(218, 212, 212, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, -2.076, -10.381), angle = Angle(0, 0, 0), size = Vector(0.324, 0.317, 0.574), color = Color(204, 150, 147, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, -2.09, 12.543), angle = Angle(0, 0, 0), size = Vector(0.331, 0.331, 0.331), color = Color(218, 212, 212, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, -0.627, 8.677), angle = Angle(0, 0, 0), size = Vector(0.207, 0.207, 0.685), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Gun", rel = "1", pos = Vector(0, 1.111, -12.858), angle = Angle(0, 0, 27.736), size = Vector(0.112, 0.549, 0.219), color = Color(204, 150, 147, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.009, -12.804), angle = Angle(0, 0, 27.736), size = Vector(0.118, 0.393, 0.163), color = Color(255, 177, 114, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(15.972, 0.816, -3.172), angle = Angle(3, -88.275, -96), size = Vector(0.231, 0.221, 0.87), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/props_borealis/bluebarrel001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(2.193, -2.866, 12.642), angle = Angle(0, 0, 0), size = Vector(0.028, 0.028, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.3, 0.898), angle = Angle(0, 45, 0), size = Vector(0.231, 0.221, 1.46), color = Color(218, 212, 212, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.316, -10.053), angle = Angle(0, 0, -7.152), size = Vector(0.026, 0.18, 0.026), color = Color(255, 177, 114, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.225, -0.026), angle = Angle(0, 45, 0), size = Vector(0.207, 0.207, 1.69), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.627, 8.677), angle = Angle(0, 0, 0), size = Vector(0.207, 0.207, 0.685), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.158, 1.123), angle = Angle(0, 0, 0), size = Vector(0.24, 0.24, 1.776), color = Color(218, 212, 212, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.076, -10.381), angle = Angle(0, 0, 0), size = Vector(0.324, 0.317, 0.574), color = Color(204, 150, 147, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.09, 12.543), angle = Angle(0, 0, 0), size = Vector(0.331, 0.331, 0.331), color = Color(218, 212, 212, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.905, -13.502), angle = Angle(0, 0, 0), size = Vector(0.172, 0.122, 0.136), color = Color(255, 145, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.111, -12.858), angle = Angle(0, 0, 27.736), size = Vector(0.112, 0.549, 0.219), color = Color(204, 150, 147, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
BED308=0
function SWEP:CustomThink()
if BED308<1 then
self.SA_IsSight=true
end
end
function SWEP:CustomPrimary()
	if SERVER then
	self:SendWeaponAnim(self.PA_Anim)
	local e=ents.Create("obj_308_rpg")
	local p=self.Owner:GetShootPos()+self:GetForward()*30+self:GetRight()*3+self:GetUp()*-3
	if !e:IsValid() then return false end
	e:SetAngles(self.Owner:GetAimVector():Angle())
	e:SetPos(p)
	e:SetOwner(self.Owner)
	e.Redeemer=1
	e:Spawn()
	e:Activate()
	e:EmitSound("ambient/alarms/combine_bank_alarm_loop4.wav",511)
	self:SetModelScale(2)
	self.Owner:DeleteOnRemove(e)
	if BED308>0 and self:Clip1()<1 and self:Ammo1()<1 then
	SafeRemoveEntityDelayed(self,.3)end
	end
end