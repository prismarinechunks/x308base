SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "[DEV]"..GAME308_LANWEP["distance"]
SWEP.Category = "x308 Base | Development"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_toolgun.mdl"
SWEP.WorldModel = "models/weapons/w_toolgun.mdl"
SWEP.Canrepick=nil

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
SWEP.IdleAnim="idle01"

SWEP.AmmoHUD=1
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 60, 0 )
function SWEP:CustomThink()
local p=self.Owner
if p:GetEyeTrace().Hit then
self:SetNWInt("D",p:EyePos():Distance(p:GetEyeTrace().HitPos))
end
end
function SWEP:Reload()end
function SWEP:SecondaryAttack()self:EmitSound("hl1/fvox/blip.wav")local p=self.Owner:GetPos()
self.Owner:ChatPrint("Vector("..p.x..","..p.y..","..p.z..")")end
function SWEP:PrimaryAttack()self:EmitSound("hl1/fvox/beep.wav",100,math.random(100,120))
end
function SWEP:CusHUD()
local t=self:GetNWInt("D")
local x = ScrW()/2
local y = ScrH()/2
surface.SetDrawColor(1,1,1,225)
surface.DrawLine(x-50,y,x+50,y)
surface.DrawLine(x,y+50,x,y-50)
local p=self.Owner:GetPos()
draw.SimpleText("Position(math.floor):("..math.floor(p.x)..","..math.floor(p.y)..","..math.floor(p.z)..")","308wepbase",ScrW()*.01,ScrH()*.73,Color(255,255,255))
draw.SimpleText("Distance(Vec):"..t,"308wepbase",ScrW()*.01,ScrH()*.8,Color(255,255,255))
end