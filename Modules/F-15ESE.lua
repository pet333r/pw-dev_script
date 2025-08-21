-- F-15E Strike Eagle

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	-- HUD
	[120] = "%.1f",		-- HUD Brightness Control
	[121] = "%.1f",		-- HUD Symbology Reject Mode
	[122] = "%d",		-- HUD DAY/AUTO/NIGHT Mode Selector

	[326] = "%d",		-- A/A Master Mode Selector light
	[327] = "%d",		-- A/G Master Mode Selector light
	[328] = "%d",		-- NAV Master Mode Selector light
	[329] = "%d",		-- INST Master Mode Selector light

	[130] = "%d",		-- AMAD Fire Push light
	[131] = "%d",		-- L ENGINE Fire Push light
	[132] = "%d",		-- R ENGINE Fire Push light
	[133] = "%d",		-- L BURN THRU red light
	[134] = "%d",		-- R BURN THRU red light

	[180] = "%.1f",		-- cockpit light green
	[181] = "%.1f",		-- L/R BURN THRU red light

	[196] = "%d",		-- SHOOT yellow light
	[197] = "%d",		-- READY green light (AR)

	[221] = "%.1f",		-- 
	[222] = "%.1f",		-- 
	[223] = "%.1f",		-- 
	[244] = "%.1f",		-- 
	[245] = "%.1f",		-- 
	[246] = "%.1f",		-- 
	[315] = "%d",		-- AMAD Fire Switch Cover
	[316] = "%d",		-- AMAD Fire Switch
	[317] = "%d",		-- Left Engine Switch Cover
	[318] = "%d",		-- Left Engine Switch
	[319] = "%d",		-- Right Engine Switch Cover
	[320] = "%d",		-- Right Engine Switch

	[321] = "%.1f",		-- Armament Jettison Selector
	[323] = "%d",		-- Master Arm

	[330] = "%.1f",		-- NOSE light red/green
	[331] = "%.1f",		-- LEFT light red/green
	[332] = "%.1f",		-- RIGHT light red/yellow/green

	[338] = "%d",		-- FLAP yellow light
	[339] = "%d",		-- FLAP green light

	-- PLT Fuel panel
	[381] = "%.1f",		-- Fuel Totalizer Selector
	[382] = "%d",		-- Fuel OFF Flag
	[383] = "%.2f",		-- Fuel Needle
	[384] = "%.2f",		-- Fuel Needle sel
	[385] = "%.1f",		-- Fuel Bingo knob

	-- PLT lights
	[402] = "%d",		-- MASTER CAUTION light
	[403] = "%d",		-- EMIS LMT light
	[404] = "%d",		-- AI light red
	[405] = "%d",		-- SAM light red
	[406] = "%d",		-- LOW ALT light red
	[429] = "%d",		-- OBST light red
	[407] = "%d",		-- TF FAIL light red
	[408] = "%d",		-- CAN UNLKD light red
	[409] = "%d",		-- LASER ARMED light red
	[410] = "%d",		-- A/P light green

	-- cautions
	[411] = "%d",		-- PROGRAM light
	[412] = "%d",		-- MINIMUM light
	[413] = "%d",		-- CHAFF light
	[414] = "%d",		-- FLARE light
	[415] = "%d",		-- EMER BST ON light
	[416] = "%d",		-- BST SYS MAL light
	[417] = "%d",		-- NUCLEAR light
	[418] = "%d",		-- FUEL LOW light
	[419] = "%d",		-- L GEN LOW light
	[420] = "%d",		-- R GEN LOW light
	[421] = "%d",		-- ENGINE light
	[422] = "%d",		-- FLT CONTR light
	[423] = "%d",		-- HYD light
	[424] = "%d",		-- AV BIT light
	[425] = "%d",		-- DSPFLOLO light
	[426] = "%d",		-- OXYGEN light
	[432] = "%d",		-- SPARE light

	-- CAS
	[452] = "%.1f",		-- Yaw CAS Switch
	[453] = "%.1f",		-- Roll CAS Switch
	[454] = "%.1f",		-- Pitch CAS Switch
	[455] = "%d",		-- BIT Button
	[456] = "%d",		-- TF Couple Switch
	[457] = "%d",		-- T/O Trim Button
	[458] = "%d",		-- Trim light green

	-- EXT LT
	[465] = "%.2f",		-- Formation Lights Knob
	[466] = "%d",		-- Anti Collison Light Switch
	[467] = "%.2f",		-- Position Lights Knob
	[468] = "%.1f",		-- Tail Flood Lights

	-- SENSOR
	[469] = "%.1f",		-- Terrain Follow Radar Switch
	[470] = "%.1f",		-- Radar Altitude Switch
	[471] = "%.2f",		-- Radar Mode Selector
	[472] = "%.2f",		-- INS Mode Selector

	[474] = "%.1f",		-- Nav FLIR Level
	[475] = "%.1f",		-- Nav FLIR Switch
	[476] = "%.2f",		-- JTIDS Knob


	-- FRONT VOL
	[502] = "%.1f",		-- Caution Volume
	[504] = "%.1f",		-- ICS Volume
	[506] = "%.1f",		-- ILS Volume
	-- FRONT MICS
	[508] = "%d",		-- Crypto Switch
	[509] = "%.1f",		-- MIC Switch
	-- FRONT RAD
	[511] = "%d",		-- UHF Antenna Switch
	[512] = "%d",		-- VHF Antenna Switch
	[513] = "%d",		-- Tone Switch
	[514] = "%d",		-- Cypher Text Switch
	-- FRONT IFF
	[515] = "%d",		-- Mode Switch
	[516] = "%.1f",		-- Reply Switch
	[517] = "%d",		-- Master Switch
	[541] = "%d",		-- REPLY Light (white)
	
	-- FRONT FUEL
	[527] = "%d",		-- Wing Tanks
	[528] = "%d",		-- Centerline Tank
	[529] = "%d",		-- Conformal Tanks
	[530] = "%d",		-- Fuel Dump switch
	[531] = "%d",		-- Conformal Tanks Emergency Transfer switch
	[532] = "%d",		-- External Fuel Transfer switch
	[533] = "%.1f",		-- A/R Slipway switch
	-- FRONT MISC
	[534] = "%d",		-- Roll Ratio Switch
	[535] = "%d",		-- Left Inlet Ramp Switch
	[536] = "%d",		-- Right Inlet Ramp Switch
	[537] = "%.1f",		-- Anti Skid Switch
	[538] = "%.1f",		-- Landing/Taxi Light Switch
	-- OXYGEN
	[551] = "%d",		-- Oxygen Emergency/Normal/Test Switch
	[552] = "%d",		-- Oxygen 100%/Normal Switch
	[553] = "%.1f",		-- Oxygen Supply/Mode Control Switch
	[554] = "%.2f",		-- Oxygen gauge
	[555] = "%d",		-- flow
	-- ECS
	[556] = "%d",		-- Oxygen Test
	[558] = "%.1f",		-- Anti-Fog
	[559] = "%d",		-- Windshield Anti-ice Switch
	[560] = "%d",		-- Pitot Heat Switch
	[561] = "%d",		-- Engine Heat Switch
	-- AIR COND
	[562] = "%.1f",		-- Air Conditiong Auto/Manual/Off
	[563] = "%.1f",		-- Air Conditiong Max/Norm/Min
	[564] = "%.1f",		-- Air Conditiong Cold/Hot
	[565] = "%.2f",		-- Air Conditioning Source
	-- ENGINE
	[587] = "%d",		-- Left Generator sw
	[588] = "%d",		-- Right Generator sw
	[589] = "%.1f",		-- Emergency Generator sw
	[590] = "%d",		-- Left Engine Control Switch
	[591] = "%d",		-- Right Engine Control Switch
	[592] = "%d",		-- Left Engine Master Switch Cover
	[593] = "%d",		-- Left Engine Master Switch
	[594] = "%d",		-- External Power Switch
	[595] = "%d",		-- Jet Starter
	[596] = "%d",		-- green light ind
	[597] = "%d",		-- Right Engine Master Switch Cover
	[598] = "%d",		-- Right Engine Master Switch

	-- INTERIOR LT
	[569] = "%d",		-- Warning/Caution Lights Test
	[570] = "%d",		-- Compass Lights
	[571] = "%d",		-- Day/Night Mode Selector

	[699] = "%.2f",		-- Throttle L
	[700] = "%.2f",		-- Throttle R

	-- REAR LEFT joy
	[719] = "%.1f",		-- CMD switch
	[720] = "%.1f",		-- Hat 1 Coolie switch Y
	[721] = "%.1f",		-- Hat 1 Coolie switch X
	[722] = "%.1f",		-- Hat 2 Castle switch Y
	[723] = "%.1f",		-- Hat 2 Castle switch X
	[724] = "%.1f",		-- Hat 3 TDC switch Y
	[725] = "%.1f",		-- Hat 3 TDC switch X
	[727] = "%.1f",		-- Auto acquistion/mode reject switch Y
	[728] = "%.1f",		-- Auto acquistion/mode reject switch depress

	[1130] = "%.1f",	-- ENG NOZZ L
	[1131] = "%.1f",	-- ENG NOZZ R
	[1132] = "%d",		-- IFEI TXT ON/OFF

	-- WSO cautions
	[1171] = "%d",		-- ENG FIRE LEFT light red
	[1172] = "%d",		-- ENG FIRE RIGHT light red
	[1173] = "%d",		-- CANOPY UNLOCKED light red
	[1174] = "%d",		-- LOW ALT light red
	[1177] = "%d",		-- MASTER CAUTION light yellow
	[1178] = "%d",		-- TF FAIL light red
	[1179] = "%d",		-- ENGINE light yellow
	[1180] = "%d",		-- HYD light yellow
	[1181] = "%d",		-- FLT CONTROL light yellow
	[1182] = "%d",		-- AV BIT light yellow
	[1183] = "%d",		-- MASTER ARM light green
	[1184] = "%d",		-- A/P light green
	[1185] = "%d",		-- PROGRAM light green
	[1186] = "%d",		-- MINIMUM light yellow
	[1187] = "%d",		-- DISPLAY FLOW LOW light yellow
	[1188] = "%d",		-- AI light red
	[1189] = "%d",		-- SAM light red
	[1190] = "%d",		-- OBST light red
	[1191] = "%d",		-- L GEN light yellow
	[1192] = "%d",		-- R GEN light yellow
	[1193] = "%d",		-- EMIS LMT light yellow
	[1194] = "%d",		-- FUEL LOW light yellow
	[1195] = "%d",		-- NUCLEAR light yellow
	[1196] = "%d",		-- UNARMED NO ATF light yellow
	[1197] = "%d",		-- CHAFF light yellow
	[1198] = "%d",		-- FLARE light yellow
	[1199] = "%d",		-- OXYGEN light yellow

	-- REAR
	[1333] = "%d",		-- A/A light
	[1334] = "%d",		-- A/G light
	[1335] = "%d",		-- NAV light
	[1336] = "%d",		-- INST light
	[1337] = "%d",		-- NOSE light green
	[1338] = "%d",		-- LEFT light green
	[1339] = "%d",		-- RIGHT light green
	[1340] = "%d",		-- UNSAFE light
	[1343] = "%d",		-- FLAP light yellow
	[1344] = "%d",		-- FLAP light green

	-- EW
	[1417] = "%d",		-- RWR/ICS Mode Switch COMBAT/TRNG
	[1418] = "%d",		-- ECM PODS Mode Switch XMIT/STBY
	[1419] = "%.1f",	-- ICS Operational Mode Switch STBY/AUTO/MAN

	-- REAR MICS
	[1426] = "%d",		-- Crypto Switch
	[1427] = "%.1f",	-- MIC Switch

	-- REAR RAD
	[1429] = "%d",		-- Tone Switch
	[1430] = "%d",		-- Cypher Text Switch

	-- REAR INTERIOR LT
	[1459] = "%d",		-- Warning/Caution Lights Test
	[1460] = "%d",		-- Compass Lights
	[1461] = "%d",		-- Day/Night Mode Selector
	[1466] = "%d",		-- ICS SET 1 MAN/AUTO Switch
	[1467] = "%d",		-- ICS SET 2 MAN/AUTO Switch
	[1468] = "%d",		-- ICS SET 3 MAN/AUTO Switch

	-- REAR TEWS
	[1465] = "%d",		-- ICS ON/OFF Switch
	[1469] = "%d",		-- RWR ON/OFF Switch
	[1470] = "%d",		-- EWWS ON/OFF Switch
	[1471] = "%d",		-- EWWS TONE/DEFEAT Switch
	[1472] = "%d",		-- FAIL lights 3x
	-- CMD
	[1475] = "%.1f",	-- CMD Dispenser Selection Switch FLARE/BOTH/CHAFF
	[1476] = "%.2f",	-- CMD Operational Mode OFF/STBY/MAN/SEMI/AUTO
}

