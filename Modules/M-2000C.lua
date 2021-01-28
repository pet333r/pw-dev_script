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
	[267] = "%1d", -- S530 P Light
	[268] = "%1d", -- S530 MIS Light
	[270] = "%1d", -- AUT Light
	[271] = "%1d", -- MAN Light
	[273] = "%1d", -- MAGIC P Light
	[274] = "%1d", -- MAGIC MAN Light
	[275] = "%1d", -- Test/Pres Switch
	[280] = "%1d", -- TOT Light
	[281] = "%1d", -- PAR Light
	[276] = "%.1f", -- Bomb Fuze Selector Switch
	[277] = "%1d", -- Bomb Release Quantity Selector Switch
	[278] = "%1d", -- Bomb Release Interval Selector Switch

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
	   if name:sub(0,10) == "text_PCN_L"
		 then
		 value = "        "..value
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
	   if name:sub(0,10) == "text_PCN_R"
		 then
		 value = "        "..value
		 return value:sub(-9)
	   end
	 end
 return "         "
end
 
-- local function getPCNDigitR()
-- 	local li = list_indication(9)
-- 	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
-- 	local count = 0
-- 	local ret = " "
-- 	while true do
-- 		 local name, value = m()
-- 		 if not name then break end
-- 	   if name == "text_PCN_EST"
-- 		 then
-- 		 count = count + 1
-- 		 ret="E"
-- 	   end
-- 	   if name == "text_PCN_OUEST"
-- 		 then
-- 		 count = count + 1
-- 		 ret="W"
-- 	   end
-- 	   if name == "text_PCN_PLUS_R"
-- 		 then
-- 		 count = count + 1
-- 		 ret="+"
-- 	   end
-- 	   if name == "text_PCN_MOINS_R"
-- 		 then
-- 		 count = count + 1
-- 		 ret="-"
-- 	   end
-- 	 end
-- 	 if count > 1 then ret = "*" end
--  return ret
-- end
 
-- local function getPCNDigitL()
-- 	local li = list_indication(9)
-- 	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
-- 	local count = 0
-- 	local ret = " "
-- 	while true do
-- 		 local name, value = m()
-- 		 if not name then break end
-- 	   if name == "text_PCN_NORD"
-- 		 then
-- 		 count = count + 1
-- 		 ret="N"
-- 	   end
-- 	   if name == "text_PCN_SUD"
-- 		 then
-- 		 count = count + 1
-- 		 ret="S"
-- 	   end
-- 	   if name == "text_PCN_PLUS_L"
-- 		 then
-- 		 count = count + 1
-- 		 ret="+"
-- 	   end
-- 	   if name == "text_PCN_MOINS_L"
-- 		 then
-- 		 count = count + 1
-- 		 ret="-"
-- 	   end
-- 	 end
-- 	 if count > 1 then ret = "*" end
--  return ret
-- end
 
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
	   if name == "text_PCN_EST"
		 then
		 east="E"
	   end
	   if name == "text_PCN_OUEST"
		 then
		 west="W"
	   end
	   if name == "text_PCN_PLUS_R"
		 then
		 plus="+"
	   end
	   if name == "text_PCN_MOINS_R"
		 then
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
	   if name == "text_PCN_NORD"
		 then
		 north="N"
	   end
	   if name == "text_PCN_SUD"
		 then
		 south="S"
	   end
	   if name == "text_PCN_PLUS_L"
		 then
		 plus="+"
	   end
	   if name == "text_PCN_MOINS_L"
		 then
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
	   if name == "text_PCN_BR2"
		 then
		 value = "  "..value
		 return value:sub(-2)
	   end
 
	   if name == "text_PCN_eBR2"
		 then
		 value = "  "..value
		 return value:sub(-2)
	   end
	 end
 return "         "
end
 
local function getPCNDispPrep()
	local li = list_indication(10)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		 local name, value = m()
		 if not name then break end
	   if name == "text_PCN_BR1"
		 then
		 value = "  "..value
		 return value:sub(-2)
	   end
 
	   if name == "text_PCN_eBR1"
		 then
		 value = "  "..value
		 return value:sub(-2)
	   end
	 end
 return "         "
end

--PPA
local function getPPAQtyDisp()
	local li = list_indication(6)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
        local name, value = m()
        if not name then break end
		if name == "text_PPA_QTY"
        then
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
		if name == "text_PPA_INT"
        then
        value = "  "..value
        return value:sub(-2)
      end
    end
return "         "	
end

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
	if ExportScript.Config.ExportDisplaysM2000 == true then
		ExportScript.Tools.SendData(2011, ExportScript.Tools.getListIndicatorValueByName(4, "text_PCA_UR1", 3))

		ExportScript.Tools.SendData(2012, ExportScript.Tools.getListIndicatorValueByName(4, "text_PCA_UR2", 3))
		ExportScript.Tools.SendData(2013, ExportScript.Tools.getListIndicatorValueByName(4, "text_PCA_UR3", 3))
		ExportScript.Tools.SendData(2014, ExportScript.Tools.getListIndicatorValueByName(4, "text_PCA_UR4", 3))
		ExportScript.Tools.SendData(2015, ExportScript.Tools.getListIndicatorValueByName(4, "text_PCA_UR5", 3))

		ExportScript.Tools.SendData(2021, ExportScript.Tools.getListIndicatorValueByName(5, "text_PCA_BR1", 3))
		ExportScript.Tools.SendData(2022, ExportScript.Tools.getListIndicatorValueByName(5, "text_PCA_BR2", 3))
		ExportScript.Tools.SendData(2023, ExportScript.Tools.getListIndicatorValueByName(5, "text_PCA_BR3", 3))
		ExportScript.Tools.SendData(2024, ExportScript.Tools.getListIndicatorValueByName(5, "text_PCA_BR4", 3))
		ExportScript.Tools.SendData(2025, ExportScript.Tools.getListIndicatorValueByName(5, "text_PCA_BR5", 3))

		-- up
		ExportScript.Tools.SendData(2031, getPCN2DigitL())		-- up/left 2-digit vertical
		ExportScript.Tools.SendData(2032, getPCNDispL())		-- up/left 8-digit
		ExportScript.Tools.SendData(2033, getPCN2DigitR())		-- up/middle 2-digit vertical
		ExportScript.Tools.SendData(2034, getPCNDispR())		-- up/right 9-digit

		-- dn
		ExportScript.Tools.SendData(2041, getPCNDispPrep())		-- dn/left 2-digit
		ExportScript.Tools.SendData(2042, getPCNDispDest())		-- dn/mid 2-digit
		--ExportScript.Tools.SendData(2035, getPCNDigitL())
		--ExportScript.Tools.SendData(2036, getPCNDigitR())

		-- PPA
		ExportScript.Tools.SendData(2051, getPPAQtyDisp())
		ExportScript.Tools.SendData(2052, getPPAIntDisp())

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