-- F-14B

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	-- RIO DDD
	[34] = "%d",		-- ASPECT
	[35] = "%d",		-- VC X4 Closing Velocity Scale
	[36] = "%d",		-- TGTS Target Size
	[37] = "%d",		-- MLC Main Lobe Clutter Filter
	[38] = "%d",		-- AGC Automatic Gain Control
	[3900] = "%d",		-- PARAMP Parametric Amplifier

	[20] = "%.1f",		-- Radar IR Gain
	[21] = "%.1f",		-- Radar IR Volume
	[22] = "%.1f",		-- Radar IR Threshold
	[23] = "%.1f",		-- Bright
	[24] = "%.1f",		-- Puls Video
	[25] = "%.1f",		-- Erase
	[26] = "%.1f",		-- Pulse Gain
	[27] = "%.1f",		-- ACM Threshold
	[28] = "%.1f",		-- JAM/JET
	[29] = "%.1f",		-- PD Threshold Clutter
	[30] = "%.1f",		-- PD Threshold Clear

	[2121] = "%.2f",		-- RIO Radar Elevation Arrow (-1 - 1)
	[2122] = "%.2f",		-- TCS Elevation Arrow (-1 - 1)
	[6100] = "%.2f",		-- Range Roller (0.15)
	[6102] = "%.2f",		-- Raadar Mode Gauge
	[9958] = "%.1f",		-- XMTR CHAN
	[9959] = "%.1f",		-- MSL CHAN
	-- RIO DDD Lights
	[6111] = "%.1f",		-- RDR Light
	[6112] = "%.1f",		-- IR Light
	[6113] = "%.1f",		-- IFF Light

	[6114] = "%.1f",		-- PDSTT Light
	[6115] = "%.1f",		-- PULSE STT Light
	[6116] = "%.1f",		-- PDSEARCH Light
	[6117] = "%.1f",		-- RWS Light

	[6118] = "%.1f",		-- TWS AUTO Light
	[6119] = "%.1f",		-- TWS MAN Light
	[6120] = "%.1f",		-- PULSE SRCH Light

	[6121] = "%.1f",		-- CCM SPL Light
	[6122] = "%.1f",		-- CCM ALT OFF Light
	[6123] = "%.1f",		-- CCM VGS Light

	-- INS
	[48] = "%.1f",   -- TID Brightness, (1, 0, 1)
	[49] = "%.1f",   -- TID Contrast, (1, 0, 1)
	[50] = "%.1f",   -- NAV MODE knob
	[51] = "%.1f",   -- DEST knob

	-- TID
	[2005]  =  "%.1f",   	-- TID_mode_knob
	[2006]  =  "%.1f",   	-- TID_range_knob
	[6125] = "%.1f",		-- TID TRACK HOLD selector
	[6126] = "%.1f",		-- TID CLSN
	[6127] = "%.1f",		-- TID RID DSBL
	[6128] = "%.1f",		-- TID ALT NUM
	[6129] = "%.1f",		-- TID SYM ELEM
	[6130] = "%.1f",		-- TID DATA LINK
	[6131] = "%.1f",		-- TID JAM STROBE
	[6132] = "%.1f",		-- TID NON-ATTK
	[6133] = "%.1f",		-- TID LAUNCH ZONE
	[6134] = "%.1f",		-- TID VEL VECTOR

	-- HCU
	[407]  =  "%d",   -- HCU_POWER_RESET_LIGHT
	[408]  =  "%d",   -- HCU_WCS_POWER_LIGHT
	[409]  =  "%d",   -- HCU_IR_STBY_LIGHT
	[2011]  =  "%d",   -- HCU_TVIR switch
	[2012]  =  "%d",   -- HCU_WCS switch

	-- UHF ARC-159
	[383]  =  "%.1f",   -- ARC-159 Volume
	[2027]  =  "%.1f",   -- ARC-159 Display Brightness
	[2030]  =  "%d",   -- ARC-159 100MHz & 10MHz Dial
	[2029]  =  "%d",   -- ARC-159 1MHz Dial
	[2028]  =  "%d",   -- ARC-159 0.1MHz Dial
	[2026]  =  "%d",   -- ARC-159 0.025MHz Dial
	[2031]  =  "%.1f",   -- ARC-159 Volume Pilot
	[2032]  =  "%.2f",   -- ARC-159 Preset Channel Selector
	[2033]  =  "%.1f",   -- ARC-159 Freq Mode
	[2034]  =  "%.1f",   -- ARC-159 Function
	[2035]  =  "%d",   -- ARC-159 Squelch Switch
	[8115]  =  "%d",   -- ARC-159 Read

	[6135] = "%.1f",	-- HCU IR/TV Mode
	[6136] = "%.1f",	-- HCU RADAR Mode
	[6137] = "%.1f",	-- HCU DDD Mode
	[6138] = "%.1f",	-- HCU TID Mode

	[11503] = "%d",	-- ANT TRK Light
	[11504] = "%d",	-- RDROT Light
	[11505] = "%d",	-- JAT Light
	[11506] = "%d",	-- IROT Light

	-- ACMP
	[2003] = "%.2f",	-- PILOT AOA Unit Slider
	[1046] = "%d",		-- PILOT Master Arm Cover
	[1047] = "%d",		-- PILOT Master Arm Switch
	[1049] = "%d",		-- PILOT ACM Cover
	[9200] = "%d",		-- PILOT Master Caution Light (red)
	[9201] = "%d",		-- PILOT Weapon Panel Hot Trigger Light (red)
	[9202] = "%d",		-- PILOT Weapon Panel Collision Light (green)
	[9203] = "%d",		-- PILOT Weapon Panel SEAM Lock Light (green)
	[9204] = "%d",		-- Gunrate High Light
	[9205] = "%d",		-- Gunrate Low Light
	[9206] = "%d",		-- Sidewinder Cooling ON Light
	[9207] = "%d",		-- Sidewinder Cooling OFF Light
	[9208] = "%d",		-- Missle Prepare ON Light
	[9209] = "%d",		-- Missle Prepare OFF Light
	[9210] = "%d",		-- Missle Mode Normal Light (red)
	[9211] = "%d",		-- Missle Mode Boresight Light (red)
	[9221] = "%.1f",	-- PILOT Weapon Store 1A as Light
	[9222] = "%.1f",	-- PILOT Weapon Store 1B as Light
	[9223] = "%.1f",	-- PILOT Weapon Store 3 as Light
	[9224] = "%.1f",	-- PILOT Weapon Store 4 as Light
	[9225] = "%.1f",	-- PILOT Weapon Store 5 as Light
	[9226] = "%.1f",	-- PILOT Weapon Store 6 as Light
	[9227] = "%.1f",	-- PILOT Weapon Store 8B as Light
	[9228] = "%.1f",	-- PILOT Weapon Store 8A as Light

	-- Lights
	[913] = "%d",		-- PILOT Position Lights Wings
	[916] = "%d",		-- PILOT Position Lights Tail
	[919] = "%d",		-- PILOT Position Lights Flash
	[923] = "%d",		-- PILOT Position Lights Anti-Collision
	[915] = "%d",		-- PILOT Hook Bypass
	[918] = "%d",		-- PILOT Taxi Light
	[921] = "%d",		-- PILOT White Flood Light
	[924] = "%d",		-- PILOT Red Flood Light
	[15005] = "%.3f",	-- PILOT ACM Panel Light Intensity
	[15006] = "%.3f",	-- PILOT AoA Indexer Light Intensity
	[15007] = "%.3f",	-- PILOT Instrument Light Intensity"
	[15008] = "%.3f",	-- PILOT Console Light Intensity"
	[15009] = "%.3f",	-- PILOT Formation Light Intensity"

	[2001] = "%.2f", 	-- PILOT Wing Sweep Commanded
	[2002] = "%.2f", 	-- PILOT Wing Sweep Position
	[2047] = "%.2f", 	-- PILOT Wing Sweep Minimum Index

	-- Wing sweep flags
	[15091] = "%d",		-- PILOT Wing Sweep OFF Flag
	[15092] = "%d",		-- PILOT Wing Sweep AUTO Flag
	[15093] = "%d",		-- PILOT Wing Sweep MAN Flag
	[15094] = "%d",		-- PILOT Wing Sweep EMER Flag
	[15095] = "%d",		-- PILOT Wing Sweep OVER Flag

	-- RIO CAP
	[98] = "%.1f",		-- RIO CAP Category
	[5564] = "%.1f", 	-- BTN 6 Light (green)
	[5565] = "%.1f", 	-- BTN 7 Light (green)
	[5566] = "%.1f", 	-- BTN 8 Light (green)
	[5567] = "%.1f", 	-- BTN 9 Light (green)
	[5590] = "%.1f", 	-- BTN 10 Light (green)
	[5568] = "%.1f", 	-- BTN 1 Light (green)
	[5569] = "%.1f", 	-- BTN 2 Light (green)
	[5570] = "%.1f", 	-- BTN 3 Light (green)
	[5571] = "%.1f", 	-- BTN 4 Light (green)
	[5572] = "%.1f", 	-- BTN 5 Light (green)

	[3760] = "%d",		-- PILOT AOA Slow (green)
	[3761] = "%d",		-- PILOT AOA Optimum (yellow)
	[3762] = "%d",		-- PILOT AOA Fast (red)

	-- DISPLAY Panel: Mode
	[1015] = "%d", 	-- Take-Off Mode
	[1014] = "%d", 	-- Cruise Mode
	[1013] = "%d", 	-- Air-to-Air Mode
	[1012] = "%d", 	-- Air-to-Ground Mode
	[1011] = "%d", 	-- Landing Mode

	-- DISPLAY Panel: Steer CMD
	[1002] = "%d", 	-- TACAN
	[1003] = "%d", 	-- Destination
	[1004] = "%d", 	-- AWL PCD
	[1005] = "%d", 	-- Vector
	[1006] = "%d", 	-- Manual
	[2036] = "%.1f", 	-- TACAN Volume
	[2041] = "%.2f", 	-- TACAN Mode
	[2042] = "%d", 	-- TACAN Mode Normal/Inverse
	[2043] = "%d", 	-- TACAN Channel X/Y

	-- DISPLAY Panel: HUD
	[1021] = "%d", 	-- HUD De-clutter On/Off
	[1020] = "%d", 	-- HUD AWL Mode

	-- DISPLAY Panel: VDI
	[1019] = "%d", 	-- VDI Display Mode
	[1018] = "%d", 	-- VDI Landing Mode

	-- DISPLAY Panel: HSD
	[1016] = "%d", 	-- HSD Display Mode
	[1017] = "%d", 	-- HSD ECM Override

	-- DISPLAY Panel: Power
	[1010] = "%d", 	-- VDI Power On/Off
	[1009] = "%d", 	-- HUD Power On/Off
	[1008] = "%d", 	-- HSD/ECMD Power On/Off

	[1023] = "%d", 	-- PILOT Hydraulic Spoiler Flag
	[1024] = "%d", 	-- PILOT Hydraulic Emergency HI Flag
	[1025] = "%d", 	-- PILOT Hydraulic Emergency LOW Flag

	-- FUEL
	[1054] = "%.2f", 	-- PILOT Fuel AFT & L
	[1055] = "%.2f", 	-- PILOT Fuel FWD & R

	-- RMP / TIT / FF
	[1057] = "%.2f", 	-- PILOT Engine RPM Left
	[1058] = "%.2f", 	-- PILOT Engine RPM Right
	[1059] = "%.2f", 	-- PILOT Engine TIT / EGT Left
	[1060] = "%.2f", 	-- PILOT Engine TIT / EGT Right
	[1061] = "%.2f", 	-- PILOT Engine FF Left
	[1062] = "%.2f", 	-- PILOT Engine FF Right

	[1063] = "%.2f", 	-- PILOT Flight Hydraulic System Pressure
	[1064] = "%.2f", 	-- PILOT Combined Hydraulic System Pressure
	[1065] = "%.2f", 	-- PILOT Engine Oil Pressure Right
	[1066] = "%.2f", 	-- PILOT Engine Oil Pressure Left
	[1067] = "%.2f", 	-- PILOT Engine Nozzle Right
	[1068] = "%.2f", 	-- PILOT Engine Nozzle Left

	-- AFCS
	[2106] = "%d", 	-- PITCH 0/1
	[2107] = "%d", 	-- ROLL 0/1
	[2108] = "%d", 	-- YAW 0/1
	[2109] = "%d", 	-- VEC/PCD -1/0/1
	[2110] = "%d", 	-- ALT 0/1
	[2111] = "%d", 	-- HDG -1/0/1
	[2112] = "%d", 	-- ENGAGE -2/2

	[9350] = "%d",		-- WHEELS
	[9351] = "%d",		-- BRAKES
	[9352] = "%d",		-- ACLS/AP
	[9353] = "%d",		-- NWS ENGA
	[9354] = "%d",		-- AUTO THROT
	[9355] = "%d",		-- R STALL
	[9356] = "%d",		-- L STALL
	[9357] = "%d",		-- Pilot SAM
	[9358] = "%d",		-- Pilot AAA
	[9359] = "%d",		-- Pilot AI

	-- LR ENG FIRE
	[15014] = "%d", 	-- PILOT Right Engine Fire Light (red)
	[15015] = "%d", 	-- PILOT Left Engine Fire Light (red)

	-- Caution panel
	[15016] = "%d", 	-- PLT_WARN_LGEN 		 Left Generator (yellow)
	[15017] = "%d", 	-- PLT_WARN_LOILHOT 	 Left Oil Hot (yellow)
	[15018] = "%d", 	-- PLT_WARN_LFUELPRESS  Left Fuel Pressure (yellow)
	[15019] = "%d", 	-- PLT_WARN_ENGFIREEXT  Engine Fire Extinguisher (green)
	[15020] = "%d", 	-- PLT_WARN_RGEN 		 Right Generator (yellow)
	[15021] = "%d", 	-- PLT_WARN_ROILHOT 	 Right Oil Hot (yellow)
	[15022] = "%d", 	-- PLT_WARN_RFUELPRESS  Right Fuel Pressure (yellow)
	[15023] = "%d", 	-- PLT_WARN_WINGSWEEP 	 Wing Sweep (green)
	[15024] = "%d", 	-- PLT_WARN_AUXFIREEXT  Auxiliary Fire Extinguisher (green)
	[15025] = "%d", 	-- PLT_WARN_YAWSTABOP 	 Yaw Stabilizer Op (yellow)
	[15026] = "%d", 	-- PLT_WARN_YAWSTABOUT  Yaw Stabilizer Out (yellow)
	[15027] = "%d", 	-- PLT_WARN_CANOPY 	 Canopy (yellow)
	[15028] = "%d", 	-- PLT_WARN_CADC 		 CADC (yellow)
	[15029] = "%d", 	-- PLT_WARN_LFUELLOW 	 Left Fuel Low (yellow)
	[15030] = "%d", 	-- PLT_WARN_WSHIELDHOT  Windshield Hot (green)
	[15031] = "%d", 	-- PLT_WARN_EMERGJETT 	 Emergency Jettison (yellow)
	[15032] = "%d", 	-- PLT_WARN_OXYLOW 	 Qxygen Low (yellow)
	[15033] = "%d", 	-- PLT_WARN_BINGO 		 Bingo Fuel (yellow)
	[15034] = "%d", 	-- PLT_WARN_HYDPRESS 	 Hydraulic Pressure (yellow)
	[15035] = "%d", 	-- PLT_WARN_RFUELLOW 	 Right Fuel Low (yellow)
	[15036] = "%d", 	-- PLT_WARN_MACHTRIM 	 Mach Trim (green)
	[15037] = "%d", 	-- PLT_WARN_PITCHSTAB 	 Pitch Stabilizer (yellow)
	[15038] = "%d", 	-- PLT_WARN_BLEEDDUCT 	 Bleed Duct (yellow)
	[15039] = "%d", 	-- PLT_WARN_ROLLSTAB 	 Roll Stabilizer (yellow)
	[15040] = "%d", 	-- PLT_WARN_PITCHSTAB2  Pitch Stabilizer 2 (yellow)
	[15041] = "%d", 	-- PLT_WARN_AUTOPLT 	 Autopilot (yellow)
	[15042] = "%d", 	-- PLT_WARN_LOVSPVALVE  Left Ovsp Valve (yellow)
	[15043] = "%d", 	-- PLT_WARN_ROVSPVALVE  Right Ovsp Valve (yellow)
	[15044] = "%d", 	-- PLT_WARN_RRAMP 		 Right Ramp (yellow)
	[15045] = "%d", 	-- PLT_WARN_LAUNCHBAR 	 Launchbar (green)
	[15046] = "%d", 	-- PLT_WARN_FLAP 		 Flap (yellow)
	[15047] = "%d", 	-- PLT_WARN_HZTAILAUTH  Horizontal Tail Auth (yellow)
	[15048] = "%d", 	-- PLT_WARN_OILPRESS 	 Oil Pressure (yellow)
	[15049] = "%d", 	-- PLT_WARN_LRAMP 		 Left Ramp (yellow)
	[15050] = "%d", 	-- PLT_WARN_LADDER 	 Ladder (yellow)
	[15051] = "%d", 	-- PLT_WARN_RINLET 	 Right Inlet (yellow)
	[15052] = "%d", 	-- PLT_WARN_INLETICE 	 Inlet Ice (yellow)
	[15053] = "%d", 	-- PLT_WARN_RUDDERAUTH  Rudder Auth (yellow)
	[15054] = "%d", 	-- PLT_WARN_LINLET 	 Left Inlet (yellow)
	[15055] = "%d", 	-- PLT_WARN_ANRS 		 ANRS (green)
	[15056] = "%d", 	-- PLT_WARN_ROLLSTAB2 	 Roll Stabilizer 2 (yellow)	
	[15057] = "%d", 	-- PLT_WARN_SPOILERS 	 Spoilers (yellow)	
	[15058] = "%d", 	-- PLT_WARN_TRANSRECT 	 Trans Rect (green)
	[15059] = "%d", 	-- PLT_WARN_REDUCESPEED Reduce Speed (yellow)
	[15060] = "%d", 	-- PLT_WARN_INTERTRIM 	 Inter Trim (green)
	[15061] = "%d", 	-- PLT_WARN_LENGSEC 	 Left Engine Secondary (yellow)
	[15062] = "%d", 	-- PLT_WARN_RATS 		 RATS (green)
	[15063] = "%d", 	-- PLT_WARN_STARTVALVE  Start Valve (yellow)
	[15064] = "%d", 	-- PLT_WARN_RENGSEC 	 Right Engine Secondary (yellow)

	-- VDI lights
	[9360] = "%d", -- ADJ A/C Light (red)
	[9361] = "%d", -- LANDING CHK Light (red)
	[9362] = "%d", -- ACL READY Light (red)
	[9363] = "%d", -- A/P CPLR Light (red)
	[9364] = "%d", -- CMD CONTROL Light (red)
	[9365] = "%d", -- 10 SECONDS Light (red)
	[9366] = "%d", -- TILT Light (red)
	[9367] = "%d", -- VOICE Light (red)
	[9368] = "%d", -- AUTO THRO Light (red)
	[9369] = "%d", -- A/P REF Light (red)
	[15070] = "%d", -- WAVE OFF Light (red)
	[15071] = "%d", -- WING SWEEP Light (red)
	[15072] = "%d", -- REDUCE SPD Light (red)
	[15073] = "%d", -- ALT LOW Light (red)

	-- RIO Warnings
	[2201] = "%d", -- RIO IFF Light (green)	
	[2202] = "%d", -- RIO RCV Light (green)	
	[2203] = "%d", -- RIO XMIT Light (green)	
	[2204] = "%d", -- RIO SAM Light (red)	
	[2205] = "%d", -- RIO AAA Light (red)	
	[2206] = "%d", -- RIO CW Light (red)	
	[2208] = "%d", -- RIO AI Light (red)

	[2209] = "%d", -- C D HOT Light
	[2210] = "%d", -- CABIN PRESS Light
	[2211] = "%d", -- FUEL LOW Light
	[2212] = "%d", -- CANOPY Light
	[2213] = "%d", -- FUZE HV Light
	[2214] = "%d", -- RDR ENABLED Light
	[2215] = "%d", -- COOLING AIR Light
	[2216] = "%d", -- MSL COND Light
	[2217] = "%d", -- AWG 9 COND
	[2218] = "%d", -- NAV COMP Light
	[2219] = "%d", -- FILM LOW Light
	[2220] = "%d", -- IMU Light
	[2221] = "%d", -- AHRS Light

	[2222] = "%d", -- WAVE OFF Light
	[2223] = "%d", -- LAND CHK Light
	[2224] = "%d", -- ACL BEAC Light
	[2225] = "%d", -- ACL RDY Light
	[2226] = "%d", -- A PC PLR Light
	[2227] = "%d", -- 10 SEC Light
	[2228] = "%d", -- ADJ A C Light
	[2229] = "%d", -- VOICE Light
	[2230] = "%d", -- TILT Light
	[2231] = "%d", -- CMD CHG Light
	[2232] = "%d", -- ALT CHG Light
	[2233] = "%d", -- MON ALT Light
	[2234] = "%d", -- MANUAL Light
	[2235] = "%d", -- SPD CHG Light
	[2236] = "%d", -- MON SPD Light
	[2237] = "%d", -- CMD CTRL Light
	[2238] = "%d", -- CHG CHN Light
	[2239] = "%d", -- HDG CHN Light
	[2240] = "%d", -- CANC RPY Light
	[2241] = "%d", -- FWD VEC Light
	[2242] = "%d", -- AFT VEC Light
	[2243] = "%d", -- COI VEC Light
	[2244] = "%d", -- NO MSG Light
	[2245] = "%d", -- 10 WAYPT Light
	[2246] = "%d", -- HANDOVER Light
	[2247] = "%d", -- ORBIT Light
	[2248] = "%d", -- CHALNGE Light
	[2249] = "%d", -- ARM 1 Light
	[2250] = "%d", -- ARM 2 Light
	[2251] = "%d", -- ARM 3 Light
	[2252] = "%d", -- NOT CMD Light
	[2253] = "%d", -- FRE LAN Light
	[2254] = "%d", -- DISGAGE Light
	[2255] = "%d", -- ABORT Light
	[2256] = "%d", -- BEAC ON Light
	[2257] = "%d", -- SEAC DUB Light
	[2258] = "%d", -- DROP Light
	[2259] = "%d", -- BEAC OFF Light
	[2260] = "%d", -- RET BASE Light

	[16005] = "%d", -- Asymmetric Thrust Limiter Cover
	[16006] = "%d", -- Asymmetric Thrust Limiter
	[16007] = "%d", -- Left Engine Mode
	[16008] = "%d", -- Right Engine Mode
}
PWDEV.ConfigArguments =
{
}