local function replaceSymbols(s)
	s = s:gsub(" ", "_")
	return s
end

PWDEV.ConfigArguments = 
{
	-- HUD
	[123] = "%d",		-- HUD BIT
	[124] = "%.1f",		-- HUD Video Brightness Control
	[125] = "%.1f",		-- HUD Contrast Control
	-- UFC
	[282] = "%.1f",		-- UHF Radio 1 Volume
	[283] = "%.1f",		-- UHF Radio 2 Volume
	[284] = "%.1f",		-- UHF Radio 3 Volume
	[285] = "%.1f",		-- UHF Radio 4 Volume
	[286] = "%.1f",		-- UFC LCD Brightness
	-- Sensor 
	[473] = "%.1f",		-- Nav FLIR Gain

	-- INTERIOR LT
	[566] = "%.1f",		-- Console Lights
	[567] = "%.1f",		-- Instruments Panel Lights
	[568] = "%.1f",		-- Gauges/UFC Backlights
	[572] = "%.1f",		-- Charts Spot Light
	[573] = "%.1f",		-- Warning/Caution Lights (RMB to RESET when BRT)
	[574] = "%.1f",		-- Storm FLood Lights
	-- REAR VOL
	[1420] = "%.1f",	-- Caution Volume
	[1422] = "%.1f",	-- ICS Volume
	[1424] = "%.1f",	-- ILS Volume
	-- REAR OXYGEN
	[1450] = "%d",		-- Oxygen Emergency/Normal/Test Switch
	[1451] = "%d",		-- Oxygen 100%/Normal Switch
	[1452] = "%.1f",	-- Oxygen Supply/Mode Control Switch
	[1453] = "%.2f",	-- Oxygen gauge
	[1454] = "%.1f",	-- flow
	-- REAR INTERIOR LT
	[1456] = "%.1f",	-- Console Lights
	[1457] = "%.1f",	-- Instruments Panel Lights
	[1458] = "%.1f",	-- Gauges/UFC Backlights
	[1462] = "%.1f",	-- Charts Spot Light
	[1463] = "%.1f",	-- Warning/Caution Lights (RMB to RESET when BRT)
	[1464] = "%.1f",	-- Storm FLood Lights
}

