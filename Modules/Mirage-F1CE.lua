-- Module Name Export
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    [111] = "%.1f", -- Navigation Light Control
    [112] = "%.1f", -- Formation Light Control
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

    [203] = "%.2f", -- AoA

    -- COM left
    [271] = "%d", -- TEST light
    [272] = "%d", -- E+A2 switch
    [273] = "%d", -- SIL switch
    [274] = "%.1f", -- X____
    [275] = "%.1f", -- _X___
    [276] = "%.1f", -- __X__
    [277] = "%.1f", -- ___X_
    [278] = "%.2f", -- ____X
    [280] = ".1f", -- Pilot V/UHF Function Selector 0.2, {0, 0.8}
    [281] = ".1f", -- Pilot V/UHF 25W - 5W Switch
    [282] = ".1f", -- Pilot V/UHF Frequency Selector Switch 0.5
    [283] = ".2f", -- Pilot V/UHF Channel Selector

    [474] = "%d",	-- Standby Horizon Switch
    [475] = "%d",	-- Electro-Pump Switch
    [476] = "%d",	-- AVERT SON Switch
    [477] = "%d",	-- ANEMO Probe Heater Switch
    [478] = "%d",	-- RWR Switch
    [479] = "%d",	-- PH POLICE Switch

    [537] = "%.2f",	-- Pilot Heading and Vertical Reference System Control Switch
    [538] = "%d",	-- Pilot Emergency Gyromagnetic Compass Switch

    -- TACAN
    [481] = "%.1f",	--  X/Y
    [485] = "%d",	--  X/Y selector
    [486] = "%.1f",	--  FREQUENCY HUNDREDS AND TENS SELECTOR
    [487] = "%.1f",	--  MODE SELECTOR A/A T/R REC OFF
    [488] = "%.1f",	--  FREQUENCY UNITS SELECTOR

    -- VOR/ILS
    [503] = "%d",	--  on/off selector
    [504] = "%.1f",	--  MHZ FREQUENCY SELECTOR
    [505] = "%d",	--  test selector
    [506] = "%.1f",	--  KHZ FREQUENCY SELECTOR

    -- VOR/ILS-TACAN
    [544] = "%.1f",	--  knob out
    [545] = "%.1f",	--  knob in

    [590] = "%.1f",	-- Sight Selector Switch
    [591] = "%d",	--  Switch
    [592] = "%.1f",	-- BOMB/ROD Switch
    [593] = "%d",	-- EXT M A Switch
    [594] = "%d",	-- AV AR Switch
    [595] = "%d",	-- TIR Switch AUTO MAN
    [596] = "%d",	-- CPC Switch
    [597] = "%.1f",	-- INST Switch
    [598] = "%.1f",	-- RADAR EMIS Switch
    [599] = "%d",	-- 
    [600] = "%d",	-- 
    [601] = "%d",	-- 
    [602] = "%d",	-- TEST LAMP btn
    [603] = "%d",	-- N PB switch

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