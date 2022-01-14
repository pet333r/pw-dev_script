-- Mirage 2000C
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
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
	[252] = "%1d",	-- Weapons Button 1 R Light
	[254] = "%1d",	-- Weapons Button 2 S Light
	[255] = "%1d",	-- Weapons Button 2 R Light
	[257] = "%1d",	-- Weapons Button 3 S Light
	[258] = "%1d",	-- Weapons Button 3 R Light
	[260] = "%1d",	-- Weapons Button 4 S Light
	[261] = "%1d",	-- Weapons Button 4 R Light
	[263] = "%1d",	-- Weapons Button 5 S Light
	[264] = "%1d",	-- Weapons Button 5 R Light

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

    -- WARNING PANEL
	[520] = "%1d",	--  Main Battery Switch
	[521] = "%1d",	--  Electric Power Transfer Switch
	[522] = "%1d",	--  Alternator 1 Switch
	[523] = "%1d",	--  Alternator 2 Switch
	[524] = "%1d",	--  Lights Test Switch

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
	-- [569] = "%1d",	-- UNI Light
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
}

ExportScript.ConfigArguments = 
{
}

local function getPCNDispL()
	local li = list_indication(9)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local name, value = m()
		if not name then break end
	   	if name:sub(0,10) == "text_PCN_L" then
			value = "        " .. value
			return value:sub(-8)
	   	end
	end
 	return "        "
end
 
local function getPCNDispR()
	local li = list_indication(9)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local name, value = m()
		if not name then break end
	   	if name:sub(0,10) == "text_PCN_R" then
			value = "        "..value
			return value:sub(-9)
	   	end
	end
 	return "         "
end

 
local function getPCN2DigitR()
	local li = list_indication(9)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	local east = ""
	local west = ""
	local plus = ""
	local minus = ""
	while true do
		local name, value = m()
		if not name then break end
	   	if name == "text_PCN_EST" then
			east="E"
	   	end
	   	if name == "text_PCN_OUEST" then
			west="W"
	   	end
	   	if name == "text_PCN_PLUS_R" then
			plus="+"
		end
		if name == "text_PCN_MOINS_R" then
			minus="-"
		end

		-- new
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
	return string.format("%-2s", string.sub(east..west..plus..minus,1,2))
end
 
local function getPCN2DigitL()
	local li = list_indication(9)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	local north = ""
	local south = ""
	local plus = ""
	local minus = ""
	while true do
		local name, value = m()
		if not name then break end
		if name == "text_PCN_NORD" then
			north="N"
		end
		if name == "text_PCN_SUD" then
			south="S"
		end
		if name == "text_PCN_PLUS_L" then
			plus="+"
		end
		if name == "text_PCN_MOINS_L" then
			minus="-"
		end

		-- new
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
	return string.format("%-2s", string.sub(north..south..plus..minus,1,2))
end
 
local function getPCNDispDest()
	local li = list_indication(10)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local name, value = m()
		if not name then break end
		if name == "text_PCN_BR2" then
			value = "  " .. value
			return value:sub(-2)
		end

		if name == "text_PCN_eBR2" then
			value = "  " .. value
			return value:sub(-2)
		end
		-- new
		if name == "PCN_BR_DIGITS" then
			value = "  " .. value
			return value:sub(-2)
	  	end
	end
 	return "  "
end
 
local function getPCNDispPrep()
	local li = list_indication(10)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local name, value = m()
		if not name then break end
		if name == "text_PCN_BR1" then
			value = "  " .. value
			return value:sub(-2)
		end

		if name == "text_PCN_eBR1" then
			value = "  " .. value
			return value:sub(-2)
		end
		-- new
		if name == "PCN_BL_DIGITS" then
			value = "  " .. value
			return value:sub(-2)
	  	end
	end
 	return "  "
end

--PPA
local function getPPAQtyDisp()
	local li = list_indication(6)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
        local name, value = m()
        if not name then break end
		if name == "text_PPA_QTY" then
        	value = "  "..value
        	return value:sub(-2)
      	end
    end
	return "         "
end