--UFC DISPLAY (ID: 8)
local PLT_UFC_Line1			= "                    "
local PLT_UFC_Line2			= "                    "
local PLT_UFC_Line3			= "                    "
local PLT_UFC_Line4			= "                    "
local PLT_UFC_Line5			= "                    "
local PLT_UFC_Line6			= "                    "
local PLT_UFC_Line1_dots 	= "                    "
local PLT_UFC_Line2_dots 	= "                    "
local PLT_UFC_Line3_dots 	= "                    "
local PLT_UFC_Line4_dots 	= "                    "
local PLT_UFC_Line5_dots 	= "                    "
local PLT_UFC_Line6_dots 	= "                    "
local PLT_UFC_ActiveUHF1 	= "          "
local PLT_UFC_ActiveUHF2 	= "          "
--REAR SEAT UFC DISPLAY (ID:20)
local WSO_UFC_Line1			= "                    "
local WSO_UFC_Line2			= "                    "
local WSO_UFC_Line3			= "                    "
local WSO_UFC_Line4			= "                    "
local WSO_UFC_Line5			= "                    "
local WSO_UFC_Line6			= "                    "
local WSO_UFC_Line1_dots 	= "                    "
local WSO_UFC_Line2_dots 	= "                    "
local WSO_UFC_Line3_dots 	= "                    "
local WSO_UFC_Line4_dots 	= "                    "
local WSO_UFC_Line5_dots 	= "                    "
local WSO_UFC_Line6_dots 	= "                    "
local WSO_UFC_ActiveUHF1 	= "          "
local WSO_UFC_ActiveUHF2 	= "          "

