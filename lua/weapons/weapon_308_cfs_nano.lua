if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_hulk_knife.mdl")then return end
SWEP.Base = "weapon_308_basemelee" -- Don't touch!if you true to do you better write a base
SWEP.CFSDread=1
SWEP.PrintName = "CFS Dread"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "fist"
SWEP.ViewModel="models/fosterz/weapons/viewmodels/c_nano_x_dread.mdl"
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"
SWEP.ShowWorldModel=false
SWEP.RemoveOnDrop=true
SWEP.RemoveOnWorld=true
SWEP.ViewModelFlip = true
SWEP.UseHands=false
SWEP.Slot=0
SWEP.Spawnable=true
SWEP.NormalDraw=true
SWEP.IdleAnim="red-zm.online_idle0"
SWEP.MovingAnim="red-zm.online_run"

SWEP.Melee1=45
SWEP.Melee2=98
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.25
SWEP.MeleeOT=.5
SWEP.MeleeOT2=.75
SWEP.TextIcon="fosterz/vgui/weapons_hud/weapon_cf_knife"

SWEP.CusEquipS="fosterz/nano/ghost/etc/nanoappearsnd.wav"
SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.DrawAnimRate=2
SWEP.DrawSound={{Sound="weapons/nanoknife/k_out_nanoknife.wav"}}
SWEP.MeleeSH={{Sound="weapons/knife/k_shoot_knife_player.wav"}}
SWEP.MeleeSH2={{Sound="weapons/knife/k_shoot_knife_player.wav"}}
SWEP.MeleeSW={{Sound="weapons/nanoknife/nano_stone_swing.wav"}}
SWEP.CenterPos = -Vector(2,52,2)
SWEP.CenterAng = Angle(-90, 0, 0)
SWEP.Combo=1
function SWEP:CustomDeploy()self.Owner:SetupHands()end
function SWEP:CustomThink()if CLIENT then
self:UpdateBonePositions(self.Owner:GetViewModel())end
end

function SWEP:MAnim(t)if t<2 then
if self.Combo<2 then
self:EmitSound("weapons/nanoknife/k_shoot_nanoknife_1.wav")self:PlayAnim("vk.com/cf_source_combo_1",2)self.Combo=2 else
self:EmitSound("weapons/nanoknife/k_shoot_nanoknife_2.wav")self:PlayAnim("vk.com/cf_source_combo_2",2)self.Combo=1
end
else
self:EmitSound("weapons/nanoknife/k_shoot_nanoknife_3.wav")self:PlayAnim("vk.com/cf_source_bigshot",2)self.Combo=1
end
end
hook.Add("PlayerSetHandsModel","weapon_308_cfs_hulk",function(p,h)if p and IsValid(p:GetActiveWeapon())and util.IsValidModel("models/fosterz/hands/dev/pv-arm_hulk.mdl")and p:GetActiveWeapon():GetClass()=="weapon_308_cfs_hulk" then h:SetModel("models/fosterz/hands/dev/pv-arm_hulk.mdl")return true end
end)
