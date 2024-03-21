-- AV8BNA
-- arg 181
local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	-- Engine Display Panel
	[177] = "%d",	--FLOW W LAMP
	[266] = "%.1f",	--STAB(Arrow up/down)
	[271] = "%.1f",	--NOZZLE POINTER
	[272] = "%.1f",	--EDP Brightness Control

	-- ECM Control Panel
	-- [273] = "%.1f",	--RWR Power/Volume Button
	-- [274] = "%.1f",	--Decoy Dispenser Control
	-- [275] = "%.1f",	--Jammer Control

	--EYEBROW LIGHTS RIGHT SIGHT
	[276] = "%d",	--SAM
	[277] = "%d",	--CW
	[278] = "%d",	--AI
	[279] = "%d",	--AAA

	-- Master Modes Panel
	[280] = "%.1f",	--AG Master Mode Selector
	[282] = "%.1f",	--Nav Master Mode selector
	[284] = "%.1f",	--VSTOL Master Mode Selector

	--MIP OUTER LEFT SIDE
	[281] = "%d",	--A/G
	[283] = "%d",	--NAV
	[285] = "%d",	--VSTOL

	-- Master Armament Panel
	[286] = "%d",	--Launch Flare Salvo
	[287] = "%d",	--Master Arm Switch

	-- HUD Control Panel
	[288] = "%.1f",	--HUD
	[289] = "%.1f",	--HUD Off/Brightness Control
	[290] = "%.1f",	--HUD Display Mode Switch
	[291] = "%.1f",	--HUD Video Brightness Control
	[292] = "%.1f",	--HUD Video Contrast Control
	[293] = "%d",	--HUD Altitude Selector Switch

	-- UFC Panel
	[295] = "%.1f",	--Display Brightness Control
	[298] = "%.1f",	--Comm 1 Volume Control
	[299] = "%.1f",	--Comm 2 Volume Control

	--MIP INNER LEFT SIDE
	[196] = "%.f",	--Master Caution (yellow)
	[326] = "%.f",	--L FUEL
	[327] = "%.f",	--R FUEL
	[328] = "%.f",	--15 Sek
	[329] = "%.f",	--MFS
	[330] = "%.f",	--BINGO
	[331] = "%.f",	--H2O

	--MIP RIGHT SIDE
	[197] = "%.f",	--Master Warning (red)
	[334] = "%.f",	--FIRE
	[335] = "%.f",	--LAW
	[336] = "%.f",	--FLAPS
	[337] = "%.f",	--L TANK
	[338] = "%.f",	--R TANK
	[339] = "%.f",	--HHYD
	[340] = "%.f",	--GEAR
	[341] = "%.f",	--OT
	[342] = "%.f",	--JPTL
	[343] = "%.f",	--EFC
	[344] = "%.f",	--GEN

	--AIRSPEED
	-- [346] = "%.2f",	--KNT POINTER SHORT
	-- [345] = "%.2f",	--KNT POINTER LONG

	--ADI
	-- [349] = "%.2f",	--ADI DRUM UO/DWN  CLIMB/DESCEND
	-- [348] = "%.2f",	--ADI DRUM LEFR RIGHT (BANK)
	-- [347] = "%d",	--OFF FLAG

	--AOA
	[360] = "%.1f",	--AOA FLAG
	[361] = "%.1f",	--AOA POINTER

	--VVI
	-- [362] = "%.2f",	--VVI POINTER

	-- Fuel Quantity Indicator
	[365] = "%d",	--ON/OFF FLAG
	[379] = "%.1f",	--Fuel Totalizer Selector

	--UPPER AMARMENT PANEL
	[385] = "%.1f",	--MODE	-/AUT/CIP/DSL/DIR/AGM

	[386] = "%.1f",	--FUZ 1. DRUM   -/N/T/NT/PR/OP/SA
	[387] = "%.1f",	--FUR 2.		-/IN/D1/D2/V/V1/V2/FE/

	-- Armament Control Panel ACP
	[395] = "%.1f",	--Manual Release Control Knob 0/.3/.7/1
	[404] = "%.1f",	--Jettison Mode Selector
	-- [405] = "%1d",	--Jettison Stores
	[420] = "%d",	--Ground IR Cool Switch

	--LOWER AMARMENT PANEL
	[406] = "%d",	--SET FLAG 1
	[408] = "%d",	--SET FLAG 2
	[410] = "%d",	--SET FLAG 3
	[412] = "%d",	--SET FLAG 4
	[414] = "%d",	--SET FLAG 5
	[416] = "%d",	--SET FLAG 6
	[418] = "%d",	--SET FLAG 7

	-- INS Panel
	[421] = "%.1f",	--INS Mode Knob	
	[422] = "%1d",	--Video Recorder System Mode Switch
	[423] = "%1d",	--Video Recorder System Display Selector Switch
	[424] = "%1d",	--DMT Toggle On/Off
	[425] = "%.1f",	--Dual Processor Mode Selector Switch
	[426] = "%1d",	--Probe Heat Mode Switch
	[427] = "%.1f",	--Mission Computer Mode Switch
	[429] = "%1d",	--FLIR Power Switch

	-- Combat/Water Panel
	[449] = "%.1f",	--H2O Mode Switch
	[450] = "%1d",	--CMBT Thrust Button

	[451] = "%.f",	--SEL
	[452] = "%.f",	--CMBT
	[453] = "%.f",	--STO

	-- Landing Gear/Flaps Control Panel
	-- [454] = "%.1f",	--Flaps Mode Switch
	-- [457] = "%.1f",	--Flaps Power Switch
	-- [459] = "%.1f",	--Anti-Skid Switch

	--GEAR PANEL DISPLAY --STATUS LIGHTS
	[462] = "%d",	--NOSE GEAR (YELLOW)
	[463] = "%d",	--NOSE GEAR (GREEN)
	[464] = "%d",	--LEFR GEAR (YELLOW)
	[465] = "%d",	--LEFT GEAR (GREEN)
	[466] = "%d",	--RIGHT GEAR (YELLOW)
	[467] = "%d",	--RIGHT GEAR (GREEN)
	[469] = "%d",	--MAIN GEAR (YELLOW)
	[468] = "%d",	--MAIN GEAR (GREEN)

	-- SAAHS Panel
	[475] = "%d",	--Q Feel Switch
	[476] = "%d",	--Alt Hold Switch
	[477] = "%.1f",	--AFC Switch
	[478] = "%d",	--SAS Yaw Switch"
	[479] = "%d",	--SAS Roll Switch
	[480] = "%d",	--SAS Pitch Switch

	-- Bulkhead Switches
	-- [502] = "%1d",	--Seat Adjustment Switch
	-- [519] = "%1d",	--Fuel Shutoff Lever
	-- [520] = "%1d",	--DECS Switch

	-- Fuel Panel
	[504] = "%d",	--Fuel Proportioner
	[505] = "%.1f",	--Fuel Pump L Switch
	[506] = "%.1f",	--Fuel Pump R Switch
	[507] = "%.1f",	--Air Refueling Probe Switch
	[508] = "%d",	--Fuel Dump L Switch
	[509] = "%d",	--Fuel Dump R Switch"

	-- External Lights Panel
	[472] = "%d",	--Landing/Taxi Lights Switch
	[503] = "%d",	--External Lights Mode Switch"
	[510] = "%.1f",	--Formation Lights Knob
	[511] = "%.1f",	--Position Lights Switch
	[512] = "%d",	--Anti-Collision Lights Switch
	[513] = "%d",	--External Auxiliary Lights Switch

	-- Pilot Service Panel
	-- [514] = "%1d",	--"Oxygen Switch
	-- [515] = "%1d",	--H2O Dump Switch
	-- [516] = "%1d",	--LIDS Switch
	-- [517] = "%1d",	--ENG RPM Switch
	-- [518] = "%1d",	--EFC Switch

	--CAUTION PANEL (from upper left to lower right)
	[560] = "%d",	--OXY
	[561] = "%d",	--WSLD
	[562] = "%d",	--HYD 1
	[563] = "%d",	--HYD 2
	[564] = "%d",	--L PUMP
	[565] = "%d",	--R PUMP
	[566] = "%d",	--L TRANS
	[567] = "%d",	--R TRANS
	[568] = "%d",	--FLAPS 1
	[569] = "%d",	--FLAPS 2
	[570] = "%d",	--AUT FLP
	[571] = "%d",	--PROP
	[572] = "%d",	--LIDS
	[573] = "%d",	--OIL
	[574] = "%d",	--APU GEN
	[575] = "%d",	--"--"
	[576] = "%d",	--GPS
	[577] = "%d",	--DEP RES
	[578] = "%d",	--DC
	[579] = "%d",	--STBY TR
	[580] = "%d",	--CS COOL
	[581] = "%d",	--LOAD
	[582] = "%d",	--CANOPY
	[583] = "%d",	--INS
	[584] = "%d",	--SKID
	[585] = "%d",	--EFC
	[586] = "%d",	--NWS
	[587] = "%d",	--AFC
	[588] = "%d",	--C AUT
	[589] = "%d",	--H2O SEL
	[590] = "%d",	--APU
	[591] = "%d",	--PITCH
	[592] = "%d",	--IFF
	[593] = "%d",	--SPD BRK
	[594] = "%d",	--DROOP
	[595] = "%d",	--ROLL
	[596] = "%d",	--AFT BAY
	[0] = "%d",		--AV BIT
	[598] = "%d",	--"--"
	[599] = "%d",	--YAW
	[600] = "%d",	--CW NOGO
	[601] = "%d",	--P JAM
	[602] = "%d",	--JAM HOT
	[603] = "%d",	--ENG EXC
	[604] = "%d",	--P NOGO
	[605] = "%d",	--CW JAM
	[606] = "%d",	--REPLY

	-- Electrical Panel
	-- [609] = "%.1f",	--DC Test Switch 
	[610] = "%.1f",	--APU Generator Switch
	[611] = "%d",	--Engine Start Switch
	[612] = "%.1f",	--Generator Switch
	[613] = "%.1f",	--Battery Switch

	-- V/UHF Radio Panel
	[614] = "%.1f",	--V/UHF RSC Volume Knob
	[615] = "%.3f",	--V/UHF RSC Chan/Freq Knob
	[616] = "%.1f",	--V/UHF RSC Operational Mode Switch
	[619] = "%.2f",	--V/UHF RSC Frequency Mode Switch

	-- ACNIP
	[621] = "%d",	--ACNIP Mode Switch
	[622] = "%d",	--KY-1 Cipher Type Selector Switch
	[623] = "%d",	--KY-2 Cipher Type Selector Switch
	[624] = "%d",	--KY-1 Code/Mode Switch
	[625] = "%d",	--KY-2 Code/Mode Switch
	[626] = "%d",	--ACNIP Radio Selector Switch
	[627] = "%d",	--KY-58 Codes Clear Switch
	[628] = "%d",	--KY-58 Remote Codes Load Switch

	-- ICS
	[629] = "%.1f",	--ICS Aux Volume Knob
	[630] = "%.1f",	--ICS Ground Volume Knob
	[631] = "%.1f",	--ICS Mic Operational Mode Switch

	-- IFF
	[632] = "%d",	--IFF Operational Mode Switch
	[633] = "%d",	--IFF Crypto Mode Switch

	-- Interior Lights Panel
	[634] = "%.1f",	--Compass Light/Test Lights
	[635] = "%.1f",	--Instruments Lights
	[636] = "%.1f",	--Console Lights
	[637] = "%.1f",	--Flood Lights
	[638] = "%.1f",	--Annunciator Lights
}