local ufc_string_length 	= 20

local function build_ufc_line (left,right,central)
	UFC_LineLtrim = left:gsub("[:.°]","")
	left = left:gsub("�"," ")
	UFC_LineRtrim = right:gsub("[:.°]","")
	UFC_LineSpacing = ufc_string_length - string.len(UFC_LineRtrim)
	UFC_Line = string.format("%-".. UFC_LineSpacing .."s%s", UFC_LineLtrim, UFC_LineRtrim)
	UFC_LineLdots = left:gsub("[^:.°]"," ")
	UFC_LineRdots = right:gsub("[^:.°]"," ")
	UFC_LineDotsSpacing = ufc_string_length - string.len(UFC_LineRtrim)
	UFC_Line_dots = string.format("%-".. UFC_LineDotsSpacing .."s%s", UFC_LineLdots, UFC_LineRdots)
	if central ~= '' then
		UFC_LineSpacing = (ufc_string_length/2) - (string.len(central)/2)
		UFC_Linecent = string.format("%-".. UFC_LineSpacing .."s%s", "", central)
		for i = 1, #UFC_Linecent do
			local c = UFC_Linecent:sub(i,i)
			if c ~= ' ' then
				UFC_Line_dots = UFC_Line_dots:sub(1, i-1) .. c .. UFC_Line_dots:sub(i+1)
			end
		end
	end
	return { ["line"] = UFC_Line, ["line_dots"] = UFC_Line_dots }
