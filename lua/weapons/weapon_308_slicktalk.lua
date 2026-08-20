SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["slicktalk"]
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/weapons/cstrike/c_smg_tmp.mdl"
SWEP.WorldModel = "models/weapons/w_smg_tmp.mdl"
SWEP.ShowWorldModel = false
SWEP.HIGHPINGWep=true

SWEP.Primary.ClipSize = 50
SWEP.Primary.DefaultClip = 50
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/physcannon/energy_sing_explosion2.wav"
SWEP.PA_Delay = .05
SWEP.PA_Recoil = .2
SWEP.PA_AimRecoil = .18
SWEP.SA_SightFOV = 70

SWEP.IdleAnim = "idle1"
SWEP.SA_SightS="weapons/physcannon/physcannon_drop.wav"
SWEP.SA_SightS2="weapons/physcannon/physcannon_claws_close.wav"
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 1.8
SWEP.ReloadTime = 1.6
SWEP.ClipoutTime = .4
SWEP.ClipinTime = 1.3
SWEP.PA_DryFireSound = "weapons/physcannon/physcannon_dryfire.wav"
SWEP.BTime = 1.5
SWEP.BSound = {{Delay=0,Sound="weapons/physcannon/physcannon_charge.wav"}}
SWEP.ReloadSound = {
{Delay=0,Sound="weapons/c4/c4_click.wav"},
{Delay=.1,Sound="3088083421/pcv_vest.wav"}
}
SWEP.ReloadSound2 = {
{Delay=0,Sound="weapons/c4/c4_click.wav"},
{Delay=.1,Sound="3088083421/pcv_vest.wav"},
{Delay=1.5,Sound="weapons/ar2/ar2_reload_push.wav"}
}
SWEP.ReloadTime2 = 1.6
SWEP.SightPos = Vector(-6.8, 130, -1)
SWEP.CenterPos = Vector(0,110,-2)

SWEP.ViewModelBoneMods = {
	["v_weapon.TMP_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["7"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.TMP_Parent", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(0, 0, 21.701), size = Vector(0.177, 0.177, 0.697), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.TMP_Parent", rel = "1", pos = Vector(0, 3.604, 2.165), angle = Angle(0, 0, -7.513), size = Vector(0.112, 0.472, 0.206), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["6"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.TMP_Parent", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(0, 0, -21.702), size = Vector(0.177, 0.177, 0.697), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.TMP_Parent", rel = "1", pos = Vector(0, 7.053, 0), angle = Angle(0, 0, 0), size = Vector(0.128, 0.243, 1.146), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["4"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.TMP_Parent", rel = "1", pos = Vector(0, 4.004, -3.559), angle = Angle(0, 0, 8), size = Vector(0.097, 0.479, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["8"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.TMP_Parent", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(-21.702, 0, 0), size = Vector(0.177, 0.177, 0.697), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["9"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.TMP_Parent", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(21.701, 0, 0), size = Vector(0.177, 0.177, 0.697), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.TMP_Parent", rel = "", pos = Vector(0, -3.569, -0.16), angle = Angle(0, 0, 0), size = Vector(0.128, 0.243, 1.146), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["5"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.TMP_Parent", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(0, 45, 0), size = Vector(0.177, 0.177, 0.697), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["7"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(0, 0, 21.701), size = Vector(0.177, 0.177, 0.697), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5, 1, -4), angle = Angle(0, 90, -80), size = Vector(0.128, 0.243, 1.146), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["6"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(0, 0, -21.702), size = Vector(0.177, 0.177, 0.697), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 7.053, 0), angle = Angle(0, 0, 0), size = Vector(0.128, 0.243, 1.146), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["9"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(-21.702, 0, 0), size = Vector(0.177, 0.177, 0.697), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["5"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(0, 45, 0), size = Vector(0.177, 0.177, 0.697), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["8"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.164, -12.763), angle = Angle(21.701, 0, 0), size = Vector(0.177, 0.177, 0.697), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["4"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 4.004, -3.559), angle = Angle(0, 0, 8), size = Vector(0.097, 0.479, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 3.604, 2.165), angle = Angle(0, 0, -7.513), size = Vector(0.112, 0.472, 0.206), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} }
}
function SWEP:FireB()
local ply=self.Owner
	if SERVER then
	self:SendWeaponAnim(self.PA_Anim)
	local e=ents.Create("obj_308_sbullet")
	local pos
	if self.Scope>0 then
	pos = ply:GetShootPos()+self:GetUp()*-5+self:GetForward()*40
	m=45
	else
	pos = ply:GetShootPos()+self:GetUp()*-5+self:GetForward()*30+self:GetRight()*5.5
	m=50
	end
	e:SetAngles(ply:GetAimVector():Angle())
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	ply:DeleteOnRemove(e)
	e:SetVelocity(ply:GetForward()*math.random(2000,2300)+ply:GetUp()*math.random(-m,m)+ply:GetRight()*math.random(-m,m)+ply:GetVelocity()/5)
	e:SetGravity(.05)
	end
end

function SWEP:CusHUD()
x = ScrW()/2
y = ScrH()/2
sw = surface.ScreenWidth()
sh = surface.ScreenHeight()
	if self.Scope==1 then
		surface.SetDrawColor(255,0,0,225)
		surface.DrawLine(x-50,y-50,x+50,y+50)
		surface.SetDrawColor(0,0,255,155)
		surface.DrawLine(x-50,y+50,x+50,y-50)
	end
end
