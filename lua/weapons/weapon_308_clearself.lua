SWEP.PrintName=GAME308_LANWEP["clearself"]
SWEP.Category = "X Base | Misc"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"
SWEP.Spawnable = true
if game.SinglePlayer()then
function SWEP:Initialize()
SafeRemoveEntityDelayed(self,.001)
end
else
function SWEP:Initialize()
if CLIENT then return end
SafeRemoveEntityDelayed(self,.001)
end
end
function SWEP:Equip()
local pl=self.Owner
if pl:IsPlayer()then
pl:StripWeapons()
pl:SetHealth(pl:GetMaxHealth())
pl:SetArmor(0)
pl:RemoveAllAmmo()
end
self:Remove()
end
