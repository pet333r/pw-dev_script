-- Mirage 2000C
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	-- PCA
	[236] = "%1d", 	-- Button 1 S Light
	[238] = "%1d", 	-- Button 2 S Light
	[240] = "%1d", 	-- Button 3 S Light
	[242] = "%1d", 	-- Button 4 S Light
	[244] = "%1d", 	-- Button 5 S Light
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

    -- WARNING PANEL
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
	[559] = "%1d",	--  ZEICHEN	
	[560] = "%1d",	--  GAIN	
	[561] = "%1d",	--  RPM	
	[562] = "%1d",	--  DECOL	
	[563] = "%1d",	--  PARK.

	-- PCN
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
 return "        "
 end
 
 local function getPCNDigitR()
	local li = list_indication(9)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	local count = 0
	local ret = " "
	while true do
		 local name, value = m()
		 if not name then break end
	   if name == "text_PCN_EST"
		 then
		 count = count + 1
		 ret="E"
	   end
	   if name == "text_PCN_OUEST"
		 then
		 count = count + 1
		 ret="W"
	   end
	   if name == "text_PCN_PLUS_R"
		 then
		 count = count + 1
		 ret="+"
	   end
	   if name == "text_PCN_MOINS_R"
		 then
		 count = count + 1
		 ret="-"
	   end
	 end
	 if count > 1 then ret = "*" end
 return ret
 end
 
 local function getPCNDigitL()
	local li = list_indication(9)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	local count = 0
	local ret = " "
	while true do
		 local name, value = m()
		 if not name then break end
	   if name == "text_PCN_NORD"
		 then
		 count = count + 1
		 ret="N"
	   end
	   if name == "text_PCN_SUD"
		 then
		 count = count + 1
		 ret="S"
	   end
	   if name == "text_PCN_PLUS_L"
		 then
		 count = count + 1
		 ret="+"
	   end
	   if name == "text_PCN_MOINS_L"
		 then
		 count = count + 1
		 ret="-"
	   end
	 end
	 if count > 1 then ret = "*" end
 return ret
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

		ExportScript.Tools.SendData(2031, getPCNDispDest())
		ExportScript.Tools.SendData(2032, getPCNDispL())
		ExportScript.Tools.SendData(2033, getPCNDispPrep())
		ExportScript.Tools.SendData(2034, getPCNDispR())
		ExportScript.Tools.SendData(2035, getPCNDigitL())
		ExportScript.Tools.SendData(2036, getPCNDigitR())
		ExportScript.Tools.SendData(2037, getPCN2DigitL())
		ExportScript.Tools.SendData(2038, getPCN2DigitR())
	end
end