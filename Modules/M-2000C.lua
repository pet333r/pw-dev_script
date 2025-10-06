-- Mirage 2000C
local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	[185] = "%d",	-- LIM red lt
	[186] = "%d",	-- IFF red lt
	[187] = "%d",	-- LCD green 1
	[188] = "%d",	-- LCD green 2
	[193] = "%.1f",	-- Refuel Transfer Switch

	[199] = "%d",	-- master warning
	[200] = "%d",	-- master caution

	-- RWR Lamps
	[229] = "%d",	-- V
	[230] = "%d",	-- BR
	[231] = "%d",	-- DA
	[232] = "%d",	-- D2M
	[233] = "%d",	-- LL
	[349] = "%.1f",	-- gauge 1
	[350] = "%.1f",	-- gauge 2
	[351] = "%.1f",	-- gauge 3
	[352] = "%.1f",	-- remain 1
	[353] = "%.1f",	-- remain 2
	[354] = "%.1f",	-- remain 3
	[355] = "%d",	-- switch reset

	[373] = "%d",	-- AB lt
	[374] = "%d",	-- ENG lt
	[375] = "%d",	-- AB lt
	[376] = "%d",	-- START red lt

	-- Fuel panel
	[198] = "%d", 	-- Air Refueling Light
	[356] = "%.1f", -- Transfer Switch
	[357] = "%d", 	-- Fuel Crossfeeed Switch
	[358] = "%.2f", -- LEFT JAUGE display
	[359] = "%.2f", -- RIGHT JAUGE display
	[362] = "%d",	-- Left RL Light
	[363] = "%d",	-- Center RL Light
	[364] = "%d",	-- Right RL Light
	[365] = "%d",	-- Left AV Light
	[366] = "%d",	-- Right AV Light
	[367] = "%d",	-- Left V Light
	[368] = "%d",	-- Right V Light

	-- PCA
	[234] = "%d", 	-- Master Arm Switch
	[236] = "%d", 	-- Button 1 S Light
	[238] = "%d", 	-- Button 2 S Light
	[240] = "%d", 	-- Button 3 S Light
	[242] = "%d", 	-- Button 4 S Light
	[244] = "%d", 	-- Button 5 S Light
	[246] = "%d", 	-- Gun Mode Button KL1 Light
	[247] = "%d", 	-- Gun Mode Button KL1 Light
	[251] = "%d",	-- Weapons Button 1 S Light
	[252] = "%d",	-- Weapons Button 1 P Light
	[254] = "%d",	-- Weapons Button 2 S Light
	[255] = "%d",	-- Weapons Button 2 P Light
	[257] = "%d",	-- Weapons Button 3 S Light
	[258] = "%d",	-- Weapons Button 3 P Light
	[260] = "%d",	-- Weapons Button 4 S Light
	[261] = "%d",	-- Weapons Button 4 P Light
	[263] = "%d",	-- Weapons Button 5 S Light
	[264] = "%d",	-- Weapons Button 5 P Light

	-- PPA
	[265] = "%d", -- Missile Selector Switch
	[267] = "%d", -- S530 P Light
	[268] = "%d", -- S530 MIS Light
	[270] = "%d", -- AUT Light
	[271] = "%d", -- MAN Light
	[273] = "%d", -- MAGIC P Light
	[274] = "%d", -- MAGIC MAN Light
	[275] = "%d", -- TEST switch
	[280] = "%d", -- TOT Light
	[281] = "%d", -- PAR Light
	[276] = "%.1f", -- Bomb Fuze Selector Switch
	[277] = "%d", -- Bomb Release Quantity Selector Switch
	[278] = "%d", -- Bomb Release Interval Selector Switch

	-- AUTOPILOT lights
	[283] = "%d",	--P
	[284] = "%d",	--A
	[286] = "%d",	--Alt 1
	[287] = "%d",	--blank Alt
	[289] = "%d",	--Alt 2
	[290] = "%d",	--AFF
	[292] = "%d",	--blank1
	[293] = "%d",	--blank2
	[295] = "%d", 	--left
	[296] = "%d",	--blank L
	[297] = "%d",	--G
	[298] = "%d",	--blank G

	[331] = "%.2f", -- AoA

	[449] = "%d", -- Police Lights Switch
	[450] = "%.1f", -- Landing Lights Switch
	[453] = "%.1f", -- Anti-Collision Lights Switch
	[454] = "%.1f", -- Navigation Lights Switch
	[455] = "%.1f", -- Formation Lights Switch
	[920] = "%.1f", -- Refuel Lights Brightness Knob

    -- WARNING PANEL
	[520] = "%d",	--  Main Battery Switch
	[521] = "%d",	--  Electric Power Transfer Switch
	[522] = "%d",	--  Alternator 1 Switch
	[523] = "%d",	--  Alternator 2 Switch
	[524] = "%d",	--  Lights Test Switch

	[501] = "%d",	--  blank 3x
	[525] = "%d",	--  BATT
	[526] = "%d",	--  TR
	[527] = "%d",	--  ALT 1
	[528] = "%d",	--  ALT2
	[529] = "%d",	--  HUILLE
	[530] = "%d",	--  T7
	[531] = "%d",	--  CALC C
	[532] = "%d",	--  SOURIS
	[533] = "%d",	--  PELLE
	[534] = "%d",	--  B.P
	[535] = "%d",	--  BP.G
	[536] = "%d",	--  BP.D
	[537] = "%d",	--  TRANSF
	[538] = "%d",	--  NIVEAU
	[539] = "%d",	--  HYD 1
	[540] = "%d",	--  HYD 2
	[541] = "%d",	--  HYD 3
	[542] = "%d",	--  EP
	[543] = "%d",	--  BINGO
	[544] = "%d",	--  P.CAB
	[545] = "%d",	--  TEMP
	[546] = "%d",	--  REG O2
	[547] = "%d",	--  5nm O2
	[548] = "%d",	--  O2 HA
	[549] = "%d",	--  ANEMO
	[550] = "%d",	--  CC
	[551] = "%d",	--  DSV
	[552] = "%d",	--  CONDIT
	[553] = "%d",	--  CONF
	[554] = "%d",	--  PA
	[555] = "%d",	--  MAN
	[556] = "%d",	--  DOM
	[557] = "%d",	--  BECS
	[558] = "%d",	--  U.S.EL
	[559] = "%d",	--  8
	[560] = "%d",	--  GAIN
	[561] = "%d",	--  RPM
	[562] = "%d",	--  DECOL
	[563] = "%d",	--  PARK.

	-- PCN
	[437] = "%d",	-- BAD green Indicator Light
	[438] = "%d",	-- REC green Indicator Light
	[439] = "%d",	-- MRC green Indicator Light
	[440] = "%d",	-- VAL green Indicator Light
	[564] = "%d",	-- PRET Indicator Light
	[565] = "%d",	-- ALN Indicator Light
	[566] = "%d",	-- MIP Indicator Light
	[567] = "%d",	-- N.DEG Indicator Light
	[568] = "%d",	-- SEC Indicator Light
	[569] = "%d",	-- UNI Indicator Light
	[571] = "%d",	-- PREP Button Light
	[573] = "%d",	-- DEST Button Light
	[577] = "%d",	-- BAD Button Light
	[579] = "%d",	-- REC Button Light
	[595] = "%d",	-- EFF Button Light
	[597] = "%d",	-- INS Button Light
	[581] = "%d",	-- VAL Button Light
	[583] = "%d",	-- MRQ Button Light
	[668] = "%d",	-- ENC Button Light
	[669] = "%d",	-- M91 Indicator Light
	[670] = "%d",	-- M92 Indicator Light
	[671] = "%d",	-- M93 Indicator Light

	[574] = "%.1f", -- INS Parameter Selector
	[570] = "%d",  -- PREP Switch
	[572] = "%d",  -- DEST Switch
	[576] = "%d",  -- Offset Waypoint/Target (BAD)
	[578] = "%d",  -- INS Update (REC)
	[580] = "%d",  -- Validate Data Entry (VAL)
	[582] = "%d",  -- Mark Position (MRC)

	-- INS
	[627] = "%.1f",  -- INS Mode Selector
	[629] = "%.1f",  -- INS Operational Selector

	[639] = "%.1f",  -- Dashboard U.V. Lights Knob
	[640] = "%.1f",  -- Dashboard Panel Lights Knob
	[641] = "%.1f",  -- Red Flood Lights Knob
	[642] = "%.1f",  -- Console Panel Lights Knob
	[643] = "%.1f",  -- Caution/Advisory Lights Rheostat
	[644] = "%.1f",  -- White Flood Lights Knob
	[672] = "%d",  -- NVG Lights Filter Switch

	[728] = "%d",	-- arg lights

	-- VHF Radio
	[950] = "%.1f", -- Mode knob
	[951] = "%.2f", -- Channel Selector (20, 0.05)
	[965] = "%.1f", -- CLR
	[966] = "%.1f", -- MEM
	[967] = "%.1f", -- VLD
	[968] = "%.1f", -- XFR
	[969] = "%.1f", -- 1
	[970] = "%.1f", -- READ
	[971] = "%.1f", -- 2
	[972] = "%.1f", -- .
	[973] = "%.1f", -- SQL
	[974] = "%.1f", -- 3
	[975] = "%.1f", -- .
	[976] = "%.1f", -- GR
	[977] = "%.1f", -- 4
	[978] = "%.1f", -- 5
	[979] = "%.1f", -- 20
	[980] = "%.1f", -- LOW
	[981] = "%.1f", -- 6
	[982] = "%.1f", -- TONE
	[983] = "%.1f", -- 7
	[984] = "%.1f", -- 8
	[985] = "%.1f", -- TOD
	[986] = "%.1f", -- 9
	[987] = "%.1f", -- ZERO
	[988] = "%.1f", -- 0
	[989] = "%.1f", -- CONF

	-- 
	[991] = "%d",	-- LL
	[992] = "%d",	-- EM
	[993] = "%d",	-- IR
	[994] = "%d",	-- EO
}

