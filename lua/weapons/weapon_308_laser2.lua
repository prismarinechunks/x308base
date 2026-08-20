SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["laser2"]
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.ShowWorldModel=false

SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "XBowBolt"

SWEP.DrawCross=false
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_AnimRate = 1
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound="weapons/flashbang/flashbang_explode2.wav",Pitch=300,Volume=511}
}
SWEP.PA_Delay = .5
SWEP.PA_Recoil = .15
SWEP.PA_AimRecoil = .13
SWEP.SA_SightFOV = 30

SWEP.TextColor=Color(math.random(255),math.random(255),math.random(255))
SWEP.Text_Semi="Orb"
SWEP.IdleAnim = "idle1"
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 1.4
SWEP.ReloadTime = 1.5
SWEP.ClipoutTime = .4
SWEP.ClipinTime = .9
SWEP.PA_DryFireSound = "weapons/physcannon/physcannon_dryfire.wav"
SWEP.BTime = 1.5
SWEP.BSound = {{Delay=0,Sound="weapons/physcannon/physcannon_charge.wav"}}
SWEP.ReloadSound = {
{Delay=.3,Sound="weapons/ar2/ar2_reload_rotate.wav"},
{Delay=1,Sound="weapons/ar2/ar2_reload_push.wav"}
}
SWEP.ReloadSound2 = {
{Delay=0,Sound="weapons/ar2/npc_ar2_reload.wav",Pitch=120}
}
SWEP.ReloadTime2 = 2
SWEP.SightPos = Vector(-6.48,40,1.7)
SWEP.CenterPos = Vector(0,40,-2)

SWEP.ViewModelBoneMods = {
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["2++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 1.467, -10.363), angle = Angle(0, 90, 0), size = Vector(0.041, 0.041, 0.041), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 0, 3.591), angle = Angle(0, 0, 0), size = Vector(0.104, 0.104, 0.184), color = Color(215, 215, 215, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0.019, 6.137), angle = Angle(0, 0, 0), size = Vector(0.125, 0.125, 0.125), color = Color(147, 145, 153, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0, -5.18), angle = Angle(0, 0, 0), size = Vector(0.1, 0.1, 0.159), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/glass", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/mechanics/solid_steel/step_beam_16.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0.061, -7.117), angle = Angle(90, 0, 90), size = Vector(0.035, 0.054, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3+"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_Spine4", rel = "1+", pos = Vector(0, 0, 2.698), size = { x = 4.648, y = 4.648 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["2++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, -2.11, -1.833), angle = Angle(0, 0, 0), size = Vector(0.028, 0.028, 0.039), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/props_phx/mechanics/slider1.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, -1.474, -0.987), angle = Angle(90, 0, -90), size = Vector(0.097, 0.097, 0.02), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_Spine4", rel = "2++++", pos = Vector(0, 0, 0), size = { x = 0.074, y = 0.074 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0, -3.474), angle = Angle(0, 0, 0), size = Vector(0.09, 0.09, 0.09), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/com_shield001a", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 5.227, -5.825), angle = Angle(0, 0, -78.669), size = Vector(0.061, 0.081, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0, -7.949), angle = Angle(0, 0, 0), size = Vector(0.104, 0.104, 0.104), color = Color(215, 215, 215, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0.019, -6.373), angle = Angle(0, 0, 0), size = Vector(0.109, 0.009, 0.303), color = Color(215, 215, 215, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 5.227, 3.496), angle = Angle(0, 0, -88.483), size = Vector(0.061, 0.081, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["2++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.467, -10.363), angle = Angle(0, 90, 0), size = Vector(0.041, 0.041, 0.041), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.015, 1.485, -4.876), angle = Angle(-1.598, -90.334, -100.536), size = Vector(0.104, 0.104, 0.184), color = Color(215, 215, 215, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/props_phx/mechanics/slider1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.474, -0.987), angle = Angle(90, 0, -90), size = Vector(0.097, 0.097, 0.02), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -5.18), angle = Angle(0, 0, 0), size = Vector(0.1, 0.1, 0.159), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/glass", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/mechanics/solid_steel/step_beam_16.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.061, -7.117), angle = Angle(90, 0, 90), size = Vector(0.035, 0.054, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.019, 6.137), angle = Angle(0, 0, 0), size = Vector(0.125, 0.125, 0.125), color = Color(147, 145, 153, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.019, -6.373), angle = Angle(0, 0, 0), size = Vector(0.109, 0.009, 0.303), color = Color(215, 215, 215, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -7.949), angle = Angle(0, 0, 0), size = Vector(0.104, 0.104, 0.104), color = Color(215, 215, 215, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_R_Hand", rel = "2++++", pos = Vector(0, 0, 0), size = { x = 0.074, y = 0.074 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -3.474), angle = Angle(0, 0, 0), size = Vector(0.09, 0.09, 0.09), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/com_shield001a", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 5.227, -5.825), angle = Angle(0, 0, -78.669), size = Vector(0.061, 0.081, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3+"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0, 2.698), size = { x = 4.648, y = 4.648 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["2++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.11, -1.833), angle = Angle(0, 0, 0), size = Vector(0.028, 0.028, 0.039), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 5.227, 3.496), angle = Angle(0, 0, -88.483), size = Vector(0.061, 0.081, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
function SWEP:FireB()
local ply=self.Owner
self:SetColor(Color(math.random(255),math.random(255),math.random(255)))
	if SERVER then
	self:SendWeaponAnim(self.PA_Anim)
	local e=ents.Create("obj_308_laser")
	local pos=ply:GetShootPos()+self:GetUp()*-5+self:GetForward()*20+self:GetRight()*5.5
	if self.Scope>0 then
	e.DMG=50
	ply:EmitSound("npc/sniper/echo1.wav",511,80)
	pos=ply:GetShootPos()+self:GetUp()*-2+self:GetForward()*20
	else
	self:SetNextPrimaryFire(CurTime()+.14)
	e.DMG=25
	end
	e:SetAngles(ply:GetAimVector():Angle())
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	e:SetColor(self:GetColor())
	e:SetVelocity(ply:GetForward()*2900)
	util.SpriteTrail(e,0,self:GetColor(),true,25,.1,.5,.1,"trails/smoke.vmt")
	ply:DeleteOnRemove(e)
	e:SetGravity(.05)
	end
end

function SWEP:CusHUD()
local x=ScrW()/2
local y=ScrH()/2
local sw=surface.ScreenWidth()
local sh=surface.ScreenHeight()
surface.SetDrawColor(math.random(255),math.random(255),math.random(255),225)
surface.DrawLine(x-50,y-50,x+50,y+50)
surface.DrawLine(x-50,y+50,x+50,y-50)
end
