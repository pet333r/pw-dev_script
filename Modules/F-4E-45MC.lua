-- F-4E Phantom II

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    [5] = "%d",	-- landing gear handle
    [6] = "%d",	-- pedal L
    [7] = "%d",	-- pedal R
    [54] = "%d",-- pedal

    [63] = "%d",-- ANTI-SKID
    [65] = "%d",-- wheels light red
    [66] = "%d",-- landing gear handle light red

    -- Aoa left
    [77] = "%.1f",-- ^
    [78] = "%.1f",-- o
    [79] = "%.1f",-- up

    [85] = "%d",-- RADAR ALTITUDE FEET light red

    [90] = "%.3f",	-- climb arrow
    [91] = "%.3f",	-- alt arrow
    [101] = "%d",	-- STBY flag
    [102] = "%.2f",	-- IAS Needle
    [103] = "%.2f",	-- Mach Dial rotation
    [104] = "%.2f",	-- Airspeed Bug
    [105] = "%.2f",	-- Mach Bug

    -- COMM PANEL
    [1374] = "%d",-- switch
    [1375] = "%.1f",-- Set Frequency (hundreds)
    [1376] = "%d",-- switch
    [121] = "%.1f",-- Volume
    [122] = "%.1f",-- knob
    -- [123] = "%.2f",-- COMM CHAN
    [131] = "%.1f",-- knob 5
    [132] = "%.1f",-- knob 4
    [133] = "%.1f",-- knob 3
    [134] = "%.1f",-- knob 2
    [139] = "%.1f",-- VOL knob

    [169] = "%.1f",-- COMM CMD light 1 green
    [170] = "%.1f",-- NAV CMD light 2 green

    [247] = "%d",	-- MASTER ARM

    [249] = "%d",	-- GUN button
    [250] = "%d",	-- LO button
    [251] = "%d",	-- LI button
    [252] = "%d",	-- CTR button
    [253] = "%d",	-- RI button
    [254] = "%d",	-- RO button
    [255] = "%.1f",	-- GUN light green
    [256] = "%.1f",	-- LO light green
    [257] = "%.1f",	-- LI light green
    [258] = "%.1f",	-- CTR light green
    [259] = "%.1f",	-- RI light green
    [260] = "%.1f",	-- RO light green
    [261] = "%.1f",	-- GUN ARM yellow light 
    [262] = "%.1f",	-- LO ARM yellow light 
    [263] = "%.1f",	-- LI ARM yellow light 
    [264] = "%.1f",	-- CTR ARM yellow light 
    [265] = "%.1f",	-- RI ARM yellow light 
    [266] = "%.1f",	-- RO ARM yellow light 

    [271] = "%.2f",	-- Select HUD Mode
    [272] = "%.3f",	-- knob
    [273] = "%.3f",	-- knob RKTS DISP

    -- UFC
    [282] = "%d",	-- 
    [3039] = "%.1f",	-- 
    [3040] = "%.1f",	-- 

    [218] = "%d",	-- MASTER CAUTION light yellow
    [248] = "%d",	-- ARM light yellow
    [274] = "%d",	-- GUN light blue
    [279] = "%d",	-- RADAR light blue
    [280] = "%d",	-- HEAT light blue

    [284] = "%.1f",	-- HEAT 1 light blue
    [285] = "%.1f",	-- HEAT 2 light blue
    [286] = "%.1f",	-- HEAT 3 light blue
    [287] = "%.1f",	-- HEAT 4 light blue
    [288] = "%.1f",	-- RDR 1 light blue
    [289] = "%.1f",	-- RDR 2 light blue
    [290] = "%.1f",	-- RDR 3 light blue
    [291] = "%.1f",	-- RDR 4 light blue

    [723] = "%.2f",		-- Fuel Gauge Tape
    [297] = "%.3f",		-- Left Engine Fuel Flow
    [298] = "%.3f",		-- Right Engine Fuel Flow
    [299] = "%.2f",		-- Left Tachometer Large Needle
    [300] = "%.2f",		-- Right Tachometer Large Needle
    [2517] = "%.2f",	-- Left Tachometer Small Needle
    [2518] = "%.2f",	-- Right Tachometer Small Needle
    [301] = "%.3f",		-- Left Exhaust Temperature Large Needle
    [302] = "%.3f",		-- Right Exhaust Temperature Large Needle
    [303] = "%.2f",		-- Left Nozzle Position Gauge
    [304] = "%.2f",		-- Right Nozzle Position Gauge

    [305] = "%.2f",	-- Select Quantity
    [306] = "%d",	-- Select Interval Multiplier (x10)
    [307] = "%.3f",	-- Select Interval (s)

    -- WSO RADAR
    [336] = "%.1f",-- Radar Power Controls
    [337] = "%.1f",-- Select Radar Range (nm)
    [338] = "%.1f",-- Select Display Mode
    [339] = "%.1f",-- Select Radar Mode
    [342] = "%d",-- Select Scan Pattern
    [371] = "%d",-- Select Pulse Length
    [372] = "%d",-- Select Track Mode
    [1007] = "%d",-- Select Maneuver
    [1008] = "%.1f",-- Select Target Aspect
    [1009] = "%d",-- Change Polarization
    [1407] = "%.2f",-- Select Manual Vc

    [349] = "%d",-- CL TK light blue

    [367] = "%d",-- PULL UP light red
    [373] = "%d",-- INRANGE light blue

    -- Aoa right
    [375] = "%.1f",-- ^
    [376] = "%.1f",-- o
    [377] = "%.1f",-- up

    [640] = "%.1f",-- Set TACAN Channel (ones)
    [641] = "%.2f",-- Set TACAN Channel (hundreds)
    [642] = "%.1f",-- Change TACAN Volume
    [646] = "%.2f",-- Select TACAN Mode
    [647] = "%.1f",-- Set TACAN Channel (ones)
    [657] = "%.1f",-- lamp

	[420] = "%.1f",		-- slider 1
	[421] = "%.1f",		-- slider 2
	[614] = "%.3f",		-- roll
	[615] = "%.3f",		-- pitch
	[616] = "%.2f",		-- line v
	[617] = "%.2f",		-- line h
	[618] = "%.3f",		-- 
	[619] = "%.2f",		-- 
	[620] = "%d",		-- flag
	[621] = "%d",		-- flag
	[622] = "%d",		-- flag OFF
	[669] = "%.3f",		-- HSI Bearing #1
	[668] = "%.3f",		-- HSI Heading (compass)
	[672] = "%.3f",		-- HSI Heading Marker
	[671] = "%.2f",		-- HSI Deviation
	[670] = "%.3f",		-- srodek
	[677] = "%d",		-- strzalka srodek
	[683] = "%d",		-- miles off
	[684] = "%d",		-- NAV light
	[685] = "%d",		-- DL light
	[686] = "%d",		-- ILS light
	[687] = "%d",		-- MAN light
	[688] = "%d",		-- TAG light
	[689] = "%d",		-- TGT light
	[690] = "%d",		-- UHF light
	[691] = "%d",		-- DL light

	[705] = "%d",		-- Refuel Tank Selector Cover
	[706] = "%d",		-- Select Tank to Refuel
	[709] = "%d",		-- Wing Fuel Dump Selector
	[710] = "%d",		-- Internal Wing Tanks Feed
	[711] = "%d",		-- External Tanks Feed
	[712] = "%d",		-- Air Refuel Switch
	[725] = "%d",		-- Check Left Boost Pump
	[726] = "%d",		-- Check Right Boost Pump
	[1417] = "%d",		-- Select Dispense Program
    [1016] = "%d",-- ARBCS Activate
    [1017] = "%d",-- Target Find Mode
    [1018] = "%d",-- WRCS Range x100 Multiplier

    [347] = "%d",-- Select Radar-Missile CW
    [348] = "%d",-- Select Interlock Position
    [1254] = "%.2f",-- Select Stations to Jettison

    -- Lighting
    [1350] = "%d",-- Toggle White Floodlight
    [1351] = "%.1f",-- Set Console Floodlight (Red) Brightness
    [1352] = "%.1f",-- Change Instrument Panel Light Brightness
    [1353] = "%.1f",-- Change Console Light Brightness
    [1354] = "%d",-- Test Warning Lights/Standby Compass Light
    -- EXTERIOR LIGHTS
    [1355] = "%.1f",-- Set Fuselage & Anti-Collision Light Brightness
    [1356] = "%.1f",-- Set Flasher Mode (only Tail/Anti-Col/Fus)
    [1357] = "%.1f",-- Set Tail-Position Light Brightness
    [1358] = "%.1f",-- Set Wing-Position & Join-Up Light Brightness
    [1360] = "%.1f",-- Change AoA Indicator Brightness
    [1361] = "%.1f",-- Change HSI Brightness
    [1362] = "%.1f",-- Change VVI Brightness
    [1363] = "%.1f",-- Change Speed Indicator Brightness
    [1364] = "%.1f",-- Change ADI Brightness
    [1365] = "%.1f",-- Change Altimeter Brightness

    [1366] = "%.1f",-- Fuze Cap
    [1367] = "%.1f",-- Set Formation Lights Mode
    [1368] = "%.1f",-- Change Formation Lights Brightness
    [1369] = "%.1f",-- Change AoA Indexer Brightness
    [1370] = "%.1f",-- Set Instrument Floodlight (Red) Brightness (also WSO)

    -- DSCG
    [1404] = "%.1f",-- Select Screen Mode
    [1416] = "%.1f",-- Taxi/Landing Light

    -- AN/ALE-40 Programmer
    [1500] = "%.1f",-- Select Chaff Burst Count
    [1501] = "%.1f",-- Select Chaff Burst Interval
    [1502] = "%.1f",-- Select Chaff Salvo Count
    [1503] = "%.1f",-- Select Chaff Salvo Interval
    [1504] = "%.1f",-- Select Flare Burst Count
    [1505] = "%.1f",-- Select Flare Burst Interval

    -- AFCS
    [1506] = "%d",-- switch YAW
    [1507] = "%d",-- switch ROLL
    [1508] = "%d",-- switch PITCH
    [1509] = "%d",-- switch AFCS
    [1510] = "%d",-- switch ALT
    -- NAV
    [1511] = "%.1f",-- volume
    [1512] = "%.1f",-- MB volume
    [1514] = "%.1f",-- knob out
    [1515] = "%.1f",-- knob in

    [2525] = "%d",-- READY light green
    [2526] = "%d",-- FULL light green
    [2527] = "%d",-- FULL light green
    [2528] = "%d",-- FULL light green
    [2529] = "%d",-- DISENGADED light green
    [2530] = "%d",-- SHOOT light red left
    [2531] = "%d",-- SHOOT light red right
    [2532] = "%d",-- HOLD ALT light blue
    [2533] = "%d",-- 5 light green
    [2534] = "%d",-- 10 light green
    [2535] = "%d",-- 25 light green
    [2536] = "%d",-- 50 light green

    -- RWS PILOT
    [2537] = "%d",-- PRIORITY
    [2538] = "%d",-- S
    [2539] = "%d",-- <>
    [2540] = "%d",-- MISSILE LAUNCH red
    [2541] = "%d",-- LOW ALT
    [2542] = "%d",-- TGT SEP
    [2543] = "%d",-- ON SYS TEST
    [2544] = "%d",-- U
    [2545] = "%d",-- ACTIVITY red
    [2546] = "%d",-- SYSTEM POWER
    [2742] = "%d",-- OPEN
    [2743] = "%d",-- 
    [2744] = "%d",-- H
    [2745] = "%d",-- TGT SEP
    [2746] = "%d",-- UNKNOWN
    [2747] = "%d",-- POWER red

    -- RWS WSO
    [2678] = "%d",-- PRIORITY
    [2679] = "%d",-- S
    [2680] = "%d",-- <>
    [2681] = "%d",-- MISSILE LAUNCH red
    [2682] = "%d",-- LOW ALT
    [2683] = "%d",-- TGT SEP
    [2684] = "%d",-- ON SYS TEST
    [2685] = "%d",-- U
    [2686] = "%d",-- ACTIVITY red
    [2687] = "%d",-- SYSTEM POWER
    [2748] = "%d",-- OPEN
    -- [2743] = "%d",-- 
    [2750] = "%d",-- H
    [2751] = "%d",-- TGT SEP
    [2752] = "%d",-- UNKNOWN
    [2753] = "%d",-- POWER red

    [2547] = "%.1f",-- LEFT FIRE red
    [2548] = "%.1f",-- RIGHT FIRE red
    [2549] = "%.1f",-- LEFT OVERHT red
    [2550] = "%.1f",-- RIGHT OVERHT red

    [2551] = "%d",-- LH GEN OUT red
    [2552] = "%d",-- RH GEN OUT red
    [199] = "%d",-- BUS TIE OPEN red

    [2554] = "%.1f",-- KU28 MODE red light
    [2555] = "%.1f",-- KU28 MODE green light
    -- IFF
    [2556] = "%.1f",-- TEST light
    [2557] = "%.1f",-- REPLY light
    [1521] = "%.2f",-- Select Master Mode
    [1322] = "%.2f",-- Select Mode 4 Function
    [1323] = "%d",-- M1 Off/On/Test
    [1324] = "%d",-- M2 Off/On/Test
    [1325] = "%d",-- M3 Off/On/Test
    [1326] = "%d",-- MC Off/On/Test
    [1327] = "%d",-- Set Mode 4 On/Off
    [1328] = "%d",-- Select Mode 4 Indication
    [1329] = "%d",-- Set Monitor-Radiation
    [1330] = "%d",-- Set Position Identification
    [1331] = "%.1f",-- Set M1 code (tens)
    [1332] = "%.1f",-- Set M1 code (ones)
    [1333] = "%.1f",-- Set M3 code (thousands)
    [1334] = "%.1f",-- Set M3 code (hundreds)
    [1335] = "%.1f",-- Set M3 code (tens)
    [1336] = "%.1f",-- Set M3 code (ones)
    -- DCU
    -- station
    [2558] = "%d",-- WARM light red
    [2559] = "%d",-- WARM light red
    [2560] = "%d",-- WARM light red
    [2561] = "%d",-- WARM light red
    [2562] = "%d",-- WARM light red
    [1337] = "%d",-- LO switch
    [1338] = "%d",-- LI switch
    [1339] = "%d",-- CL switch
    [1340] = "%d",-- RI switch
    [1341] = "%d",-- RO switch

    [374] = "%d",-- SHOOT center light green
    [2593] = "%d",-- SHOOT left light green
    [2594] = "%d",-- SHOOT right light green

    -- warnings
    [114]  = "%.1f",-- STATIC CORR OFF yellow
    [115]  = "%.1f",-- ALT ENCODER OUT yellow
    [208]  = "%.1f",-- CANOPY UNLOCKED red
    [220]  = "%.1f",-- CHECK HYD GAUGES yellow
    [238]  = "%.1f",-- OXYGEN LOW yellow
    [2568] = "%.1f",-- IFF red
    [2569] = "%.1f",-- AUTOPILOT PITCH TRIM yellow
    [2570] = "%.1f",-- LEFT EXT FUEL green
    [2571] = "%.1f",-- FUEL LEVEL LOW red
    [2572] = "%.1f",-- L ANTI ICE ON yellow
    [2573] = "%.1f",-- L AUX AIR DOOR yellow
    [2574] = "%.1f",-- WINDSHIELD TEMP HIGH yellow
    [2575] = "%.1f",-- SLATS IN yellow
    [2576] = "%.1f",-- INERTIAL NAV SYS OUT yellow
    [2577] = "%.1f",-- DC BUS yellow
    [2578] = "%.1f",-- HOOK DOWN red
    [2579] = "%.1f",-- AUTOPILOT DISENGAGE yellow
    [2580] = "%.1f",-- CTR EXT FUEL green
    [2581] = "%.1f",-- CHK FUEL FILTERS yellow
    [2582] = "%.1f",-- R ANTI ICE ON yellow
    [2583] = "%.1f",-- R AUX AIR DOOR yellow
    [2584] = "%.1f",-- DUCT TEMP HIGH yellow
    [2585] = "%.1f",-- PITCH AUG OFF yellow
    [2586] = "%.1f",-- TANK 7 FULL green
    [2587] = "%.1f",-- RIGHT EXT FUEL green
    [2588] = "%.1f",-- RADAR ON COOL OFF yellow
    [2589] = "%.1f",-- SPEEDBRAKE OUT yellow
    [2590] = "%.1f",-- CABIN TURB OVERSPEED yellow
    [2591] = "%.1f",-- FIRE SYS yellow
    [2883] = "%.1f",-- SPARE yellow

    -- TARGET
    [2733] = "%.1f",-- TV Reticle Brightness
    [2734] = "%.1f",-- Boresight Azimuth (12-Vis)
    [2735] = "%.1f",-- Boresight Elevation (12-Vis)
    [2736] = "%.1f",-- Boresight Roll (9-Vis)
    [2738] = "%.1f",-- Panel Light Brightness
    [2740] = "%.1f",-- Acquisition Mode
	[2611] = "%.2f",-- LOS arrow
	[2761] = "%d",	-- LOS red
	[2762] = "%d",	-- LOS yellow
	[2763] = "%d",	-- LOS green
}


