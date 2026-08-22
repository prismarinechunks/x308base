SWEP.Base="weapon_308_base"
SWEP.PrintName=GAME308_LANWEP["omeawa"]
SWEP.Category = "X Base | Misc"
SWEP.ViewModel = "" 
SWEP.WorldModel = ""
SWEP.Slot = 0
SWEP.HoldType = "normal" 
SWEP.Spawnable = true
SWEP.AdminSpawnable = false
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.Primary.ClipSize=0
SWEP.Primary.Ammo="none"
SWEP.AmmoHUD=2
SWEP.AdminOnly = true
SWEP.SA_IsSight=false
SWEP.RemoveOnDrop=true
SWEP.RemoveOnWorld=true

SWEP.Primary.Automatic = false
SWEP.Secondary.Automatic = false

function SWEP:SecondaryAttack()
local owner = self.Owner
local trace = util.TraceLine( {
	start = self.Owner:GetShootPos(),
	endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 70,
	filter = self.Owner
} )

if ( !IsValid( trace.Entity ) ) then 
	trace = util.TraceHull( {
		start = self.Owner:GetShootPos(),
		endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 800,
		filter = self.Owner,
		mins = Vector( -10, -10, -8 ),
		maxs = Vector( 10, 10, 8 )
	} )
end

if IsValid(trace.Entity)then
if trace.Entity:IsPlayer()then
trace.Entity:SetWalkSpeed(1)
trace.Entity:SetRunSpeed(1)
trace.Entity:SetJumpPower(1)
end
	self:SetNextSecondaryFire(CurTime()+1)
	self:SetNextPrimaryFire(CurTime()+1)
	trace.Entity:TakeDamage(49,owner)
	trace.Entity:EmitSound("3088083421/omeawa/kill.mp3",511)
	timer.Simple(.7218,function()if owner:Alive()and IsValid(trace.Entity)then
	for l=1,10 do trace.Entity:TakeDamage(999999,owner)
	local d=DamageInfo()
	d:SetDamage(999999)
	d:SetDamageType(2)
	d:SetAttacker(owner)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(4)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(1)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(64)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(131072)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(8)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(16777216)
	trace.Entity:TakeDamageInfo(d)
	trace.Entity:EmitSound("3088083421/omeawa/kill2.mp3",511)end
	elseif trace.Entity:IsPlayer()and trace.Entity:Alive()then
	trace.Entity:KillSilent()
	end end)
else self:SetNextSecondaryFire(CurTime()+0.5)self:SetNextPrimaryFire(CurTime()+0.5)
end
end


function SWEP:PrimaryAttack()
local owner = self.Owner
local trace = util.TraceLine( {
	start = self.Owner:GetShootPos(),
	endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 70,
	filter = self.Owner
} )

if ( !IsValid( trace.Entity ) ) then 
	trace = util.TraceHull( {
		start = self.Owner:GetShootPos(),
		endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 800,
		filter = self.Owner,
		mins = Vector( -10, -10, -8 ),
		maxs = Vector( 10, 10, 8 )
	} )
end

if IsValid(trace.Entity)then
if trace.Entity:IsPlayer()then
trace.Entity:SetWalkSpeed(1)
trace.Entity:SetRunSpeed(1)
trace.Entity:SetJumpPower(1)
end
	self:SetNextSecondaryFire(CurTime()+4.5)self:SetNextPrimaryFire(CurTime()+4.5)
	owner:EmitSound("3088083421/omeawa/omeawa.mp3")
	timer.Simple(2.3,function()if owner:Alive()and IsValid(trace.Entity)then
	trace.Entity:EmitSound("3088083421/omeawa/nani.mp3",511)
	end end)
	timer.Simple(3.3,function()if owner:Alive()and IsValid(trace.Entity)then
	trace.Entity:TakeDamage(49,owner)
	trace.Entity:EmitSound("3088083421/omeawa/kill.mp3",511)
	end end)
	timer.Simple(4.0218,function()if owner:Alive()and IsValid(trace.Entity)then
	for l=1,10 do trace.Entity:TakeDamage(999999,owner)
	local d=DamageInfo()
	d:SetDamage(999999)
	d:SetDamageType(2)
	d:SetAttacker(owner)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(4)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(1)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(64)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(131072)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(8)
	trace.Entity:TakeDamageInfo(d)d:SetDamageType(16777216)
	trace.Entity:TakeDamageInfo(d)
	trace.Entity:EmitSound("3088083421/omeawa/kill2.mp3")end
	if trace.Entity:IsPlayer()then
	trace.Entity:KillSilent()
	end end end)
else self:SetNextSecondaryFire(CurTime()+0.5)self:SetNextPrimaryFire(CurTime()+0.5)
end
end
