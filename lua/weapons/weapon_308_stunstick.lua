SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["stunstick"]
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "melee"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"
SWEP.Slot = 0
SWEP.Spawnable = true

SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"

SWEP.Melee1=20
SWEP.Melee2=40
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.21
SWEP.MeleeOT=.4
SWEP.MeleeOT2=.8
SWEP.RangeD=35
SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "!"

SWEP.DrawSound={{Delay=.2,Sound="weapons/stunstick/spark1.wav"}}
SWEP.MeleeS={{Sound="weapons/stunstick/stunstick_swing2.wav"}}
SWEP.MeleeS2={{Sound="weapons/stunstick/stunstick_swing1.wav"}}
SWEP.MeleeSW={{Sound="weapons/stunstick/stunstick_impact1.wav"}}
SWEP.CenterPos = Vector(0,100,0)
SWEP.ViewModelBoneMods = {
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(5, -1, 3), angle = Angle(54, 20, 22.5) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -30, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {["1"] = { type = "Model", model = "models/weapons/w_stunbaton.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(-.3, -.3, 8.4), angle = Angle(-89.224, 104.92, 166.957), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }}
function SWEP:MAnim(ty)
self:PlayAnim("midslash1")
end
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("weapons/stunstick/stunstick_fleshhit"..math.random(2)..".wav",100,110)
else
self:EmitSound("weapons/stunstick/stunstick_fleshhit"..math.random(2)..".wav")
end
end