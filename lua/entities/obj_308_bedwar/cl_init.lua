-- Created By Xero Chunks

include("shared.lua")

function ENT:Draw()
end

surface.CreateFont("308BedWars", {
    font = "Roboto",
    size = 9 * (ScrH() / 480),
                   weight = 500,
                   blursize = 0,
                   scanlines = 0,
                   antialias = false,
                   underline = false,
                   italic = false,
                   strikeout = false,
                   symbol = false,
                   rotary = false,
                   shadow = false,
                   additive = false,
                   outline = false
})

usermessage.Hook("bedwar308_menu", function()
local p = LocalPlayer()

surface.PlaySound("buttons/button14.wav")

local f = vgui.Create("DFrame")
f:SetSize(560, 580)
f:Center()
f:SetTitle(GAME308_LAN["bedm"])
f:SetSizable(true)
f:SetDeleteOnClose(false)
f:MakePopup()

local l = vgui.Create("DLabel", f)
l:SetPos(10, 30)
l:SetText(
    GAME308_LAN["bedm1"] ..
    "\npistol ammo:" .. p:GetAmmoCount("pistol") ..
    "\nSMG ammo:" .. p:GetAmmoCount("smg1") ..
    "\nAR2 ammo:" .. p:GetAmmoCount("ar2")
)
l:SizeToContents()

local function B(p1, p2, t, h, img)
local b = vgui.Create("DButton", f)

b:SetText(t)
b:SetFont("308BedWars")
b:SetPos(p1, p2)
b:SetSize(100, 50)

if img then
    b:SetImage(img)
    end

    b.DoClick = h
    end

    local i = vgui.Create("DImage", f)
    i:SetPos(340, 30)
    i:SetSize(50, 50)
    i:SetImage("spawnicons/models/kleiner.png")

    B(10, 90, " 4 " .. GAME308_LANWEP["block"] .. "\n 1 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 0 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_b")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/brick.png")

    B(120, 90, " 20 " .. GAME308_LANWEP["block"] .. "\n 5 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 4 then
        surface.PlaySound("buttons/button15.wav")

        for i = 1, 5 do
            net.Start("bedwar308_b")
            net.WriteEntity(p)
            net.SendToServer()
            end
            else
                surface.PlaySound("buttons/button10.wav")
                end
                end, "icon16/brick_link.png")

    B(230, 90, " 40 " .. GAME308_LANWEP["block"] .. "\n 10 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 9 then
        surface.PlaySound("buttons/button15.wav")

        for i = 1, 10 do
            net.Start("bedwar308_b")
            net.WriteEntity(p)
            net.SendToServer()
            end
            else
                surface.PlaySound("buttons/button10.wav")
                end
                end, "icon16/bricks.png")

    B(340, 90, " 80 " .. GAME308_LANWEP["block"] .. "\n 20 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 19 then
        surface.PlaySound("buttons/button15.wav")

        for i = 1, 20 do
            net.Start("bedwar308_b")
            net.WriteEntity(p)
            net.SendToServer()
            end
            else
                surface.PlaySound("buttons/button10.wav")
                end
                end, "icon16/bricks.png")

    B(10, 150, "CROWBAR\n30 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 29 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_crowbar")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/gun.png")

    B(120, 150, GAME308_LANWEP["stunstick"] .. "\n35 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 34 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_stunstick")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/gun.png")

    B(230, 150, GAME308_LANWEP["toyknife"] .. "\n7 SMG ammo", function()
    if p:GetAmmoCount("smg1") > 6 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_wornd")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/gun.png")

    B(340, 150, GAME308_LANWEP["knife"] .. "\n8 SMG ammo", function()
    if p:GetAmmoCount("smg1") > 7 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_knife")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/gun.png")

    B(450, 150, GAME308_LANWEP["torch"] .. "\n5 SMG ammo", function()
    if p:GetAmmoCount("smg1") > 4 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_torch")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/fire.png")

    B(450, 30, GAME308_LANWEP["diamondsword"] .. "\n4 AR2 ammo", function()
    if p:GetAmmoCount("ar2") > 3 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_swordd")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/gun.png")

    B(450, 90, GAME308_LANWEP["sh"] .. "\n3 AR2 ammo", function()
    if p:GetAmmoCount("ar2") > 2 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_sh")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/book_addresses.png")

    B(10, 210, GAME308_LAN["armor"] .. " I\n50 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 49 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_a1")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/shield.png")

    B(120, 210, GAME308_LAN["armor"] .. " II\n5 SMG ammo", function()
    if p:GetAmmoCount("smg1") > 4 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_a2")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/shield.png")

    B(230, 210, GAME308_LAN["armor"] .. " III\n4 AR2 ammo", function()
    if p:GetAmmoCount("ar2") > 3 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_a3")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/shield.png")

    B(10, 270, "Frag Grenade\n4 SMG ammo", function()
    if p:GetAmmoCount("smg1") > 3 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_frag")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/gun.png")

    B(120, 270, GAME308_LANWEP["begg"] .. "\n5 SMG ammo", function()
    if p:GetAmmoCount("smg1") > 4 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_begg")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/gun.png")

    B(230, 270, "RPG-7\n5 SMG ammo", function()
    if p:GetAmmoCount("smg1") > 4 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_rpg")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/gun.png")

    B(340, 270, GAME308_LANWEP["epearl"] .. "\n2 AR2 ammo", function()
    if p:GetAmmoCount("ar2") > 1 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_epearl")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/gun.png")

    B(450, 210, GAME308_LAN["bedps"] .. "\n1 AR2 ammo", function()
    if p:GetAmmoCount("ar2") > 0 and p:GetWalkSpeed() < 270 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_pspeed")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/star.png")

    B(450, 270, GAME308_LAN["bedpj"] .. "\n2 AR2 ammo", function()
    if p:GetAmmoCount("ar2") > 1 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_pjump")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/arrow_up.png")

    local l3 = vgui.Create("DLabel", f)
    l3:SetPos(120, 430)

    local l4 = vgui.Create("DLabel", f)
    l4:SetPos(330, 540)

    local l5 = vgui.Create("DLabel", f)
    l5:SetPos(440, 540)

    local function S1(a)
    l3:SetText("pistol ammo:" .. p:GetNWInt("_30pistol") + a)
    l3:SizeToContents()
    end

    local function S2(a)
    l4:SetText("SMG ammo:" .. p:GetNWInt("_30SMG") + a)
    l4:SizeToContents()
    end

    local function S3(a)
    l5:SetText("AR2 ammo:" .. p:GetNWInt("_30AR2") + a)
    l5:SizeToContents()
    end

    S1(0)
    S2(0)
    S3(0)

    B(10, 330, GAME308_LAN["storage"] .. "\n5 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 4 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_stp0")
        net.WriteEntity(p)
        net.SendToServer()

        S1(5)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/coins_add.png")

    B(110, 330, GAME308_LAN["storage"] .. "\n20 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 19 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_stp1")
        net.WriteEntity(p)
        net.SendToServer()

        S1(20)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/coins_add.png")

    B(210, 330, GAME308_LAN["storage"] .. "\n40 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 39 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_stp2")
        net.WriteEntity(p)
        net.SendToServer()

        S1(40)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/coins_add.png")

    B(10, 380, GAME308_LAN["takeout"] .. "\n5 pistol ammo", function()
    if p:GetNWInt("_30pistol") > 4 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_stp01")
        net.WriteEntity(p)
        net.SendToServer()

        S1(-5)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/coins_delete.png")

    B(110, 380, GAME308_LAN["takeout"] .. "\n20 pistol ammo", function()
    if p:GetNWInt("_30pistol") > 19 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_stp11")
        net.WriteEntity(p)
        net.SendToServer()

        S1(-20)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/coins_delete.png")

    B(210, 380, GAME308_LAN["takeout"] .. "\n40 pistol ammo", function()
    if p:GetNWInt("_30pistol") > 39 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_stp21")
        net.WriteEntity(p)
        net.SendToServer()

        S1(-40)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/coins_delete.png")

    B(320, 440, GAME308_LAN["storage"] .. "\n1 SMG ammo", function()
    if p:GetAmmoCount("smg1") > 0 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_sts")
        net.WriteEntity(p)
        net.SendToServer()

        S2(1)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/cog_add.png")

    B(320, 490, GAME308_LAN["takeout"] .. "\n1 SMG ammo", function()
    if p:GetNWInt("_30SMG") > 0 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_sts1")
        net.WriteEntity(p)
        net.SendToServer()

        S2(-1)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/cog_delete.png")

    B(430, 440, GAME308_LAN["storage"] .. "\n1 AR2 ammo", function()
    if p:GetAmmoCount("ar2") > 0 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_sta")
        net.WriteEntity(p)
        net.SendToServer()

        S3(1)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/ruby_add.png")

    B(430, 490, GAME308_LAN["takeout"] .. "\n1 AR2 ammo", function()
    if p:GetNWInt("_30AR2") > 0 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_sta1")
        net.WriteEntity(p)
        net.SendToServer()

        S3(-1)
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/ruby_delete.png")

    B(375, 350, GAME308_LAN["camera"] .. "\n1 pistol ammo", function()
    if p:GetAmmoCount("pistol") > 0 then
        surface.PlaySound("buttons/button15.wav")

        net.Start("bedwar308_camera")
        net.WriteEntity(p)
        net.SendToServer()
        else
            surface.PlaySound("buttons/button10.wav")
            end
            end, "icon16/camera.png")
    end)
