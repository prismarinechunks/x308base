SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "The \"Cracked\" Magnum"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.Primary.ClipSize = 80*35
SWEP.Primary.DefaultClip = 6000
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "357"
SWEP.IconOverride="materials/entities/weapon_308_357.png"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.AdminOnly=true

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "."

SWEP.NoUseClip=true
SWEP.PA_Sound = "weapons/357/357_fire2.wav"
SWEP.PA_Damage = 155
SWEP.BSound={{Sound="weapons/357/357_reload3.wav"}}
SWEP.NormalDraw = true
SWEP.PA_Recoil = 0.5
SWEP.PA_Spread = 0.08
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 0.5
SWEP.ClipExtraBullet = false
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .01
SWEP.SA_Delay = .01
SWEP.DrawTime = .5
SWEP.ReloadAnimRate=2
SWEP.StopRAnimTime = 1.3
SWEP.ReloadTime = 1.4
SWEP.ClipoutTime = .75
SWEP.ClipinTime = 1.2
SWEP.ReloadTime2 = 1.6
SWEP.BoltPullTime=1.5
SWEP.PA_TakeAmmo=35
SWEP.PA_Num=35
SWEP.NoUseClip=false


SWEP.CenterPos = Vector()
SWEP.ViewModelFOV = 54
SWEP.SightPos = Vector(-4.69, 45, .7)
SWEP.SightAng = Angle(0, -.14, 0)
function SWEP:ShootAnim()
    local own=self:GetOwner()
    if IsValid(own) then
        if(own:IsPlayer())then
            --own:ViewPunch(Angle(math.random(-5,3),math.random(-5,5),math.random(-4,4)))
        end
    end
    self:PlayAnim("fire",3)
end
