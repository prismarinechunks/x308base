-- Created By Xero Chunks

AddCSLuaFile()

SWEP.Base = "weapon_308_up_p"

SWEP.PrintName = "Upgradable SMG"
SWEP.Category = "X Base | Guns"

SWEP.Spawnable = true
SWEP.Slot = 2
SWEP.SlotPos = 0

SWEP.Primary.ClipSize = 45
SWEP.Primary.DefaultClip = 45
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.HoldType = "smg"
SWEP.ViewModelFOV = 54

SWEP.SA_SightFOV = 70
SWEP.SA_Cross = true

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "/"

SWEP.PA_Delay = .05
SWEP.SA_Delay = .1

SWEP.DrawTime = .5
SWEP.StopRAnimTime = 1.3
SWEP.ReloadTime = .8
SWEP.ReloadTime2 = 1.8
SWEP.BoltPullTime = 1.6
SWEP.ClipoutTime = .2
SWEP.ClipinTime = .9

SWEP.IdleAnim = "idle02"

SWEP.EXPNPCMULT = .05
SWEP.EXPPLYMULT = 1.2

SWEP.PA_Sound = "Weapon_SMG1.Single"

SWEP.ReloadSound = {
    {
        Sound = "weapons/smg1/smg1_reload.wav"
    }
}

SWEP.ReloadSound2 = {
    {
        Sound = "weapons/smg1/smg1_reload.wav"
    },
    {
        Delay = 1.4,
        Sound = "3088083421/wep/reload/smg_boltpull.ogg"
    }
}

SWEP.PClip = 45
SWEP.PA_Damage = 10

SWEP.LEVELUPMULT = .5

SWEP.SightPos = Vector(-6.5, 70, -.1)
SWEP.SightAng = Angle(0, 0, -10)

SWEP.CenterPos = Vector()

SWEP.MAXCOMBOEXTRA = 15 * 100
SWEP.COMBOEXTRAMULT = .08


function SWEP:LUP()

local r = math.random(6)

while r == 3 and self.PA_Recoil < .0004 do
    r = math.random(6)
    end

    while r == 4 and self.PA_Spread < .0004 do
        r = math.random(6)
        end

        while r == 6 and self.ReloadTime < .4 do
            r = math.random(6)
            end

            if r < 2 then

                self:SetNWInt("clip", self:GetNWInt("clip") + math.Round(2 * self.LEVELUPMULT))
                self.PClip = self.PClip + (2 / self.LEVELUPMULT)

                elseif r < 3 then

                    self:SetNWInt("dmg", self:GetNWInt("dmg") + math.Round(4 * self.LEVELUPMULT))
                    self.PA_Damage = self.PA_Damage + (4 / self.LEVELUPMULT)

                    elseif r < 4 then

                        self.PA_Recoil = self.PA_Recoil * (.8 * self.LEVELUPMULT)
                        self:SetNWInt("recoil", self:GetNWInt("recoil") * (.8 * self.LEVELUPMULT))
                        self.PA_AimRecoil = self.PA_AimRecoil * (.8 * self.LEVELUPMULT)

                        elseif r < 5 then

                            self.PA_Spread = self.PA_Spread * (.85 * self.LEVELUPMULT)
                            self:SetNWInt("sPread", self:GetNWInt("sPread") * .85)
                            self.PA_AimSpread = self.PA_AimSpread * (.75 * self.LEVELUPMULT)

                            elseif r < 6 then

                                self.PA_Delay = self.PA_Delay * (.98 * self.LEVELUPMULT)
                                self:SetNWInt("delay", self:GetNWInt("delay") * (.996 * self.LEVELUPMULT))

                                else

                                    self.ReloadSound[1].Pitch = (self.ReloadSound[1].Pitch or 1) * (1.07 * self.LEVELUPMULT)
                                    self.ReloadSound2[1].Pitch = (self.ReloadSound2[1].Pitch or 1) * (1.07 * self.LEVELUPMULT)

                                    self.ReloadSound2[2].Delay = self.ReloadSound2[2].Delay * .85

                                    self.StopRAnimTime = self.StopRAnimTime * (.85 * self.LEVELUPMULT)
                                    self.ReloadTime = self.ReloadTime * (.85 * self.LEVELUPMULT)
                                    self.ClipoutTime = self.ClipoutTime * (.85 * self.LEVELUPMULT)
                                    self.ClipinTime = self.ClipinTime * (.85 * self.LEVELUPMULT)
                                    self.BoltPullTime = self.BoltPullTime * (.85 * self.LEVELUPMULT)
                                    self.ReloadTime2 = self.ReloadTime2 * (.85 * self.LEVELUPMULT)

                                    end
                                    end
