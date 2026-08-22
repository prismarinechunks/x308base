-- Created By Xero Chunks

if SERVER then return end

  local DRGBASE_ICON = "drgbase/icon16.png"
  local FALLBACK_ICON = "icon16/application.png"

  local function GetDrGBaseIcon()
  local material = Material(DRGBASE_ICON)

  if material and not material:IsError() then
    return DRGBASE_ICON
    end

    return FALLBACK_ICON
    end

    local XbaseIcon = GetDrGBaseIcon()

    function DrGBase.GetIcon(name)
    return list.GetEntry("ContentCategoryIcons", name)
    end

    function DrGBase.SetIcon(name, icon)
    list.Set("ContentCategoryIcons", name, icon)
    end

    DrGBase.SetIcon("DrGBase", XbaseIcon)

    hook.Add("AddToolMenuTabs", "XbaseToolMenu", function()
    spawnmenu.AddToolTab("DrGBase", "DrGBase", XbaseIcon)
    end)

    hook.Add("PopulateToolMenu", "XbaseToolMenu", function()
    spawnmenu.AddToolMenuOption(
      "DrGBase",
      "DrGBase (Only)",
                                "drgbase_nb_settings_ai",
                                "AI Settings",
                                "",
                                "",
                                function(panel)
                                panel:ClearControls()

                                panel:Help("These settings only affect DrGBase NPCs.")
                                panel:ControlHelp("\nDetection")

                                panel:NumSlider(
                                  "Target distance",
                                  "drgbase_ai_radius",
                                  0,
                                  50000,
                                  0
                                )

                                panel:CheckBox(
                                  "Enable omniscience",
                                  "drgbase_ai_omniscient"
                                )

                                panel:CheckBox(
                                  "Enable sight",
                                  "drgbase_ai_sight"
                                )

                                panel:CheckBox(
                                  "Enable hearing",
                                  "drgbase_ai_hearing"
                                )

                                panel:CheckBox(
                                  "Enable patrol",
                                  "drgbase_ai_patrol"
                                )

                                panel:ControlHelp("\nWeapons")

                                panel:CheckBox(
                                  "Players can give weapons",
                                  "drgbase_give_weapons"
                                )
                                end
    )

    spawnmenu.AddToolMenuOption(
      "DrGBase",
      "DrGBase (Only)",
                                "drgbase_nb_settings_possession",
                                "Possession",
                                "",
                                "",
                                function(panel)
                                panel:ClearControls()

                                panel:Help("These settings only affect DrGBase NPCs.")
                                panel:ControlHelp("\nServer Settings")

                                panel:CheckBox(
                                  "Enable possession",
                                  "drgbase_possession_enable"
                                )

                                panel:ControlHelp("\nClient Settings")

                                panel:AddControl("numpad", {
                                  label = "Exit possession",
                                  command = "drgbase_possession_exit",
                                  label2 = "Cycle views",
                                  command2 = "drgbase_possession_view"
                                })

                                panel:AddControl("numpad", {
                                  label = "Climb",
                                  command = "drgbase_possession_climb",
                                  label2 = "Lock on",
                                  command2 = "drgbase_possession_lockon"
                                })

                                panel:NumSlider(
                                  "Lock on speed",
                                  "drgbase_possession_lockon_speed",
                                  0.01,
                                  1,
                                  2
                                )

                                panel:CheckBox(
                                  "Teleport on dispossess",
                                  "drgbase_possession_teleport"
                                )
                                end
    )

    spawnmenu.AddToolMenuOption(
      "DrGBase",
      "DrGBase (Only)",
                                "drgbase_nb_settings_misc",
                                "Misc / Multipliers",
                                "",
                                "",
                                function(panel)
                                panel:ClearControls()

                                panel:Help("These settings only affect DrGBase NPCs.")
                                panel:ControlHelp("\nStats")

                                panel:NumSlider(
                                  "Health multiplier",
                                  "drgbase_multiplier_health",
                                  0.1,
                                  10,
                                  1
                                )

                                panel:NumSlider(
                                  "Player damage multiplier",
                                  "drgbase_multiplier_damage_players",
                                  0.1,
                                  10,
                                  1
                                )

                                panel:NumSlider(
                                  "NPC damage multiplier",
                                  "drgbase_multiplier_damage_npc",
                                  0.1,
                                  10,
                                  1
                                )

                                panel:NumSlider(
                                  "Speed multiplier",
                                  "drgbase_multiplier_speed",
                                  0.1,
                                  10,
                                  1
                                )

                                panel:ControlHelp("\nRagdolls")

                                panel:NumSlider(
                                  "Remove ragdolls",
                                  "drgbase_remove_ragdolls",
                                  -1,
                                  180,
                                  0
                                )

                                panel:NumSlider(
                                  "Ragdoll fadeout",
                                  "drgbase_ragdoll_fadeout",
                                  0,
                                  10,
                                  1
                                )

                                panel:CheckBox(
                                  "Also remove 'dead' nextbots",
                                  "drgbase_remove_dead"
                                )

                                panel:CheckBox(
                                  "Disable ragdoll collisions",
                                  "drgbase_ragdoll_collisions_disabled"
                                )

                                panel:ControlHelp("\nPathfinding")

                                panel:NumSlider(
                                  "Compute delay",
                                  "drgbase_compute_delay",
                                  0.01,
                                  3,
                                  2
                                )

                                panel:CheckBox(
                                  "Avoid obstacles",
                                  "drgbase_avoid_obstacles"
                                )
                                end
    )
    end)