local function getAmmo()
    local digit1 = string.format("%.0f", GetDevice(0):get_argument_value(4060)*10)
	if digit1 == nil then digit1 = "0" end
    local digit2 = string.format("%.0f", GetDevice(0):get_argument_value(4061)*10)
	if digit2 == nil then digit2 = "0" end
	local digit3 = string.format("%.0f", GetDevice(0):get_argument_value(4062)*10)
	if digit3 == nil then digit3 = "0" end
    return tonumber(digit1 .. digit2 .. digit3)
end
-- local function getGunLead()
--     local digit1 = string.format("%.0f", GetDevice(0):get_argument_value(2270)*10)
-- 	if digit1 == nil then digit1 = "0" end
--     local digit2 = string.format("%.0f", GetDevice(0):get_argument_value(2271)*10)
-- 	if digit2 == nil then digit2 = "0" end
-- 	local digit3 = string.format("%.0f", GetDevice(0):get_argument_value(2272)*10)
-- 	if digit3 == nil then digit3 = "0" end
--     return tonumber(digit1 .. digit2 .. digit3)
-- end

local function getPLTFuelLeft()
    local digit1 = string.format("%.0f", GetDevice(0):get_argument_value(6000)*10)
	if digit1 == nil then digit1 = "0" end
    local digit2 = string.format("%.0f", GetDevice(0):get_argument_value(6001)*10)
	if digit2 == nil then digit2 = "0" end
    return string.format(digit1 .. digit2 .. "00")
