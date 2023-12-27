-- Mirage 2000C
local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	[199] = "%d",	-- master warning
	[200] = "%d",	-- master caution

	-- RWR Lamps
	[229] = "%d",	-- V
	[230] = "%d",	-- BR
	[231] = "%d",	-- DA
	[232] = "%d",	-- D2M
	[233] = "%d",	-- LL

	-- Fuel panel
	[198] = "%1d", 	-- Air Refueling Light
	[356] = "%.1f", -- Transfer Switch
	[357] = "%1d", 	-- Fuel Crossfeeed Switch
	[358] = "%.2f", -- LEFT JAUGE display
	[359] = "%.2f", -- RIGHT JAUGE display
	[362] = "%1d",	-- Left RL Light
	[363] = "%1d",	-- Center RL Light
	[364] = "%1d",	-- Right RL Light
	[365] = "%1d",	-- Left AV Light
	[366] = "%1d",	-- Right AV Light
	[367] = "%1d",	-- Left V Light
	[368] = "%1d",	-- Right V Light

	-- PCA
	[234] = "%1d", 	-- Master Arm Switch
	[236] = "%1d", 	-- Button 1 S Light
	[238] = "%1d", 	-- Button 2 S Light
	[240] = "%1d", 	-- Button 3 S Light
	[242] = "%1d", 	-- Button 4 S Light
	[244] = "%1d", 	-- Button 5 S Light
	[246] = "%1d", 	-- Gun Mode Button KL1 Light
	[247] = "%1d", 	-- Gun Mode Button KL1 Light
	[251] = "%1d",	-- Weapons Button 1 S Light
	[252] = "%1d",	-- Weapons Button 1 P Light
	[254] = "%1d",	-- Weapons Button 2 S Light
	[255] = "%1d",	-- Weapons Button 2 P Light
	[257] = "%1d",	-- Weapons Button 3 S Light
	[258] = "%1d",	-- Weapons Button 3 P Light
	[260] = "%1d",	-- Weapons Button 4 S Light
	[261] = "%1d",	-- Weapons Button 4 P Light
	[263] = "%1d",	-- Weapons Button 5 S Light
	[264] = "%1d",	-- Weapons Button 5 P Light

	-- PPA
	[265] = "%1d", -- Missile Selector Switch
	[267] = "%1d", -- S530 P Light
	[268] = "%1d", -- S530 MIS Light
	[270] = "%1d", -- AUT Light
	[271] = "%1d", -- MAN Light
	[273] = "%1d", -- MAGIC P Light
	[274] = "%1d", -- MAGIC MAN Light
	[280] = "%1d", -- TOT Light
	[281] = "%1d", -- PAR Light
	[276] = "%.1f", -- Bomb Fuze Selector Switch

	-- AUTOPILOT lights
	[283] = "%d",	--P
	[284] = "%d",	--A
	[286] = "%d",	--Alt 1
	[287] = "%d",	--blank Alt
	[289] = "%d",	--Alt 2
	[290] = "%d",	--AFF
	[292] = "%d",	--blank1
	[293] = "%d",	--blank2
	[295] = "%d", --left
	[296] = "%d",	--blank L
	[297] = "%d",	--G
	[298] = "%d",	--blank G

	[331] = "%.2f", -- AoA

    -- WARNING PANEL
	[520] = "%1d",	--  Main Battery Switch
	[521] = "%1d",	--  Electric Power Transfer Switch
	[522] = "%1d",	--  Alternator 1 Switch
	[523] = "%1d",	--  Alternator 2 Switch
	[524] = "%1d",	--  Lights Test Switch

	[501] = "%1d",	--  blank 3x
	[525] = "%1d",	--  BATT
	[526] = "%1d",	--  TR
	[527] = "%1d",	--  ALT 1
	[528] = "%1d",	--  ALT2
	[529] = "%1d",	--  HUILLE
	[530] = "%1d",	--  T7
	[531] = "%1d",	--  CALC C
	[532] = "%1d",	--  SOURIS
	[533] = "%1d",	--  PELLE
	[534] = "%1d",	--  B.P
	[535] = "%1d",	--  BP.G
	[536] = "%1d",	--  BP.D
	[537] = "%1d",	--  TRANSF
	[538] = "%1d",	--  NIVEAU
	[539] = "%1d",	--  HYD 1
	[540] = "%1d",	--  HYD 2
	[541] = "%1d",	--  HYD 3
	[542] = "%1d",	--  EP
	[543] = "%1d",	--  BINGO
	[544] = "%1d",	--  P.CAB
	[545] = "%1d",	--  TEMP
	[546] = "%1d",	--  REG O2
	[547] = "%1d",	--  5nm O2
	[548] = "%1d",	--  O2 HA
	[549] = "%1d",	--  ANEMO
	[550] = "%1d",	--  CC
	[551] = "%1d",	--  DSV
	[552] = "%1d",	--  CONDIT
	[553] = "%1d",	--  CONF
	[554] = "%1d",	--  PA
	[555] = "%1d",	--  MAN
	[556] = "%1d",	--  DOM
	[557] = "%1d",	--  BECS
	[558] = "%1d",	--  U.S.EL
	[559] = "%1d",	--  8
	[560] = "%1d",	--  GAIN
	[561] = "%1d",	--  RPM
	[562] = "%1d",	--  DECOL
	[563] = "%1d",	--  PARK.

	-- PCN
	[437] = "%1d",	-- BAD green Indicator Light
	[438] = "%1d",	-- REC green Indicator Light
	[439] = "%1d",	-- MRC green Indicator Light
	[440] = "%1d",	-- VAL green Indicator Light
	[564] = "%1d",	-- PRET Indicator Light
	[565] = "%1d",	-- ALN Indicator Light
	[566] = "%1d",	-- MIP Indicator Light
	[567] = "%1d",	-- N.DEG Indicator Light
	[568] = "%1d",	-- SEC Indicator Light
	[569] = "%1d",	-- UNI Indicator Light
	[571] = "%1d",	-- PREP Button Light
	[573] = "%1d",	-- DEST Button Light
	[577] = "%1d",	-- BAD Button Light
	[579] = "%1d",	-- REC Button Light
	[595] = "%1d",	-- EFF Button Light
	[597] = "%1d",	-- INS Button Light
	[581] = "%1d",	-- VAL Button Light
	[583] = "%1d",	-- MRQ Button Light
	[668] = "%1d",	-- ENC Button Light
	[669] = "%1d",	-- M91 Indicator Light
	[670] = "%1d",	-- M92 Indicator Light
	[671] = "%1d",	-- M93 Indicator Light

	[574] = "%.1f", -- INS Parameter Selector
	[570] = "%1d",  -- PREP Switch
	[572] = "%1d",  -- DEST Switch
	[576] = "%1d",  -- Offset Waypoint/Target (BAD)
	[578] = "%1d",  -- INS Update (REC)
	[580] = "%1d",  -- Validate Data Entry (VAL)
	[582] = "%1d",  -- Mark Position (MRC)

	-- INS
	[627] = "%.1f",  -- INS Mode Selector
	[629] = "%.1f",  -- INS Operational Selector

	[728] = "%1d",	-- arg lights

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
	-- local radio = list_indication(7)
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
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(349) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(350) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(351) * 10)
	send(2053, digits[1] .. digits[2] .. digits[3] .. "0")

	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(352) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(353) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(354) * 10)
	send(2054, digits[1] .. digits[2] .. digits[3] .. "0")

	-- EVF
	send(2056, PWDEV.Tools.getListIndicatorValueByName(11, "evf-digits", 2))
end