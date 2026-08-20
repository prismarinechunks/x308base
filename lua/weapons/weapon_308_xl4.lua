SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "XL-4"
SWEP.HoldType = "rpg"
SWEP.Category = "x308 Base | Guns"
SWEP.AmmoHUD=1
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.ViewModel = "models/weapons/c_crossbow.mdl"
SWEP.WorldModel = "models/weapons/w_irifle.mdl"
SWEP.ShowWorldModel = false
SWEP.ClipExtraBullet = false
SWEP.Primary.ClipSize = 50
SWEP.Primary.DefaultClip = 50
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "XBowBolt"
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.PA_Delay = .1
SWEP.ReloadSound = {
{Sound="weapons/357/357_reload4.wav",Pitch=50}
}
SWEP.ReloadSound2 = {
{Sound="npc/sniper/reload1.wav",Pitch=110}
}
SWEP.ReloadAnimD = {
{Anim="holster",Time=.9}
}
SWEP.ReloadAnimD2 = {
{Anim="holster",Time=1.5}
}
SWEP.PA_VeloS = 500
SWEP.SA_SightFOV = 30
SWEP.SA_Delay = .4

SWEP.TextType="308CS"
SWEP.Text="m"
SWEP.Text_Auto="Orb"
SWEP.TextColor=Color(10,100,100)
SWEP.StopRAnimTime = 2.6
SWEP.ScientReload = true
SWEP.DrawTime = .5
SWEP.ReloadTime = 1
SWEP.ReloadTime2 = 1.5
SWEP.ClipoutTime = .2
SWEP.ClipinTime = .6

SWEP.CenterPos = Vector(0,40,-1)
SWEP.SightPos = Vector(-8, 30, 0)

