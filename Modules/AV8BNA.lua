-- AV8BNA
-- arg 181
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments = 
{
	-- LAMPS --------------------------------------
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

	--EYEBROW LIGHTS RIGHT SIGHT
	[276] = "%d",	--SAM
	[277] = "%d",	--CW
	[278] = "%d",	--AI
	[279] = "%d",	--AAA

	--MIP OUTER LEFT SIDE
	[281] = "%d",	--A/G
	[283] = "%d",	--NAV
	[285] = "%d",	--VSTOL

	[451] = "%.f",	--SEL
	[452] = "%.f",	--CMBT
	[453] = "%.f",	--STO

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
	[0] = "%d",	--AV BIT
	[598] = "%d",	--"--"
	[599] = "%d",	--YAW
	[600] = "%d",	--CW NOGO
	[601] = "%d",	--P JAM
	[602] = "%d",	--JAM HOT
	[603] = "%d",	--ENG EXC
	[604] = "%d",	--P NOGO
	[605] = "%d",	--CW JAM
	[606] = "%d",	--REPLY

	--ENGINE DISPLAY
	-- [253] = "%.1f",	--DUCT 1. DRUM
	-- [254] = "%.1f",	--DUCT 2.
	-- [255] = "%.1f",	--DUCT 3.
	-- [256] = "%.1f",	--RPM 1. DRUM
	-- [257] = "%.1f",	--RPM 2.
	-- [258] = "%.1f",	--RPM 3.
	-- [259] = "%.1f",	--RPM 4.
	-- [260] = "%.1f",	--FF 1. DRUM
	-- [261] = "%.1f",	--FF 2.
	-- [262] = "%.1f",	--FF 3.
	-- [263] = "%.1f",	--JPT 1. DRUM
	-- [264] = "%.1f",	--JPT 2.
	-- [265] = "%.1f",	--JPT 3.
	-- [266] = "%.1f",	--STAB(Arrow up/down)
	-- [267] = "%.1f",	--STAB 1. Number, 2.DRUM
	-- [268] = "%.1f",	--STAB 2. Number, 3. DRUM
	-- [269] = "%.1f",	--H2O 1. Number
	-- [270] = "%.1f",	--H2O 2. Number -----3. Number is fix !!----
	-- [177] = "%.1",	--FLOW W LAMP
	-- [271] = "%.1f",	--NOZZLE POINTER

	--FUEL PANEL DISPLAY
	[365] = "%d",	--ON/OFF FLAG

	--UPPER AMARMENT PANEL
	-- [385] = "%.4f",	--MODE
	-- [386] = "%.4f",	--FUZ 1. DRUM 
	-- [387] = "%.4f",	--FUR 2.
	-- [392] = "%.4f",	--InVT x 10 1. DRUM 
	-- [393] = "%.4f",	--InVT x 10 2.
	-- [394] = "%.4f",	--InVT x 10 3.
	-- [391] = "%.4f",	--MULT
	-- [389] = "%.4f",	--QTY 1. Drum 
	-- [390] = "%.4f",	--QTY 2.

	--GEAR PANEL DISPLAY --STATUS LIGHTS--
	-- [462] = "%.f",	--NOSE GEAR (YELLOW)
	-- [463] = "%.f",	--NOSE GEAR (GREEN)
	-- [464] = "%.f",	--LEFR GEAR (YELLOW)
	-- [465] = "%.f",	--LEFT GEAR (GREEN)
	-- [466] = "%.f",	--RIGHT GEAR (YELLOW)
	-- [467] = "%.f",	--RIGHT GEAR (GREEN)
	-- [469] = "%.f",	--MAIN GEAR (YELLOW)
	-- [468] = "%.f",	--MAIN GEAR (GREEN)

	--BRAKE/ HYD DISPLAY
	-- [550] = "%.4f",	--BRAKE 1. DRUM 
	-- [551] = "%.4f",	--BRAKE	2.
	-- [552] = "%.4f",	--BRAKE 3.
	-- [553] = "%.4f",	--HYD1 1. DRUM 
	-- [554] = "%.4f",	--HYD1 2.
	-- [555] = "%.4f",	--HYD1 3.
	-- [556] = "%.4f",	--HYD2 1. DRUM 
	-- [557] = "%.4f",	--HYD2 2.
	-- [558] = "%.4f",	--HYD2 3.

	--FLAP POSITION DISPLAY
	-- [455] = "%.4f",	--FLAP POS 1. DRUM 
	-- [456] = "%.4f",	--FLAP POS 2. DRUM

	--ADI
	-- [349] = "%.4f",	--ADI DRUM UO/DWN  CLIMB/DESCEND
	-- [348] = "%.4f",	--ADI DRUM LEFR RIGHT (BANK)
	-- [347] = "%.4f",	--OFF FLAG

	--AIRSPEED
	-- [346] = "%.4f",	--KNT POINTER SHORT
	-- [345] = "%.4f",	--KNT POINTER LONG

	--ALTIMETER
	-- [352] = "%.4f",	--ALT POINTER
	-- [355] = "%.4f",	--ALT DIGITAL 1. NUMBER
	-- [354] = "%.4f",	--ALT DIGITAL 2.
	-- [353] = "%.4f",	--ALT DIGITAL 3.
	-- [356] = "%.4f",	--IN HG 1. NUMBER
	-- [357] = "%.4f",	--IN HG 2. NUMBER
	-- [358] = "%.4f",	--IN HG 3. NUMBER
	-- [359] = "%.4f",	--IN HG 4. NUMBER

	--AOA
	[360] = "%.1f",	--AOA FLAG
	[361] = "%.1f",	--AOA POINTER

	--VVI
	-- [362] = "%.4f",	--VVI POINTER

	---SIDE PANELS LEFT
	--AILERON METER
	-- [473] = "%.4f",	--AILERON NEEDLE

	---SIDE PANELS RIGHT
	--ACCU METER
	-- [559] = "%.4f",	--ACCU POINTER 
}

