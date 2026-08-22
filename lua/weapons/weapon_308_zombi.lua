SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName = "ZOMBIE_CLAW"
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "fist"
SWEP.ViewModel = "models/weapons/c_arms.mdl"
SWEP.ShowWorldModel = false
SWEP.RemoveOnDrop=true
SWEP.RemoveOnWorld=true
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.AdminOnly=true
SWEP.UseHands=true
SWEP.NormalDraw=true
SWEP.IdleAnim="fists_idle_01"
SWEP.SwapScale=8
SWEP.TextType = "308CS"
SWEP.Text = "C"
SWEP.TextColor = Color(0,215,0)
SWEP.Melee1=45
SWEP.Melee2=95
SWEP.MeleeAnimRate=1.6
SWEP.MeleeAnim2Rate=2
SWEP.MeleeAT=.18
SWEP.MeleeAT2=.08
SWEP.MeleeOT=.35
SWEP.MeleeOT2=.7
SWEP.RangeD=40

SWEP.MeleeSM={{Sound="npc/zombie/claw_miss1.wav",Pitch=80}}
SWEP.MeleeSM2={{Sound="npc/zombie/claw_miss1.wav",Pitch=90}}
SWEP.MeleeSW={{Sound="npc/zombie/zombie_pound_door.wav"}}
SWEP.CenterPos = Vector(0,10,-3)
ZB308=0
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("npc/zombie/claw_strike"..math.random(3)..".wav")
else
self:EmitSound("npc/zombie/claw_strike"..math.random(3)..".wav",100,70)
end
end

hook.Add("CalcMainActivity", "weapon_308_zombia", function(p,velocity)
if p:Alive()and IsValid(p)then
if IsValid(p:GetActiveWeapon())and p:GetActiveWeapon():GetClass()=="weapon_308_zombi" then
--velocity:Length2D() > 1
if p:OnGround()and !p:Crouching()then
if p:GetModel()=="models/player/zombie_fast.mdl" then
return ACT_HL2MP_RUN_ZOMBIE_FAST, -1
else
return ACT_HL2MP_RUN_ZOMBIE, -1
end
end
if !p:OnGround()then
return ACT_HL2MP_JUMP_KNIFE, -1
end
return ACT_HL2MP_WALK_CROUCH_ZOMBIE_05, -1
end
end
end)

local function Check(ent)
for k, v in pairs(player.GetAll()) do
if ent:IsNPC()and v.ZB3088 then
local c=ent:GetClass()
if string.find(c,"headcrab")||string.find(c,"_zombie")||string.find(c,"_poisonzombie")||string.find(c,"_fastzombie")then
ent:AddEntityRelationship(v,D_LI,100)
if ent:GetEnemy()==v then ent:SetEnemy(NULL)end
else
ent:AddEntityRelationship(v,D_HT,100)
end
end
end
end
function SWEP:CustomDeploy()self.Owner:SetupHands()end
hook.Add("PlayerSetHandsModel","weapon_308_zombie",function(p,h)if p and IsValid(p:GetActiveWeapon())and p:GetActiveWeapon():GetClass()=="weapon_308_zombi" then h:SetModel("models/weapons/c_arms_citizen.mdl")h:SetSkin(2)return true end
end)
local function Trun(pl)
timer.Simple(.05,function()if IsValid(pl)and pl:Alive()then
	pl.ZB3088=pl.ZB3088 or 0
	if pl.ZB3088<8 then
	pl.ZB3088=pl.ZB3088+1
	end
	if pl.ZB3088<1 then
	pl.ZB3088=1 end
	pl:SetJumpPower(200)
	local r=math.random(3)local h=GetConVarNumber("wb3_hg_zbhp")
	pl.ZB308Type=r
	pl:SetModel("models/player/zombie_fast.mdl")
	pl:SetMaxHealth(h+pl.ZB3088*230)
	pl:SetHealth(h+pl.ZB3088*230)
	pl:SetJumpPower(220)
	pl:SetWalkSpeed(300)
	pl:SetRunSpeed(300)
	if r<2 then
	pl:SetModel("models/player/zombie_classic.mdl")
	pl:SetMaxHealth(h+pl.ZB3088*300)
	pl:SetHealth(h+pl.ZB3088*300)
	pl:SetWalkSpeed(280)
	pl:SetRunSpeed(280)
	elseif r<3 then
	pl:SetMaxHealth(h+pl.ZB3088*250)
	pl:SetHealth(h+pl.ZB3088*250)
	pl:SetModel("models/player/corpse1.mdl")
	pl:SetJumpPower(210)
	pl:SetWalkSpeed(290)
	pl:SetRunSpeed(290)
	end
	pl:EmitSound("3088083421/manif"..math.random(2)..".wav",511)
	pl:SetColor(Color(255,255,255))
	pl:SetArmor(50)
	pl:RemoveAllAmmo()
	pl:Give("weapon_308_zombi")
	pl:SelectWeapon("weapon_308_zombi")
	timer.Simple(.01,function()if IsValid(pl)then
	pl:SelectWeapon("weapon_308_zombi")
	end end)
	for k,v in ipairs(ents.GetAll())do Check(v)end
end end)
end

