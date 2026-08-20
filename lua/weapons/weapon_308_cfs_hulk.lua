if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_hulk_knife.mdl")then return end
SWEP.Base = "weapon_308_basemelee" -- Don't touch!if you true to do you better write a base
SWEP.CFSHulk=1
SWEP.PrintName = "CFS Hulk"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "fist"
SWEP.ViewModel="models/fosterz/weapons/viewmodels/c_hulk_knife.mdl"
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"
SWEP.ShowWorldModel=false
SWEP.RemoveOnDrop=true
SWEP.RemoveOnWorld=true
SWEP.ViewModelFlip = true
SWEP.Slot=0
SWEP.Spawnable=true
SWEP.NormalDraw=true
SWEP.IdleAnim="red-zm.online_idle0"
SWEP.MovingAnim="red-zm.online_run"

SWEP.Melee1=35
SWEP.Melee2=95
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.96
SWEP.MeleeOT=.4
SWEP.MeleeOT2=1.2
SWEP.TextIcon="fosterz/vgui/weapons_hud/weapon_cf_knife"

SWEP.CusEquipS="fosterz/nano/ghost/etc/nanoappearsnd.wav"
SWEP.DrawAnim="red-zm.online_select"
SWEP.DrawSound={{Sound="weapons/hosthulkfist/hulk_up_select.wav"}}
SWEP.MeleeSH={{Sound="weapons/knife/k_shoot_knife_player.wav"}}
SWEP.MeleeSH2={{Sound="weapons/knife/k_shoot_knife_player.wav"}}
SWEP.MeleeSW={{Sound="weapons/hosthulkfist/hulkup_stonehit_bigshot.wav"}}
SWEP.CenterPos = Vector(0,-80,0)
SWEP.CenterAng = Angle(180, 0, 0)
SWEP.Combo=1
if util.IsValidModel("models/fosterz/hands/dev/pv-arm_hulk.mdl")then
SWEP.ViewModelBoneMods = {
	["Scene Root"] = { scale = Vector(2, 2, 2), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}end
function SWEP:CustomDeploy()self.Owner:SetupHands()end
function SWEP:CustomThink()if CLIENT then
self:UpdateBonePositions(self.Owner:GetViewModel())end
end

function SWEP:MAnim(t)if t<2 then
if self.Combo<2 then
self:EmitSound("weapons/hosthulkfist/hulk_up_shoot_1.wav")self:PlayAnim("red-zm.online_combo_1",2)self.Combo=2 else
self:EmitSound("weapons/hosthulkfist/hulk_up_shoot_2.wav")self:PlayAnim("red-zm.online_combo_2",2)self.Combo=1
end
else
self:EmitSound("weapons/hosthulkfist/hulk_up_shoot_3.wav")self:PlayAnim("red-zm.online_bigshot",.5)self.Combo=1
end
end
hook.Add("PlayerSetHandsModel","weapon_308_cfs_hulk",function(p,h)if p and IsValid(p:GetActiveWeapon())and util.IsValidModel("models/fosterz/hands/dev/pv-arm_hulk.mdl")and p:GetActiveWeapon():GetClass()=="weapon_308_cfs_hulk" then h:SetModel("models/fosterz/hands/dev/pv-arm_hulk.mdl")return true end
end)
