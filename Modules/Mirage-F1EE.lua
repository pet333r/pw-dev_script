-- Mirage F1 EE

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

    [203] = "%.2f", -- AoA (0.24 - 0.92)

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

	-- Lighting
	[382] = "%d", 	-- Day/Night selector switch
	[383] = "%.1f", -- Light and panel lighting rheostat
	[384] = "%.1f", -- Ultraviolet lighting rheostat
	[385] = "%.1f", -- Dual instrument panel lighting rheostat (Floodlights)
	[386] = "%.1f", -- Dual instrument panel lighting rheostat (Integral)
	[387] = "%.1f", -- Dual console and pedestal lighting rheostat (Floodlights)
	[388] = "%.1f", -- Dual console and pedestal lighting rheostat (Integral)

    [474] = "%d",   -- Standby Horizon Switch
    [475] = "%d",   -- Electro-Pump Switch
    [476] = "%d",   -- Warning Horn Switch
    [477] = "%d",   -- Probe Heater Switch
    [478] = "%d",   -- Radar Detector Switch
    [479] = "%d",   -- Search Light Control switch
    [485] = "%d",	--  X/Y selector
    [486] = "%.1f",	--  FREQUENCY HUNDREDS AND TENS SELECTOR
    [487] = "%.1f",	--  MODE SELECTOR A/A T/R REC OFF
    [488] = "%.1f",	--  FREQUENCY UNITS SELECTOR
    [503] = "%d",	--  on/off selector
    [504] = "%.1f",	--  MHZ FREQUENCY SELECTOR
    [505] = "%d",	--  test selector
    [506] = "%.1f",	--  KHZ FREQUENCY SELECTOR
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

    [590] = "%.1f",	--  Armament Sight Selector
    [591] = "%d",	--  Firing Fuel Dipper Switch
    [592] = "%.1f",	--  Armament Bomb/Rocket Selector
    [593] = "%d",	--  MATRA 550 or Sidewinder Missile Switch
    [594] = "%d",	--  Fore/Aft Selector Switch
    [595] = "%d",	--  Auto/Manual Firing Selector Switch
    [596] = "%d",	--  Single/Salvo Selector
    [597] = "%.1f",	--  Instantaneous/Delay/Safe Selector Switch
    [601] = "%d",	--  R 530 Missile Normal/Altitude Difference Selector Switch
    [603] = "%d",	--  Normal/Jammer Pursuit Switch

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

	[632] = "%.1f",	-- Indicator lights brightness
    [633] = "%.1f",	-- Strobe brightness
    [634] = "%.1f",	-- Distance markers brightness
    [635] = "%.1f",	-- Horizon and radial velocity marker brightness
    [636] = "%.1f",	-- Horizon symbol vertical position

    [643] = "%d", -- ALIGN light
    [644] = "%d", -- PRET light
    [645] = "%d", -- ALERTE light
    [646] = "%d", -- UNI light
    [647] = "%d", -- BAT light
    [648] = "%d", -- SEC light
    [649] = "%d", -- T light
    [650] = "%d", -- T button
    [651] = "%d", -- VALID button
    [1273] = "%.1f", -- VALID button light
    [652] = "%d", -- INSER button
    [1274] = "%.1f", -- INSER button light

    [653] = "%d", -- 1 button
    [654] = "%d", -- 2 button
    [655] = "%d", -- 3 button
    [656] = "%d", -- 4 button
    [657] = "%d", -- 5 button
    [658] = "%d", -- 6 button
    [659] = "%d", -- 7 button
    [660] = "%d", -- 8 button
    [661] = "%d", -- 9 button
    [662] = "%d", -- * button
    [663] = "%d", -- 0 button
    [664] = "%d", -- CLR button

    [665] = "%.1f", -- knob 1 0-0.5
    [666] = "%.3f", -- knob 2 0-1, 0.125
    [667] = "%.1f", -- knob 3 0-1, 0.11?
    [668] = "%.1f", -- knob 3 0-1, 0.5

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

    [1029] = "%d",   -- INJ
    [1030] = "%d",   -- INJ red
    [1031] = "%d",   -- FON
    [1032] = "%d",   -- FON green
    [1033] = "%d",   -- ADR

    [1283] = "%d",   -- REG green
    [1284] = "%d",   -- TONO green
    [1363] = "%d",   -- ELIM yellow
    [1285] = "%d",   -- EXPL green
    [1364] = "%d",   -- ELIM yellow
    [1286] = "%d",   -- AMEN green
    [1365] = "%d",   -- ELIM yellow
    [1287] = "%d",   -- CURS green

    -- LCD top lights
    [1335] = "%d",   -- N
    [1336] = "%d",   -- S
    [1337] = "%d",   -- +
    [1338] = "%d",   -- -
    [1339] = "%d",   -- VERS
    [1359] = "%d",   -- E
    [1360] = "%d",   -- W
    [1340] = "%d",   -- +
    [1341] = "%d",   -- -
    -- LCD (co 0.1, 1.0 -> puste)
    [1342] = "%.1f",   -- nr. 01
    [1343] = "%.1f",   -- nr. 02
    [1344] = "%.1f",   -- nr. 03
    [1345] = "%.1f",   -- nr. 04
    [1346] = "%.1f",   -- nr. 05

    [1361] = "%.1f",   -- nr. 06

    [1347] = "%.1f",   -- nr. 07
    [1348] = "%.1f",   -- nr. 08
    [1349] = "%.1f",   -- nr. 09
    [1350] = "%.1f",   -- nr. 10
    [1351] = "%.1f",   -- nr. 11
    [1352] = "%.1f",   -- nr. 12

    -- LCD bottom lights
    [1353] = "%d",   -- triangle 1
    [1354] = "%d",   -- triangle 2
    [1355] = "%d",   -- triangle 3
    [1356] = "%d",   -- triangle 4
}

PWDEV.ConfigArguments =
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
    ins = {}
	ins[1] = GetDigit(1342)
	ins[2] = GetDigit(1343)
	ins[3] = GetDigit(1344)
	ins[4] = GetDigit(1345)
	ins[5] = GetDigit(1346)
	ins[6] = GetDigit(1361)
	ins[7] = GetDigit(1347)
	ins[8] = GetDigit(1348)
	ins[9] = GetDigit(1349)
	ins[10] = GetDigit(1350)
	ins[11] = GetDigit(1351)
	ins[12] = GetDigit(1352)
	send(2001, ins[1]..ins[2]..ins[3]..ins[4]..ins[5]..ins[6]..ins[7]..ins[8]..ins[9]..ins[10]..ins[11]..ins[12])
end