PWDEV.ConfigArguments =
{
    -- DSCG
    [1400] = "%.1f",-- Contrast
    [1401] = "%.1f",-- Range-Cursor Brightness
    [1402] = "%.1f",-- Screen Brightness
    [1403] = "%.1f",-- Offset-Cursor Brightness
}

local comm_chan = {
    ["0.00"] = "1",
    ["0.06"] = "2",
    ["0.12"] = "3",
    ["0.18"] = "4",
    ["0.24"] = "5",
    ["0.29"] = "6",
    ["0.35"] = "7",
    ["0.41"] = "8",
    ["0.47"] = "9",
    ["0.53"] = "10",
    ["0.59"] = "11",
    ["0.65"] = "12",
    ["0.71"] = "13",
    ["0.76"] = "14",
    ["0.82"] = "15",
    ["0.88"] = "16",
    ["0.94"] = "17",
    ["1.00"] = "18"
}

local aux_chan = {
    ["0.00"] = "1",
    ["0.05"] = "2",
    ["0.11"] = "3",
    ["0.16"] = "4",
    ["0.21"] = "5",
    ["0.26"] = "6",
    ["0.32"] = "7",
    ["0.37"] = "8",
    ["0.42"] = "9",
    ["0.47"] = "10",
    ["0.53"] = "11",
    ["0.58"] = "12",
    ["0.63"] = "13",
    ["0.68"] = "14",
    ["0.74"] = "15",
    ["0.79"] = "16",
    ["0.84"] = "17",
    ["0.89"] = "18",
    ["0.95"] = "19",
    ["1.00"] = "20"
}