local function getPPAIntDisp()
	local li = list_indication(6)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
        local name, value = m()
        if not name then break end
		if name == "text_PPA_INT" then
        	value = "  "..value
        	return value:sub(-2)
      	end
    end
	return "         "
end

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
	if ExportScript.Config.ExportDisplaysM2000 == true then
		ExportScript.Tools.SendData(2011, ExportScript.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_0", 3))
		ExportScript.Tools.SendData(2012, ExportScript.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_1", 3))
		ExportScript.Tools.SendData(2013, ExportScript.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_2", 3))
		ExportScript.Tools.SendData(2014, ExportScript.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_3", 3))
		ExportScript.Tools.SendData(2015, ExportScript.Tools.getListIndicatorValueByName(4, "PCA_LCD_1_4", 3))

		ExportScript.Tools.SendData(2021, ExportScript.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_0", 3))
		ExportScript.Tools.SendData(2022, ExportScript.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_1", 3))
		ExportScript.Tools.SendData(2023, ExportScript.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_2", 3))
		ExportScript.Tools.SendData(2024, ExportScript.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_3", 3))
		ExportScript.Tools.SendData(2025, ExportScript.Tools.getListIndicatorValueByName(5, "PCA_LCD_2_4", 3))

		-- PCN up
		ExportScript.Tools.SendData(2031, getPCN2DigitL())		-- up/left 2-digit vertical
		ExportScript.Tools.SendData(2032, getPCNDispL())		-- up/left 8-digit
		ExportScript.Tools.SendData(2035, ExportScript.Tools.getListIndicatorValueByName(9, "PCN_UL_DIGITS", 6)) -- up/left 5-digit
		ExportScript.Tools.SendData(2036, ExportScript.Tools.getListIndicatorValueByName(9, "PCN_UL_POINTS", 5)) -- dots

		ExportScript.Tools.SendData(2033, getPCN2DigitR())		-- up/middle 2-digit vertical
		ExportScript.Tools.SendData(2034, getPCNDispR())		-- up/right 9-digit
		ExportScript.Tools.SendData(2037, ExportScript.Tools.getListIndicatorValueByName(9, "PCN_UR_DIGITS", 7)) -- up/right 6-digit
		ExportScript.Tools.SendData(2038, ExportScript.Tools.getListIndicatorValueByName(9, "PCN_UR_POINTS", 6)) -- dots


		-- PCN dn
		ExportScript.Tools.SendData(2041, getPCNDispPrep())		-- dn/left 2-digit
		ExportScript.Tools.SendData(2042, getPCNDispDest())		-- dn/mid 2-digit

		-- PPA
		ExportScript.Tools.SendData(2051, getPPAQtyDisp())
		ExportScript.Tools.SendData(2052, getPPAIntDisp())

		-- U/VHF
		ExportScript.Tools.SendData(2055, ExportScript.Tools.getListIndicatorValueByName(8, "text_COM_VHF", 9))
		-- UHF
		ExportScript.Tools.SendData(2061, ExportScript.Tools.getListIndicatorValueByName(7, "text_COM_UHF1", 6))
		ExportScript.Tools.SendData(2062, ExportScript.Tools.getListIndicatorValueByName(7, "text_COM_UHF2", 6))
		-- FUEL
		ExportScript.Tools.SendData(2071, ExportScript.Tools.getListIndicatorValueByName(3, "txt_fuel_g", 3))

		-- Fuel
		digits = {}
		digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(349) * 10)
		digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(350) * 10)
		digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(351) * 10)
		ExportScript.Tools.SendData(2053, digits[1] .. digits[2] .. digits[3] .. "0")

		digits = {}
		digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(352) * 10)
		digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(353) * 10)
		digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(354) * 10)
		ExportScript.Tools.SendData(2054, digits[1] .. digits[2] .. digits[3] .. "0")
	end
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
	-- -- General
	-- ExportScript.Tools.SendData(2901, -ExportScript.Tools.GetArgumentsValue(316, "%.2f"))
	-- ExportScript.Tools.SendData(2902, ExportScript.Tools.GetArgumentsValue(317, "%.2f"))


end