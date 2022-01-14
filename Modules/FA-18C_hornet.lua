-- F/A-18C Hornet
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	-- AoA Indexer Lights
	[4] = "%.1f",   -- CPT_LTS_AOA_HIGH
	[5] = "%.1f",   -- CPT_LTS_AOA_CENTER
	[6] = "%.1f",   -- CPT_LTS_AOA_LOW

	-- Fire Systems
	[46] = "%1d",   -- Fire Extinguisher Pushbutton
	[30] = "%1d",   -- APU Fire Warning/Extinguisher Light
	[11] = "%1d",   -- Left Engine/AMAD Fire Warning/Extinguisher Light - (LMB) depress
	[12] = "%1d",   -- Left Engine/AMAD Fire Warning/Extinguisher Light - (RMB) cover control
	[27] = "%1d",   -- Right Engine/AMAD Fire Warning/Extinguisher Light - (LMB) depress
	[28] = "%1d",   -- Right Engine/AMAD Fire Warning/Extinguisher Light - (RMB) cover control

	-- LH Advisory and Threat Warning Indicator Panel
	[10] = "%1d",   -- CPT_LTS_FIRE_LEFT
	[13] = "%1d",   -- CPT_LTS_MASTER_CAUTION
	[15] = "%1d",   -- CPT_LTS_GO
	[16] = "%1d",   -- CPT_LTS_NO_GO
	[17] = "%1d",   -- CPT_LTS_L_BLEED
	[18] = "%1d",   -- CPT_LTS_R_BLEED
	[19] = "%1d",   -- CPT_LTS_SPD_BRK
	[20] = "%1d",   -- CPT_LTS_STBY
	[21] = "%1d",   -- CPT_LTS_L_BAR_RED
	[22] = "%1d",   -- CPT_LTS_REC
	[23] = "%1d",   -- CPT_LTS_L_BAR_GREEN
	[24] = "%1d",   -- CPT_LTS_XMIT
	[25] = "%1d",   -- CPT_LTS_ASPJ_OH

	-- RH Advisory and Threat Warning Indicator Panel
	[26] = "%1d",   -- CPT_LTS_FIRE_RIGHT
	[29] = "%1d",   -- CPT_LTS_FIRE_APU
	[31] = "%1d",   -- CPT_LTS_RCDR_ONzxzx=ss
	[32] = "%1d",   -- CPT_LTS_DISP
	[33] = "%1d",   -- CPT_LTS_SPARE_RH1
	[34] = "%1d",   -- CPT_LTS_SPARE_RH2
	[35] = "%1d",   -- CPT_LTS_SPARE_RH3
	[36] = "%1d",   -- CPT_LTS_SPARE_RH4
	[37] = "%1d",   -- CPT_LTS_SPARE_RH5
	[38] = "%1d",   -- CPT_LTS_SAM.u/8i
	[39] = "%1d",   -- CPT_LTS_AI
	[40] = "%1d",   -- CPT_LTS_AAA
	[41] = "%1d",   -- CPT_LTS_CW

	-- Master Arm Panel
	[47] = "%1d",   -- AA Light
	[48] = "%1d",   -- AG Light
	[49] = "%1d",   -- Master Arm Switch, ARM/SAFE

	-- HUD Control Panel
	[140] = "%.1f",   -- HUD Symbology Reject Switch, NORM/REJ 1/REJ 2
	[141] = "%.1f",   -- HUD Symbology Brightness Control Knob
	[142] = "%1d",   -- HUD Symbology Brightness Selector Knob, DAY/NIGHT
	[143] = "%.1f",   -- Black Level Control Knob
	[144] = "%.1f",   -- HUD Video Control Switch, W/B /VID/OFF
	[145] = "%.1f",   -- Balance Control Knob
	[146] = "%.1f",   -- AOA Indexer Control Knob
	[147] = "%1d",   -- Altitude Switch, BARO/RDR
	[148] = "%1d",   -- Attitude Selector Switch, INS/AUTO/STBY -1/0/1

	-- Jettison / Landing gear
	[153] = "%1d",   -- CTR Button
	[155] = "%1d",   -- LI Button
	[157] = "%1d",   -- LO Button
	[159] = "%1d",   -- RI Button
	[161] = "%1d",   -- RO Button
	[152] = "%1d",   -- CTR Light
	[154] = "%1d",   -- LI Light
	[156] = "%1d",   -- LO Light
	[158] = "%1d",   -- RI Light
	[160] = "%1d",   -- RO Light
	[166] = "%1d",   -- NOSE GEAR
	[165] = "%1d",   -- LEFT GEAR
	[167] = "%1d",   -- RIGHT GEAR
	[163] = "%1d",   -- HALF FLAPS
	[164] = "%1d",   -- FULL FLAPS
	[162] = "%1d",   -- FLAPS

	[237] = "%1d",   -- LDG/TAXI LIGHT Switch

	-- RWR
	[264] = "%.1f", -- ALR-67 FAIL Light (red)
	[265] = "%.1f", -- ALR-67 BIT Light (green)
	[267] = "%.1f", -- ALR-67 ENABLE Light (green)
	[268] = "%.1f", -- ALR-67 OFFSET Light (green)
	[270] = "%.1f", -- ALR-67 SPECIAL ENABLE Light (green)
	[271] = "%.1f", -- ALR-67 SPECIAL Light (green)
	[273] = "%.1f", -- ALR-67 LIMIT Light (green)
	[274] = "%.1f", -- ALR-67 DISPLAY Light (green)
	[276] = "%.1f", -- ALR-67 LOWER Light (green)

	-- Caution Lights Panel
	[298] = "%1d", -- CK SEAT
	[299] = "%1d", -- APU ACC
	[300] = "%1d", -- BATT SW
	[301] = "%1d", -- FCS HOT
	[302] = "%1d", -- GEN TIE
	[303] = "%1d", -- SPARE CTN1
	[304] = "%1d", -- FUEL LO`
	[305] = "%1d", -- FCES
	[306] = "%1d", -- SPARE CTN2
	[307] = "%1d", -- L GEN
	[308] = "%1d", -- R GEN
	[309] = "%1d", -- SPARE CTN3

	[107] = "%1d",  -- UFC ADF Function Select Switch, 1/OFF/2 {-1.0,0.0,1.0}
	[108] = "%.1f",	-- UFC COMM 1 Volume Control Knob {0.0,1.0} in 0.1 Steps
	[123] = "%.1f", -- UFC COMM 2 Volume Control Knob {0.0,1.0} in 0.1 Steps
	[109] = "%.1f", -- UFC Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[125] = "%1d",  -- UFC COMM 1 Channel Selector Knob
	[127] = "%1d",  -- UFC COMM 2 Channel Selector Knob

	-- Exterior Lights Panel
	[337] = "%.1f", -- Formation Lights Dimmer
	[338] = "%.1f", -- Position Lights Dimmer
	[339] = "%1d", 	-- Strobe Lights Switch

	-- Communication panel
	[350] = "%1d", 	-- Comm Relay Switch, CIPHER/OFF/PLAIN
	[351] = "%1d", 	-- COMM G XMT Switch, COMM 1/OFF/COMM 2
	[352] = "%.2f", -- ILS Channel Selector
	[353] = "%1d", 	-- ILS UFC/MAN Switch, UFC/MAN
	[354] = "%1d", 	-- CRYPTO Switch, HOLD/NORM/ZERO
	[355] = "%1d", 	-- IFF Mode 4 Switch, DIS/AUD /DIS/OFF
	[356] = "%1d", 	-- IFF Master Switch, EMER/NORM

	-- VOL
	[357] = "%.1f",	-- VOX Volume Control Knob
	[358] = "%.1f",	-- ICS Volume Control Knob
	[359] = "%.1f",	-- RWR Volume Control Knob
	[360] = "%.1f",	-- WPN Volume Control Knob
	[361] = "%.1f",	-- MIDS B Volume Control Knob
	[362] = "%.1f",	-- MIDS A Volume Control Knob
	[363] = "%.1f",	-- TACAN Volume Control Knob
	[364] = "%.1f",	-- AUX Volume Control Knob

	-- ELEC
	[402] = "%1d", 	-- Left Generator Control Switch
	[404] = "%1d", 	-- Battery Switch, ON/OFF/ORIDE
	[403] = "%1d", 	-- Right Generator Control Switch

	-- ECS
	[405] = "%1d", 	-- Mode Switch, AUTO/MAN/OFF/RAM
	[407] = "%.1f", -- Cabin Temperature Knob
	[408] = "%1d", 	-- Cabin Pressure Switch, NORM/DUMP/RAM/DUMP
	[409] = "%1d", 	-- Pitot Heater Switch, ON/AUTO
	[410] = "%1d", 	-- Engine Anti-Ice Switch, ON/OFF/TEST
	[411] = "%.1f", -- Bleed Air Knob, R OFF/NORM/L OFF/OFF

	-- Interior lights
	[413] = "%.1f", -- CONSOLES Lights Dimmer Knob
	[414] = "%.1f", -- Instrument Panel Dimmer Knob
	[415] = "%.1f", -- Flood Light Dimmer Knob
	-- [416] = "%1d", 	-- Lights Test Switch, TEST/OFF
	[417] = "%.1f", -- WARN/CAUTION Light Dimmer Knob
	[418] = "%.1f", -- CHART Light Dimmer Knob
	[419] = "%1d", 	-- MODE Switch, NVG/NITE/DAY

	-- SNSR Sensor panel
	[439] = "%1d", 	-- FLIR Switch, ON/STBY/OFF
	[441] = "%1d", 	-- LTD/R Switch, SAFE/AFT
	[442] = "%1d", 	-- LST/NFLR Switch, ON/OFF
	[440] = "%.1f", -- RADAR Switch Change ,OFF/STBY/OPR/EMERG(PULL)
	[443] = "%.1f", -- INS Switch, OFF/CV/GND/NAV/IFA/GYRO/GB/TEST
}

ExportScript.ConfigArguments = 
{
	-- Left MDI
	[51] = "%1d",   -- Left MDI Brightness Selector Knob, OFF/NIGHT/DAY {0.0,0.1,0.2}
	[52] = "%.2f",   -- Left MDI Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[53] = "%.2f",   -- Left MDI Contrast Control Knob {0.0,1.0} in 0.1 Steps
	[312] = "%1d",   -- Heading Set Switch
	[313] = "%1d",   -- Course Set Switch
	-- Right MDI
	[76] = "%.1f",   -- Right MDI Brightness Selector Knob, OFF/NIGHT/DAY {0.0,0.1,0.2}
	[77] = "%.2f",   -- Right MDI Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[78] = "%.2f",   -- Right MDI Contrast Control Knob {0.0,1.0} in 0.1 Steps
	-- AMPCD
	[203] = "%.2f",   -- AMPCD Off/Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[177] = "%1d",   -- AMPCD Night/Day Brightness Selector, DAY/NGT {1.0,0.0,-1.0}
	[179] = "%1d",   -- AMPCD Symbology Control Switch, UP/DOWN {1.0,0.0,-1.0}
	[182] = "%1d",   -- AMPCD Contrast Control Switch, UP/DOWN {1.0,0.0,-1.0}
	[180] = "%1d",   -- AMPCD Gain Control Switch, UP/DOWN {1.0,0.0,-1.0}
}


-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
	if ExportScript.Config.ExportDisplaysFA18 == true then
		-- UFC Displays
		local _ufcDisplay = ExportScript.Tools.getListIndicatorValue(6)

		if _ufcDisplay ~= nil and _ufcDisplay.UFC_MainDummy ~= nil then
			-- ScratchPadString Displays
			_ufcDisplay.UFC_ScratchPadString1Display = string.gsub(_ufcDisplay.UFC_ScratchPadString1Display, "_", "-") -- fix
			_ufcDisplay.UFC_ScratchPadString2Display = string.gsub(_ufcDisplay.UFC_ScratchPadString2Display, "_", "-") -- fix
			_ufcDisplay.UFC_ScratchPadString1Display = string.gsub(_ufcDisplay.UFC_ScratchPadString1Display, "~", "2") -- need to be 2
			_ufcDisplay.UFC_ScratchPadString2Display = string.gsub(_ufcDisplay.UFC_ScratchPadString2Display, "~", "2") -- need to be 2
			_ufcDisplay.UFC_ScratchPadString1Display = string.gsub(_ufcDisplay.UFC_ScratchPadString1Display, "`", "1") -- need to be 1
			_ufcDisplay.UFC_ScratchPadString2Display = string.gsub(_ufcDisplay.UFC_ScratchPadString2Display, "`", "1") -- need to be 1
			ExportScript.Tools.SendData(2020, string.gsub(_ufcDisplay.UFC_ScratchPadString1Display, " ", "")) -- ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_ScratchPadString1Display, 1)) -- ScratchPadString1Display 2 character
			ExportScript.Tools.SendData(2021, ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_ScratchPadString2Display, 2)) -- ScratchPadString2Display 2 character
			ExportScript.Tools.SendData(2022, ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_ScratchPadNumberDisplay, 7)) -- ScratchPadNumberDisplay 7 character

			local _tmpCueing = " "
			-- Option Displays
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing1 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2023, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay1, 5)) -- OptionDisplay1 5 character
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing2 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2024, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay2, 5)) -- OptionDisplay2 5 character
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing3 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2025, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay3, 5)) -- OptionDisplay3 5 character
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing4 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2026, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay4, 5)) -- OptionDisplay4 5 character
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing5 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2027, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay5, 5)) -- OptionDisplay5 5 character

			-- Comm Displays
			_ufcDisplay.UFC_Comm1Display = string.gsub(_ufcDisplay.UFC_Comm1Display, "~", "2") -- need to be 2
			_ufcDisplay.UFC_Comm2Display = string.gsub(_ufcDisplay.UFC_Comm2Display, "~", "2") -- need to be 2
			_ufcDisplay.UFC_Comm1Display = string.gsub(_ufcDisplay.UFC_Comm1Display, "`", "1") -- need to be 1
			_ufcDisplay.UFC_Comm2Display = string.gsub(_ufcDisplay.UFC_Comm2Display, "`", "1") -- need to be 1
			ExportScript.Tools.SendData(2028, ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_Comm1Display, 2)) -- Comm1Display 2 character
			ExportScript.Tools.SendData(2029, ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_Comm2Display, 2)) -- Comm2Display 2 character
		else
			-- ScratchPadString Displays
			ExportScript.Tools.SendData(2020, "") -- ScratchPadString1Display 2 character
			ExportScript.Tools.SendData(2021, " ") -- ScratchPadString2Display 2 character
			ExportScript.Tools.SendData(2022, " ") -- ScratchPadNumberDisplay 7 character

			-- Option Displays
			ExportScript.Tools.SendData(2023, " ") -- OptionDisplay1 5 character
			ExportScript.Tools.SendData(2024, " ") -- OptionDisplay2 5 character
			ExportScript.Tools.SendData(2025, " ") -- OptionDisplay3 5 character
			ExportScript.Tools.SendData(2026, " ") -- OptionDisplay4 5 character
			ExportScript.Tools.SendData(2027, " ") -- OptionDisplay5 5 character

			-- Comm Displays
			ExportScript.Tools.SendData(2028, " ") -- Comm1Display 2 character
			ExportScript.Tools.SendData(2029, " ") -- Comm2Display 2 character
		end

		local _UHF1Radio = GetDevice(38)
		ExportScript.Tools.SendData(2030, ExportScript.Tools.DisplayFormat(ExportScript.Tools.RoundFreqeuncy((_UHF1Radio:get_frequency()/1000000))), 7)

		local _UHF2Radio = GetDevice(39)
		ExportScript.Tools.SendData(2031, ExportScript.Tools.DisplayFormat(ExportScript.Tools.RoundFreqeuncy((_UHF2Radio:get_frequency()/1000000), "7.3", false, 0.005)), 7)
	end

	if ExportScript.Config.ExportDisplaysFA18Ifei == true then
		-- IFEI
		local txt_BINGO = ""
		local txt_CLOCK_H = ""
		local txt_CLOCK_M = ""
		local txt_CLOCK_S = ""
		local txt_TIMER_H = ""
		local txt_TIMER_M = ""
		local txt_TIMER_S = ""
		local txt_FF_L = ""
		local txt_FF_R = ""
		local txt_FUEL_DOWN = ""
		local txt_FUEL_UP = ""
		local txt_OilPress_L = ""
		local txt_OilPress_R = ""
		local txt_RPM_L = ""
		local txt_RPM_R = ""
		local txt_TEMP_L = ""
		local txt_TEMP_R = ""
		local txt_Codes = ""
		local txt_SP = ""
		local txt_T = ""
		local txt_TimeSetMode = ""

		local ifei = ExportScript.Tools.getListIndicatorValue(5)
		txt_BINGO 		= "     "
		txt_CLOCK_H 	= "  "
		txt_CLOCK_M 	= "  "
		txt_CLOCK_S 	= "  "
		txt_TIMER_H 	= "  "
		txt_TIMER_M 	= "  "
		txt_TIMER_S 	= "  "
		txt_FF_L		= "   "
		txt_FF_R		= "   "
		txt_FUEL_DOWN	= "      "
		txt_FUEL_UP	 	= "      "
		txt_OilPress_L 	= "   "
		txt_OilPress_R 	= "   "
		txt_RPM_L		= "   "
		txt_RPM_R		= "   "
		txt_TEMP_L	 	= "   "
		txt_TEMP_R	 	= "   "
		txt_Codes	 	= "   "
		txt_SP	 		= "   "
		txt_T			= " "
		txt_TimeSetMode = "      "
		local LTexture = "0"
		local RTexture = "0"
		local ZTexture = "0"
		if not ifei then
			return
		-- else
		-- 	ExportScript.Tools.SendData(2101, " ")
		-- 	ExportScript.Tools.SendData(2102, " ")
		-- 	ExportScript.Tools.SendData(2103, " ")
		-- 	ExportScript.Tools.SendData(2104, " ")
		-- 	ExportScript.Tools.SendData(2105, " ")
		-- 	ExportScript.Tools.SendData(2106, " ")
		-- 	ExportScript.Tools.SendData(2107, " ")
		-- 	ExportScript.Tools.SendData(2108, " ")
		-- 	ExportScript.Tools.SendData(2109, " ")
		-- 	ExportScript.Tools.SendData(2110, " ")
		-- 	ExportScript.Tools.SendData(2111, " ")
		-- 	ExportScript.Tools.SendData(2112, " ")
		-- 	ExportScript.Tools.SendData(2113, " ")
		-- 	ExportScript.Tools.SendData(2114, " ")
		-- 	ExportScript.Tools.SendData(2115, " ")
		-- 	ExportScript.Tools.SendData(2116, " ")
		-- 	ExportScript.Tools.SendData(2117, " ")
			-- ExportScript.Tools.SendData(2118, " ")
			-- ExportScript.Tools.SendData(2119, " ")
			-- ExportScript.Tools.SendData(2120, " ")
			-- ExportScript.Tools.SendData(2121, " ")
		end
		txt_RPM_L		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_RPM_L)
		txt_RPM_R		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_RPM_R)
		txt_TEMP_L		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_TEMP_L)
		txt_TEMP_R		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_TEMP_R)
		txt_FF_L		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_FF_L)
		txt_FF_R		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_FF_R)
		txt_OilPress_L	= ExportScript.Tools.coerce_nil_to_string(ifei.txt_OilPress_L)
		txt_OilPress_R	= ExportScript.Tools.coerce_nil_to_string(ifei.txt_OilPress_R)
		txt_BINGO 		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_BINGO)
		txt_FUEL_UP		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_FUEL_UP)
		txt_FUEL_DOWN	= ExportScript.Tools.coerce_nil_to_string(ifei.txt_FUEL_DOWN)
		txt_CLOCK_S		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_CLOCK_S)
		txt_CLOCK_M		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_CLOCK_M)
		txt_CLOCK_H		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_CLOCK_H)
		txt_TIMER_H		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_TIMER_H)
		txt_TIMER_M		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_TIMER_M)
		txt_TIMER_S		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_TIMER_S)
		txt_Codes		= ExportScript.Tools.coerce_nil_to_string(ifei.txt_Codes)
		txt_SP			= ExportScript.Tools.coerce_nil_to_string(ifei.txt_SP)
		txt_T			= ExportScript.Tools.coerce_nil_to_string(ifei.txt_T)
		txt_TimeSetMode	= ExportScript.Tools.coerce_nil_to_string(ifei.txt_TimeSetMode)
		if ifei.LTexture == nil then LTexture = "0" else LTexture = "1" end
		if ifei.RTexture == nil then RTexture = "0" else RTexture = "1" end
		if ifei.ZTexture == nil then ZTexture = "0" else ZTexture = "1" end

		if (txt_CLOCK_S == "") then txt_CLOCK_S = "__" end
		if (txt_CLOCK_M == "") then txt_CLOCK_M = "__" end
		if (txt_CLOCK_H == "") then txt_CLOCK_H = "__" end
		if (txt_TIMER_S == "") then txt_TIMER_S = "  " end
		if (txt_TIMER_M == "") then txt_TIMER_M = "  " end
		if (txt_TIMER_H == "") then txt_TIMER_H = "  " end
		
		ExportScript.Tools.SendData(2101, ExportScript.Tools.DisplayFormat(txt_BINGO, 5))
		ExportScript.Tools.SendData(2102, ExportScript.Tools.DisplayFormat(txt_CLOCK_H .. ":" .. txt_CLOCK_M .. ":" .. txt_CLOCK_S, 8))
		ExportScript.Tools.SendData(2103, ExportScript.Tools.DisplayFormat(txt_TIMER_H .. ":" .. txt_TIMER_M .. ":" .. txt_TIMER_S, 8))
		ExportScript.Tools.SendData(2108, ExportScript.Tools.DisplayFormat(txt_FF_L, 3))
		ExportScript.Tools.SendData(2109, ExportScript.Tools.DisplayFormat(txt_FF_R, 3, "l"))
		ExportScript.Tools.SendData(2110, ExportScript.Tools.DisplayFormat(txt_FUEL_DOWN, 6))
		ExportScript.Tools.SendData(2111, ExportScript.Tools.DisplayFormat(txt_FUEL_UP, 6))
		ExportScript.Tools.SendData(2112, ExportScript.Tools.DisplayFormat(txt_OilPress_L, 3))
		ExportScript.Tools.SendData(2113, ExportScript.Tools.DisplayFormat(txt_OilPress_R, 3, "l"))
		ExportScript.Tools.SendData(2114, ExportScript.Tools.DisplayFormat(txt_RPM_L, 3))
		ExportScript.Tools.SendData(2115, ExportScript.Tools.DisplayFormat(txt_RPM_R, 3, "l"))
		ExportScript.Tools.SendData(2116, ExportScript.Tools.DisplayFormat(txt_TEMP_L, 3))
		ExportScript.Tools.SendData(2117, ExportScript.Tools.DisplayFormat(txt_TEMP_R, 3, "l"))
		ExportScript.Tools.SendData(2118, ExportScript.Tools.DisplayFormat(txt_SP, 3))
		ExportScript.Tools.SendData(2119, ExportScript.Tools.DisplayFormat(txt_Codes, 3, "l"))
		ExportScript.Tools.SendData(2120, ExportScript.Tools.DisplayFormat(txt_T, 6))
		ExportScript.Tools.SendData(2121, ExportScript.Tools.DisplayFormat(txt_TimeSetMode, 6))
		-- texture values
		ExportScript.Tools.SendData(2201, LTexture)
		ExportScript.Tools.SendData(2202, RTexture)
		ExportScript.Tools.SendData(2203, ZTexture)
	end