end

local function ExportUFC()

	local plt_ufc = PWDEV.Tools.getListIndicatorValue(9)
	if not plt_ufc then
		return
	end

	local wso_ufc = PWDEV.Tools.getListIndicatorValue(18)
	if not wso_ufc then
		return
	end

	PLT_UFC_Line1L = coerce_nil_to_string(plt_ufc.UFC_SC_01)
	PLT_UFC_Line1R = coerce_nil_to_string(plt_ufc.UFC_SC_12)
	PLT_UFC_Line1C = coerce_nil_to_string(plt_ufc.UFC_CC_01)
	F_Line1Array = build_ufc_line (PLT_UFC_Line1L,PLT_UFC_Line1R,PLT_UFC_Line1C)
	PLT_UFC_Line1 = F_Line1Array["line"]
	PLT_UFC_Line1_dots = F_Line1Array["line_dots"]

	PLT_UFC_Line2L = coerce_nil_to_string(plt_ufc.UFC_SC_02)
	PLT_UFC_Line2R = coerce_nil_to_string(plt_ufc.UFC_SC_11)
	PLT_UFC_Line2C = coerce_nil_to_string(plt_ufc.UFC_CC_02)
	F_Line2Array = build_ufc_line (PLT_UFC_Line2L,PLT_UFC_Line2R,PLT_UFC_Line2C)
	PLT_UFC_Line2 = F_Line2Array["line"]
	PLT_UFC_Line2_dots = F_Line2Array["line_dots"]

	PLT_UFC_Line3L = coerce_nil_to_string(plt_ufc.UFC_SC_03)
	PLT_UFC_Line3R = coerce_nil_to_string(plt_ufc.UFC_SC_10)
	PLT_UFC_Line3C = coerce_nil_to_string(plt_ufc.UFC_CC_03)
	F_Line3Array = build_ufc_line (PLT_UFC_Line3L,PLT_UFC_Line3R,PLT_UFC_Line3C)
	PLT_UFC_Line3 = F_Line3Array["line"]
	PLT_UFC_Line3_dots = F_Line3Array["line_dots"]

	PLT_UFC_Line4L = coerce_nil_to_string(plt_ufc.UFC_SC_04)
	PLT_UFC_Line4R = coerce_nil_to_string(plt_ufc.UFC_SC_09)
	F_Line4Array = build_ufc_line (PLT_UFC_Line4L,PLT_UFC_Line4R,"")
	PLT_UFC_Line4 = F_Line4Array["line"]
	PLT_UFC_Line4_dots = F_Line4Array["line_dots"]

	PLT_UFC_Line5L = coerce_nil_to_string(plt_ufc.UFC_SC_05)
	PLT_UFC_Line5R = coerce_nil_to_string(plt_ufc.UFC_SC_08)
	F_Line5Array = build_ufc_line (PLT_UFC_Line5L,PLT_UFC_Line5R,"")
	PLT_UFC_Line5 = F_Line5Array["line"]
	PLT_UFC_Line5_dots = F_Line5Array["line_dots"]

	PLT_UFC_Line6L = coerce_nil_to_string(plt_ufc.UFC_SC_06)
	PLT_UFC_Line6R = coerce_nil_to_string(plt_ufc.UFC_SC_07)
	PLT_UFC_Line6C = coerce_nil_to_string(plt_ufc.UFC_CC_04)
	F_Line6Array = build_ufc_line (PLT_UFC_Line6L,PLT_UFC_Line6R,PLT_UFC_Line6C)
	PLT_UFC_Line6 = F_Line6Array["line"]
	PLT_UFC_Line6_dots = F_Line6Array["line_dots"]

	--REAR UFC
	WSO_UFC_Line1L = coerce_nil_to_string(wso_ufc.UFC_SC_01)
	WSO_UFC_Line1R = coerce_nil_to_string(wso_ufc.UFC_SC_12)
	WSO_UFC_Line1C = coerce_nil_to_string(wso_ufc.UFC_CC_01)
	R_Line1Array = build_ufc_line (WSO_UFC_Line1L,WSO_UFC_Line1R,WSO_UFC_Line1C)
	WSO_UFC_Line1 = R_Line1Array["line"]
	WSO_UFC_Line1_dots = R_Line1Array["line_dots"]

	WSO_UFC_Line2L = coerce_nil_to_string(wso_ufc.UFC_SC_02)
	WSO_UFC_Line2R = coerce_nil_to_string(wso_ufc.UFC_SC_11)
	WSO_UFC_Line2C = coerce_nil_to_string(wso_ufc.UFC_CC_02)
	R_Line2Array = build_ufc_line (WSO_UFC_Line2L,WSO_UFC_Line2R,WSO_UFC_Line2C)
	WSO_UFC_Line2 = R_Line2Array["line"]
	WSO_UFC_Line2_dots = R_Line2Array["line_dots"]

	WSO_UFC_Line3L = coerce_nil_to_string(wso_ufc.UFC_SC_03)
	WSO_UFC_Line3R = coerce_nil_to_string(wso_ufc.UFC_SC_10)
	WSO_UFC_Line3C = coerce_nil_to_string(wso_ufc.UFC_CC_03)
	R_Line3Array = build_ufc_line (WSO_UFC_Line3L,WSO_UFC_Line3R,WSO_UFC_Line3C)
	WSO_UFC_Line3 = R_Line3Array["line"]
	WSO_UFC_Line3_dots = R_Line3Array["line_dots"]

	WSO_UFC_Line4L = coerce_nil_to_string(wso_ufc.UFC_SC_04)
	WSO_UFC_Line4R = coerce_nil_to_string(wso_ufc.UFC_SC_09)
	R_Line4Array = build_ufc_line (WSO_UFC_Line4L,WSO_UFC_Line4R,"")
	WSO_UFC_Line4 = R_Line4Array["line"]
	WSO_UFC_Line4_dots = R_Line4Array["line_dots"]

	WSO_UFC_Line5L = coerce_nil_to_string(wso_ufc.UFC_SC_05)
	WSO_UFC_Line5R = coerce_nil_to_string(wso_ufc.UFC_SC_08)
	R_Line5Array = build_ufc_line (WSO_UFC_Line5L,WSO_UFC_Line5R,"")
	WSO_UFC_Line5 = R_Line5Array["line"]
	WSO_UFC_Line5_dots = R_Line5Array["line_dots"]

	WSO_UFC_Line6L = coerce_nil_to_string(wso_ufc.UFC_SC_06)
	WSO_UFC_Line6R = coerce_nil_to_string(wso_ufc.UFC_SC_07)
	WSO_UFC_Line6C = coerce_nil_to_string(wso_ufc.UFC_CC_04)
	R_Line6Array = build_ufc_line (WSO_UFC_Line6L,WSO_UFC_Line6R,WSO_UFC_Line6C)
	WSO_UFC_Line6 = R_Line6Array["line"]
	WSO_UFC_Line6_dots = R_Line6Array["line_dots"]


	f_uhf1_active = PLT_UFC_Line5L:find('*', 1, true) == 1
	if f_uhf1_active then
		local piece1 = PLT_UFC_Line5L:sub(1, 5)
		local piece2 = PLT_UFC_Line5L:sub(6, string.len(PLT_UFC_Line5L))
		PLT_UFC_ActiveUHF1 = piece1:sub(2) .. "." .. piece2
	else
		PLT_UFC_ActiveUHF1 = PLT_UFC_Line6L:sub(2)
	end

	f_uhf2_active = PLT_UFC_Line5R:sub(-string.len('*')) == '*'
	if f_uhf2_active then
		local piece1 = PLT_UFC_Line5R:sub(1, 4)
		local piece2 = PLT_UFC_Line5R:sub(5, string.len(PLT_UFC_Line5R))
		PLT_UFC_ActiveUHF2 = piece1 .. "." .. piece2:sub(1, -2)
	else
		PLT_UFC_ActiveUHF2 = PLT_UFC_Line6R:sub(1, -2)
		PLT_UFC_ActiveUHF2 = PLT_UFC_ActiveUHF2:match'^%s*(.*)'
	end

	r_uhf1_active = WSO_UFC_Line5L:find('*', 1, true) == 1
	if r_uhf1_active then
		local piece1 = WSO_UFC_Line5L:sub(1, 5)
		local piece2 = WSO_UFC_Line5L:sub(6, string.len(WSO_UFC_Line5L))
		WSO_UFC_ActiveUHF1 = piece1:sub(2) .. "." .. piece2
	else
		WSO_UFC_ActiveUHF1 = WSO_UFC_Line6L:sub(2)
	end

	r_uhf2_active = WSO_UFC_Line5R:sub(-string.len('*')) == '*'
	if r_uhf2_active then
		local piece1 = WSO_UFC_Line5R:sub(1, 4)
		local piece2 = WSO_UFC_Line5R:sub(5, string.len(WSO_UFC_Line5R))
		WSO_UFC_ActiveUHF2 = piece1 .. "." .. piece2:sub(1, -2)
	else
		WSO_UFC_ActiveUHF2 = PLT_UFC_Line6R:sub(1, -2)
		WSO_UFC_ActiveUHF2 = PLT_UFC_ActiveUHF2:match'^%s*(.*)'
	end