PWDEV.ConfigArguments =
{
}

-- Pointed to by ProcessDCSHighImportance
function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by PWDEV.ProcessDCSConfigLowImportance
function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
	--ENGINE DISPLAY
	-- DUCT
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(253) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(254) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(255) * 10)
	send(2001, digits[1]..digits[2]..digits[3])

	-- RPM
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(256) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(257) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(258) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(259) * 10)
	send(2002, digits[1]..digits[2]..digits[3]..digits[4])

	-- FF
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(260) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(261) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(262) * 10)
	send(2003, digits[1]..digits[2]..digits[3])

	-- JPT
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(263) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(264) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(265) * 10)
	send(2004, digits[1]..digits[2]..digits[3])

	-- STAB
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(267) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(268) * 10)
	send(2005, digits[1]..digits[2])

	-- H2O
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(269) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(270) * 10)
	send(2006, digits[1]..digits[2])

	-- Fuel Total
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(366) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(367) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(368) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(369) * 10)
	digits[5] = string.format("%1.0f",mainPanelDevice:get_argument_value(370) * 10)
	send(2010, digits[1]..digits[2]..digits[3]..digits[4]..digits[5])

	-- Fuel Left
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(371) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(372) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(373) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(374) * 10)
	send(2011, digits[1]..digits[2]..digits[3]..digits[4])

	-- Fuel Right
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(375) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(376) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(377) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(378) * 10)
	send(2012, digits[1]..digits[2]..digits[3]..digits[4])

	-- Fuel Bingo
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(381) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(382) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(383) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(384) * 10)
	send(2013, digits[1]..digits[2]..digits[3]..digits[4])

	--FLAP POSITION DISPLAY
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(455) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(456) * 10)
	send(2014, digits[1]..digits[2])

	--BRAKE/HYD DISPLAY
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(550) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(551) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(552) * 10)
	send(2015, digits[1]..digits[2]..digits[3])

	-- Brake Hyd 1
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(553) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(554) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(555) * 10)
	send(2016, digits[1]..digits[2]..digits[3])

	-- Brake Hyd 2
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(556) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(557) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(558) * 10)
	send(2017, digits[1]..digits[2]..digits[3])

	-- QTY
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(389) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(390) * 10)
	send(2020, digits[1]..digits[2])

	-- MULT
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(391) * 10)
	send(2021, digits[1])

	-- INTV X 10
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(392) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(393) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(394) * 10)
	send(2022, digits[1]..digits[2]..digits[3])

	-- altitude
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(355) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(354) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(353) * 10)
	send(2050, digits[1]..digits[2]..digits[3])

	-- altitude in Hg
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(356) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(357) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(358) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(359) * 10)
	send(2051, digits[1]..digits[2]..digits[3]..digits[4])

	-- UFC Displays
	local lUfcDisplays = list_indication(5)

	local to1, to2, from1, from2, lUFC_Chnl1, lUFC_Chnl2, lUFC_Left_Position, lUFC_Right_Position, lUFC_Display = nil, nil, nil, nil, "", "", "", "", ""
	to1, to2 = lUfcDisplays:find("UFC_DISPLAY")
	if (to1 ~= nil) then
		from1, from2 = lUfcDisplays:find("ufc_left_position%c", to2)
		if (from2 ~= nill) then
			to1, to2 = lUfcDisplays:find("%c", from2+2)
			if (to1 ~= nil) then
				lUFC_Left_Position = lUfcDisplays:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUfcDisplays:find("ufc_right_position%c", to2)
		if (from2 ~= nill) then
			if (from2 ~= nil) then
				lUFC_Right_Position = lUfcDisplays:sub(from2+1)
				lUFC_Right_Position = lUFC_Right_Position:gsub("%c", "")
			end
		end
	end

	local comm = PWDEV.Tools.getListIndicatorValue(5) or {}

	local lRep = 8 - lUFC_Left_Position:len() - lUFC_Right_Position:len()

	lUFC_Display = lUFC_Left_Position..string.rep(" ", lRep)..lUFC_Right_Position
	lUFC_Display = lUFC_Display:gsub(";", " ")

	send(2023, coerce_nil_to_string(comm.ufc_chnl_1_m)) -- string with max 2 charachters
	send(2024, coerce_nil_to_string(comm.ufc_chnl_2_m)) -- string with max 2 charachters
	send(2025, string.format("%s", lUFC_Display)) -- string with max 8 charachters

	if (comm.ufc_left_position ~= nil) then
		send(2125, PWDEV.Tools.DisplayFormat(comm.ufc_left_position, 2, "l"))
	else
		send(2125, string.format("  "))
	end

	if (comm.ufc_right_position ~= nil) then
		send(2126, PWDEV.Tools.DisplayFormat(comm.ufc_right_position, 9):gsub(";", " "))
	else
		send(2126, string.format("         "))
	end

	-- ODU Display
	local lODUDisplays = PWDEV.Tools.getListIndicatorValue(6) or {}
	if lODUDisplays ~= nil then
		local lODU_select1 = " "
		local lODU_select2 = " "
		local lODU_select3 = " "
		local lODU_select4 = " "
		local lODU_select5 = " "

		if (lODUDisplays.ODU_Option_1_Slc ~= nil) then lODU_select1 = ":" end
		if (lODUDisplays.ODU_Option_2_Slc ~= nil) then lODU_select2 = ":" end
		if (lODUDisplays.ODU_Option_3_Slc ~= nil) then lODU_select3 = ":" end
		if (lODUDisplays.ODU_Option_4_Slc ~= nil) then lODU_select4 = ":" end
		if (lODUDisplays.ODU_Option_5_Slc ~= nil) then lODU_select5 = ":" end
		send(2026, lODU_select1 .. PWDEV.Tools.DisplayFormat(lODUDisplays.ODU_Option_1_Text, 4, "l"))
		send(2027, lODU_select2 .. PWDEV.Tools.DisplayFormat(lODUDisplays.ODU_Option_2_Text, 4, "l"))
		send(2028, lODU_select3 .. PWDEV.Tools.DisplayFormat(lODUDisplays.ODU_Option_3_Text, 4, "l"))
		send(2029, lODU_select4 .. PWDEV.Tools.DisplayFormat(lODUDisplays.ODU_Option_4_Text, 4, "l"))
		send(2030, lODU_select5 .. PWDEV.Tools.DisplayFormat(lODUDisplays.ODU_Option_5_Text, 4, "l"))
	end

	-- UVHF Display
	local lUVHFDisplay = list_indication(7)

	local to1, to2, from1, from2, lUVHF_Channel, lUHF_Freq_Left, lacnip_1_label_mode, lacnip_1_mode, lacnip_1_label_code, lacnip_1_code, lacnip_2_label_mode, lacnip_2_mode, lacnip_2_label_code, lacnip_2_code = nil, nil, nil, nil, "", "", "", "", "", "", "", "", "", ""
	local lacnip_line = {"", "", "", ""}

	to1, to2 = lUVHFDisplay:find("UVHF_DISPLAY")
	if (to1 ~= nil) then
		from1, from2 = lUVHFDisplay:find("uvhf_channel%c")
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lUVHF_Channel = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUVHFDisplay:find("uvhf_freq_left%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lUHF_Freq_Left = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUVHFDisplay:find("acnip_1_label_mode%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lacnip_1_label_mode = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUVHFDisplay:find("acnip_1_mode%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lacnip_1_mode = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUVHFDisplay:find("acnip_1_label_code%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lacnip_1_label_code = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUVHFDisplay:find("acnip_1_code%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lacnip_1_code = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUVHFDisplay:find("acnip_2_label_mode%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lacnip_2_label_mode = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUVHFDisplay:find("acnip_2_mode%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lacnip_2_mode = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUVHFDisplay:find("acnip_2_label_code%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lacnip_2_label_code = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lUVHFDisplay:find("acnip_2_code%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lUVHFDisplay:find("%c", from2+2)
			if (to1 ~= nil) then
				lacnip_2_code = lUVHFDisplay:sub(from2+1, to1-1)
			end
		end
	end

	lacnip_line[1] = lacnip_1_label_mode.."  "..lacnip_2_label_mode
	local lRep1 = 4 - lacnip_1_mode:len()
	local lRep2 = 4 - lacnip_2_mode:len()
	lacnip_line[2] = string.rep(" ", lRep1)..lacnip_1_mode.."  "..lacnip_2_mode..string.rep(" ", lRep2)
	lacnip_line[3] = lacnip_1_label_code.."  "..lacnip_2_label_code
	lRep1 = 4 - lacnip_1_code:len()
	lRep2 = 4 - lacnip_2_code:len()
	lacnip_line[4] = string.rep(" ", lRep1)..lacnip_1_code.."  "..lacnip_2_code..string.rep(" ", lRep2)

	-- string with max 2 charachters
	send(2031, string.format("%s", lUVHF_Channel))
	-- string with max 7 charachters
	send(2032, string.format("%s", lUHF_Freq_Left))
	-- string with max 10 charachters
	send(2033, string.format("%s", lacnip_line[1]))
	send(2034, string.format("%s", lacnip_line[2]))
	send(2035, string.format("%s", lacnip_line[3]))
	send(2036, string.format("%s", lacnip_line[4]))
end