end

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)

	-- -- check()
	-- local Pitch, Bank, Yaw = LoGetADIPitchBankYaw() --LoGetADIPitchBankYaw()
	-- Pitch = Pitch * 57.3
	-- Bank = Bank * 57.3
	-- -- General
	-- ExportScript.Tools.SendData(2901, string.format("%.2f", -Pitch/90)) -- -ExportScript.Tools.GetArgumentsValue(205, "%.2f"))
	-- ExportScript.Tools.SendData(2902, string.format("%d",-Bank )) -- ExportScript.Tools.GetArgumentsValue(206, "%.2f"))
	-- ExportScript.Tools.SendData(2903, string.format("%d", (LoGetSelfData().LatLongAlt.Alt * 3.2808399)/10 )) -- ExportScript.Tools.GetArgumentsValue(206, "%.2f"))





	-- if ExportScript.Config.ExportDisplaysFA18Fuel == true then
	-- 	local TK1 = ""
	-- 	local LFD = ""
	-- 	local RFD = ""
	-- 	local TK4 = ""
	-- 	local LWG = ""
	-- 	local RWG = ""
	-- 	local Bingo = ""
	-- 	local Total = ""
	-- 	local Internal = ""
	-- 	local fuel = ExportScript.Tools.getListIndicatorValue(3)
	-- 	if not fuel then
	-- 		return
	-- 	end

	-- 	TK1 = coerce_nil_to_string(fuel.TK1)

	-- 	ExportScript.Tools.SendData(2301, TK1)
	-- end
end