end

local function ifeiVal(value)
	local ret = " "
	local digit = value * 10
	if digit == 0.0 then ret = " "
	elseif digit == 10.0 then ret = "0"
	else ret = string.format("%d", digit) end
	return ret
end

local lpb01 = ""
local lpb02 = ""
local lpb03 = ""
local lpb04 = ""
local lpb05 = ""
local lpb06 = ""
local lpb07 = ""
local lpb08 = ""
local lpb09 = ""
local lpb10 = ""
local lpb11 = ""
local lpb12 = ""
local lpb13 = ""
local lpb14 = ""
local lpb15 = ""
local lpb16 = ""
local lpb17 = ""
local lpb18 = ""
local lpb19 = ""
local lpb20 = ""

function getListIndicatorValue(IndicatorID)
	local ListIindicator = list_indication(IndicatorID)
	local TmpReturn = {}

	if ListIindicator == "" then
		return nil
	end

	local ListindicatorMatch = ListIindicator:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local Key, Value = ListindicatorMatch()
		if not Key then
			break
		end
		TmpReturn[Key] = Value
	end

	return TmpReturn
end

local function ExportPltMpdL()
	local mpdl = getListIndicatorValue(3)

	if mpdl == nil then
		return
	end

	lpb01 = coerce_nil_to_string(mpdl["PB01"])
	lpb02 = coerce_nil_to_string(mpdl["PB02"])
	lpb03 = coerce_nil_to_string(mpdl["PB03"])
	lpb04 = coerce_nil_to_string(mpdl["PB04"])
	lpb05 = coerce_nil_to_string(mpdl["PB05"])
	lpb06 = coerce_nil_to_string(mpdl["PB06"])
	lpb07 = coerce_nil_to_string(mpdl["PB07"])
	lpb08 = coerce_nil_to_string(mpdl["PB08"])
	lpb09 = coerce_nil_to_string(mpdl["PB09"])
	lpb10 = coerce_nil_to_string(mpdl["PB10"])
	lpb11 = coerce_nil_to_string(mpdl["PB11"])
	lpb12 = coerce_nil_to_string(mpdl["PB12"])
	lpb13 = coerce_nil_to_string(mpdl["PB13"])
	lpb14 = coerce_nil_to_string(mpdl["PB14"])
	lpb15 = coerce_nil_to_string(mpdl["PB15"])
	lpb16 = coerce_nil_to_string(mpdl["PB16"])
	lpb17 = coerce_nil_to_string(mpdl["PB17"])
	lpb18 = coerce_nil_to_string(mpdl["PB18"])
	lpb19 = coerce_nil_to_string(mpdl["PB19"])
	lpb20 = coerce_nil_to_string(mpdl["PB20"])

	send(4001, lpb01)
	send(4002, lpb02)
	send(4003, lpb03)
	send(4004, lpb04)
	send(4005, lpb05)
	send(4006, lpb06)
	send(4007, lpb07)
	send(4008, lpb08)
	send(4009, lpb09)
	send(4010, lpb10)
	send(4011, lpb11)
	send(4012, lpb12)
	send(4013, lpb13)
	send(4014, lpb14)
	send(4015, lpb15)
	send(4016, lpb16)
	send(4017, lpb17)
	send(4018, lpb18)
	send(4019, lpb19)
	send(4020, lpb20)
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)

