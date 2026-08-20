SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "地雷"
SWEP.Category = "308..' Base"
SWEP.HoldType = "slam"
SWEP.ViewModel = "models/weapons/c_slam.mdl"
SWEP.WorldModel = "models/weapons/w_c4.mdl"
SWEP.CanRepick=nil

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "slam"
SWEP.DrawAnim = "throw_draw_nd"
SWEP.IdleAnim = "throw_idle_nd"
SWEP.NormalDraw=true
SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = false
SWEP.CustomAmmoIcon =""
SWEP.SA_IsSight = false
SWEP.ViewModelBoneMods = {
	["Slam_base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.BombB=0
SWEP.AmmoHUD=1
SWEP.DrawTime = .3
SWEP.CenterPos = Vector( 0, 50, 1 )
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/props_combine/combine_mine01.mdl", bone = "Slam_base", rel = "", pos = Vector(0, -60.971, 23.42), angle = Angle(180, 0, -90), size = Vector(.5, .5, .5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:PrimaryAttack()if SERVER then
if self:Ammo1()+self:Clip1()<1 then return end
self:PlayAnim("throw_draw_nd")
self:TakePrimaryAmmo(2)
self:SetClip1(1)
local ply=self.Owner

self:SetNextPrimaryFire(CurTime()+.2)
self:PrintNamed()
ply:EmitSound("weapons/c4/c4_plant.wav",511)

local e=ents.Create("obj_308_mine")
e:SetAngles(Angle(0,ply:GetAngles().y,0))
e:SetPos(ply:GetPos())
e:SetOwner(ply)
e:Spawn()
e:Activate()
ply:DeleteOnRemove(e)
if self:Ammo1()<1 then SafeRemoveEntity(self)end

end end

