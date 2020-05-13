-- F/A-18C Hornet
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	-- AoA Indexer Lights
	[4] = "%1d",   -- CPT_LTS_AOA_HIGH
	[5] = "%1d",   -- CPT_LTS_AOA_CENTER
	[6] = "%1d",   -- CPT_LTS_AOA_LOW

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

	[107] = "%1d",   -- UFC ADF Function Select Switch, 1/OFF/2 {-1.0,0.0,1.0}
	[108] = "%.1f",   -- UFC COMM 1 Volume Control Knob {0.0,1.0} in 0.1 Steps
	[123] = "%.1f",   -- UFC COMM 2 Volume Control Knob {0.0,1.0} in 0.1 Steps
	[109] = "%.1f",   -- UFC Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[125] = "%1d",   -- UFC COMM 1 Channel Selector Knob
	[124] = "%.2f",   -- UFC COMM 1 Channel Selector Knob {0.0,1.0} in 0.2 Steps
	[127] = "%1d",   -- UFC COMM 2 Channel Selector Knob
	[126] = "%.2f",   -- UFC COMM 2 Channel Selector Knob {0.0,1.0} in 0.2 Steps
}

-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
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
			ExportScript.Tools.SendData(2020, ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_ScratchPadString1Display, 2)) -- ScratchPadString1Display 2 character
			ExportScript.Tools.SendData(2021, ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_ScratchPadString2Display, 2)) -- ScratchPadString2Display 2 character
			ExportScript.Tools.SendData(2022, ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_ScratchPadNumberDisplay, 7)) -- ScratchPadNumberDisplay 7 character

			local _tmpCueing = " "
			-- Option Displays
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing1 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2023, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay1)) -- OptionDisplay1 5 character
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing2 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2024, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay2)) -- OptionDisplay2 5 character
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing3 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2025, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay3)) -- OptionDisplay3 5 character
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing4 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2026, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay4)) -- OptionDisplay4 5 character
			_tmpCueing = (#_ufcDisplay.UFC_OptionCueing5 > 0 and "¦" or " ")
			ExportScript.Tools.SendData(2027, ExportScript.Tools.DisplayFormat(_tmpCueing .. _ufcDisplay.UFC_OptionDisplay5)) -- OptionDisplay5 5 character

			-- Comm Displays
			_ufcDisplay.UFC_Comm1Display = string.gsub(_ufcDisplay.UFC_Comm1Display, "~", "2") -- need to be 2
			_ufcDisplay.UFC_Comm2Display = string.gsub(_ufcDisplay.UFC_Comm2Display, "~", "2") -- need to be 2
			_ufcDisplay.UFC_Comm1Display = string.gsub(_ufcDisplay.UFC_Comm1Display, "`", "1") -- need to be 1
			_ufcDisplay.UFC_Comm2Display = string.gsub(_ufcDisplay.UFC_Comm2Display, "`", "1") -- need to be 1
			ExportScript.Tools.SendData(2028, ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_Comm1Display, 2)) -- Comm1Display 2 character
			ExportScript.Tools.SendData(2029, ExportScript.Tools.DisplayFormat(_ufcDisplay.UFC_Comm2Display, 2)) -- Comm2Display 2 character
		else
			-- ScratchPadString Displays
			ExportScript.Tools.SendData(2020, " ") -- ScratchPadString1Display 2 character
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

		-- IFEI
		local ifei = ExportScript.Tools.getListIndicatorValue(5)
		local txt_BINGO 		= coerce_nil_to_string(ifei.txt_BINGO)
		local txt_CLOCK_H 		= coerce_nil_to_string(ifei.txt_CLOCK_H)
		local txt_CLOCK_M 		= coerce_nil_to_string(ifei.txt_CLOCK_M)
		local txt_CLOCK_S 		= coerce_nil_to_string(ifei.txt_CLOCK_S)
		local txt_TIMER_H 		= coerce_nil_to_string(ifei.txt_TIMER_H)
		local txt_TIMER_M 		= coerce_nil_to_string(ifei.txt_TIMER_M)
		local txt_TIMER_S 		= coerce_nil_to_string(ifei.txt_TIMER_S)
		local txt_DD_1 			= coerce_nil_to_string(ifei.txt_DD_1)
		local txt_DD_2 			= coerce_nil_to_string(ifei.txt_DD_2)
		local txt_DD_3 			= coerce_nil_to_string(ifei.txt_DD_3)
		local txt_DD_4 			= coerce_nil_to_string(ifei.txt_DD_4)
		local txt_FF_L 			= coerce_nil_to_string(ifei.txt_FF_L)
		local txt_FF_R 			= coerce_nil_to_string(ifei.txt_FF_R)
		local txt_FUEL_DOWN 	= coerce_nil_to_string(ifei.txt_FUEL_DOWN)
		local txt_FUEL_UP 		= coerce_nil_to_string(ifei.txt_FUEL_UP)
		local txt_OilPress_L 	= coerce_nil_to_string(ifei.txt_OilPress_L)
		local txt_OilPress_R 	= coerce_nil_to_string(ifei.txt_OilPress_R)
		local txt_RPM_L 		= coerce_nil_to_string(ifei.txt_RPM_L)
		local txt_RPM_R 		= coerce_nil_to_string(ifei.txt_RPM_R)
		local txt_TEMP_L 		= coerce_nil_to_string(ifei.txt_TEMP_L)
		local txt_TEMP_R 		= coerce_nil_to_string(ifei.txt_TEMP_R)
		local txt_Codes 		= coerce_nil_to_string(ifei.txt_Codes)
		local txt_SP 			= coerce_nil_to_string(ifei.txt_SP)
		local txt_TimeSetMode 	= coerce_nil_to_string(ifei.txt_TimeSetMode)

		ExportScript.Tools.SendData(2101, txt_BINGO)
		ExportScript.Tools.SendData(2102, txt_CLOCK_H .. ":" .. txt_CLOCK_M .. ":" .. txt_CLOCK_S)
		ExportScript.Tools.SendData(2103, txt_TIMER_H .. ":" .. txt_TIMER_M .. ":" .. txt_TIMER_S)
		ExportScript.Tools.SendData(2104, txt_DD_1)
		ExportScript.Tools.SendData(2105, txt_DD_2)
		ExportScript.Tools.SendData(2106, txt_DD_3)
		ExportScript.Tools.SendData(2107, txt_DD_4)
		ExportScript.Tools.SendData(2108, txt_FF_L)
		ExportScript.Tools.SendData(2109, txt_FF_R)
		ExportScript.Tools.SendData(2110, txt_FUEL_DOWN)
		ExportScript.Tools.SendData(2111, txt_FUEL_UP)
		ExportScript.Tools.SendData(2112, txt_OilPress_L)
		ExportScript.Tools.SendData(2113, txt_OilPress_R)
		ExportScript.Tools.SendData(2114, txt_RPM_L)
		ExportScript.Tools.SendData(2115, txt_RPM_R)
		ExportScript.Tools.SendData(2116, txt_TEMP_L)
		ExportScript.Tools.SendData(2117, txt_TEMP_R)
		ExportScript.Tools.SendData(2118, txt_Codes)
		ExportScript.Tools.SendData(2119, txt_SP)
		ExportScript.Tools.SendData(2120, txt_TimeSetMode)
	end
end