PWDEV.ConfigArguments =
{
}

local function getPCN2DigitR()
	local li = list_indication(9)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	local east = " "
	local west = " "
	local plus = " "
	local minus = " "
	while true do
		local name, value = m()
		if not name then break end

		if name == "PCN_UR_E" then
			east="E"
		end
		if name == "PCN_UR_W" then
			west="W"
		end
		if name == "PCN_UR_P" then
			plus="+"
		end
		if name == "PCN_UR_M" then
			minus="-"
		end
	end
	return string.format("%-4s", string.sub(east..west..plus..minus,1,4))
end

local function getPCN2DigitL()
	local li = list_indication(9)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	local north = " "
	local south = " "
	local plus = " "
	local minus = " "
	while true do
		local name, value = m()
		if not name then break end

		if name == "PCN_UL_N" then
			north="N"
		end
		if name == "PCN_UL_S" then
			south="S"
		end
		if name == "PCN_UL_P" then
			plus="+"
		end
		if name == "PCN_UL_M" then
			minus="-"
		end
	end
	return string.format("%-4s", string.sub(north..south..plus..minus,1,4))
end
 
local function getPCNValue(nameStr, id)
	local li = list_indication(id)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local name, value = m()
		if not name then break end

		if name == nameStr then
			value = "  " .. value
			return value:sub(-2)
	  	end
	end
 	return "  "
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
	local radio = PWDEV.Tools.getListIndicatorValue(7) or {}
	local uhf = coerce_nil_to_string(radio.text_COM_UHF2)
	local vhf = coerce_nil_to_string(radio.text_COM_UHF1)

	send(2001, uhf)
	send(2002, vhf)

	send(2011, PWDEV.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_0", 3))
	send(2012, PWDEV.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_1", 3))
	send(2013, PWDEV.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_2", 3))
	send(2014, PWDEV.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_3", 3))
	send(2015, PWDEV.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_4", 3))

	send(2021, PWDEV.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_0", 3))
	send(2022, PWDEV.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_1", 3))
	send(2023, PWDEV.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_2", 3))
	send(2024, PWDEV.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_3", 3))
	send(2025, PWDEV.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_4", 3))

	-- PCN up
	send(2031, getPCN2DigitL())		-- up/left 2-digit vertical
	send(2131, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UL_SEG0", 5))
	send(2132, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UL_SEG1", 5))
	send(2133, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UL_SEG2", 5))
	send(2134, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UL_SEG3", 5))
	send(2135, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UL_SEG4", 5))
	send(2136, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UL_SEG5", 5))
	send(2137, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UL_SEG6", 5))
	send(2138, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UL_SEG7", 5))

	send(2033, getPCN2DigitR())		-- up/middle 2-digit vertical
	send(2141, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UR_SEG0", 6))
	send(2142, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UR_SEG1", 6))
	send(2143, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UR_SEG2", 6))
	send(2144, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UR_SEG3", 6))
	send(2145, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UR_SEG4", 6))
	send(2146, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UR_SEG5", 6))
	send(2147, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UR_SEG6", 6))
	send(2148, PWDEV.Tools.getListIndicatorValueByName(9, "PCN_UR_SEG7", 6))

	send(2151, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BL_SEG0", 2))
	send(2152, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BL_SEG1", 2))
	send(2153, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BL_SEG2", 2))
	send(2154, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BL_SEG3", 2))
	send(2155, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BL_SEG4", 2))
	send(2156, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BL_SEG5", 2))
	send(2157, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BL_SEG6", 2))

	send(2161, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BR_SEG0", 2))
	send(2162, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BR_SEG1", 2))
	send(2163, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BR_SEG2", 2))
	send(2164, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BR_SEG3", 2))
	send(2165, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BR_SEG4", 2))
	send(2166, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BR_SEG5", 2))
	send(2167, PWDEV.Tools.getListIndicatorValueByName(10, "PCN_BR_SEG6", 2))

	-- PPA
	send(2051, getPCNValue("text_PPA_QTY", 6))
	send(2052, getPCNValue("text_PPA_INT", 6))

	-- U/VHF
	send(2055, PWDEV.Tools.getListIndicatorValueByName(8, "text_COM_VHF", 9))
	-- UHF
	send(2061, PWDEV.Tools.getListIndicatorValueByName(7, "text_COM_UHF1", 8))
	send(2062, PWDEV.Tools.getListIndicatorValueByName(7, "text_COM_UHF2", 8))
	-- FUEL
	send(2071, PWDEV.Tools.getListIndicatorValueByName(3, "txt_fuel_g", 3))

	-- Fuel
	send(2053, PWDEV.Tools.GetArgumentsString({349,350,351}) .. "0")
	send(2054, PWDEV.Tools.GetArgumentsString({352,353,354}) .. "0")

	-- EVF
	send(2056, PWDEV.Tools.getListIndicatorValueByName(11, "evf-digits", 2))
end