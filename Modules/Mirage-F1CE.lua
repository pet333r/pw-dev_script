-- Mirage F1 CE

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true
dofile(PWDEV.Config.ExportModulePath.."Mirage-F1_lib.lua")

PWDEV.ConfigEveryFrameArguments =
{
    [111] = "%.1f", -- Navigation Light Control
    [112] = "%.1f", -- Formation Light Control
    -- cautions
    [113] = "%d", -- BATT switch
    [114] = "%d", -- ALT 1 switch
    [115] = "%d", -- ALT 2 switch
    [117] = "%d", -- CONV REARM switch
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
    [271] = "%.1f", -- TEST light
    [272] = "%d", -- E+A2 switch
    [273] = "%d", -- SIL switch
    [274] = "%.1f", -- X____
    [275] = "%.1f", -- _X___
    [276] = "%.1f", -- __X__
    [277] = "%.1f", -- ___X_
    [278] = "%.2f", -- ____X
    --[344] = "%.2f", -- Function selector
    [280] = "%.1f", -- Function selector
    [281] = "%d", -- Pilot V/UHF 25W - 5W Switch
    [282] = "%.1f", -- Pilot V/UHF Frequency Selector Switch 0.5
    [283] = "%.2f", -- Pilot V/UHF Channel Selector
	
	-- COM 2
	[340] = "%d", 	-- 5W/25W selector switch
	[341] = "%d", 	-- Squelch switch
	[342] = "%d", 	-- Test selector switch
	[344] = "%.2f", -- Function selector
	[348] = "%.2f", -- Channel selector

	[353] = "%.1f", -- Landing light control
	
	-- Lighting
	[382] = "%d", 	-- Day/Night selector switch
	[383] = "%.1f", -- Light and panel lighting rheostat
	[384] = "%.1f", -- Ultraviolet lighting rheostat
	[385] = "%.1f", -- Dual instrument panel lighting rheostat (Floodlights)
	[386] = "%.1f", -- Dual instrument panel lighting rheostat (Integral)
	[387] = "%.1f", -- Dual console and pedestal lighting rheostat (Floodlights)
	[388] = "%.1f", -- Dual console and pedestal lighting rheostat (Integral)

    [474] = "%d",	-- Standby Horizon Switch
    [475] = "%d",	-- Electro-Pump Switch
    [476] = "%d",	-- AVERT SON Switch
    [477] = "%d",	-- ANEMO Probe Heater Switch
    [478] = "%d",	-- RWR Switch
    [479] = "%d",	-- PH POLICE Switch

    [537] = "%.2f",	-- Pilot Heading and Vertical Reference System Control Switch
    [538] = "%d",	-- Pilot Emergency Gyromagnetic Compass Switch

    -- TACAN
    -- [481] = "%.1f",	--  X/Y
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

	-- circuits
    [548] = "%d",	-- 
    [550] = "%d",	-- 
    [552] = "%d",	-- 
    [554] = "%d",	-- 
    [556] = "%d",	-- 
    [558] = "%d",	-- 
    [560] = "%d",	-- 
    [562] = "%d",	-- 
    [564] = "%d",	-- 
    [566] = "%d",	-- 
    [568] = "%d",	-- 
    [570] = "%d",	-- 
    [572] = "%d",	-- 
    [574] = "%d",	-- 
    [576] = "%d",	-- 
    [578] = "%d",	-- 
    [580] = "%d",	-- 
    [582] = "%d",	-- 
    [584] = "%d",	-- 
    [586] = "%d",	-- 
    [588] = "%d",	-- 

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

	[632] = "%.1f",	-- Indicator lights brightness
    [633] = "%.1f",	-- Strobe brightness
    [634] = "%.1f",	-- Distance markers brightness
    [635] = "%.1f",	-- Horizon and radial velocity marker brightness
    [636] = "%.1f",	-- Horizon symbol vertical position

	-- IFF
    [732] = "%.3f",	-- Mode 1 coding tens selector
    [733] = "%.3f",	-- Mode 1 coding units selector
    [734] = "%.3f",	-- Mode 3A coding thousands selector
    [735] = "%.3f",	-- Mode 3A coding hundreds selector
    [736] = "%.3f",	-- Mode 3A coding tens selector
    [737] = "%.3f",	-- Mode 3A coding units selector
    [739] = "%.3f",	-- Function selector switch
    [740] = "%.1f",	-- IFF monitoring light (green)
    [743] = "%.3f",	-- Mode 4 selector switch
    [744] = "%d",	-- Function selector switch
    [745] = "%d",	-- IFF mode 4 switch
    [746] = "%.1f",	-- IFF fault light (red)
    [749] = "%d",	-- AUDIO-LIGHT switch
    [750] = "%d",	-- M-1 mode switch
    [751] = "%d",	-- M-2 mode switch
    [752] = "%d",	-- M-3 mode switch
    [753] = "%d",	-- M-C mode switch

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
    [975] = "%.1f", -- Autopilot PA Button P Light (red)
    [976] = "%.1f", -- Autopilot PA Button A Light (green)
    [977] = "%d",   -- Autopilot ALT Button
    [978] = "%.1f", -- Autopilot ALT Button ALT Light (green)
    [979] = "%.1f", -- Autopilot ALT Button ALT Light (red)
    [980] = "%d",   -- Autopilot CAP Button
    [981] = "%.1f", -- Autopilot CAP Button CAP Light (green)
    [982] = "%d",   -- Autopilot R Button
    [983] = "%.1f", -- Autopilot R Button < (red)
    [984] = "%.1f", -- Autopilot R Button R (red)
    [985] = "%.1f", -- Autopilot R Button light (green)
    [986] = "%.1f", -- Autopilot R Button > (red)
    [987] = "%d",   -- Autopilot G Button
    [988] = "%.1f", -- Autopilot G Button G Light (red)
    [989] = "%.1f", -- Autopilot G Button up (red)
    [990] = "%.1f", -- Autopilot G Button dn (red)
    [991] = "%.1f", -- Autopilot G Button light (green)
}

