SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "[DEV]Entity Finder"
SWEP.Category = "x308 Base | Development"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_toolgun.mdl"
SWEP.WorldModel = "models/weapons/w_toolgun.mdl"
SWEP.Canrepick=nil

SWEP.Primary.ClipSize = 9999
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
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
SWEP.IdleAnim="idle01"

SWEP.AmmoHUD=1
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 60, 0 )
function SWEP:Reload()end
function SWEP:SecondaryAttack()self:EmitSound("hl1/fvox/blip.wav")self:SetNWVector("D",nil)self.Owner:ChatPrint("Reset")end
function SWEP:PrimaryAttack()
if self:GetNWVector("D").x==0 and self:GetNWVector("D").y==0 and self:GetNWVector("D").z==0 then
self:EmitSound("hl1/fvox/blip.wav")self:SetNWVector("D",self:GetPos())else
local d=self:GetNWVector("D")local p=self:GetPos()
self:EmitSound("hl1/fvox/bell.wav")
self.Owner:ChatPrint("finding result now in console.")for _,e in pairs(ents.FindInBox(d,p))do
self.Owner:PrintMessage(1,e)end
self:SetNWVector("D",nil)end
end
function SWEP:CusHUD()
local t=self:GetNWInt("D")
local p=self.Owner:GetPos()
draw.SimpleText("Position(math.floor):("..math.floor(p.x)..","..math.floor(p.y)..","..math.floor(p.z)..")","308wepbase",ScrW()*.01,ScrH()*.73,Color(255,255,255))
draw.SimpleText("Get all entities in a box","308wepbase",ScrW()*.01,ScrH()*.8,Color(255,255,255))
end