hook.Add("EntityTakeDamage","Z3081",function(p,d)
local a=d:GetAttacker()
if !p:IsPlayer()then return end
if p.ZB3088 then
if !a.ZB3088 and d:GetDamage()>0 then
p:EmitSound("3088083421/zb/zh"..math.random(2)..".wav")
else
d:SetDamage(0)
end
elseif a:IsPlayer()then
if !a.ZB3088 and ZB308>0 then
d:SetDamage(0)
elseif a.ZB3088 then
d:SetDamage(0)
Trun(p)
if a.ZB3088<8 then
a.ZB3088=a.ZB3088+1
a:SetMaxHealth(a:Health()+500)
a:SetHealth(a:Health()+500)end
net.Start("PlayerKilledByPlayer")
net.WriteEntity(p)
net.WriteString("weapon_308_zombi")
net.WriteEntity(a)
net.Broadcast()
MsgAll(p:Nick().." was infected by "..a:Nick())
end
end
end)

hook.Add("PlayerSpawn", "Z3085", function(ply)
if ply.ZB3088 then
	if ZB308>0 then
	Trun(ply)
	ply.ZB3088=ply.ZB3088+1
	else
	ply.ZB3088=nil
	ply:SetMaterial("")
	end
end
end)

hook.Add("PlayerDeathSound", "Z3084",function(ply)
if ply.ZB3088 then
ply:EmitSound("3088083421/zb/zd"..math.random(2)..".wav")
ply:SetMaterial("")
ply.NextSpawnTime=CurTime()+5
return true
end
end)

hook.Add("PlayerFootstep", "Z3082",function(ply)
if UT()then return end
if ply.ZB3088 then
ply:EmitSound("3088083421/zb/fs"..math.random(3)..".wav")
return true
end
end)