PWDEV.ConfigArguments =
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
    -- TACAN
    tcnArr = {}
    tacan = "X"
    hun = " "
    tcnArr[1] = string.format("%.1f", mainPanelDevice:get_argument_value(481))
    if tcnArr[1] == "0.0" then tacan = "X"
    elseif tcnArr[1] == "0.2" then tacan = "Y" end
    tcnArr[2] = string.format("%.1f", mainPanelDevice:get_argument_value(482))
    if tcnArr[2] == "0.0" then hun = " "
    elseif tcnArr[2] == "0.1" then hun = "1" end
    tcnArr[3] = string.format("%1.0f", mainPanelDevice:get_argument_value(483) * 10)
    if tcnArr[3] == "10" then tcnArr[3] = "0" end
    tcnArr[4] = string.format("%1.0f", mainPanelDevice:get_argument_value(484) * 10)
    if tcnArr[4] == "10" then tcnArr[4] = "0" end
    send(2010, tacan..hun..tcnArr[3]..tcnArr[4])

    -- VOR/ILS
    vorArr = {}
    vorArr[1] = string.format("%1.0f", mainPanelDevice:get_argument_value(498) * 10)
    vorArr[2] = string.format("%1.0f", mainPanelDevice:get_argument_value(499) * 10)
    vorArr[3] = string.format("%1.0f", mainPanelDevice:get_argument_value(500) * 10)
    if vorArr[3] == "10" then vorArr[3] = "0" end
    vorArr[4] = string.format("%1.0f", mainPanelDevice:get_argument_value(501) * 10)
    if vorArr[4] == "10" then vorArr[4] = "0" end
    vorArr[5] = string.format("%1.0f", mainPanelDevice:get_argument_value(502) * 10)
    send(2011, vorArr[1]..vorArr[2]..vorArr[3]..vorArr[4]..vorArr[5])

    -- VOR/ILS-TACAN
    digArr = {}
    digArr[1] = string.format("%1.0f", mainPanelDevice:get_argument_value(541) * 10)
    digArr[2] = string.format("%1.0f", mainPanelDevice:get_argument_value(542) * 10)
    if digArr[2] == "10" then digArr[2] = "0" end
    digArr[3] = string.format("%1.0f", mainPanelDevice:get_argument_value(543) * 10)
    if digArr[3] == "10" then digArr[3] = "0" end
    send(2012, digArr[1]..digArr[2]..digArr[3])
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)

    local comm1_ch = mf1_comm1_channel[string.format("%.2f", mainPanelDevice:get_argument_value(283))]
	send(2002, comm1_ch)

    send(2003, Mf1_comm1_channel_get(mainPanelDevice))
end