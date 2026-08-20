
AddCSLuaFile()

SWEP.PrintName = "[DEV]"..GAME308_LANWEP["entcheck"]
SWEP.Author = "QQ3088083421"
SWEP.Category = "x308 Base | Development"

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

SWEP.ShootSound = Sound( "Airboat.FireGunRevDown" )
SWEP.Num=0
if CLIENT then
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
self:SetNetworkedString("ENT",a)
self:SetNetworkedString("HP",a)
self:SetNetworkedString("MAXHP",a)
self:SetNetworkedString("NAME",a)
self:SetNetworkedString("OWN",a)
self:SetNetworkedString("PN",a)
self:SetNetworkedString("MDL",a)
self:SetNetworkedString("VTF",a)
self:SetNetworkedString("BASE",a)
self:SetNetworkedString("CLASS",a)
self:SetNetworkedString("SKIN",a)
self:SetNetworkedString("TYPE",a)

self:SetNetworkedString("MOVETYPE",a)
self:SetNetworkedString("SOILD",a)
self:SetNetworkedString("COLLISION",a)
--
self:SetNetworkedString("VELOLength",a)

self:SetNetworkedString("PLYNICK",a)
self:SetNetworkedString("WALKSPEED",a)
self:SetNetworkedString("RUNSPEED",a)
self:SetNetworkedString("CROUCHSPEED",a)
self:SetNetworkedString("JUMPOWER",a)
--
self:SetNetworkedString("KEYVALUE",a)
end

function SWEP:SetupDataTables()
self:NetworkVar( "Float", 1, "NextIdle" )
end

function SWEP:PlayAnim(an,br)
local vm=self.Owner:GetViewModel()
vm:SendViewModelMatchingSequence( vm:LookupSequence( an ) )
vm:SetPlaybackRate(br)
self:SetNextIdle( CurTime() + vm:SequenceDuration() / br )
end

function SWEP:Initialize()
self:SetHoldType("pistol")
self:ClearMessage()
end

function SWEP:UpdateNextIdle()
local vm=self.Owner:GetViewModel()
self:SetNextIdle(CurTime()+vm:SequenceDuration()/vm:GetPlaybackRate())
end

function SWEP:DoShootEffect( hitpos, hitnormal, entity, physbone, bFirstTimePredicted )
	self:PlayAnim("fire01",0.5)
	local e=EffectData()
	e:SetOrigin( hitpos )
	e:SetNormal( hitnormal )
	e:SetEntity( entity )
	e:SetAttachment( physbone )
	util.Effect( "selection_indicator", e )
	e=EffectData()
	e:SetOrigin( hitpos )
	e:SetStart( self.Owner:GetShootPos() )
	e:SetAttachment( 1 )
	e:SetEntity( self )
	util.Effect( "PhyscannonImpact", e )
end

