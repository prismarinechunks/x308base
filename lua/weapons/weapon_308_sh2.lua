SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["sh"].."+"
SWEP.Category = "x308 Base | Melee"
SWEP.HoldType = "ar2"
SWEP.Multiple=5

SWEP.ViewModel = "models/weapons/c_crossbow.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.ShowWorldModel=false
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.Melee1=30
SWEP.MeleeAT=.01
SWEP.MeleeOT=.12
SWEP.RangeD=110
SWEP.TextColor=Color(255,0,255)

SWEP.MeleeSW={{Sound="weapons/knife/knife_hitwall1.wav",Pitch=80}}
SWEP.CenterPos = Vector(-2,70,1)
SWEP.ViewModelBoneMods = {["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
SWEP.VElements = {
	["1++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Base", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, -120, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Base", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, 0, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Base", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, 180, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Base", rel = "1", pos = Vector(0, 0, 80), angle = Angle(0, 0, 0), size = Vector(0.136, 0.136, 0.179), color = Color(61, 63, 71, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Base", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, -60, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Base", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, 60, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1+++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Base", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, -60, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Base", rel = "", pos = Vector(0, -15.81, -54.456), angle = Angle(0, 0, 0), size = Vector(0.072, 0.072, 2.045), color = Color(86, 91, 94, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Base", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, 120, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, -120, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-51.355, 0.503, 3.98), angle = Angle(0, 90, 97.041), size = Vector(0.072, 0.072, 2.045), color = Color(86, 91, 94, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, 180, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 80), angle = Angle(0, 0, 0), size = Vector(0.136, 0.136, 0.179), color = Color(61, 63, 71, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, 60, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, 120, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1+++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, -60, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1++++++++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, -60, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0, 0, 45), angle = Angle(0, 0, 90), size = Vector(0.136, 0.776, 0.039), color = Color(255, 0, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} }
}
SWEP.ShowWorldModel = false
SWEP.MLoopT=CurTime()
SWEP.ViewModelBoneMods = {
	["ValveBiped.Crossbow_base"] = { scale = Vector(1, 1, 1), pos = Vector(0, -30, 0), angle = Angle(0, 0, 0) }
}
local SpinAng = 0
local SpinAccel = 0
SWEP.ISound=nil
function SWEP:Melee(th,ty,to)
local a=self.HMath
self.Meleeing=1
self.Owner:SetAnimation(PLAYER_ATTACK1)
if to then
self:SetNextPrimaryFire(CurTime()+to)
end
timer.Simple(th,function()if !IsValid(self)||!self:CUnHos(a)then return end
self.Meleeing=nil
self:MeleeATT(ty)
self:CustomATT(ty)
end)
end
function SWEP:CustomThink()
local p=self.Owner
	if self:GetNextSecondaryFire()<CurTime()then
	SpinAccel = math.Approach(SpinAccel, 1, 10*FrameTime())
	self:SetNextPrimaryFire(CurTime()+.2)
	self.SightPos2 = Vector(-2,140,1)
	self.HoldType="shotgun" 
	if self.ISound then
	self.ISound=nil
	self:EmitSound("3088083421/wep/melee/thanatos9_changeb_1.wav")
	end
	elseif self:GetNextSecondaryFire()>CurTime()+5 then
	self.HoldType="ar2"
	self.Meleeing=1
	self:EmitSound("3088083421/wep/melee/thanatos9_shootb_loop.wav")
	SpinAccel = math.Approach(SpinAccel, 50, 150*FrameTime())
	self.SightPos2 = Vector(-6,-20,1)
	self.Owner:ViewPunch(Angle(math.random(-.1,.1),math.random(-.1,.1),math.random(-.1,.1)))
	elseif self.Meleeing then
	self.HoldType="passive"
	self.ISound=1
	self.Meleeing=nil
	self.SightPos2 = Vector(-4,70,1)
	self:StopSound("3088083421/wep/melee/thanatos9_shootb_loop.wav")
	self:EmitSound("3088083421/wep/melee/thanatos9_shootb_end.wav")
	else
	self:SetNextPrimaryFire(CurTime()+.2)
	SpinAccel = math.Approach(SpinAccel, .2, 30*FrameTime())
	end
	if CLIENT then
	SpinAng = SpinAng + SpinAccel
	self.VElements["1+"].angle.y = SpinAng
	self.WElements["1+"].angle.y = SpinAng
	end
self:SetNetworkedInt( "Spin",SpinAccel )
if self:GetNextPrimaryFire()<CurTime()then
self:PrimaryAttack()
end
end
function SWEP:OnDrop2()
if self:GetNextSecondaryFire()>CurTime()then
self:Remove()
end
end
function SWEP:SecondaryAttack()
self.Meleeing=1
self.BoltPullTimer=CurTime()+8
self:SetNextSecondaryFire(CurTime()+8)
self:SetNextPrimaryFire(CurTime()+.1)
end
function SWEP:CustomInit()
self:DrawShadow(false)
end
function SWEP:MeleeSound()end