local function getTacanChannel()
    local tcn_2 = ""
    if GetDevice(0):get_argument_value(645) == 0 then
        tcn_2 = "0"
    else
    	tcn_2 = "1"
    end
    local tcn_1 = string.format("%.1f", GetDevice(0):get_argument_value(644)):sub(3)
    local tcn_0 = string.format("%.1f", GetDevice(0):get_argument_value(643)):sub(3)

	local tcn_xy = ""
	if GetDevice(0):get_argument_value(654) == 0 then
		tcn_xy = "X"
	else
		tcn_xy = "Y"
	end

    return tcn_2 .. tcn_1 .. tcn_0 .. tcn_xy
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    send(2024,  getTacanChannel())

	send(2002, comm_chan[string.format("%.2f", mainPanelDevice:get_argument_value(123))])
	send(2003, aux_chan[string.format("%.2f", mainPanelDevice:get_argument_value(136))])

    local bit = PWDEV.Tools.getListIndicatorValue(7)
    if not bit then
        return
    end
    send(2101, bit.bit_background)

	send(2501, PWDEV.Tools.GetArgumentsString({94,93,92}))
	send(2502, PWDEV.Tools.GetArgumentsString({99,98,97,96}))
	send(2504, PWDEV.Tools.GetArgumentsString({676,675,674}))
	send(2505, PWDEV.Tools.GetArgumentsString({682,681,680,679}))
	send(2506, PWDEV.Tools.GetArgumentsString({722,721,720,719}))
	send(2507, PWDEV.Tools.GetArgumentsString({275,276,277}))
end