function SWEP:PrimaryAttack( right )
local tr = util.GetPlayerTrace( self.Owner )
tr.mask = bit.bor( CONTENTS_SOLID, CONTENTS_MOVEABLE, CONTENTS_MONSTER, CONTENTS_WINDOW, CONTENTS_DEBRIS, CONTENTS_GRATE, CONTENTS_AUX )
local trace = util.TraceLine( tr )
if ( !trace.Hit ) then return end
self:DoShootEffect( trace.HitPos, trace.HitNormal, trace.Entity, trace.PhysicsBone, IsFirstTimePredicted() )
self:EmitSound( self.ShootSound )
self:UpdateNextIdle()
self:SetNextPrimaryFire( CurTime() )
self:SetNextSecondaryFire( CurTime() )
local e=trace.Entity
if SERVER && IsValid(e)then
self:Reload()
local p=e:GetPos()
local a=e:GetAngles()
local l=""
local l2=""
local l3=""
local l4=""
local l5=""
local l6=""
local lm=""
if e:GetMaterial()!="" then l="e"..self.Num..":SetMaterial(\""..e:GetMaterial().."\")"end
if e:GetColor().r!=255||e:GetColor().g!=255||e:GetColor().b!=255||e:GetColor().a!=255 then l2="e"..self.Num..":SetColor(Color("..e:GetColor().r..","..e:GetColor().g..","..e:GetColor().b..","..e:GetColor().a.."))"end
if e:GetSkin()!=0 then l3="e"..self.Num..":SetSkin("..e:GetSkin()..")"end
if IsValid(e:GetPhysicsObject())and !e:IsNPC()and !e:GetPhysicsObject():IsMotionEnabled()then lm="e"..self.Num..":GetPhysicsObject():EnableMotion(false)" end
if e:GetClass()=="prop_physics" then
if e:GetCollisionGroup()!=0 then l4="e"..self.Num..":SetCollisionGroup("..e:GetCollisionGroup()..")" end
l6="e"..self.Num..":SetModel(\""..e:GetModel().."\")"
elseif e:GetClass()=="prop_effect" then
l4="STOP!!!WE NOT SUPPORT IT!!!"
elseif e:IsNPC()and e.GetActiveWeapon and IsValid(e:GetActiveWeapon())and e:GetActiveWeapon():IsWeapon()then
if e.Give then
l6="e"..self.Num..":Give(\""..e:GetActiveWeapon():GetClass().."\")"
elseif e.GiveWeapon then
l6="e"..self.Num..":GiveWeapon(\""..e:GetActiveWeapon():GetClass().."\")"
end
end
if self.Floor then
p.x=math.floor(p.x)p.y=math.floor(p.y)p.z=math.floor(p.z)a.pitch=math.floor(a.pitch)a.yaw=math.floor(a.yaw)a.roll=math.floor(a.roll)end
Msg("local e"..self.Num.."=ents.Create(\""..e:GetClass().."\")e"..self.Num..":SetPos(Vector("..p.x..","..p.y..","..p.z.."))e"..self.Num..":SetAngles(Angle("..a.pitch..","..a.yaw..","..a.roll.."))"..l..l2..l3..l6.."e"..self.Num..":Spawn()"..l4..l5..lm)
self.Num=self.Num+1
self:SetNetworkedString("ENT",tostring(e))
self:SetNetworkedString("HP",e:Health())
self:SetNetworkedString("MAXHP",e:GetMaxHealth())
self:SetNetworkedString("PN",e.PrintName)
self:SetNetworkedString("NAME",e:GetName())
self:SetNetworkedString("OWN",tostring(e:GetOwner()))
self:SetNetworkedString("MDL",e:GetModel())
self:SetNetworkedString("CLASS",e:GetClass())
self:SetNetworkedString("SKIN",e:GetSkin())
self:SetNetworkedString("VELOLength",e:GetVelocity():Length())
self:SetNetworkedString("TYPE",e.Type)

self:SetNetworkedString("MOVETYPE",e:GetMoveType())
self:SetNetworkedString("SOILD",e:GetSolid())
self:SetNetworkedString("COLLISION",e:GetCollisionGroup())

if e:GetMaterial()then self:SetNetworkedString("VTF",e:GetMaterial())self:SetNetworkedString("VTF","unuse material")end
if e.Base then self:SetNetworkedString("BASE",e.Base) else self:SetNetworkedString("BASE","unuse base")end

if e:IsPlayer()then
self:SetNetworkedString("PLYNICK",e:Nick())
self:SetNetworkedString("WALKSPEED",e:GetWalkSpeed())
self:SetNetworkedString("RUNSPEED",e:GetRunSpeed())
self:SetNetworkedString("CROUCHSPEED",e:GetCrouchedWalkSpeed())
self:SetNetworkedString("JUMPOWER",e:GetJumpPower())
end
--e:Remove()
end
self.Owner:LagCompensation(false)
end
function SWEP:SecondaryAttack()if self.Floor then
self.Floor=nil
self.Owner:ChatPrint("console:not use math.floor()")else
self.Floor=1
self.Owner:ChatPrint("console:use math.floor()")end
end
function SWEP:Reload()self:ClearMessage()self:PlayAnim("reload",2.5)end
function SWEP:OnDrop()end
function SWEP:Deploy()
self:PlayAnim("draw",1)
self:UpdateNextIdle()
return true
end

