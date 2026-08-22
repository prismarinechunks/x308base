SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
if system.GetCountry()=="CN" then
SWEP.PrintName = "分裂者"
else
SWEP.PrintName = "Divider"
end
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel = "models/weapons/w_rif_famas.mdl"
SWEP.AdminOnly=true
SWEP.Primary.ClipSize = 50
SWEP.Primary.DefaultClip = 50
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "XBowBolt"

SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawSound={{Sound="3088083421/wep/deploy/deploy_roz_arif.wav"}}
SWEP.PA_Sound2={{Sound="npc/roller/mine/rmine_explode_shock1.wav",Pitch=50}}
SWEP.PA_Sound = ""
SWEP.PA_Delay = .1
SWEP.PA_Recoil = .4
SWEP.PA_AimRecoil = .1
SWEP.SA_SightFOV = 50

SWEP.TextColor=Color(255,65,0)

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
SWEP.SightPos = Vector(-6.3,80,1.602)
SWEP.CenterPos = Vector( -1.5, 50, 0 )
SWEP.CenterAng = Angle( 0, -2.1, 0 )
SWEP.ShowWorldModel=false
SWEP.Text_Auto="Orb"
SWEP.ViewModelBoneMods = {
	["v_weapon.famas"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["3++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.magazine", rel = "", pos = Vector(0, 2.523, 0.112), angle = Angle(0, 0, -92.926), size = Vector(0.126, 0.126, 0.126), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1+++", pos = Vector(1.838, 0, 6.756), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.125), color = Color(57, 65, 67, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "", pos = Vector(0, -0.331, -0.684), angle = Angle(0, 0, 0), size = Vector(0.078, 0.125, 0.728), color = Color(161, 163, 168, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1+++", pos = Vector(0, 1.838, 6.756), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.125), color = Color(57, 65, 67, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3+++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x05.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, -3.701, 10.814), angle = Angle(0, 0, 0), size = Vector(0.01, 0.01, 0.361), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2++"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_Spine4", rel = "3+++", pos = Vector(0, 0, -2.836), size = { x = 0.03, y = 0.03 }, color = Color(255, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["3+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, 0.635, 16.593), angle = Angle(0, 0, 0), size = Vector(0.115, 0.081, 0.241), color = Color(255, 255, 0, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, -0.543, 27.173), angle = Angle(0, 0, 0), size = Vector(0.093, 0.093, 0.197), color = Color(145, 137, 145, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, 5.354, 11.704), angle = Angle(0, 0, -71.636), size = Vector(0.046, 0.082, 0.12), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1+++", pos = Vector(0, -1.839, 6.756), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.125), color = Color(57, 65, 67, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2"] = { type = "Sprite", sprite = "ledglow", bone = "ValveBiped.Bip01_Spine4", rel = "1+++", pos = Vector(0, 0, 10.791), size = { x = 10, y = 10 }, color = Color(255, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1+++", pos = Vector(-1.839, 0, 6.756), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.125), color = Color(57, 65, 67, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "1", pos = Vector(0, -1.956, 6.428), angle = Angle(0, 0, 0), size = Vector(0.068, 0.068, 0.456), color = Color(188, 190, 193, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_Spine4", rel = "1+++", pos = Vector(0, 0, 12.112), size = { x = 2.458, y = 2.458 }, color = Color(255, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
SWEP.WElements = {
	["3++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 7.163, 7.44), angle = Angle(0, 0, -92.926), size = Vector(0.126, 0.126, 0.126), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(1.838, 0, 6.756), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.125), color = Color(57, 65, 67, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-9.745, 0.862, -0.905), angle = Angle(0, -90, -100.524), size = Vector(0.078, 0.125, 0.728), color = Color(161, 163, 168, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(0, 1.838, 6.756), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.125), color = Color(57, 65, 67, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3+++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.701, 10.814), angle = Angle(0, 0, 0), size = Vector(0.01, 0.01, 0.361), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.635, 16.593), angle = Angle(0, 0, 0), size = Vector(0.115, 0.081, 0.241), color = Color(255, 255, 0, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.956, 6.428), angle = Angle(0, 0, 0), size = Vector(0.068, 0.068, 0.456), color = Color(188, 190, 193, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 5.354, 11.704), angle = Angle(0, 0, -71.636), size = Vector(0.046, 0.082, 0.12), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.543, 27.173), angle = Angle(0, 0, 0), size = Vector(0.093, 0.093, 0.197), color = Color(145, 137, 145, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2"] = { type = "Sprite", sprite = "ledglow", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(0, 0, 10.791), size = { x = 10, y = 10 }, color = Color(255, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(-1.839, 0, 6.756), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.125), color = Color(57, 65, 67, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(0, -1.839, 6.756), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.125), color = Color(57, 65, 67, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(0, 0, 12.112), size = { x = 2.458, y = 2.458 }, color = Color(255, 0, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
local SpinAng = 0
local SpinAccel = 0

function SWEP:CustomThink()
if self:GetNWInt("R")>.4||(self.Owner:KeyDown(IN_ATTACK)and self:Clip1()>0)then
SpinAccel = math.Approach(SpinAccel, -6, 60*FrameTime())else
SpinAccel = math.Approach(SpinAccel, 2, 9*FrameTime())
end
	if CLIENT then
	SpinAng = SpinAng + SpinAccel
	self.VElements["1+++"].angle.y = SpinAng
	self.WElements["1+++"].angle.y = SpinAng
	end
self:SetNetworkedInt( "Spin",SpinAccel )
end
if SERVER then

function SWEP:CustomPrimary()
self:PlayAnim("shoot1",1,.5)
local p=self.Owner
local k=ents.Create("obj_308_dividerb")
if self.Scope<1 then
k:SetPos(p:EyePos()+p:GetForward()*50+p:GetRight()*5+p:GetUp()*-5)else
k:SetPos(p:EyePos()+p:GetForward()*50+p:GetUp()*-3)end
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