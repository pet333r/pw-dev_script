-- Mirage F1 BE

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- cautions
    [113] = "%1d", -- BATT switch
    [114] = "%1d", -- ALT 1 switch
    [115] = "%1d", -- ALT 2 switch
    [117] = "%1d", -- CONV REARM switch
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

    -- cautions 2
    [161] = "%.1f", -- BATT
    [162] = "%.1f", -- ALT 1
    [163] = "%.1f", -- ALT 2
    [164] = "%.1f", -- TR1
    [165] = "%.1f", -- SEC
    [166] = "%.1f", -- BP
    [167] = "%.1f", -- BP.G
    [168] = "%.1f", -- BP.D
    [169] = "%.1f", -- TR2
    [170] = "%.1f", -- NIV
    [171] = "%.1f", -- HUILE
    [172] = "%.1f", -- E P
    [173] = "%.1f", -- HYD S
    [174] = "%.1f", -- HYDR1
    [175] = "%.1f", -- HYDR2
    [176] = "%.1f", -- REG O2
    [177] = "%.1f", -- 5mn O2
    [178] = "%.1f", -- T.EQ
    [179] = "%.1f", -- T.CAB
    [180] = "%.1f", -- P.CAB
    [181] = "%.1f", -- TRIM
    [182] = "%.1f", -- PA
    [183] = "%.1f", -- CAP
    [184] = "%.1f", -- ANEMO
    [185] = "%.1f", -- C.AERO
    [186] = "%.1f", -- LACET
    [187] = "%.1f", -- TANG
    [188] = "%.1f", -- ROUL
    [189] = "%.1f", -- EMP
    [190] = "%.1f", -- DIR
    [191] = "%.1f", -- HYPER
    [192] = "%.1f", -- MODUL
    [193] = "%.1f", -- VAN.D

    -- AoA
    [203] = "%.2f", -- AoA (0.24 - 0.92)
    [206] = "%.2f", -- AoA (0.24 - 0.92)

    [474] = "%d",   -- Standby Horizon Switch
    [475] = "%d",   -- Electro-Pump Switch
    [476] = "%d",   -- Warning Horn Switch
    [477] = "%d",   -- Probe Heater Switch
    [478] = "%d",   -- Radar Detector Switch
    [479] = "%d",   -- Search Light Control switch

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

    -- armament 2
    [622] = "%.1f",	-- EXT G btn light
    [623] = "%.1f",	-- M.G. FUS btn light
    [624] = "%.1f",	-- CAN A btn light
    [625] = "%.1f",	-- BOMB VOIL btn light
    [626] = "%.1f",	-- EXT D btn light
    [627] = "%.1f",	-- M.D. btn light
    [628] = "%.1f",	-- CAN.S ROQ btn light
    [629] = "%.1f",	-- BOMB FUS btn light

    [842] = "%d",	-- HA light (yellow)
    [843] = "%d",	-- IC light (yellow)
    [844] = "%d",	-- TL light (green)
    [845] = "%d",	-- BZ light (green)
    [846] = "%d",	-- TSlight (green)
    [847] = "%d",	-- V1 light (yellow)
    [848] = "%d",	-- V2 light (yellow)
    [849] = "%d",	-- DC light (yellow)
    [850] = "%d",	-- PR light (yellow)
    [851] = "%d",	-- AC light (yellow)
    [852] = "%d",	-- DB light (yellow)
    [853] = "%d",	-- light (yellow)
    [854] = "%d",	-- light (green)
    [855] = "%d",	-- light (red)
    [856] = "%d",	-- 7 light (yellow)
    [857] = "%d",	-- 15 light (yellow)
    [858] = "%d",	-- 35 light (yellow)
    [859] = "%d",	-- 60 light (yellow)
    [860] = "%d",	-- AP light (yellow)
    [861] = "%d",	-- TCH light (red)
    [862] = "%d",	-- EMI light (red)
    [863] = "%d",	-- PNE light (red)

    [921] = "%d",	-- PANNE (red)
    [923] = "%d",	-- PANNE (yellow)
    [929] = "%d",	-- TRAIN light (red)
    [933] = "%d",	-- LIM light (red)

    -- autopilot
    [974] = "%d",   -- Autopilot PA Button
    [975] = "%d",   -- Autopilot PA Button P Light (red)
    [976] = "%d",   -- Autopilot PA Button A Light (green)
    [977] = "%d",   -- Autopilot ALT Button ALT Light (green)
    [978] = "%d",   -- Autopilot ALT Button ALT Light (red)
    [979] = "%d",   -- Autopilot ALT Button
    [980] = "%d",   -- Autopilot CAP Button
    [981] = "%d",   -- Autopilot CAP Button CAP Light (green)
    [982] = "%d",   -- Autopilot R Button
    [983] = "%d",   -- Autopilot R Button < (red)
    [984] = "%d",   -- Autopilot R Button R (red)
    [985] = "%d",   -- Autopilot R Button light (green)
    [986] = "%d",   -- Autopilot R Button > (red)
    [987] = "%d",   -- Autopilot G Button
    [988] = "%d",   -- Autopilot G Button G Light (red)
    [989] = "%d",   -- Autopilot G Button up (red)
    [990] = "%d",   -- Autopilot G Button dn (red)
    [991] = "%d",   -- Autopilot G Button light (green)

    -- autopilot
    -- [974] = "%.1f",   -- Autopilot PA Button
    [994] = "%.1f",   -- Autopilot PA Button P Light (red)
    [995] = "%.1f",   -- Autopilot PA Button A Light (green)
    [997] = "%.1f",   -- Autopilot ALT Button ALT Light (green)
    [998] = "%.1f",   -- Autopilot ALT Button ALT Light (red)
    -- [979] = "%.1f",   -- Autopilot ALT Button
    -- [980] = "%.1f",   -- Autopilot CAP Button
    [1000] = "%.1f",   -- Autopilot CAP Button CAP Light (green)
    -- [982] = "%.1f",   -- Autopilot R Button
    [1002] = "%.1f",   -- Autopilot R Button < (red)
    [1003] = "%.1f",   -- Autopilot R Button [] green
    [1004] = "%.1f",   -- Autopilot R Button "R"
    [1005] = "%.1f",   -- Autopilot R Button > (red)
    -- [987] = "%.1f",   -- Autopilot G Button
    [1007] = "%.1f",   -- Autopilot G Button G Light (red)
    [1008] = "%.1f",   -- Autopilot G Button > (red)
    [1009] = "%.1f",   -- Autopilot G Button < (red)
    [1010] = "%.1f",   -- Autopilot G Button [] light (green)

    -- RADAR
    [1384] = "%.1f",   -- VEIL light
    [1385] = "%.1f",   -- EMIS light
    [1386] = "%.1f",   -- DEN light
}

PWDEV.ConfigArguments =
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)

end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)

end