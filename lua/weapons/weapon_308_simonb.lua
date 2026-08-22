SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["simonb"]
SWEP.Category = "X Base | Misc"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.ShowWorldModel=false
SWEP.AdminOnly=true
SWEP.CDWInfoBox=true
SWEP.Author="QQ3088083421\n\n\nBUG书上线"

SWEP.Primary.ClipSize=1
SWEP.Primary.DefaultClip=1
SWEP.Primary.Automatic=true
SWEP.Primary.Ammo="none"
SWEP.DoFireAnimEvent=false
SWEP.AmmoHUD=2
SWEP.DrawCross=false
SWEP.SA_IsSight=false
SWEP.Slot=2
SWEP.SlotPos=0
SWEP.Spawnable=true
SWEP.PA_TakeAmmo=0
SWEP.PA_AnimRate=.1
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound={"ambient/fire/gascan_ignite1.wav","ambient/fire/ignite.wav","ambient/fire/mtov_flame2.wav"},Volume=36}
}
SWEP.PA_Delay=.05
SWEP.PA_Recoil=0
SWEP.IdleAnim="idle1"
SWEP.CenterPos=Vector(-6.2,40,-4)
SWEP.ViewModelBoneMods = {
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-0.382, -5.139, 5.677), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-32.749, 0, -9.2) },
	["ValveBiped.Bip01_R_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 37.73, 0) },
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-21.272, -14.827, 11.414) },
	["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.574, 4.769, -12.129), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 15.413, 12.657) }
}
SWEP.VElements = {
	["2"] = { type = "Quad", bone = "", rel = "1+",pos=Vector(0,-1,-.08),angle=Angle(0,180,180),size=.012,draw_func=function()draw.SimpleText("How to cook","308wepbase",0,0,color_white,TEXT_ALIGN_CENTER,TEXT_ALIGN_TOP)end},
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(3, 0, 1.121), angle = Angle(20.093, 0, 0), size = Vector(0.546, 0.649, 0.009), color = Color(74, 51, 26, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(3, 0, 1.358), angle = Angle(20.093, 0, 0), size = Vector(0.449, 0.644, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(-3, 0, 1.121), angle = Angle(-20.094, 0, 0), size = Vector(0.546, 0.649, 0.009), color = Color(74, 51, 26, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(-3, 0, 1.358), angle = Angle(-20.094, 0, 0), size = Vector(0.449, 0.644, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.043, 0.649, 0.009), color = Color(74, 51, 26, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["2"] = { type = "Quad", bone = "", rel = "1+",pos=Vector(0,-1,-.08),angle=Angle(0,180,180),size=.012,draw_func=function()draw.SimpleText("How to cook","308wepbase",0,0,color_white,TEXT_ALIGN_CENTER,TEXT_ALIGN_TOP)end},
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(3, 0, 1.121), angle = Angle(20.093, 0, 0), size = Vector(0.546, 0.649, 0.009), color = Color(74, 51, 26, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-3, 0, 1.358), angle = Angle(-20.094, 0, 0), size = Vector(0.449, 0.644, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-3, 0, 1.121), angle = Angle(-20.094, 0, 0), size = Vector(0.546, 0.649, 0.009), color = Color(74, 51, 26, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.373, 6.355, -0.676), angle = Angle(0, -93.969, -91.395), size = Vector(0.043, 0.649, 0.009), color = Color(74, 51, 26, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(3, 0, 1.358), angle = Angle(20.093, 0, 0), size = Vector(0.449, 0.644, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} }
}
function SWEP:Reload()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayAnim("reload",.3)end
end
function SWEP:FireB()
local ply=self.Owner
	if SERVER then
	local e=ents.Create("obj_308_simonb")
	local pos=ply:GetShootPos()+self:GetUp()*-5+self:GetForward()*20
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	e:GetPhysicsObject():SetVelocity(ply:GetAimVector()*800+ply:GetVelocity())
	SafeRemoveEntityDelayed(e,.5)
	end
end
