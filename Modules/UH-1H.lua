-- UH-1H Huey
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments =
{
    -- Warnings
    [91] = "%1d", -- ENGINE OIL PRESS (yellow)
    [92] = "%1d", -- ENGINE ICING (yellow)
    [93] = "%1d", -- ENGINE ICE JET (yellow)
    [94] = "%1d", -- ENGINE CHIP DET (yellow)
    [95] = "%1d", -- LEFT FUEL BOOST (yellow)
    [96] = "%1d", -- RIGHT FUEL BOOST (yellow)
    [97] = "%1d", -- ENG FUEL PUMP (yellow)
    [98] = "%1d", -- 20 MIN FUEL (yellow)
    [99] = "%1d", -- FUEL FILTER (yellow)
    [100] = "%1d", -- GOV EMER (yellow)
    [101] = "%1d", -- AUX FUEL LOW (yellow)
    [102] = "%1d", -- XMSN OIL PRESS (yellow)
    [103] = "%1d", -- XMSN OIL HOT (yellow)
    [104] = "%1d", -- HYD PRESSURE (yellow)
    [105] = "%1d", -- ENGINE INLET AIR (yellow)
    [106] = "%1d", -- INST INVERTER (yellow)
    [107] = "%1d", -- DC GENERATOR (yellow)
    [108] = "%1d", -- EXTERNAL POWER (yellow)
    [109] = "%1d", -- CHIP DETECTOR (yellow)
    [110] = "%1d", -- IFF (yellow)

    -- EXT LTS
    [223] = "%1d", -- Navigation Lights STEADY/OFF/FLASH
    [224] = "%1d", -- Position LIghts DIM/BRT
    [225] = "%1d", -- Anticollision Lights OFF/ON

    -- INST LTG
    [230] = "%1d", -- Overhead Console Panel Lights Brightness
    [231] = "%1d", -- Pedestal Lights Brightness
    [232] = "%1d", -- Secondary Instrument Lights Brightness
    [233] = "%1d", -- Engine Instrument Lights Brightness
    [234] = "%1d", -- Copilot Instrument Lights Brightness
    [235] = "%1d", -- Pilot Instrument Lights Brightness

    [252] = "%1d", -- Master Arm OFF/SAFE/ARMED
    [253] = "%1d", -- Gun Selector LEFT / BOTH / RIGHT
    [254] = "%1d", -- ARMED Indicator (red)
    [255] = "%1d", -- SAFE Indicator (green)

    [256] = "%1d", -- 7.62 / 2.75 / 40
    [257] = "%.1f", -- Rocket Pair
    [259] = "%1d", -- Jettison Switch Cover
    [260] = "%1d", -- Jettison Switch
}

ExportScript.ConfigArguments =
{
}

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
    -- local function getFlareCountAsNumber()
    --     local digit1 = string.format("%.0f", GetDevice(0):get_argument_value(460)*10)
    --     local digit2 = string.format("%.0f", GetDevice(0):get_argument_value(461)*10)
    --     return tonumber(digit1 .. digit2)
    -- end

    -- local function getChaffCountAsNumber()
    --     local digit1 = string.format("%.0f", GetDevice(0):get_argument_value(462)*10)
    --     local digit2 = string.format("%.0f", GetDevice(0):get_argument_value(463)*10)
    --     return tonumber(digit1 .. digit2)
    -- end
end