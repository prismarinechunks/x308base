SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["poker"]
SWEP.Category = "X Base | Misc"
SWEP.HoldType = "knife"
SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/hunter/plates/plate075x105.mdl"
SWEP.PickDirectly=1
SWEP.CDWInfoBox=true
SWEP.Author="QQ3088083421"

SWEP.Primary.ClipSize = 9999
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Delay = .35
SWEP.NormalDraw = true
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.SA_IsSight = false

SWEP.Text="Master Cards"

SWEP.AmmoHUD=1
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 130, 0 )
SWEP.CenterAng = Angle( 0, 10, 0 )
SWEP.ViewModelBoneMods = {
	["ValveBiped.Grenade_body"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/hunter/plates/plate05x075.mdl", bone = "ValveBiped.Grenade_body", rel = "", pos = Vector(3.447, 0.723, -1.278), angle = Angle(0, -87.934, 0), size = Vector(0.165, 0.165, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/hunter/plates/plate05x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.815, 2.012, -0.427), angle = Angle(0, 85.807, -14.077), size = Vector(0.136, 0.136, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} }
}
function SWEP:CustomInit()self:SetModelScale(.1)self:SetMaterial("models/shiny")end
function SWEP:Reload()end
function SWEP:CustomEquip()self:SetMaterial("null")end
function SWEP:OnDrop2()self:SetMaterial("models/shiny")end
function SWEP:SecondaryAttack()if SERVER then

if self:Clip1()+self:Ammo1()>=3 then
self.Owner:SetAnimation(PLAYER_ATTACK1)
self.Owner:EmitSound("weapons/knife/knife_deploy1.wav",100,150)
self.Owner:SetAmmo(self:Ammo1()-3,"pistol")
self:PrintNamed()
self:SetNextPrimaryFire(CurTime()+.5)
self:SetNextSecondaryFire(CurTime()+.5)
local ply=self.Owner
ply:ViewPunch(Angle(-2,math.Rand(-1,1),0))
	self:PlayAnim("lob")
	for l=1,3 do
	if l==1 then
	i=-200
	elseif l==2 then
	i=0
	else
	i=200
	end
	local e=ents.Create("obj_308_poker")
	local pos=ply:GetShootPos()+self:GetUp()*-4.5+self:GetForward()*21+self:GetRight()*(l*3-1.5)
	e:SetAngles(ply:GetAimVector():Angle()+Angle(90,0,90))
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e.Owner=ply
	e:Activate()
	ply:DeleteOnRemove(e)--you know why.
	e:SetVelocity(ply:GetForward()*1500+ply:GetUp()*90+ply:GetRight()*i+
	ply:GetVelocity())--GoldSource CS1.6 Grenade Throwing
	end
if self:Ammo1()==0 then
SafeRemoveEntity(self)
end
end

end end
function SWEP:CustomPrimary()if SERVER then
local ply=self.Owner
self:SetNextSecondaryFire(CurTime()+.35)
ply:ViewPunch(Angle(math.Rand(-.4,-.2),math.Rand(-.2,.2),0))
self:PlayAnim("throw")
ply:EmitSound("weapons/knife/knife_deploy1.wav",100,130)
	local e=ents.Create("obj_308_poker")
	local pos=ply:GetShootPos()+self:GetUp()*-4+self:GetForward()*21+self:GetRight()*4.5
	e:SetAngles(ply:GetAimVector():Angle()+Angle(90,0,90))
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e.Owner=ply
	e:Activate()
	ply:DeleteOnRemove(e)--you know why.
	e:SetVelocity(ply:GetForward()*1890+ply:GetUp()*100+
	ply:GetVelocity())--GoldSource CS1.6 Grenade Throwing
	if self:Clip1()==0 and self:Ammo1()==0 then
	SafeRemoveEntity(self)
	else
	self:SetClip1(1)
	self.Owner:SetAmmo(self:Ammo1()-1,"pistol")
	end
end
end