end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
	ExportPltMpdL()

	ExportUFC()

	send(2001, replaceSymbols(PLT_UFC_Line1))
	send(2002, replaceSymbols(PLT_UFC_Line2))
	send(2003, replaceSymbols(PLT_UFC_Line3))
	send(2004, replaceSymbols(PLT_UFC_Line4))
	send(2005, replaceSymbols(PLT_UFC_Line5))
	send(2006, replaceSymbols(PLT_UFC_Line6))
	send(2011, replaceSymbols(PLT_UFC_Line1_dots))
	send(2012, replaceSymbols(PLT_UFC_Line2_dots))
	send(2013, replaceSymbols(PLT_UFC_Line3_dots))
	send(2014, replaceSymbols(PLT_UFC_Line4_dots))
	send(2015, replaceSymbols(PLT_UFC_Line5_dots))
	send(2016, replaceSymbols(PLT_UFC_Line6_dots))

	send(2017, PLT_UFC_ActiveUHF1)
	send(2018, PLT_UFC_ActiveUHF2)

	send(2101, replaceSymbols(WSO_UFC_Line1))
	send(2102, replaceSymbols(WSO_UFC_Line2))
	send(2103, replaceSymbols(WSO_UFC_Line3))
	send(2104, replaceSymbols(WSO_UFC_Line4))
	send(2105, replaceSymbols(WSO_UFC_Line5))
	send(2106, replaceSymbols(WSO_UFC_Line6))
	send(2111, replaceSymbols(WSO_UFC_Line1_dots))
	send(2112, replaceSymbols(WSO_UFC_Line2_dots))
	send(2113, replaceSymbols(WSO_UFC_Line3_dots))
	send(2114, replaceSymbols(WSO_UFC_Line4_dots))
	send(2115, replaceSymbols(WSO_UFC_Line5_dots))
	send(2116, replaceSymbols(WSO_UFC_Line6_dots))

	send(2117, WSO_UFC_ActiveUHF1)
	send(2118, WSO_UFC_ActiveUHF2)

	local function sendIFEIData(sendId, argIndices, padding)
		local digits = {}
		for i, argIndex in ipairs(argIndices) do
			digits[i] = ifeiVal(string.format("%.1f", mainPanelDevice:get_argument_value(argIndex)))
		end
		send(sendId, table.concat(digits) .. (padding or ""))
	end

	-- ENGINE L/R RPM %
	sendIFEIData(2030, {1102, 1101, 1100})
	sendIFEIData(2031, {1105, 1104, 1103})

	-- ENGINE L/R TEMP C
	sendIFEIData(2032, {1109, 1108, 1107, 1106})
	sendIFEIData(2033, {1113, 1112, 1111, 1110})

	-- ENGINE L/R FF PPH
	sendIFEIData(2034, {1118, 1117, 1116, 1115, 1114})
	sendIFEIData(2035, {1123, 1122, 1121, 1120, 1119})

	-- ENGINE L/R OIL PSI
	sendIFEIData(2036, {1126, 1125, 1124})
	sendIFEIData(2037, {1129, 1128, 1127})

	-- FUEL TOTAL / LEFT / RIGHT
	sendIFEIData(2038, {368, 369, 370}, "00")
	sendIFEIData(2039, {373, 374}, "00")
	sendIFEIData(2040, {377, 378}, "00")
end