SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Flan"
SWEP.Category = "308..' Base"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.PA_Delay = .09
SWEP.StopRAnimTime = 0
SWEP.ReloadAnim=""
SWEP.NormalDraw=false
SWEP.BlockReload=true--must do it

SWEP.RE_Anim={}
SWEP.RE_Anim2={}
function SWEP:CustomEquip()
if game.SinglePlayer()and !self.Owner._Notice33 then
self.Owner:ChatPrint("NOTE:Sometimes not play reload frames,sorry ;l")self.Owner._Notice33=1
end end
function SWEP:BasThink()
local p=self.Owner
if self.Reloading and self.ReloadingTimer<=CurTime()then
self.Reloading=false
self:SetNWInt("BOLT",1)
end
if CLIENT then
if self:GetNWBool("Flan_RE2")==true then
self:PlayFrameSlot(self.RE_Anim2)
elseif self:GetNWBool("Flan_RE")==true then
self:PlayFrameSlot(self.RE_Anim)
end
self:UpdateBonePositions(self.Owner:GetViewModel())
end
end

if CLIENT then
function SWEP:PlayFrameSlot(s)
local a=self.HMath
for l=1,#s do
if !s[l].Delay then s[l].Delay=0 end
if !s[l].Bone then s[l].Bone={}end
timer.Simple(s[l].Delay,function()if IsValid(self)and self:CUnHos(a)then
self.ViewModelBoneMods=s[l].Bone
if s[l].Ang==1 then self.SightAng2=self.CenterAng
elseif s[l].Ang then self.SightAng2=s[l].Ang
end
if s[l].Pos==1 then self.SightPos2=self.CenterPos
elseif s[l].Pos then self.SightPos2=s[l].Pos
end
end end)
end
end
end