function SWEP:Think()
local idletime = self:GetNextIdle()
if ( idletime > 0 && CurTime() > idletime ) then
if math.random(2) then self:PlayAnim("idle01",1)else self:PlayAnim("reload",0.85)end
self:UpdateNextIdle()
end
end

function SWEP:DrawHUD()
if self:GetNetworkedString("BASE")=="[NIL!]"then return end
local ent=self:GetNetworkedString("ENT")
local a=self:GetNetworkedString("HP")
local aa=self:GetNetworkedString("MAXHP")
local n=self:GetNetworkedString("NAME")
local o=self:GetNetworkedString("OWN")
local pn = self:GetNetworkedString("PN")
local b = self:GetNetworkedString("MDL")
local c = self:GetNetworkedString("VTF")
local d = self:GetNetworkedString("CLASS")
local e = self:GetNetworkedString("BASE")
local f = self:GetNetworkedString("VELOLength")
local s = self:GetNetworkedString("SKIN")
local t = self:GetNetworkedString("TYPE")

local move = self:GetNetworkedString("MOVETYPE")
local soil = self:GetNetworkedString("SOILD")
local coll = self:GetNetworkedString("COLLISION")

local pnick = self:GetNetworkedString("PLYNICK")
local pwalk = self:GetNetworkedString("WALKSPEED")
local prun = self:GetNetworkedString("RUNSPEED")
local pduck = self:GetNetworkedString("CROUCHSPEED")
local pjump = self:GetNetworkedString("JUMPOWER")

draw.SimpleText("Press R to clear text(wanna more convenient to spawn a entity?", "entcheck", ScrW() * 0.01, ScrH() * 0.8, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
draw.SimpleText("open console! spawn entity code was copied. 'sometimes maybe it not is you standard' )", "entcheck", ScrW() * 0.01, ScrH() * 0.84, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
draw.SimpleText("Entity:"..ent.."    Owner:"..o.."    PrintName:"..pn.."    Base:"..e.."    Type:"..t, "entcheck", ScrW() * 0.98, ScrH() * 0.1, Color( 255, 255, 255, 255 ), TEXT_ALIGN_RIGHT,TEXT_ALIGN_CENTER)
draw.SimpleText("MDL:"..b.."    Entity Class:"..d.."    Material:"..c.."    Skin:"..s, "entcheck", ScrW() * 0.98, ScrH() * 0.13, Color( 255, 255, 255, 255 ), TEXT_ALIGN_RIGHT,TEXT_ALIGN_CENTER)
draw.SimpleText("GetName:"..n.."    GetCollisionGroup:"..coll.."    GetSolid:"..soil.."    GetMoveType:"..move.."    Velocity Length"..f.."    Max HP:"..aa.."    HP:"..a, "entcheck", ScrW() * 0.98, ScrH() * 0.16, Color( 255, 255, 255, 255 ), TEXT_ALIGN_RIGHT,TEXT_ALIGN_CENTER)

draw.SimpleText("Player["..pnick.."]，Walk Speed:"..pwalk.."/s，Run Speed:"..prun.."/s,Crouch Walk Speed:"..pduck..",Gravity:"..pjump, "entcheck", ScrW() * 0.98, ScrH() * 0.3, Color( 255, 255, 255, 255 ), TEXT_ALIGN_RIGHT,TEXT_ALIGN_CENTER)
--draw.SimpleText(self:GetNetworkedString("KEYVALUE"), "entcheck", ScrW() * 0.98, ScrH() * 0.19, Color( 255, 255, 255, 255 ), TEXT_ALIGN_RIGHT,TEXT_ALIGN_CENTER)

end


