-- Mirage F1 EE
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    -- cautions
    [113] = "%.1f", -- BATT switch
    [114] = "%.1f", -- ALT 1 switch
    [115] = "%.1f", -- ALT 2 switch
    [117] = "%.1f", -- CONV REARM switch
    [120] = "%.1f", -- BATT
    [121] = "%.1f", -- ALT 1
    [122] = "%.1f", -- ALT 2
    [123] = "%.1f", -- TR1
    [124] = "%.1f", -- SEC
    [125] = "%.1f", -- BP
    [126] = "%.1f", -- BP.G
    [127] = "%.1f", -- BP.D
    [128] = "%.1f", -- TR2
    [129] = "%.1f", -- NIV
    [130] = "%.1f", -- HUILE
    [131] = "%.1f", -- E P
    [132] = "%.1f", -- HYD S
    [133] = "%.1f", -- HYDR1
    [134] = "%.1f", -- HYDR2
    [135] = "%.1f", -- REG O2
    [136] = "%.1f", -- 5mn O2
    [137] = "%.1f", -- T.EQ
    [138] = "%.1f", -- T.CAB
    [139] = "%.1f", -- P.CAB
    [140] = "%.1f", -- TRIM
    [141] = "%.1f", -- PA
    [142] = "%.1f", -- CAP
    [143] = "%.1f", -- ANEMO
    [144] = "%.1f", -- C.AERO
    [145] = "%.1f", -- LACET
    [146] = "%.1f", -- TANG
    [147] = "%.1f", -- ROUL
    [148] = "%.1f", -- EMP
    [149] = "%.1f", -- DIR
    [150] = "%.1f", -- HYPER
    [151] = "%.1f", -- MODUL
    [152] = "%.1f", -- VAN.D

    [203] = "%.2f", -- AoA (0.24 - 0.92)

    -- armament
    [604] = "%d",	-- EXT G btn
    [605] = "%.1f",	-- EXT G btn light
    [606] = "%d",	-- M.G. FUS btn
    [607] = "%.1f",	-- M.G. FUS btn light
    [608] = "%d",	-- CAN A btn
    [609] = "%.1f",	-- CAN A btn light
    [610] = "%d",	-- BOMB VOIL btn
    [611] = "%.1f",	-- BOMB VOIL btn light
    [612] = "%d",	-- EXT D btn
    [613] = "%.1f",	-- EXT D btn light
    [614] = "%d",	-- M.D. btn
    [615] = "%.1f",	-- M.D. btn light
    [616] = "%d",	-- CAN.S ROQ btn
    [617] = "%.1f",	-- CAN.S ROQ btn light
    [618] = "%d",	-- BOMB FUS btn
    [619] = "%.1f",	-- BOMB FUS btn light
}

ExportScript.ConfigArguments = 
{
}

local function GetDigit(arg)
    tmp = string.format("%1.0f",GetDevice(0):get_argument_value(arg) * 10)
    if (tmp == "10") then
        return " "
    else
        return tmp
    end
end

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end