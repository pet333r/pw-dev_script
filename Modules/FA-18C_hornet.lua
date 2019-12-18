-- F/A-18C Hornet
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	-- AoA Indexer Lights
	[4] = "%1d",   -- CPT_LTS_AOA_HIGH
	[5] = "%1d",   -- CPT_LTS_AOA_CENTER
	[6] = "%1d",   -- CPT_LTS_AOA_LOW
}

ExportScript.ConfigArguments = 
{
	-- Left MDI
	[51] = "%1d",   -- Left MDI Brightness Selector Knob, OFF/NIGHT/DAY {0.0,0.1,0.2}
	[52] = "%.2f",   -- Left MDI Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[53] = "%.2f",   -- Left MDI Contrast Control Knob {0.0,1.0} in 0.1 Steps
	-- [54] = "%1d",   -- Left MDI PB 1
	-- [55] = "%1d",   -- Left MDI PB 2
	-- [56] = "%1d",   -- Left MDI PB 3
	-- [57] = "%1d",   -- Left MDI PB 4
	-- [58] = "%1d",   -- Left MDI PB 5
	-- [59] = "%1d",   -- Left MDI PB 6
	-- [60] = "%1d",   -- Left MDI PB 7
	-- [61] = "%1d",   -- Left MDI PB 8
	-- [62] = "%1d",   -- Left MDI PB 9
	-- [63] = "%1d",   -- Left MDI PB 10
	-- [64] = "%1d",   -- Left MDI PB 11
	-- [65] = "%1d",   -- Left MDI PB 12
	-- [66] = "%1d",   -- Left MDI PB 13
	-- [67] = "%1d",   -- Left MDI PB 14
	-- [68] = "%1d",   -- Left MDI PB 15
	-- [69] = "%1d",   -- Left MDI PB 16
	-- [70] = "%1d",   -- Left MDI PB 17
	-- [72] = "%1d",   -- Left MDI PB 18
	-- [73] = "%1d",   -- Left MDI PB 19
	-- [75] = "%1d",   -- Left MDI PB 20
	[312] = "%1d",   -- Heading Set Switch
	[313] = "%1d",   -- Course Set Switch
	-- Right MDI
	[76] = "%.1f",   -- Right MDI Brightness Selector Knob, OFF/NIGHT/DAY {0.0,0.1,0.2}
	[77] = "%.2f",   -- Right MDI Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[78] = "%.2f",   -- Right MDI Contrast Control Knob {0.0,1.0} in 0.1 Steps
	-- [79] = "%1d",   -- Right MDI PB 1
	-- [80] = "%1d",   -- Right MDI PB 2
	-- [81] = "%1d",   -- Right MDI PB 3
	-- [82] = "%1d",   -- Right MDI PB 4
	-- [83] = "%1d",   -- Right MDI PB 5
	-- [84] = "%1d",   -- Right MDI PB 6
	-- [85] = "%1d",   -- Right MDI PB 7
	-- [86] = "%1d",   -- Right MDI PB 8
	-- [87] = "%1d",   -- Right MDI PB 9
	-- [88] = "%1d",   -- Right MDI PB 10
	-- [89] = "%1d",   -- Right MDI PB 11
	-- [90] = "%1d",   -- Right MDI PB 12
	-- [91] = "%1d",   -- Right MDI PB 13
	-- [92] = "%1d",   -- Right MDI PB 14
	-- [93] = "%1d",   -- Right MDI PB 15
	-- [94] = "%1d",   -- Right MDI PB 16
	-- [95] = "%1d",   -- Right MDI PB 17
	-- [96] = "%1d",   -- Right MDI PB 18
	-- [97] = "%1d",   -- Right MDI PB 19
	-- [98] = "%1d",   -- Right MDI PB 20
	-- AMPCD
	[203] = "%.2f",   -- AMPCD Off/Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[177] = "%1d",   -- AMPCD Night/Day Brightness Selector, DAY/NGT {1.0,0.0,-1.0}
	[179] = "%1d",   -- AMPCD Symbology Control Switch, UP/DOWN {1.0,0.0,-1.0}
	[182] = "%1d",   -- AMPCD Contrast Control Switch, UP/DOWN {1.0,0.0,-1.0}
	[180] = "%1d",   -- AMPCD Gain Control Switch, UP/DOWN {1.0,0.0,-1.0}
	-- [183] = "%1d",   -- AMPCD PB 1
	-- [184] = "%1d",   -- AMPCD PB 2
	-- [185] = "%1d",   -- AMPCD PB 3
	-- [186] = "%1d",   -- AMPCD PB 4
	-- [187] = "%1d",   -- AMPCD PB 5
	-- [188] = "%1d",   -- AMPCD PB 6
	-- [189] = "%1d",   -- AMPCD PB 7
	-- [190] = "%1d",   -- AMPCD PB 8
	-- [191] = "%1d",   -- AMPCD PB 9
	-- [192] = "%1d",   -- AMPCD PB 10
	-- [193] = "%1d",   -- AMPCD PB 11
	-- [194] = "%1d",   -- AMPCD PB 12
	-- [195] = "%1d",   -- AMPCD PB 13
	-- [196] = "%1d",   -- AMPCD PB 14
	-- [197] = "%1d",   -- AMPCD PB 15
	-- [198] = "%1d",   -- AMPCD PB 16
	-- [199] = "%1d",   -- AMPCD PB 17
	-- [200] = "%1d",   -- AMPCD PB 18
	-- [201] = "%1d",   -- AMPCD PB 19
	-- [202] = "%1d",   -- AMPCD PB 20
	-- UFC
	-- [128] = "%1d",   -- UFC Function Selector Pushbutton, A/P
	-- [129] = "%1d",   -- UFC Function Selector Pushbutton, IFF
	-- [130] = "%1d",   -- UFC Function Selector Pushbutton, TCN
	-- [131] = "%1d",   -- UFC Function Selector Pushbutton, ILS
	-- [132] = "%1d",   -- UFC Function Selector Pushbutton, D/L
	-- [133] = "%1d",   -- UFC Function Selector Pushbutton, BCN
	-- [134] = "%1d",   -- UFC Function Selector Pushbutton, ON/OFF
	-- [100] = "%1d",   -- UFC Option Select Pushbutton 1
	-- [101] = "%1d",   -- UFC Option Select Pushbutton 2
	-- [102] = "%1d",   -- UFC Option Select Pushbutton 3
	-- [103] = "%1d",   -- UFC Option Select Pushbutton 4
	-- [106] = "%1d",   -- UFC Option Select Pushbutton 5
	-- [111] = "%1d",   -- UFC Keyboard Pushbutton, 1
	-- [112] = "%1d",   -- UFC Keyboard Pushbutton, 2
	-- [113] = "%1d",   -- UFC Keyboard Pushbutton, 3
	-- [114] = "%1d",   -- UFC Keyboard Pushbutton, 4
	-- [115] = "%1d",   -- UFC Keyboard Pushbutton, 5
	-- [116] = "%1d",   -- UFC Keyboard Pushbutton, 6
	-- [117] = "%1d",   -- UFC Keyboard Pushbutton, 7
	-- [118] = "%1d",   -- UFC Keyboard Pushbutton, 8
	-- [119] = "%1d",   -- UFC Keyboard Pushbutton, 9
	-- [120] = "%1d",   -- UFC Keyboard Pushbutton, 0
	-- [121] = "%1d",   -- UFC Keyboard Pushbutton, CLR
	-- [122] = "%1d",   -- UFC Keyboard Pushbutton, ENT
	-- [99] = "%1d",   -- UFC I/P Pushbutton
	-- [110] = "%1d",   -- UFC Emission Control Pushbutton
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
	end
end