SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M82A1"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"
SWEP.ShowWorldModel=false
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound="3088083421/wep/shoot/barrett_1.ogg",Pitch=90,Volume=511},
{Delay=.7,Sound="weapons/scout/scout_bolt.wav",Pitch=70}
}
SWEP.PA_Damage = 476
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 10
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "SniperPenetratedRound"
SWEP.PA_Recoil = 9
SWEP.PA_Spread = .1
SWEP.PA_Delay = 2
SWEP.PA_AimSpread = .00005
SWEP.PA_AimRecoil = 3
SWEP.PA_Range=350

SWEP.DrawSound = {
	{Delay=.2,Sound="3088083421/wep/deploy/deploy_ava_2.ogg"}
}
SWEP.PA_VeloS = 2100
SWEP.ReloadAnim = "awm_reload"
SWEP.ReloadAnimRate = .7
SWEP.DrawAnim = "awm_draw"
SWEP.SA_SightFOV = 8
SWEP.SA_Delay = .5
SWEP.DrawCross=false
SWEP.Speed=.92

SWEP.StopRAnimTime = 3.8
SWEP.NormalDraw = true
SWEP.BlockPrimary=true
SWEP.DrawAnimRate = .8
SWEP.DrawTime = .7
SWEP.ReloadTime = 3.9
SWEP.ReloadTime2 = 5
SWEP.BoltPullTime=4.4
SWEP.ClipoutTime = 1.3
SWEP.ClipinTime = 2.9

SWEP.CenterPos = Vector(0,80,0)
SWEP.SightPos = Vector(0,780,0)
SWEP.Text_Auto="Bolt-Action"
SWEP.ViewModelBoneMods = {
	["v_weapon.awm_parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.WElements = {
	["1++++++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.205, 24.03), angle = Angle(180, -90, 0), size = Vector(0.041, 0.052, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.146, 4.006), angle = Angle(0, 0, 0), size = Vector(0.075, 0.075, 0.133), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(21.753, 0.864, -7.565), angle = Angle(4.399, 90, -79.623), size = Vector(0.093, 0.128, 0.575), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-1.79, -0.459, 13.121), angle = Angle(0, 95.035, 0), size = Vector(0.048, 0.386, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.32, -11.62), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.293), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.146, 18.256), angle = Angle(0, 0, 0), size = Vector(0.059, 0.059, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/window", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.146, 15.769), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.064), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.146, 9.84), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 0.143), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/misc/squarecap1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.32, -10.879), angle = Angle(0, 0, 0), size = Vector(0.076, 0.027, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.32, 16.291), angle = Angle(0, 0, 68.379), size = Vector(0.086, 0.082, 0.116), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.146, 3.947), angle = Angle(0, 0, 0), size = Vector(0.059, 0.059, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/window", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.972, 11.116), angle = Angle(0, 0, 0), size = Vector(0.081, 0.194, 0.291), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.644, 13.461), angle = Angle(0, 0, 0), size = Vector(0.035, 0.166, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++++++"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 8.579, 1.32), angle = Angle(0.239, -90, 0), size = Vector(0.312, 0.074, 0.317), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.945, 12.715), angle = Angle(0, 90, 90), size = Vector(0.104, 0.094, 0.458), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.95, 14.838), angle = Angle(0, 0, 7.479), size = Vector(0.035, 0.045, 0.273), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.VElements = {
	["2+++++"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -3.945, 12.715), angle = Angle(0, 90, 90), size = Vector(0.104, 0.094, 0.458), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 1.205, 24.03), angle = Angle(180, -90, 0), size = Vector(0.041, 0.052, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(0, -3.899, -16.035), angle = Angle(0, 0, 0), size = Vector(0.093, 0.128, 0.575), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.awm_bolt_action", rel = "", pos = Vector(-0.802, 0.477, -0.406), angle = Angle(0, 90, 26.152), size = Vector(0.048, 0.552, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -0.32, -11.62), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.293), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -3.146, 18.256), angle = Angle(0, 0, 0), size = Vector(0.059, 0.059, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/window", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -3.146, 15.769), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.064), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -3.146, 4.006), angle = Angle(0, 0, 0), size = Vector(0.075, 0.075, 0.133), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.awm_clip", rel = "", pos = Vector(0, 0.814, -0.466), angle = Angle(0, 0, 0), size = Vector(0.081, 0.194, 0.291), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/misc/squarecap1x1x1.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -0.32, -10.879), angle = Angle(0, 0, 0), size = Vector(0.076, 0.027, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -3.146, 3.947), angle = Angle(0, 0, 0), size = Vector(0.059, 0.059, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/window", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -0.32, 16.291), angle = Angle(0, 0, 68.379), size = Vector(0.086, 0.082, 0.116), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 1.644, 13.461), angle = Angle(0, 0, 0), size = Vector(0.035, 0.166, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++++++"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 8.579, 1.32), angle = Angle(0.239, -90, 0), size = Vector(0.312, 0.074, 0.317), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -3.146, 9.84), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 0.143), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 2.95, 14.838), angle = Angle(0, 0, 7.479), size = Vector(0.035, 0.045, 0.273), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()
if SERVER then
local l=ents.Create("light_dynamic")
l:SetKeyValue("brightness", "7")
l:SetKeyValue("distance", "350")
l:SetLocalPos(self.Owner:GetShootPos()+self:GetForward()*30)
l:SetLocalAngles(self:GetAngles())
l:Fire("Color", "255 115 0")
l:Spawn()
l:Activate()
l:Fire("TurnOn", "", 0)
SafeRemoveEntityDelayed(l,.3)end
self:PlayAnim("awm_fire",.4,.5)
end
function SWEP:CusHUD()
x = ScrW()/2
y = ScrH()/2
sw = surface.ScreenWidth()
sh = surface.ScreenHeight()
	if self.Scope==1 then
		surface.SetDrawColor(255,255,255,255)

		surface.DrawLine(x,y+100,x,y-100)
		surface.DrawLine(x+100,y,x-100,y)

		surface.DrawLine(x+30,y+10,x+30,y-10)
		surface.DrawLine(x+60,y+10,x+60,y-10)
		surface.DrawLine(x+10,y+30,x-10,y+30)
		surface.DrawLine(x+10,y+60,x-10,y+60)

		surface.DrawLine(x-30,y+10,x-30,y-10)
		surface.DrawLine(x-60,y+10,x-60,y-10)
		surface.DrawLine(x+10,y-30,x-10,y-30)
		surface.DrawLine(x+10,y-60,x-10,y-60)

		surface.SetDrawColor(0,0,0,255)
		surface.DrawRect(0,0,sw,sh/6)
		surface.DrawRect(0,sh-sh/6,sw,sh/3)
		surface.DrawRect(sw-sw/3,0,sw/3,sh)
		surface.DrawRect(0,0,sw/3,sh)
	end
end