hook.Add("OnEntityCreated","Z3083",function(ent)
Check(ent)
end)
function SWEP:CustomInit()
self:SetNetworkedString("Typ","Normal")
end
function SWEP:MAnim(ty)
self.Owner:DoAnimationEvent(ACT_GMOD_GESTURE_RANGE_FRENZY)
if ty<2 then
if self.Combo then
self:PlayAnim("fists_left",1.1)self.Combo=nil else
self:PlayAnim("fists_right",1.1)self.Combo=1 end
else
self:PlayAnim("fists_right",2)
self:DelayAnim({{Anim="fists_right",Rate=4},{Anim="fists_left",Delay=.05,Rate=3}})
end
end
function SWEP:BeforeHolster()return 1 end
function SWEP:CustomEquip()
local p=self.Owner
if !p.ZB3088 then
Trun(p)end
self.TOwn=p
self:SetNetworkedString("Typ",GAME308_LAN1["z1"])
p.ZB308Type=2
if p:GetModel()=="models/player/zombie_fast.mdl" then
self:SetNetworkedString("Typ",GAME308_LAN1["z2"])
p.ZB308Type=3
elseif p:GetModel()=="models/player/zombie_classic.mdl" then
self:SetNetworkedString("Typ",GAME308_LAN1["z3"])
p.ZB308Type=1
end
self:SetNetworkedString("LV",p.ZB3088 or 1)
end
SWEP.HealT=CurTime()
SWEP.Rag=0
SWEP.R=0
function SWEP:CustomThink()
local p=self.Owner
local l=p:GetVelocity():Length()
if CLIENT then
self.ViewModelBoneMods["ValveBiped.Bip01_L_Clavicle"]={ scale = Vector(1, 1, 1), pos = Vector(math.cos(CurTime()*p:GetRunSpeed()/50)*l*.001,0,math.cos(CurTime()*p:GetRunSpeed()/50)*l*.001), angle = -Angle(math.cos(CurTime()*p:GetRunSpeed()/50)*l*.01, 0, 0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Clavicle"]={ scale = Vector(1, 1, 1), pos = Vector(-math.cos(CurTime()*p:GetRunSpeed()/50)*l*.001,0,math.cos(CurTime()*p:GetRunSpeed()/50)*l*.001), angle = Angle(math.cos(CurTime()*p:GetRunSpeed()/50)*l*.01, 0, 0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(-math.cos(CurTime()*2)*3,math.cos(CurTime()*2)*3+10,20+math.cos(CurTime()*2)*3) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,math.cos(CurTime()*(1+math.sin(CurTime()*20))),0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(-math.cos(CurTime()*2)*3,math.cos(CurTime()*2)*3+10,20+math.cos(CurTime()*2)*3) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger01"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,-30,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger02"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,-30,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger1"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,50,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger11"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger12"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger2"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,50,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger21"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger22"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger3"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,50,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger31"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger32"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger4"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,-50,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger41"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,-70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_L_Finger42"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,-70,0) }

self.ViewModelBoneMods["ValveBiped.Bip01_R_Hand"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,math.sin(CurTime()*(1+math.sin(CurTime()*20))),0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Forearm"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(math.cos(CurTime()*2+5)*3,math.cos(CurTime()*2)*3+10,-20+math.cos(CurTime()*2)*3) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger01"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,-30,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger02"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,-30,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger1"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,50,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger11"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger12"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger2"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,50,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger21"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger22"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger3"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,50,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger31"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger32"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,70,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger4"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,80,-30) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger41"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,40,0) }
self.ViewModelBoneMods["ValveBiped.Bip01_R_Finger42"]={ scale = Vector(1, 1, 1), pos =Vector(), angle = Angle(0,60,0) }
self:UpdateBonePositions(p:GetViewModel())
end
if p:GetMaxHealth()>p:Health()and p:GetVelocity():Length()<1 then
if self.HealT<CurTime()then
self.HealT=CurTime()+1
if p:GetMaxHealth()<p:Health()+100 then
p:SetHealth(p:GetMaxHealth())
else
p:SetHealth(p:Health()+100)
end
end
else self.HealT=CurTime()+5
end

if !game.SinglePlayer()then
for _,pl in pairs(player.GetAll())do if pl!=p then
if IsValid(self.RagT)and self.RagT:Alive()and !self.RagT:HasWeapon("weapon_308_zombi")then
self.Rag=math.floor(p:EyePos():Distance(self.RagT:EyePos()))
if self.Rag>p:EyePos():Distance(pl:EyePos())and !pl:HasWeapon("weapon_308_zombi")and pl:Alive()then
self.RagT=pl
end
elseif !pl.ZB3088 and pl:Alive()then
self.RagT=pl
end
end end
end
end
function SWEP:OnDrop2()
if game.SinglePlayer()then return end
self:Remove()
self.TOwn:Kill()
self.TOwn:Kill()
self.TOwn:Kill()
end
local col={}
col["$pp_colour_addg"]=.1
col["$pp_colour_brightness"]=.1
col["$pp_colour_colour"]=1
col["$pp_colour_contrast"]=1.2
local col2={}
hook.Add("RenderScreenspaceEffects","weapon_308_zombie2",function()local p=LocalPlayer()
if p:ShouldDrawLocalPlayer()||!render.SupportsPixelShaders_2_0()then return end
if p:HasWeapon("weapon_308_zombi")then
col["$pp_colour_addg"]=Lerp(.05,col["$pp_colour_addg"],math.Rand(0,.2))
col["$pp_colour_colour"]=p:Health()/p:GetMaxHealth()
col["$pp_colour_brightness"]=Lerp(.05,col["$pp_colour_brightness"],math.Rand(0,.1))
DrawColorModify(col)
elseif IsValid(p:GetActiveWeapon())and p:GetActiveWeapon():GetClass()=="weapon_308_xl9" then
col2["$pp_colour_colour"]=1-p:GetActiveWeapon():GetNWInt("Power")*8
col2["$pp_colour_addr"]=0
col2["$pp_colour_addg"]=0
col2["$pp_colour_addb"]=0
col2["$pp_colour_contrast"]=1
col2["$pp_colour_brightness"]=0
DrawColorModify(col2)
end
end)
function SWEP:IfOwnHurt(d)self.HealT=CurTime()+5
self.Owner:SetLocalVelocity(self.Owner:GetVelocity()/5)end
function SWEP:CusHUD()
draw.SimpleText("Type:"..self:GetNetworkedString("Typ"),"308wepbase",ScrW()*.99,ScrH()*.9,Color(255,255,255,255),TEXT_ALIGN_RIGHT,TEXT_ALIGN_LEFT)
draw.SimpleText("Level"..self:GetNetworkedString("LV"),"308wepbase",ScrW()*.99,ScrH()*.84,Color(255,255,255,255),TEXT_ALIGN_RIGHT,TEXT_ALIGN_LEFT)
if !game.SinglePlayer()then
draw.SimpleText("最近的人/Nearest People:"..self.Rag,"308wepbase",ScrW()*.01,ScrH()*.8,Color(255,255,255,255),TEXT_ALIGN_LEFT,TEXT_ALIGN_LEFT)
end
end