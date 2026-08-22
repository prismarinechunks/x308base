
AddCSLuaFile()

SWEP.PrintName = "[DEV]"..GAME308_LANWEP["damcheck"]
SWEP.Author = "QQ3088083421"
SWEP.Purpose = "查看伤害的属性.\n用于Dev!"
SWEP.Category = "X Base | Development"

SWEP.Slot = 0
SWEP.SlotPos = 4

SWEP.Spawnable = true

SWEP.ViewModel = Model( "models/weapons/c_toolgun.mdl" )
SWEP.WorldModel = "models/weapons/w_toolgun.mdl"
SWEP.ViewModelFOV = 64
SWEP.UseHands = true

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.DrawAmmo = false

SWEP.checking = 0
SWEP.checkonce = false
	if(CLIENT) then
	surface.CreateFont("entcheck", { 
		font = "Roboto",
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

function SWEP:ClearMessage()
local a = "[NIL!]"
self:SetNetworkedString("D",a)
self:SetNetworkedString("DTYPE",a)
self:SetNetworkedString("DINF",a)
self:SetNetworkedString("DATT",a)
end

function SWEP:PlayAnim(an,br)
local vm = self.Owner:GetViewModel()
vm:SendViewModelMatchingSequence( vm:LookupSequence( an ) )
vm:SetPlaybackRate(br)
end

hook.Add( "EntityTakeDamage", "D308C", function(e,d)
if e:IsPlayer()and IsValid(e:GetActiveWeapon())and e:GetActiveWeapon():GetClass()=="weapon_x_dev_damcheck" then
timer.Simple(.001,function()if IsValid(e)then e:ViewPunchReset()end end)
local wep=e:GetActiveWeapon()
if wep.checking==1 then
wep:PlayAnim("fire01",2)
wep:SetNetworkedString("D",d:GetDamage())
local t=d:GetDamageType()
if t==4 then t=t.."=DMG_SLASH"--128
elseif t==1 then t=t.."=DMG_CRUSH"
elseif t==2 then t=t.."=DMG_BULLET"--4098--8194--536870912--536870914--1073741824
elseif t==8 then t=t.."=DMG_BURN"--8388608(SLOWFIRE)--256967104--268435464--4268435464
elseif t==16 then t=t.."=DMG_VEHICLE"
elseif t==32 then t=t.."=DMG_FALL"
elseif t==64 then t=t.."=DMG_BLAST"--134217792
elseif t==128 then t=t.."=DMG_CLUB"
elseif t==256 then t=t.."=DMG_SHOCK"
elseif t==512 then t=t.."=DMG_SONIC"
elseif t==1024 then t=t.."=DMG_ENERGYBEAM"
elseif t==2048 then t=t.."=DMG_PREVENT_PHYSICS_FORCE"
elseif t==4096 then t=t.."=DMG_NEVERGIB"
elseif t==8192 then t=t.."=DMG_ALWAYSGIB"
elseif t==16384 then t=t.."=DMG_DROWN"
elseif t==32768 then t=t.."=DMG_PARALYZE"--Same as POISON
elseif t==65536 then t=t.."=DMG_NERVEGAS"
elseif t==131072 then t=t.."=DMG_POISON"
elseif t==262144 then t=t.."=DMG_RADIATION"
elseif t==524299 then t=t.."=DMG_DROWNRECOVER"
elseif t==1048576 then t=t.."=DMG_ACID"
elseif t==2097152 then t=t.."=DMG_PHYSGUN"
elseif t==8388608 then t=t.."=DMG_SLOWBURN"
elseif t==16777216 then t=t.."=DMG_PLASMA"
elseif t==33554432 then t=t.."=DMG_AIRBOAT"
elseif t==67108864 then t=t.."=DMG_DISSOLVE"
elseif t==134217792 then t=t.."=DMG_BLAST_SURFACE"
elseif t==268435456 then t=t.."=DMG_DIRECT"
elseif t==321048576 then t=t.."=DMG_ACID"
elseif t==536870912 then t=t.."=DMG_BACKSHOT"
elseif t==1073741824 then t=t.."=DMG_SHIPER"
elseif t==2147483648 then t=t.."=DMG_MISSILEDEFENSE"
end
wep:SetNetworkedString("DTYPE",t)
local a=d:GetAttacker()
local i=d:GetInflictor()
if i!=nil then
if i:IsPlayer()then
wep:SetNetworkedString("DINF",i:Nick())
else
wep:SetNetworkedString("DINF",i:GetClass())
end
else
wep:SetNetworkedString("DINF","got nil!")
end
if a!=nil then
if a:IsPlayer()then
wep:SetNetworkedString("DATT",a:Nick())
else
wep:SetNetworkedString("DATT",a:GetClass())
end
else
wep:SetNetworkedString("DATT","got nil!")
end
if wep.checkonce then
wep:SetNetworkedString("CO","Disable")
wep.checkonce=false
wep.checking=0
wep:SetNetworkedString("C","Disable")
wep:PlayAnim("holster",2.5)
end
d:SetDamage(0)
end
end
end)

function SWEP:Initialize()
self:SetHoldType( "normal" )
self:SetNetworkedString("CO","Disable")
self:ClearMessage()
end

function SWEP:PrimaryAttack( right )
self:SetNextPrimaryFire( CurTime()+0.1)
self:SetNextSecondaryFire( CurTime()+0.1)
if self.checking == 0 then
self.checking = 1
self:SetNetworkedString("C","Enable")
self:PlayAnim("draw",4.5)
self.Owner:EmitSound("buttons/button4.wav",100,300)
else
self.checking = 0
self:SetNetworkedString("C","Disable")
self:PlayAnim("holster",2.5)
self:EmitSound("buttons/lightswitch2.wav")
end
self.Owner:LagCompensation( false )
end

function SWEP:SecondaryAttack() if self.checkonce then self:SetNetworkedString("CO","Disable") self.checkonce = false else self:SetNetworkedString("CO","Enable") self.checkonce = true end end

function SWEP:Reload() self:ClearMessage() self:PlayAnim("reload",2.5) end

function SWEP:OnDrop()
end

function SWEP:Deploy()
self:PlayAnim("lowidle",1) self.checking = 0 self:SetNetworkedString("C","Disable")
return true
end

function SWEP:Think()
if self:GetNetworkedString("C")=="Enable" then
self:SetHoldType( "pistol" )
else
self:SetHoldType( "normal" )
end
end

function SWEP:DrawHUD()
local c = self:GetNetworkedString("C")
local c1 = self:GetNetworkedString("CO")
local a = self:GetNetworkedString("D")
local a1 = self:GetNetworkedString("DTYPE")
local a2 = self:GetNetworkedString("DINF")
local a3 = self:GetNetworkedString("DATT")
draw.SimpleText("God Mode auto enable while you checking(just set damage to 0 and not any damage can be set)", "entcheck", ScrW() * 0.01, ScrH() * 0.88, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
draw.SimpleText("Checking:"..c.."     Check once:"..c1, "entcheck", ScrW() * 0.98, ScrH() * 0.1, Color( 255, 255, 255, 255 ), TEXT_ALIGN_RIGHT,TEXT_ALIGN_CENTER)
draw.SimpleText("Damage:"..a.."     GetDamageType:"..a1.."     GetAttacker:"..a2.."     GetInflictor:"..a3, "entcheck", ScrW() * 0.98, ScrH() * 0.2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_RIGHT,TEXT_ALIGN_CENTER)
end


