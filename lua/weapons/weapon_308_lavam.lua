SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["lavam"]
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_snip_scout.mdl"
SWEP.CDWInfoBox=true
SWEP.Author="QQ3088083421\n\n\n我来自火山\nI from volcano."
SWEP.UseHands=true
SWEP.ShowWorldModel=false
SWEP.NormalDraw=true
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawSound = {
	{Delay=0,Sound="3088083421/wep/deploy/deploy_roz_arif.wav"}
}
SWEP.PA_Sound = "3088083421/soulknight/shoot2.mp3"
SWEP.PA_Delay = .1
SWEP.PA_Recoil = 1
SWEP.PA_AimRecoil = .9
SWEP.SA_SightFOV = 70
SWEP.SA_IsSight=false

SWEP.Text="Lava Machine Gun"

SWEP.IdleAnimRate=.5
SWEP.ReloadAnimRate=.9
SWEP.DrawAnim="draw"
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.ClipoutTime = .4
SWEP.ClipinTime = 1.2
SWEP.StopRAnimTime = 1.8
SWEP.ReloadTime = 1.9
SWEP.ReloadTime2 = 2.1
SWEP.SightPos = Vector(-5.8,180,1)
SWEP.SightAng = Angle(0,-1,0)
SWEP.CenterPos = Vector( -1.5, 120, -1 )

SWEP.ReloadSound = {
{Delay=.2,Sound="3088083421/wep/reload/all4_clipout.ogg"},
{Delay=1,Sound="3088083421/wep/reload/all4_clipin.ogg"}
}
SWEP.ReloadSound2 = {
{Delay=.1,Sound="3088083421/wep/reload/snip_clipout.ogg"},
{Delay=1,Sound="3088083421/wep/reload/snip_clipin.ogg"},
{Delay=1.7,Sound="3088083421/wep/reload/snip_boltpull.ogg"}
}
SWEP.ViewModelBoneMods = {
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -2.605, 12.918), angle = Angle(0, 0, 0), size = Vector(0.347, 0.164, 0.765), color = Color(255, 157, 52, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 5.276, -5.897), angle = Angle(0, 0, 0), size = Vector(0.126, 0.126, 0.296), color = Color(85, 85, 112, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -3.895, 21.176), angle = Angle(0, 0, 0), size = Vector(0.126, 0.214, 0.804), color = Color(186, 172, 173, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, -1.601, -3.034), angle = Angle(0, 0, -45), size = Vector(0.151, 0.375, 0.151), color = Color(85, 85, 112, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -4.457, 29.545), angle = Angle(0, 0, 0), size = Vector(0.145, 0.145, 0.962), color = Color(255, 255, 0, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -5.481, 12.079), angle = Angle(0, 0, 0), size = Vector(0.352, 0.157, 0.49), color = Color(255, 255, 0, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -6.251, 9.876), angle = Angle(0, 0, 0), size = Vector(0.207, 0.19, 0.638), color = Color(81, 107, 127, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, -4.797, -1.678), angle = Angle(0, 0, 0), size = Vector(0.126, 0.246, 1.373), color = Color(255, 134, 42, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -4.718, 6.53), angle = Angle(0, 0, 0), size = Vector(0.123, 0.123, 0.194), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, -1.601, 2.581), angle = Angle(0, 0, 45), size = Vector(0.151, 0.375, 0.151), color = Color(170, 153, 187, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, -3.248, -7.876), angle = Angle(0, 0, 0), size = Vector(0.13, 0.207, 0.428), color = Color(221, 134, 17, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -4.498, 12.17), angle = Angle(0, 0, 0), size = Vector(0.307, 0.308, 0.857), color = Color(255, 183, 52, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.605, 12.918), angle = Angle(0, 0, 0), size = Vector(0.347, 0.164, 0.765), color = Color(255, 157, 52, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.165, 1.057, 1.279), angle = Angle(0, -90, -90), size = Vector(0.126, 0.126, 0.296), color = Color(85, 85, 112, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.895, 21.176), angle = Angle(0, 0, 0), size = Vector(0.126, 0.214, 0.804), color = Color(186, 172, 173, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.601, -3.034), angle = Angle(0, 0, -45), size = Vector(0.151, 0.375, 0.151), color = Color(85, 85, 112, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -4.457, 29.545), angle = Angle(0, 0, 0), size = Vector(0.145, 0.145, 0.962), color = Color(255, 255, 0, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -5.481, 12.079), angle = Angle(0, 0, 0), size = Vector(0.352, 0.157, 0.49), color = Color(255, 255, 0, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -6.251, 9.876), angle = Angle(0, 0, 0), size = Vector(0.207, 0.19, 0.638), color = Color(81, 107, 127, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -4.797, -1.678), angle = Angle(0, 0, 0), size = Vector(0.126, 0.246, 1.373), color = Color(255, 134, 42, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -4.718, 6.53), angle = Angle(0, 0, 0), size = Vector(0.123, 0.123, 0.194), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.248, -7.876), angle = Angle(0, 0, 0), size = Vector(0.13, 0.207, 0.428), color = Color(221, 134, 17, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.601, 2.581), angle = Angle(0, 0, 45), size = Vector(0.151, 0.375, 0.151), color = Color(170, 153, 187, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -4.498, 12.17), angle = Angle(0, 0, 0), size = Vector(0.307, 0.308, 0.857), color = Color(255, 183, 52, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} }
}
function SWEP:FireB()
local ply=self.Owner
	if SERVER then
	local e=ents.Create("obj_308_sbullet")
	local pos = ply:GetShootPos()+ply:GetForward()*20+ply:GetRight()*3+ply:GetUp()*-3
	e:SetAngles(ply:GetAimVector():Angle())
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	e:Ignite(30)
	e:SetGravity(.1)
	util.SpriteTrail(e,0,Color(255,255,0),true,.1,.1,.5,.3,"trails/smoke.vmt")
	e:SetNoDraw(true)
	ply:DeleteOnRemove(e)
	e:SetVelocity(ply:GetForward()*3000+ply:GetVelocity()/5)
	e.DMG=20
	end
end
function SWEP:IfOwnHurt()
self.Owner:EmitSound("3088083421/soulknight/hurt.mp3")
end