SWEP.ShowWorldModel = false
SWEP.ViewModelBoneMods = {
	["ValveBiped.Crossbow_base"] = { scale = Vector(1, 1, 1), pos = Vector(0, -30, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["3"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Crossbow_base", rel = "1", pos = Vector(0, -2.859, -10.131), angle = Angle(0, 0, 0), size = Vector(0.089, 0.089, 0.07), color = Color(153, 143, 134, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["4"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Crossbow_base", rel = "1", pos = Vector(0, -5, 1.25), angle = Angle(0, 0, 0), size = Vector(0.094, 0.108, 0.247), color = Color(110, 116, 121, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["5"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Crossbow_base", rel = "1", pos = Vector(0, 2.5, -8.924), angle = Angle(0, 0, -54.799), size = Vector(0.059, 0.104, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Crossbow_base", rel = "1", pos = Vector(0, -1, 1.25), angle = Angle(0, 0, 0), size = Vector(0.094, 0.108, 0.247), color = Color(110, 116, 121, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["6"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Crossbow_base", rel = "1", pos = Vector(0, -7.184, 2.605), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["9"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Crossbow_base", rel = "1", pos = Vector(0, -2.859, -3.355), angle = Angle(0, 0, 0), size = Vector(0.159, 0.252, 0.159), color = Color(110, 116, 121, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2"] = { type = "Quad", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -6.772, -3.375), angle = Angle(0, 180, 180), size = 0.023, draw_func = nil},
	["7"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Crossbow_base", rel = "1", pos = Vector(0, -2.859, -10.131), angle = Angle(0, 0, 0), size = Vector(0.104, 0.104, 0.104), color = Color(0, 255, 0, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(0, -29.386, -1.711), angle = Angle(0, 0, 0), size = Vector(0.109, 0.079, 0.209), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["8"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Crossbow_base", rel = "1", pos = Vector(0, -2.859, -7.237), angle = Angle(0, 0, 0), size = Vector(0.159, 0.181, 0.159), color = Color(110, 116, 121, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["9"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.859, -10.131), angle = Angle(0, 0, 0), size = Vector(0.089, 0.089, 0.07), color = Color(153, 143, 134, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["8"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -5, 1.25), angle = Angle(0, 0, 0), size = Vector(0.094, 0.108, 0.247), color = Color(110, 116, 121, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["7"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.5, -8.924), angle = Angle(0, 0, -54.799), size = Vector(0.059, 0.104, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1, 1.25), angle = Angle(0, 0, 0), size = Vector(0.094, 0.108, 0.247), color = Color(110, 116, 121, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["6"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.859, -7.237), angle = Angle(0, 0, 0), size = Vector(0.159, 0.181, 0.159), color = Color(110, 116, 121, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["5"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.859, -3.355), angle = Angle(0, 0, 0), size = Vector(0.159, 0.252, 0.159), color = Color(110, 116, 121, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["4"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.859, -10.131), angle = Angle(0, 0, 0), size = Vector(0.104, 0.104, 0.104), color = Color(0, 255, 0, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.369, 0.643, -3.029), angle = Angle(0, -91.971, -102.584), size = Vector(0.109, 0.079, 0.209), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -7.184, 2.605), angle = Angle(0, 0, 0), size = Vector(0.037, 0.037, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
function SWEP:CustomThink()

if self.Owner:IsValid()then
	if CLIENT then
	self.VElements["2"].draw_func=function(weapon)
	draw.SimpleText(self:Clip1(),"308wepbase",0,0,Color(1,255,128,255),TEXT_ALIGN_CENTER,TEXT_ALIGN_TOP)
	end
	end
	if self.Owner:KeyDown(IN_ATTACK)and !self:IsReloading()and self:CanPrimaryAttack()then
	self:EmitSound("hl1/ambience/alien_minddrill.wav",100,250)else
	self:StopSound("hl1/ambience/alien_minddrill.wav")end
end

end
function SWEP:CustomPrimary()
	if !SERVER then return end
	local vm, muzzle, attach
	vm = self.Owner:GetViewModel()
	local trace = self.Owner:GetEyeTrace()
	attach = vm:LookupAttachment("muzzle")
	vstr = tostring(self.Weapon)
	local MuzzlePos = self.Owner:GetShootPos() + (self.Owner:GetRight() * 5.9) + (self.Owner:GetUp() * -4.8) + (self.Owner:GetForward() *50)
	if self.Scope==1 then MuzzlePos = self.Owner:GetShootPos()+self.Owner:GetUp()*-3+self.Owner:GetForward()*30 end
	local hit = MuzzlePos+self.Owner:GetForward()*99999
	self:lase(vstr, attach, MuzzlePos, hit, 1)
	self:lase(vstr, attach, MuzzlePos, hit, 0)
end
function SWEP:lase(par, stat, from, to, noise)
	if SERVER then
	 
	local entItem = ents.Create ("info_target")
	local realName = "entItem"..tostring(self.Owner:GetName())..self.HMath
		entItem:SetKeyValue("targetname", realName)
	entItem:Spawn()
	local beam = ents.Create("env_laser")
	beam:SetOwner(self.Owner)
		beam:SetKeyValue("renderamt", "255")
		beam:SetKeyValue("rendercolor", "0 255 0")
		beam:SetKeyValue("texture", "sprites/laserbeam.spr")
		beam:SetKeyValue("TextureScroll", "14")
		beam:SetKeyValue("targetname", "beam" )
		beam:SetKeyValue("renderfx", "2")
		beam:SetKeyValue("width", ".9")
		beam:SetKeyValue("dissolvetype", "0")
		beam:SetKeyValue("damage", "150")
		beam:SetKeyValue("EndSprite", "")
		beam:SetKeyValue("LaserTarget", realName)//"entItem")
		beam:SetKeyValue("TouchType", "2")
		beam:SetKeyValue("NoiseAmplitude", noise)
		beam:SetKeyValue("spawnflags", "32" )
	beam:Spawn()

	beam:Fire("TurnOn", "", 0.01)
	beam:Fire("kill", "", .2)
	entItem:SetPos(to)
	entItem:Fire("kill", "",.2)
	beam:SetPos(from)
	end
end
hook.Add("EntityTakeDamage","weapon308xl88",function(ent,d)
if d:GetAttacker():GetClass()=="env_laser" and d:GetAttacker().Owner==ent then d:SetDamage(0)
elseif d:GetAttacker():GetClass()=="env_laser" and IsValid(d:GetAttacker().Owner)then
local ply=d:GetAttacker().Owner
d:SetAttacker(ply)d:SetInflictor(ply:GetActiveWeapon()or ply)
end
end)
