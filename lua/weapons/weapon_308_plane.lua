SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName="飞玉"
SWEP.Category = "x308 Base | Misc"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.PickDirectly=1
SWEP.DrawAnim="draw"
SWEP.ShowWorldModel=false
SWEP.AdminOnly=true
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.Slot = 4
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.NormalDraw = true
SWEP.SA_IsSight = false

SWEP.AmmoHUD=2
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 40, -6)
SWEP.CenterAng=Angle(40,0,0)

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, -30, 30), angle = Angle(0, 0, 0) },
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, -1.89, -1.168), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/xqm/jetbody3.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, -53), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/xqm/jetbody3.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.636, 2.352, -2.218), angle = Angle(0, -96.087, -180), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:Reload()end
function SWEP:PrimaryAttack()if SERVER then
local ply=self.Owner
self.BoltPullTimer=CurTime()+.5
ply:SetAnimation(PLAYER_ATTACK1)
self:SetNextPrimaryFire(CurTime()+.5)
self:PlayAnim("draw")
	local e=ents.Create("obj_308_plane")
	local pos=ply:GetShootPos()+self:GetUp()*-4+self:GetForward()*10+self:GetRight()*4.5
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	e:GetPhysicsObject():SetVelocity(ply:GetForward()*300+ply:GetUp()*200+ply:GetVelocity())
	local a=e:GetVelocity():Angle()
	a.roll=0
	e:SetAngles(a+Angle(0,90+a.pitch,0))
end
end
