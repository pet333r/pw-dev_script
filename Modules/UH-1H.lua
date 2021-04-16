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
}

ExportScript.ConfigArguments =
{
}

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end