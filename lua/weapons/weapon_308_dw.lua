SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["dw"]
SWEP.Category = "X Base | Misc"
SWEP.HoldType = "normal"
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.RemoveOnWorld=true

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "357"
SWEP.PA_Delay = 1

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.Text = ""

SWEP.DrawTime = .5
SWEP.SA_IsSight=false

SWEP.AmmoHUD=2
SWEP.CenterPos = Vector(10, -16, -24)
SWEP.CenterAng = Angle(47.528, 12.89, 0)
SWEP.Next=1
SWEP.Allow=nil
SWEP.LOwner=nil
if CLIENT then language.Add("weapon_308_dw","Lost ->")end
function SWEP:OnDrop2()
if self.Allow and IsValid(self.LOwner)then
local p=self.LOwner
p:TakeDamage(9999,self)
p:Kill()
end
end
function SWEP:CustomEquip()
local p=self.Owner
self.LOwner=p
p:SelectWeapon("weapon_308_dw")
timer.Simple(.01,function()if IsValid(self)and IsValid(p)then
p:SelectWeapon("weapon_308_dw")
end end)
end
function SWEP:Reload()
if !self.Allow then self.Allow=1
self.HoldType="revolver" 
self:PlayAnim("reload")
self:SetNextPrimaryFire( CurTime() + 3.4 )
self.Owner:SetAnimation(PLAYER_RELOAD)
self.Next=math.random(6)
end
end

function SWEP:BeforeHolster()
if self.Allow then return true end
end

function SWEP:SecondaryAttack()
if self.Allow||CLIENT then return end
self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav")
self.Owner:DropWeapon(self.Owner:GetActiveWeapon())
end

function SWEP:PrimaryAttack()if CLIENT then return end
if !self.Allow then self:Reload()return end
self:SetNextPrimaryFire( CurTime() + .8 )
local p=self.Owner
self.Next=self.Next-1
self.Owner:SetAnimation(PLAYER_ATTACK1)
if self.Next==0 then
p:EmitSound("weapons/357/357_fire2.wav",511)
self:Remove()
p:SetGroundEntity(NULL)
p:SetVelocity(p:GetRight()*-188)
p:TakeDamage(9999,self)
else
self.LOwner=nil
self:PlayAnim("holster",2,1)
self:EmitSound("weapons/357/357_cock1.wav")
timer.Simple(.5,function()if IsValid(self)and IsValid(p)and p:Alive()then
p:EmitSound("weapons/iceaxe/iceaxe_swing1.wav")
p:DropWeapon(self.Owner:GetActiveWeapon())
end end)
end
end

