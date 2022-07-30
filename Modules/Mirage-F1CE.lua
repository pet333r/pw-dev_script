-- Module Name Export
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    -- cautions
    [113] = "%d", -- BATT switch
    [114] = "%d", -- ALT 1 switch
    [115] = "%d", -- ALT 2 switch
    [117] = "%d", -- CONV REARM switch
    [120] = "%d", -- BATT
    [121] = "%d", -- ALT 1
    [122] = "%d", -- ALT 2
    [123] = "%d", -- TR1
    [124] = "%d", -- SEC
    [125] = "%d", -- BP
    [126] = "%d", -- BP.G
    [127] = "%d", -- BP.D
    [128] = "%d", -- TR2
    [129] = "%d", -- NIV
    [130] = "%d", -- HUILE
    [131] = "%d", -- E P
    [132] = "%d", -- HYD S
    [133] = "%d", -- HYDR1
    [134] = "%d", -- HYDR2
    [135] = "%d", -- REG O2
    [136] = "%d", -- 5mn O2
    [137] = "%d", -- T.EQ
    [138] = "%d", -- T.CAB
    [139] = "%d", -- P.CAB
    [140] = "%d", -- TRIM
    [141] = "%d", -- PA
    [142] = "%d", -- CAP
    [143] = "%d", -- ANEMO
    [144] = "%d", -- C.AERO
    [145] = "%d", -- LACET
    [146] = "%d", -- TANG
    [147] = "%d", -- ROUL
    [148] = "%d", -- EMP
    [149] = "%d", -- DIR
    [150] = "%d", -- HYPER
    [151] = "%d", -- MODUL
    [152] = "%d", -- VAN.D

    [203] = "%.2f", -- AoA

    [474] = "%d",	-- Standby Horizon Switch
    [475] = "%d",	-- Electro-Pump Switch
    [476] = "%d",	-- AVERT SON Switch
    [477] = "%d",	-- ANEMO Probe Heater Switch
    [478] = "%d",	-- RWR Switch
    [479] = "%d",	-- PH POLICE Switch

    [590] = "%d",	--  Switch
    [591] = "%d",	--  Switch
    [592] = "%d",	-- BOMB/ROD Switch
    [593] = "%d",	-- EXT M A Switch
    [594] = "%d",	-- AV AR Switch
    [595] = "%d",	-- TIR Switch AUTO MAN
    [596] = "%d",	-- CPC Switch
    [597] = "%d",	-- INST Switch
    [598] = "%d",	-- RADAR EMIS Switch
    [599] = "%d",	-- 
    [600] = "%d",	-- 
    [601] = "%d",	-- 
    [602] = "%d",	-- TEST LAMP btn
    [603] = "%d",	-- N PB switch

    [604] = "%d",	-- EXT G btn
    [605] = "%d",	-- EXT G btn light
    [606] = "%d",	-- M.G. FUS btn
    [607] = "%d",	-- M.G. FUS btn light
    [608] = "%d",	-- CAN A btn
    [609] = "%d",	-- CAN A btn light
    [610] = "%d",	-- BOMB VOIL btn
    [611] = "%d",	-- BOMB VOIL btn light
    [612] = "%d",	-- EXT D btn
    [613] = "%d",	-- EXT D btn light
    [614] = "%d",	-- M.D. btn
    [615] = "%d",	-- M.D. btn light
    [616] = "%d",	-- CAN.S ROQ btn
    [617] = "%d",	-- CAN.S ROQ btn light
    [618] = "%d",	-- BOMB FUS btn
    [619] = "%d",	-- BOMB FUS btn light

}

ExportScript.ConfigArguments = 
{
}

-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)

end

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)

end