PWDEV.ConfigArguments = 
{
	-- Master Modes Panel
	[282] = "%.1f",	--Nav Master Mode selector
	[284] = "%.1f",	--VSTOL Master Mode Selector
	[280] = "%.1f",	--AG Master Mode Selector

	-- Engine Display Panel
	[272] = "%.1f",	--EDP Brightness Control
	[655] = "%d",	--EDP BIT Button

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
	-- [300] = "%.4f",	--Comm 1 Channel Selector
	-- [301] = "%.4f",	--Comm 2 Channel Selector
	-- [178] = "%.4f",	--Comm 1 Channel Show Button
	-- [179] = "%.4f",	--Comm 2 Channel Show Button

	-- Fuel Quantity Indicator
	[379] = "%.1f",	--Fuel Totalizer Selector

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

	-- Master Armament Panel
	[286] = "%d",	--Launch Flare Salvo
	[287] = "%d",	--Master Arm Switch

	-- ECM Control Panel
	-- [273] = "%.2f",	--RWR Power/Volume Button
	-- [274] = "%.1f",	--Decoy Dispenser Control
	-- [275] = "%.1f",	--Jammer Control

	-- Landing Gear/Flaps Control Panel
	-- [447] = "%1d",	--Emergency Landing Gear Lever
	-- [448] = "%1d",	--Gear Down Lock Override Button
	-- [454] = "%.1f",	--Flaps Mode Switch
	-- [457] = "%.1f",	--Flaps Power Switch
	-- [458] = "%1d",	--Emergency Jettison Button
	-- [459] = "%.1f",	--Anti-Skid Switch
	-- [460] = "%1d",	--Flaps BIT Button
	-- [461] = "%1d",	--Landing Gear Lever
	-- [470] = "%1d",	--Landing Gear Emergency Battery Lever

	-- Combat/Water Panel
	-- [449] = "%.1f",	--H2O Mode Switch
	-- [450] = "%1d",	--CMBT Thrust Button

	-- Miscelaneous Switch Panel
	-- [422] = "%1d",	--Video Recorder System Mode Switch
	-- [423] = "%1d",	--Video Recorder System Display Selector Switch
	-- [424] = "%1d",	--DMT Toggle On/Off
	-- [425] = "%.1f",	--Dual Processor Mode Selector Switch
	-- [426] = "%1d",	--Probe Heat Mode Switch
	-- [427] = "%.1f",	--Mission Computer Mode Switch
	-- [429] = "%1d",	--FLIR Power Switch

	-- INS Panel
	-- [421] = "%.1f",	--INS Mode Knob

	-- SAAHS Panel
	[475] = "%d",	--Q Feel Switch
	[476] = "%d",	--Alt Hold Switch
	[477] = "%.1f",	--AFC Switch
	[478] = "%d",	--SAS Yaw Switch"
	[479] = "%d",	--SAS Roll Switch
	[480] = "%d",	--SAS Pitch Switch

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

	-- Bulkhead Switches
	-- [502] = "%1d",	--Seat Adjustment Switch
	-- [519] = "%1d",	--Fuel Shutoff Lever
	-- [520] = "%1d",	--DECS Switch

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
	-- [617] = "%1d",	--V/UHF RSC Ancillary Mode Pointer
	-- [618] = "%1d",	--V/UHF RSC Ancillary Mode Switch
	[619] = "%.2f",	--V/UHF RSC Frequency Mode Switch
	-- [620] = "%1d",	--V/UHF RSC LOAD/OFST Switch

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

	--UPPER AMARMENT PANEL
	[385] = "%.1f",	--MODE	-/AUT/CIP/DSL/DIR/AGM

	[386] = "%.1f",	--FUZ 1. DRUM   -/N/T/NT/PR/OP/SA
	[387] = "%.1f",	--FUR 2.		-/IN/D1/D2/V/V1/V2/FE/
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
	PWDEV.Tools.SendData(2001, digits[1]..digits[2]..digits[3])

	-- RPM
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(256) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(257) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(258) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(259) * 10)
	PWDEV.Tools.SendData(2002, digits[1]..digits[2]..digits[3]..digits[4])

	-- FF
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(260) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(261) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(262) * 10)
	PWDEV.Tools.SendData(2003, digits[1]..digits[2]..digits[3])

	-- JPT
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(263) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(264) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(265) * 10)
	PWDEV.Tools.SendData(2004, digits[1]..digits[2]..digits[3])

	-- STAB
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(267) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(268) * 10)
	PWDEV.Tools.SendData(2005, digits[1]..digits[2])

	-- H2O
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(269) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(270) * 10)
	PWDEV.Tools.SendData(2006, digits[1]..digits[2])

	-- Fuel Total
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(366) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(367) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(368) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(369) * 10)
	digits[5] = string.format("%1.0f",mainPanelDevice:get_argument_value(370) * 10)
	PWDEV.Tools.SendData(2010, digits[1]..digits[2]..digits[3]..digits[4]..digits[5])

	-- Fuel Left
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(371) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(372) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(373) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(374) * 10)
	PWDEV.Tools.SendData(2011, digits[1]..digits[2]..digits[3]..digits[4])

	-- Fuel Right
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(375) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(376) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(377) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(378) * 10)
	PWDEV.Tools.SendData(2012, digits[1]..digits[2]..digits[3]..digits[4])

	-- Fuel Bingo
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(381) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(382) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(383) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(384) * 10)
	PWDEV.Tools.SendData(2013, digits[1]..digits[2]..digits[3]..digits[4])
	
	--FLAP POSITION DISPLAY
	--[455] = "%.4f",	--FLAP POS 1. DRUM 
	--[456] = "%.4f",	--FLAP POS 2. DRUM
	-- digits = {}
	-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(455) * 10)
	-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(456) * 10)
	
	-- PWDEV.Tools.SendData(2014, digits[1]..digits[2])

	--BRAKE/HYD DISPLAY
	--[550] = "%.4f",	--BRAKE 1. DRUM 
	--[551] = "%.4f",	--BRAKE	2.
	--[552] = "%.4f",	--BRAKE 3.
	-- digits = {}
	-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(550) * 10)
	-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(551) * 10)
	-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(552) * 10)
	
	-- PWDEV.Tools.SendData(2015, digits[1]..digits[2]..digits[3])
	
	--[553] = "%.4f",	--HYD1 1. DRUM 
	--[554] = "%.4f",	--HYD1 2.
	--[555] = "%.4f",	--HYD1 3.
	-- digits = {}
	-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(553) * 10)
	-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(554) * 10)
	-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(555) * 10)
	
	-- PWDEV.Tools.SendData(2016, digits[1]..digits[2]..digits[3])
	
	--[556] = "%.4f",	--HYD2 1. DRUM 
	--[557] = "%.4f",	--HYD2 2.
	--[558] = "%.4f",	--HYD2 3.
	-- digits = {}
	-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(556) * 10)
	-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(557) * 10)
	-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(558) * 10)
	
	-- PWDEV.Tools.SendData(2017, digits[1]..digits[2]..digits[3])

	
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(389) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(390) * 10)
	PWDEV.Tools.SendData(2020, digits[1]..digits[2])
	
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(391) * 10)
	PWDEV.Tools.SendData(2021, digits[1])
	
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(392) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(393) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(394) * 10)
	PWDEV.Tools.SendData(2022, digits[1]..digits[2]..digits[3])

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

	PWDEV.Tools.SendData(2023, PWDEV.Tools.coerce_nil_to_string(comm.ufc_chnl_1_m)) -- string with max 2 charachters
	PWDEV.Tools.SendData(2024, PWDEV.Tools.coerce_nil_to_string(comm.ufc_chnl_2_m)) -- string with max 2 charachters
	PWDEV.Tools.SendData(2025, string.format("%s", lUFC_Display)) -- string with max 8 charachters

	-- ODU Display
	local lODUDisplays = list_indication(6)

	local to1, to2, from1, from2 = nil, nil, nil, nil
	local lODU_Text = {"","","","",""}
	local lODU_select = " "

	to1, to2 = lODUDisplays:find("ODU_DISPLAY")
	if (to1 ~= nil) then
		for lIndex = 1, 5, 1 do
			lODU_select = " "

			from1, from2 = lODUDisplays:find("ODU_Option_"..lIndex.."_Slc%c")
			if (from2 ~= nill) then
				to1, to2 = lODUDisplays:find("%c", from2+2)
				if (to1 ~= nil) then
					lODU_select = lODUDisplays:sub(from2+1, to1-1)
					--lODU_select = lODU_select:gsub(":", "¦")
				end
			end

			from1, from2 = lODUDisplays:find("ODU_Option_"..lIndex.."_Text%c")
			if (from2 ~= nill) then
				to1, to2 = lODUDisplays:find("%c", from2+2)
				if (to1 ~= nil) then
					lODU_Text[lIndex] = lODUDisplays:sub(from2+1, to1-1)
				end
			end

			lODU_Text[lIndex] = lODU_select..lODU_Text[lIndex]
		end -- for
	end

	PWDEV.Tools.SendData(2026, string.format("%s", lODU_Text[1]))
	PWDEV.Tools.SendData(2027, string.format("%s", lODU_Text[2]))
	PWDEV.Tools.SendData(2028, string.format("%s", lODU_Text[3]))
	PWDEV.Tools.SendData(2029, string.format("%s", lODU_Text[4]))
	PWDEV.Tools.SendData(2030, string.format("%s", lODU_Text[5]))

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
	PWDEV.Tools.SendData(2031, string.format("%s", lUVHF_Channel))
	-- string with max 7 charachters
	PWDEV.Tools.SendData(2032, string.format("%s", lUHF_Freq_Left))
	-- string with max 10 charachters
	PWDEV.Tools.SendData(2033, string.format("%s", lacnip_line[1]))
	PWDEV.Tools.SendData(2034, string.format("%s", lacnip_line[2]))
	PWDEV.Tools.SendData(2035, string.format("%s", lacnip_line[3]))
	PWDEV.Tools.SendData(2036, string.format("%s", lacnip_line[4]))

	-- -- General
	-- PWDEV.Tools.SendData(2901, -PWDEV.Tools.GetArgumentsValue(349, "%.2f"))
	-- PWDEV.Tools.SendData(2902, PWDEV.Tools.GetArgumentsValue(348, "%.2f"))


end