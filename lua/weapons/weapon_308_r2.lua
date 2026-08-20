SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = GAME308_LANWEP["r"]
SWEP.Category = "308..' Base Fixed"
SWEP.HoldType = "normal"
SWEP.AdminOnly = true
SWEP.Canrepick = false
SWEP.ViewModel = ""
SWEP.WorldModel = "models/Combine_Helicopter/helicopter_bomb01.mdl"
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP._308r = true
SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = false
SWEP.SA_IsSight = false
SWEP.AmmoHUD = 2
SWEP.DrawTime = .5
SWEP.WElements = {
    ["sheild"] = {
        type = "Model",
        model = "models/hunter/blocks/cube2x2x025.mdl",
        bone = "ValveBiped.Bip01_Spine",
        rel = "",
        pos = Vector(0, -58.533, 0),
        angle = Angle(0, 0, 90),
        size = Vector(1, 1, 1),
        color = Color(255, 255, 255, 127),
        surpresslightning = true,
        bonemerge = false,
        highrender = false,
        nocull = false,
        material = "models/shiny",
        skin = 0,
        bodygroup = {}
    }
}

function SWEP:IfOwnHurt(d)
    if d:GetAttacker():IsPlayer() and d:GetAttacker():GetActiveWeapon()._308r then return end
    d:GetAttacker():TakeDamage(d:GetDamage() * 2, self.Owner)
    if D2REMAKE308 then
        d:SetDamage(0)
    end
end

function SWEP:CustomInit()
    self:SetMaterial("models/spawn_effect2")
end

function SWEP:OnDrop2()
    self:SetMaterial("models/spawn_effect2")
end

if SERVER then
    function SWEP:CustomEquip()
        self:SetMaterial("null")
    end
end

function SWEP:PrimaryAttack()
end

function SWEP:Reload()
end

function SWEP:DrawWorldModel()
    if self:GetOwner() ~= LocalPlayer() then return end 
    self.BaseClass.DrawWorldModel(self)
end