end

local function getPLTFuelRight()
    local digit1 = string.format("%.0f", GetDevice(0):get_argument_value(6004)*10)
	if digit1 == nil then digit1 = "0" end
    local digit2 = string.format("%.0f", GetDevice(0):get_argument_value(6005)*10)
	if digit2 == nil then digit2 = "0" end
    return string.format(digit1 .. digit2 .. "00")
end

local function getPLTFuelTotal()
    local digit1 = string.format("%.0f", GetDevice(0):get_argument_value(6010)*10)
	if digit1 == nil then digit1 = "0" end
    local digit2 = string.format("%.0f", GetDevice(0):get_argument_value(6011)*10)
	if digit2 == nil then digit2 = "0" end
	local digit3 = string.format("%.0f", GetDevice(0):get_argument_value(6012)*10)
	if digit3 == nil then digit3 = "0" end
    return string.format(digit1 .. digit2 .. digit3 .. "00")
end

local function getPLTFuelBingo()
    local digit1 = string.format("%.0f", GetDevice(0):get_argument_value(6020)*10)
	if digit1 == nil then digit1 = "0" end
    local digit2 = string.format("%.0f", GetDevice(0):get_argument_value(6021)*10)
	if digit2 == nil then digit2 = "0" end
	local digit3 = string.format("%.0f", GetDevice(0):get_argument_value(6022)*10)
	if digit3 == nil then digit3 = "0" end
    return string.format(digit1 .. digit2 .. digit3 .. "00")
