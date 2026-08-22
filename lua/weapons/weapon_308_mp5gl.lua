SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "MP5 GL"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_smg_mp5.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/mp5navy/mp5-1.wav"
SWEP.PA_Damage = 25
SWEP.PA_TakeAmmo = 1
SWEP.PA_Delay = .07
SWEP.PA_Recoil = .6
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .015
SWEP.PA_AimRecoil = .54
SWEP.SA_SightFOV = 70

SWEP.TextType = "308CS"
SWEP.Text = "x"

SWEP.ReloadAnimRate=1.1
SWEP.ReloadAnim="reload1"
SWEP.BAnim="draw"
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 1.8
SWEP.ReloadTime = 1.9
SWEP.ClipoutTime = .5
SWEP.ClipinTime = 1.5
SWEP.ReloadTime2 = 2.6
SWEP.BoltPullTime=2.1
SWEP.SightPos = Vector(-5.35, 160, 2.45)
SWEP.CenterPos = Vector(-1,80,1)
SWEP.GLTSound = {{Sound="3088083421/m79_clipout.wav"},{Delay=.6,Sound="3088083421/m79_clipin.wav"},{Delay=1.63,Sound="3088083421/m79_clipon.wav"}}
SWEP.VElements = {
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.MP5_Parent", rel = "1", pos = Vector(0, -1.311, 4.442), angle = Angle(0, 0, 0), size = Vector(0.067, 0.067, 0.131), color = Color(110, 110, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/metalladder001.mdl", bone = "v_weapon.MP5_Parent", rel = "1", pos = Vector(-0.874, -5.904, 2.773), angle = Angle(90, 0, 90), size = Vector(0.035, 0.035, 0.025), color = Color(110, 110, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.MP5_Parent", rel = "", pos = Vector(0, -1.92, -18.178), angle = Angle(0, 0, 0), size = Vector(0.107, 0.107, 0.223), color = Color(110, 110, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.MP5_Parent", rel = "1", pos = Vector(-0.634, -2.618, 2.693), angle = Angle(90, 0, 90), size = Vector(0.035, 0.125, 0.059), color = Color(110, 110, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.311, 4.442), angle = Angle(0, 0, 0), size = Vector(0.067, 0.067, 0.131), color = Color(110, 110, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(25, 1.5, -7), angle = Angle(0, 88, -78.758), size = Vector(0.107, 0.107, 0.223), color = Color(110, 110, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/metalladder001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-0.874, -5.904, 2.773), angle = Angle(90, 0, 90), size = Vector(0.035, 0.035, 0.025), color = Color(110, 110, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-0.634, -2.618, 2.693), angle = Angle(90, 0, 90), size = Vector(0.035, 0.125, 0.059), color = Color(110, 110, 110, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.053, 0.453, 0.418), angle = Angle(0, 0, 0) }
}
SWEP.Secondary.Ammo="SMG1_Grenade"
SWEP.HH=0
SWEP.GLT=CurTime()
function SWEP:CustomThink()
if CLIENT then
self:UpdateBonePositions(self.Owner:GetViewModel())
if self:GetNWInt("R")<.15 then
self.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.053, 0.453, 0.418), angle = Angle(0, 0, 0) }
}
else
self.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
end
end
if self.GLT>CurTime()then
self.HH=0
self.SightPos2=Vector(18.23, -13.78, -0.02)
self.SightAng2=Angle(0, 47, 0)
elseif self.HH<9 then
self.HH=self.HH+1
self.SightPos2=self.CenterPos
self.SightAng2=self.CenterAng
end
end
if SERVER then
function SWEP:CusEPA()
if self.GLT<CurTime()and self:Ammo2()>0 and self:GetNextPrimaryFire()<CurTime()then
self.GLT=CurTime()+2
self:SoundSlot(self.GLTSound)
self:SetNextPrimaryFire(CurTime()+2)
self:EmitSound("3088083421/m79-1.wav")
self.BoltPullTimer=CurTime()+2
self:TakeSecondaryAmmo(1)
self:PlayAnim("shoot1")
local e=ents.Create("obj_308_grenade")
e:SetAngles(self.Owner:GetAimVector():Angle())
e:SetPos(self.Owner:GetShootPos()+self:GetForward()*60)
e:SetOwner(self.Owner)
e:Spawn(self:GetAngles())
self.Owner:SetEyeAngles( self.Owner:EyeAngles() + Angle( -9,math.Rand(-9,9),0 ) )
e:SetVelocity(self:GetForward()*1000+self:GetUp()*100)
e:Activate()
self.Owner:DeleteOnRemove(e)
end
end
end