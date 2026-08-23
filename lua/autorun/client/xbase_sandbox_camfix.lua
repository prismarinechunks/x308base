-- Created By Xero Chunks

if SERVER then return end

local function FixToolScreen()
    local SWEP = weapons.GetStored("gmod_tool")
    if not SWEP or SWEP.XBaseCamFix then return end

    SWEP.XBaseCamFix = true
    local oldRenderScreen = SWEP.RenderScreen

    function SWEP:RenderScreen()
        if not oldRenderScreen then return end

        local ok, err = xpcall(function()
            oldRenderScreen(self)
        end, debug.traceback)

        if not ok then
            ErrorNoHalt("[XBase] ToolScreen error:\n" .. tostring(err) .. "\n")
        end
    end
end

hook.Add("InitPostEntity", "XBase_SandboxCamFix", FixToolScreen)
hook.Add("OnGamemodeLoaded", "XBase_SandboxCamFix", FixToolScreen)