end

local function insert_radio_separator(line, separator)
	if not line or not separator then return "" end
	return line:sub(1, 3) .. separator .. line:sub(4)
end

local function get_radio_vuhf_display(indicator_id, is_pilot)
	local data = PWDEV.Tools.parse_indication(indicator_id)

	if not data[0] then return "" end

	local manual_mode = data[0] == 6
	local lower_index = is_pilot and 5 or 3

	if manual_mode then
		return insert_radio_separator(data[lower_index], data[lower_index + 1])
	end

	return insert_radio_separator(data[lower_index], " ")
end

local function getUhf()
	return PWDEV.Tools.getListCockpitParam("COMM1_FREQ")
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
	send(20001, getAmmo())
	send(20002, getPLTFuelLeft())
	send(20003, getPLTFuelRight())
	send(20004, getPLTFuelTotal())
	send(20005, getPLTFuelBingo())
	send(20006, getUhf())

	send(2007, get_radio_vuhf_display(10, true)) -- ARC-159 Pilot

	local jester_menu = "0"
	local jester = PWDEV.Tools.parseListIndicatorList(7)
    if (jester ~= nil) then
		jester_menu = "1"
    end
	send("JESTER", jester_menu) -- JESTER main menu

	local comm = PWDEV.Tools.parse_indication(12) or {}

	send(2801, comm[2])
	send(2802, comm[3])
	send(2803, comm[4])
	send(2804, comm[5])
	send(2805, comm[6])
	send(2806, comm[7])
	send(2807, comm[8])
	send(2808, comm[9])
	send(2809, comm[10])
	send(2810, comm[11])
	send(2811, comm[12])
	send(2812, comm[13])
	send(2813, comm[14])
	send(2814, comm[15])
	send(2815, comm[16])
	send(2816, comm[17])
	send(2817, comm[18])
	send(2818, comm[19])
	send(2819, comm[20])
	send(2820, comm[21])
    send(2501, PWDEV.Tools.GetArgumentsString({301,300,262}))
    send(2502, PWDEV.Tools.GetArgumentsString({301,302,303,304}))
end