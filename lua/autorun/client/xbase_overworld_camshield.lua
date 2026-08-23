-- Created By Xero Chunks

if SERVER then return end

local oldStart2D = cam.Start2D
local oldEnd2D = cam.End2D
local overworldDepth = 0
local lastNotice = 0

cam.Start2D = function(...)
    local trace = debug.traceback("", 2)

    if string.find(trace, "weapon_x_dev_overworld", 1, true) then
        overworldDepth = overworldDepth + 1
    end

    return oldStart2D(...)
end

hook.Add("PostRender", "XBase_OverworldCamShield", function()
    if overworldDepth <= 0 then return end

    for i = 1, overworldDepth do
        pcall(oldEnd2D)
    end

    if CurTime() - lastNotice >= 3600 then
        print("[XBase] weapon_x_dev_overworld camera leak shield active.")
        lastNotice = CurTime()
    end

    overworldDepth = 0
end)
