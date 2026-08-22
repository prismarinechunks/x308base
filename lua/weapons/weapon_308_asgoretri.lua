SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["asgorewep"]
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "melee2"
SWEP.RemoveOnDrop=true
SWEP.RemoveOnWorld=true

SWEP.UTWep=1
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.ShowWorldModel=false
SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"
SWEP.IdleAnimRate=0
SWEP.TextType="8bitoperator"
SWEP.Text="Asgore's Trident"
SWEP.TextColor=Color(255,0,0)
SWEP.Color=Color(255,0,0)
SWEP.Multiple=5
SWEP.X=42
SWEP.Y=42

SWEP.Melee1=35
SWEP.MeleeAT=.16
SWEP.MeleeOT=.5
SWEP.RangeD=100

SWEP.MeleeS={{Sound="3088083421/mg/asgore_slash.wav"}}
SWEP.MeleeS2={{Sound="3088083421/mg/asgore_slash.wav"}}
SWEP.CenterPos = Vector(2,20,-2)
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.929, -26.903, 0) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-10.801, -52.221, 0) },
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -29.425, 0) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(3.924, 2.881, 9.185) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(3.426, -3.498, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Finger22"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -52.852, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(1.271, -0.318, -0.271), angle = Angle(0, -0.542, -52.092) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 9.963, -75.704) },
	["ValveBiped.Bip01_R_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-23.937, 0, 0) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -44.507, 0) },
	["ValveBiped.Bip01_L_Finger12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -56.474, 0) }
}
SWEP.VElements = {
	["1+"] = { type = "Model", model = "models/xqm/CoasterTrack/track_guide.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(31.263, 0, 0.529), angle = Angle(90, 0, 0), size = Vector(0.009, 0.094, 0.386), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_phx/trains/medium_wheel_2.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(17.155, 0, 0.075), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 0.105), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_foliage/driftwood_01a.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0.862, -0.015, 8.937), angle = Angle(90, 0, 0), size = Vector(0.15, 0.029, 0.029), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(-45.392, 0, 0.561), angle = Angle(-90, 0, 0), size = Vector(0.054, 0.054, 0.753), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1+"] = { type = "Model", model = "models/xqm/CoasterTrack/track_guide.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(31.263, 0, 0.529), angle = Angle(90, 0, 0), size = Vector(0.009, 0.094, 0.386), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_foliage/driftwood_01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.072, 2.647, -8.5), angle = Angle(-95.729, 58.615, -27.282), size = Vector(0.15, 0.029, 0.029), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_phx/trains/medium_wheel_2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(17.155, 0, 0.075), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 0.105), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/misc/cone1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-45.392, 0, 0.561), angle = Angle(-90, 0, 0), size = Vector(0.054, 0.054, 0.753), color = Color(255, 0, 0, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} }
}
	if(CLIENT) then
	surface.CreateFont("8bitoperator", { 
		font = "8bitoperator JVE",
		size = 15 * ( ScrH() / 480 ), 
		weight = 500, 
		blursize = 0, 
		scanlines = 0, 
		antialias = false, 
		underline = false, 
		italic = false, 
		strikeout = false, 
		symbol = false, 
		rotary = false, 
		shadow = false, 
		additive = false, 
		outline = false, 
	})
	end
function SWEP:CustomATT()
if SERVER then
local e=ents.Create("obj_308ut_trislash")
e:SetPos(self.Owner:WorldSpaceCenter()+self.Owner:GetAimVector()*50)
e:SetParent(self)
e:SetModelScale(.75)
e.IsEffect=1
e:Spawn()
e:SetColor(Color(255,0,0,100))
SafeRemoveEntityDelayed(e,.3)
end
end
function SWEP:CustomThink()
if self:GetNextSecondaryFire()<CurTime()then
self:SetColor(Color(255,0,0))
if SERVER then
local o=self.Owner
if o:KeyDown(IN_USE)and o:GetEyeTrace().Hit then
local h=math.Clamp(o:Health(),1,o:GetMaxHealth())
h=.5+h/o:GetMaxHealth()/2
self.BoltPullTimer=CurTime()+h
self:SetNextPrimaryFire(CurTime()+h)
self:SetNextSecondaryFire(CurTime()+h)
local e=ents.Create("obj_308ut_asgore_")
e:SetPos(o:GetEyeTrace().HitPos+o:GetEyeTrace().HitNormal*60)
e:SetOwner(o)
e.HType=1
e.Dmg=25
e:Spawn()
end end
end
end
function SWEP:Reload()
--1.我要用EFFECT解决实体过多问题
--对了，Ice Flamethrower!Coldmilk的实体是怎么做到不卡顿的
if self:GetNextSecondaryFire()<CurTime()then
self.BoltPullTimer=CurTime()+.8
self:SetNextPrimaryFire(CurTime()+.8)
self:SetNextSecondaryFire(CurTime()+.8)
local p=self.Owner
if SERVER then
for i=1,5 do
timer.Simple(i*.1,function()if IsValid(self)and IsValid(p)then
local e=ents.Create("obj_308ut_dreemerball")
e:SetPos(p:EyePos()+p:GetAimVector()*-10+Vector(math.random(-20,20),math.random(-20,20),math.random(-20,20)))
e:SetOwner(p)
e.HType=1
e.Dmg=25
e:Spawn()
p:EmitSound("undertale/st.wav")
SafeRemoveEntityDelayed(e,3)
e:GetPhysicsObject():SetVelocity(p:GetAimVector()*math.random(600,800))
end end)
end
end
end
end
function SWEP:SecondaryAttack()
local p=self.Owner
local h=math.Clamp(p:Health(),1,p:GetMaxHealth())
local m=math.floor(7-h/p:GetMaxHealth()*5)
local function Se(t,f)local t2
if math.random(2)>1 then t2=1 end
timer.Simple(t,function()if IsValid(self)and IsValid(p)then
if f==m then
self:EmitSound("3088083421/mg/eyeflash_final.wav",511)f=.5 else
self:EmitSound("3088083421/mg/eyeflash.wav",511)f=.25 end
if t2 then
self:SetColor(Color(0,255,255))
else
self:SetColor(Color(255,128,0))
end
end end)
return t2
end
local function Att(t,h)
timer.Simple(t,function()if IsValid(self)and IsValid(p)then
p:SetAnimation(PLAYER_ATTACK1)self:PlayAnim("midslash2",2)self:EmitSound("3088083421/mg/asgore_slash.wav",511)
if SERVER then
local e=ents.Create("obj_308ut_trislash")
e:SetPos(p:EyePos()+p:GetAimVector()*10)
e:SetOwner(p)
e.TType=h
e.HType=1
e:Spawn()
SafeRemoveEntityDelayed(e,4)
e:GetPhysicsObject():SetVelocity(p:GetAimVector()*1500)
end
if h then
self:SetColor(Color(0,255,255))
self:PlayAnim("stab_miss",2)
else
self:SetColor(Color(255,128,0))
end
end end)
end
for i=1,m do
h=i/(m-1)+math.Clamp(m/2,0,1.45)
if m==2 then h=i/2+.5+math.Clamp(m/2,0,1.45)end
Att(h,Se(i/m,i))
end
self.BoltPullTimer=CurTime()+h+1
self:SetNextPrimaryFire(CurTime()+h+1)
self:SetNextSecondaryFire(CurTime()+h+1)
end
function SWEP:CustomInit()
self:DrawShadow(false)
self:SetClip1(0)
end
function SWEP:CustomEquip()
if !IsUT308(self.Owner)then self.Owner:SetArmor(self._AR)self.Owner:SetNWInt("Lvl",1)self.Owner.IsUT3088=1 end
end
function SWEP:MAnim(ty)
self:PlayAnim("midslash2",2)
end
SWEP._AT=80
SWEP._AR=80
function SWEP:CusHUD()
local x=ScrW()/2
local y=ScrH()/2
local tc=TEXT_ALIGN_CENTER
local tr=TEXT_ALIGN_RIGHT
local tl=TEXT_ALIGN_LEFT
local p=self.Owner
surface.SetDrawColor(255,255,255,255)
surface.DrawRect(ScrW()*.001,ScrH()*.705,ScrW()*.105,ScrH()*.16)
surface.SetDrawColor(0,0,0,255)
surface.DrawRect(ScrW()*.003,ScrH()*.71,ScrW()*.1,ScrH()*.15)
surface.SetDrawColor(255,255,255,255)
local c=Color(255,255,255,255)
surface.SetMaterial(Material("undertale/ui/abi_asgore_lmb.png","pixel"))surface.DrawTexturedRect(0,ScrH()*.4,100,100)
surface.SetMaterial(Material("undertale/ui/abi_asgore_e.png","pixel"))surface.DrawTexturedRect(0,ScrH()*.4-100,100,100)
surface.SetMaterial(Material("undertale/ui/abi_toriel_r.png","pixel"))surface.DrawTexturedRect(0,ScrH()*.4-200,100,100)
surface.SetMaterial(Material("undertale/ui/abi_asgore_rmb.png","pixel"))surface.DrawTexturedRect(0,ScrH()*.4+100,100,100)
draw.SimpleText("STAT", "8bitoperator", ScrW() * .01, ScrH() * .73,c,tl,tc)
draw.SimpleText("NEXT:?", "8bitoperator", ScrW() * .01, ScrH() * .77,c,tl,tc)
draw.SimpleText("AT "..self._AT.."(?)", "8bitoperator", ScrW() * .01, ScrH() * .8,c,tl,tc)
draw.SimpleText("DF "..p:Armor().."(0)", "8bitoperator", ScrW() * .01, ScrH() * .83,c,tl,tc)
draw.SimpleText("HP", "8bitoperator", ScrW() * .44, ScrH() * .8,c,tc,tc)
draw.SimpleText(p:Health()/5, "8bitoperator", ScrW() * .58, ScrH() * .8,c,tc,tc)
draw.SimpleText("/", "8bitoperator", ScrW() * .6, ScrH() * .8,c,tc,tc)
draw.SimpleText(p:GetMaxHealth()/5, "8bitoperator", ScrW() * .62, ScrH() * .8,c,tc,tc)
draw.SimpleText("LV ?", "8bitoperator", ScrW() * .38, ScrH() * .8,c,tc,tc)
draw.SimpleText("ASGORE", "8bitoperator", ScrW() * .3, ScrH() * .8,c,tc,tc)
local k=p.Undertale_KR or 0
local h=math.Clamp(p:Health()/p:GetMaxHealth(),0,1)
if k>0 then
surface.SetDrawColor(235,0,255,255)else
surface.SetDrawColor(255,0,0,255)end
surface.DrawRect(ScrW()*.45,ScrH()*.78,ScrW()*.1,ScrH()*.04)
surface.SetDrawColor(255,255,0,255)
surface.DrawRect(ScrW()*.45,ScrH()*.78,ScrW()*h*.1,ScrH()*.04)
end
function SWEP:IfOwnHurt(d)
local p=self.Owner
if d:GetDamage()>=p:Health()and p:Health()>1 and p:Armor()<1 then d:SetDamage(p:Health()-1)end
end
if CLIENT then
SWEP.vRenderOrder = nil
function SWEP:ViewModelDrawn()
		vm = self.Owner:GetViewModel()
		if !IsValid(vm) then return end
		if (!self.VElements) then return end
		self:UpdateBonePositions(vm)
		if (!self.vRenderOrder) then
			self.vRenderOrder = {}
			for k, v in pairs( self.VElements ) do
				if (v.type == "Model") then
					table.insert(self.vRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.vRenderOrder, k)
				end
			end
		end
		for k, name in ipairs( self.vRenderOrder ) do
			v = self.VElements[name]
			if (!v) then self.vRenderOrder = nil break end
			if (v.hide) then continue end
			model = v.modelEnt
			sprite = v.spriteMaterial
			if (!v.bone) then continue end
			pos, ang = self:GetBoneOrientation( self.VElements, v, vm )
			if (!pos) then continue end
			if (v.type == "Model" and IsValid(model)) then
				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				model:SetAngles(ang)
				matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				local c=self:GetColor()
				render.SetColorModulation(c.r/255,c.g/255,c.b/255)
				render.SetBlend(1)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
			end
		end
	end
	SWEP.wRenderOrder = nil
	function SWEP:DrawWorldModel()
		if (self.ShowWorldModel == nil or self.ShowWorldModel) then
			self:DrawModel()
		end
		if (!self.WElements) then return end
		if (!self.wRenderOrder) then
			self.wRenderOrder = {}
			for k, v in pairs( self.WElements ) do
				if (v.type == "Model") then
					table.insert(self.wRenderOrder, 1, k)end
			end
		end
		if (IsValid(self.Owner)) then
			bone_ent = self.Owner
		else
			// when the weapon is dropped
			bone_ent = self
		end
		for k, name in pairs( self.wRenderOrder ) do
			local v = self.WElements[name]
			if (!v) then self.wRenderOrder = nil break end
			if (v.hide) then continue end
			local pos, ang
			if (v.bone) then
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )
			else
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
			end
			if (!pos) then continue end
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			if (v.type == "Model" and IsValid(model)) then
				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				model:SetAngles(ang)
				matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				local c=self:GetColor()
				render.SetColorModulation(c.r/255,c.g/255,c.b/255)
				render.SetBlend(1)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
			end
		end
	end
end