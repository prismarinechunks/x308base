SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "XL-9"
SWEP.HoldType = "rpg"
SWEP.Category = "x308 Base | Guns"
SWEP.AmmoHUD=1
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable=true
SWEP.AdminOnly=true
SWEP.PA_Sound = ""
SWEP.ViewModel = "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"
SWEP.ShowWorldModel = false
SWEP.Primary.ClipSize=1
SWEP.Primary.DefaultClip=1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo="none"
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.PA_Delay = 0
SWEP.PA_Sound2 = {
{Sound="3088083421/ray2.ogg",Volume=0,Pitch=90},
{Sound="3088083421/ray2.ogg",Volume=511,Pitch=70}
}
SWEP.PA_VeloS = 500
SWEP.DrawAnim = "awm_draw"
SWEP.SA_IsSight=false

SWEP.TextType="308CS"
SWEP.Text="r"
SWEP.Text_Auto="Orb"
SWEP.TextColor=Color(250,100,0)
SWEP.StopRAnimTime = 2.6
SWEP.NormalDraw = true
SWEP.DrawTime = .5

SWEP.CenterPos = Vector(0,30,0)
SWEP.ViewModelBoneMods = {
	["v_weapon.awm_parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["3++"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_Spine4", rel = "2+", pos = Vector(0, 3.661, -22.723), size = { x = 4.259, y = 4.259 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 1.496, -26.455), angle = Angle(0, 0, 0), size = Vector(0.085, 0.041, 0.588), color = Color(183, 188, 186, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 0.075, -10.2), angle = Angle(0, 0, 0), size = Vector(0.104, 0.104, 0.356), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -0.972, -26.455), angle = Angle(0, 0, 0), size = Vector(0.085, 0.041, 0.588), color = Color(183, 188, 186, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 1.847, -7.816), angle = Angle(0, 0, 0), size = Vector(0.125, 0.075, 0.202), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["4"] = { type = "Quad", bone = "ValveBiped.Bip01_Spine4", rel = "2++++", pos = Vector(0.483, 0.2, 0.6), angle = Angle(-90, 0, 0), size = 0.015, draw_func = nil},
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(-2.993, -0.783, 0.635), angle = Angle(90, 0, 0), size = Vector(0.009, 0.135, 0.158), color = Color(0, 195, 211, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_Spine4", rel = "2+", pos = Vector(0, 3.348, -9.542), size = { x = 6.396, y = 6.396 }, color = Color(0, 196, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 3.549, 2.706), angle = Angle(0, 0, 11.112), size = Vector(0.081, 0.072, 0.492), color = Color(206, 209, 243, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(-2.455, -1.565, 0.551), angle = Angle(90, 0, 0), size = Vector(0.027, 0.021, 0.241), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_Spine4", rel = "2+", pos = Vector(0, 0, 0), size = { x = .01, y = .01 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 0.075, -13.506), angle = Angle(0, 0, 0), size = Vector(0.1, 0.1, 0.314), color = Color(155, 155, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, 1.567, 4.743), angle = Angle(0, 0, 64.19), size = Vector(0.081, 0.123, 0.116), color = Color(49, 67, 249, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -1.739, -26.223), angle = Angle(0, 0, 0), size = Vector(0.104, 0.045, 0.728), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.awm_parent", rel = "", pos = Vector(0, -4.605, -4.626), angle = Angle(0, 0, 0), size = Vector(0.14, 0.173, 0.23), color = Color(125, 125, 115, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/misc/platehole4x4.mdl", bone = "v_weapon.awm_parent", rel = "1", pos = Vector(0, -3.287, -3.109), angle = Angle(0, 0, 0), size = Vector(0.014, 0.014, 2.846), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["3++"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_R_Hand", rel = "2+", pos = Vector(0, 3.661, -22.723), size = { x = 4.259, y = 4.259 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.496, -26.455), angle = Angle(0, 0, 0), size = Vector(0.085, 0.041, 0.588), color = Color(183, 188, 186, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.075, -10.2), angle = Angle(0, 0, 0), size = Vector(0.104, 0.104, 0.356), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.972, -26.455), angle = Angle(0, 0, 0), size = Vector(0.085, 0.041, 0.588), color = Color(183, 188, 186, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.847, -7.816), angle = Angle(0, 0, 0), size = Vector(0.125, 0.075, 0.202), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-2.993, -0.783, 0.635), angle = Angle(90, 0, 0), size = Vector(0.009, 0.135, 0.158), color = Color(0, 195, 211, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 3.549, 2.706), angle = Angle(0, 0, 11.112), size = Vector(0.081, 0.072, 0.492), color = Color(206, 209, 243, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(8.572, 0.973, -4.757), angle = Angle(0, 90, -80), size = Vector(0.14, 0.173, 0.23), color = Color(125, 125, 115, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.075, -13.506), angle = Angle(0, 0, 0), size = Vector(0.1, 0.1, 0.314), color = Color(155, 155, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["3"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_R_Hand", rel = "2+", pos = Vector(0, 0, 0), size = { x = 0.182, y = 0.182 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.739, -26.223), angle = Angle(0, 0, 0), size = Vector(0.104, 0.045, 0.728), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.567, 4.743), angle = Angle(0, 0, 64.19), size = Vector(0.081, 0.123, 0.116), color = Color(49, 67, 249, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-2.455, -1.565, 0.551), angle = Angle(90, 0, 0), size = Vector(0.027, 0.021, 0.241), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+"] = { type = "Sprite", sprite = "sprites/orangecore1", bone = "ValveBiped.Bip01_R_Hand", rel = "2+", pos = Vector(0, 3.348, -9.542), size = { x = 6.396, y = 6.396 }, color = Color(0, 196, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["2+"] = { type = "Model", model = "models/hunter/misc/platehole4x4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.287, -3.109), angle = Angle(0, 0, 0), size = Vector(0.014, 0.014, 2.846), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
function SWEP:CustomThink()
if self.Owner:IsValid()then
if self.Owner:KeyDown(IN_ATTACK)then
self:SetNWInt("Power",self:GetNWInt("Power")+.0005)
if self.Owner:KeyDown(IN_RELOAD)then self:SetNWInt("Power",self:GetNWInt("Power")+.0035)end
self:EmitSound("items/suitchargeok1.wav",20+self:GetNWInt("Power")*100,50+self:GetNWInt("Power")*200)
elseif !self.Owner:KeyDown(IN_RELOAD)then
self:SetNWInt("Power",Lerp(.1,self:GetNWInt("Power"),0))
self:StopSound("items/suitchargeok1.wav")
self:StopSound("ambient/energy/weld1.wav")
end
self:SetClip1(1+math.floor(self:GetNWInt("Power")*400))
	if CLIENT then
	local m=math.Rand(.5,1.5)*self:GetNWInt("Power")*5
	local v=VectorRand()*m
	self.ViewModelBoneMods["ValveBiped.Bip01_Spine4"]={scale=Vector(1,1,1),pos=v,angle=Angle()}
	self.ViewModelBoneMods["ValveBiped.Bip01_Spine4"]={scale=Vector(1,1,1),pos=v,angle=Angle()}
	self.ViewModelBoneMods["v_weapon.awm_parent"]={scale=Vector(.01,.01,.01),pos=v,angle=Angle()}
	self.VElements["3++"].size={x=2*self:GetNWInt("Power")*50,y=2*self:GetNWInt("Power")*50}
	self.VElements["1++"].pos=Vector(0,.075,-25)*self:GetNWInt("Power")*4
	self.VElements["1++"].size=Vector(.2,.2,.5)*self:GetNWInt("Power")*4
	self.VElements["4"].draw_func=function(weapon)
	draw.SimpleText(self:Clip1().."/100","308wepbase",0,0,Color(2,127,255,255),TEXT_ALIGN_CENTER,TEXT_ALIGN_TOP)
	end
	end
end

end
function SWEP:Reload()
self:EmitSound("ambient/energy/weld1.wav",50+self:GetNWInt("Power")*100,50+self:GetNWInt("Power")*200)
end
function SWEP:BeforePA()
if self:Clip1()>100 then
self:SetNWInt("Power",0)else return 1
end
end
function SWEP:CustomPrimary()
self:PlayAnim("awm_fire",.5,.5)
self.Owner:ScreenFade(SCREENFADE.IN,Color(255,128,0,145),.5,0)
local v=Vector(55,55,55)local v2=self.Owner:GetShootPos()
local t=util.TraceHull({start=v2,endpos=v2+self.Owner:GetAimVector()*30000,filter=function(e)
if e==self.Owner then return end
if IsValid(e)then
local d=DamageInfo()d:SetDamageType(DMG_BLAST)d:SetDamage(99999)d:SetDamageForce(Vector())d:SetAttacker(self.Owner)e:TakeDamageInfo(d)return end
end,
ignoreworld=true,
mins=-v,
maxs=v,
mask=MASK_SHOT_HULL})
	if !SERVER then return end
	local vm, muzzle, attach
	vm = self.Owner:GetViewModel()
	local trace = self.Owner:GetEyeTrace()
	attach = vm:LookupAttachment("muzzle")
	vstr = tostring(self.Weapon)
	local MuzzlePos = self.Owner:GetShootPos() + (self.Owner:GetRight() * 5.9) + (self.Owner:GetUp() * -3.9) + (self.Owner:GetAimVector() *50)
	if self.Scope==1 then MuzzlePos = self.Owner:GetShootPos()+self.Owner:GetUp()*-2+self.Owner:GetAimVector()*30 end
	local hit = MuzzlePos+self.Owner:GetAimVector()*99999
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
		beam:SetKeyValue("rendercolor", "0 125 255")
		beam:SetKeyValue("texture", "sprites/laserbeam.spr")
		beam:SetKeyValue("TextureScroll", "54")
		beam:SetKeyValue("targetname", "beam" )
		beam:SetKeyValue("renderfx", "2")
		beam:SetKeyValue("width", "45")
		beam:SetKeyValue("dissolvetype", "0")
		beam:SetKeyValue("damage", "999")
		beam:SetKeyValue("EndSprite", "")
		beam:SetKeyValue("LaserTarget", realName)//"entItem")
		beam:SetKeyValue("TouchType", "2")
		beam:SetKeyValue("NoiseAmplitude", noise)
		beam:SetKeyValue("spawnflags", "32" )
	beam:Spawn()

	beam:Fire("TurnOn", "", 0.01)
	beam:Fire("kill", "",.7)
	entItem:SetPos(to)
	entItem:Fire("kill", "",.7)
	beam:SetPos(from)
	end
end
