-- F/A-18C Hornet

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	-- AoA Indexer Lights
	[4] = "%.1f",   -- CPT_LTS_AOA_HIGH
	[5] = "%.1f",   -- CPT_LTS_AOA_CENTER
	[6] = "%.1f",   -- CPT_LTS_AOA_LOW

	-- Fire Systems
	[46] = "%d",   -- Fire Extinguisher Pushbutton
	[30] = "%d",   -- APU Fire Warning/Extinguisher Light
	[11] = "%d",   -- Left Engine/AMAD Fire Warning/Extinguisher Light - (LMB) depress
	[12] = "%d",   -- Left Engine/AMAD Fire Warning/Extinguisher Light - (RMB) cover control
	[27] = "%d",   -- Right Engine/AMAD Fire Warning/Extinguisher Light - (LMB) depress
	[28] = "%d",   -- Right Engine/AMAD Fire Warning/Extinguisher Light - (RMB) cover control

	-- LH Advisory and Threat Warning Indicator Panel
	[10] = "%d",   -- CPT_LTS_FIRE_LEFT
	[13] = "%d",   -- CPT_LTS_MASTER_CAUTION
	[15] = "%d",   -- CPT_LTS_GO
	[16] = "%d",   -- CPT_LTS_NO_GO
	[17] = "%d",   -- CPT_LTS_L_BLEED
	[18] = "%d",   -- CPT_LTS_R_BLEED
	[19] = "%d",   -- CPT_LTS_SPD_BRK
	[20] = "%d",   -- CPT_LTS_STBY
	[21] = "%d",   -- CPT_LTS_L_BAR_RED
	[22] = "%d",   -- CPT_LTS_REC
	[23] = "%d",   -- CPT_LTS_L_BAR_GREEN
	[24] = "%d",   -- CPT_LTS_XMIT
	[25] = "%d",   -- CPT_LTS_ASPJ_OH

	-- RH Advisory and Threat Warning Indicator Panel
	[26] = "%d",   -- CPT_LTS_FIRE_RIGHT
	[29] = "%d",   -- CPT_LTS_FIRE_APU
	[31] = "%d",   -- CPT_LTS_RCDR_ONzxzx=ss
	[32] = "%d",   -- CPT_LTS_DISP
	[33] = "%d",   -- CPT_LTS_SPARE_RH1
	[34] = "%d",   -- CPT_LTS_SPARE_RH2
	[35] = "%d",   -- CPT_LTS_SPARE_RH3
	[36] = "%d",   -- CPT_LTS_SPARE_RH4
	[37] = "%d",   -- CPT_LTS_SPARE_RH5
	[38] = "%d",   -- CPT_LTS_SAM.u/8i
	[39] = "%d",   -- CPT_LTS_AI
	[40] = "%d",   -- CPT_LTS_AAA
	[41] = "%d",   -- CPT_LTS_CW

	[44] = "%d",   -- READY Light
	[45] = "%d",   -- DISCH Light
	-- Master Arm Panel
	[47] = "%d",   -- AA Light
	[48] = "%d",   -- AG Light
	[49] = "%d",   -- Master Arm Switch, ARM/SAFE

	-- HUD Control Panel
	[140] = "%.1f",   -- HUD Symbology Reject Switch, NORM/REJ 1/REJ 2
	[142] = "%d",   -- HUD Symbology Brightness Selector Knob, DAY/NIGHT
	[144] = "%.1f",   -- HUD Video Control Switch, W/B /VID/OFF
	[147] = "%d",   -- Altitude Switch, BARO/RDR
	[148] = "%d",   -- Attitude Selector Switch, INS/AUTO/STBY -1/0/1

	-- Jettison / Landing gear
	[153] = "%d",   -- CTR Button
	[155] = "%d",   -- LI Button
	[157] = "%d",   -- LO Button
	[159] = "%d",   -- RI Button
	[161] = "%d",   -- RO Button
	[152] = "%d",   -- CTR Light
	[154] = "%d",   -- LI Light
	[156] = "%d",   -- LO Light
	[158] = "%d",   -- RI Light
	[160] = "%d",   -- RO Light
	[166] = "%d",   -- NOSE GEAR
	[165] = "%d",   -- LEFT GEAR
	[167] = "%d",   -- RIGHT GEAR
	[163] = "%d",   -- HALF FLAPS
	[164] = "%d",   -- FULL FLAPS
	[162] = "%d",   -- FLAPS

	[237] = "%d",   -- LDG/TAXI LIGHT Switch

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
	[277] = "%d", 	-- ALR-67 POWER Pushbutton

	-- Caution Lights Panel
	[298] = "%d", -- CK SEAT
	[299] = "%d", -- APU ACC
	[300] = "%d", -- BATT SW
	[301] = "%d", -- FCS HOT
	[302] = "%d", -- GEN TIE
	[303] = "%d", -- SPARE CTN1
	[304] = "%d", -- FUEL LO`
	[305] = "%d", -- FCES
	[306] = "%d", -- SPARE CTN2
	[307] = "%d", -- L GEN
	[308] = "%d", -- R GEN
	[309] = "%d", -- SPARE CTN3

	[107] = "%d",  -- UFC ADF Function Select Switch, 1/OFF/2 {-1.0,0.0,1.0}
	[125] = "%d",  -- UFC COMM 1 Channel Selector Knob
	[127] = "%d",  -- UFC COMM 2 Channel Selector Knob

	-- Exterior Lights Panel
	[339] = "%d", 	-- Strobe Lights Switch

	-- Communication panel
	[350] = "%d", 	-- Comm Relay Switch, CIPHER/OFF/PLAIN
	[351] = "%d", 	-- COMM G XMT Switch, COMM 1/OFF/COMM 2
	[352] = "%.2f", -- ILS Channel Selector
	[353] = "%d", 	-- ILS UFC/MAN Switch, UFC/MAN
	[354] = "%d", 	-- CRYPTO Switch, HOLD/NORM/ZERO
	[355] = "%d", 	-- IFF Mode 4 Switch, DIS/AUD /DIS/OFF
	[356] = "%d", 	-- IFF Master Switch, EMER/NORM

	-- ELEC
	[402] = "%d", 	-- Left Generator Control Switch
	[404] = "%d", 	-- Battery Switch, ON/OFF/ORIDE
	[403] = "%d", 	-- Right Generator Control Switch

	-- ECS
	[405] = "%d", 	-- Mode Switch, AUTO/MAN/OFF/RAM
	[408] = "%d", 	-- Cabin Pressure Switch, NORM/DUMP/RAM/DUMP
	[409] = "%d", 	-- Pitot Heater Switch, ON/AUTO
	[410] = "%d", 	-- Engine Anti-Ice Switch, ON/OFF/TEST
	[411] = "%.1f", -- Bleed Air Knob, R OFF/NORM/L OFF/OFF

	-- Interior lights
	[416] = "%d", 	-- Lights Test Switch, TEST/OFF
	[419] = "%d", 	-- MODE Switch, NVG/NITE/DAY

	-- SNSR Sensor panel
	[439] = "%d", 	-- FLIR Switch, ON/STBY/OFF
	[441] = "%d", 	-- LTD/R Switch, SAFE/AFT
	[442] = "%d", 	-- LST/NFLR Switch, ON/OFF
	[440] = "%.1f", -- RADAR Switch Change ,OFF/STBY/OPR/EMERG(PULL)
	[443] = "%.1f", -- INS Switch, OFF/CV/GND/NAV/IFA/GYRO/GB/TEST
	[458] = "%d", -- btn A/A
	[459] = "%d", -- btn A/G
}

PWDEV.ConfigArguments =
{
	-- UFC
	[108] = "%.1f",	-- UFC COMM 1 Volume Control Knob {0.0,1.0} in 0.1 Steps
	[109] = "%.1f", -- UFC Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[123] = "%.1f", -- UFC COMM 2 Volume Control Knob {0.0,1.0} in 0.1 Steps
	-- Left MDI
	[51] = "%.1f",   -- Left MDI Brightness Selector Knob, OFF/NIGHT/DAY {0.0,0.1,0.2}
	[52] = "%.1f",   -- Left MDI Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[53] = "%.1f",   -- Left MDI Contrast Control Knob {0.0,1.0} in 0.1 Steps
	[312] = "%d",   -- Heading Set Switch
	[313] = "%d",   -- Course Set Switch
	-- Right MDI
	[76] = "%.1f",   -- Right MDI Brightness Selector Knob, OFF/NIGHT/DAY {0.0,0.1,0.2}
	[77] = "%.1f",   -- Right MDI Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[78] = "%.1f",   -- Right MDI Contrast Control Knob {0.0,1.0} in 0.1 Steps
	-- AMPCD
	[203] = "%.1f",   -- AMPCD Off/Brightness Control Knob {0.0,1.0} in 0.1 Steps
	[177] = "%d",   -- AMPCD Night/Day Brightness Selector, DAY/NGT {1.0,0.0,-1.0}
	[179] = "%d",   -- AMPCD Symbology Control Switch, UP/DOWN {1.0,0.0,-1.0}
	[182] = "%d",   -- AMPCD Contrast Control Switch, UP/DOWN {1.0,0.0,-1.0}
	[180] = "%d",   -- AMPCD Gain Control Switch, UP/DOWN {1.0,0.0,-1.0}

	-- HUD Control Panel
	[141] = "%.1f",   -- HUD Symbology Brightness Control Knob
	[143] = "%.1f",   -- Black Level Control Knob
	[145] = "%.1f",   -- Balance Control Knob
	[146] = "%.1f",   -- AOA Indexer Control Knob
	-- Exterior Lights Panel
	[337] = "%.1f", -- Formation Lights Dimmer
	[338] = "%.1f", -- Position Lights Dimmer
	-- VOL
	[357] = "%.1f",	-- VOX Volume Control Knob
	[358] = "%.1f",	-- ICS Volume Control Knob
	[359] = "%.1f",	-- RWR Volume Control Knob
	[360] = "%.1f",	-- WPN Volume Control Knob
	[361] = "%.1f",	-- MIDS B Volume Control Knob
	[362] = "%.1f",	-- MIDS A Volume Control Knob
	[363] = "%.1f",	-- TACAN Volume Control Knob
	[364] = "%.1f",	-- AUX Volume Control Knob
	-- ECS
	[407] = "%.1f", -- Cabin Temperature Knob
	-- Interior Lights
	[413] = "%.1f", -- CONSOLES Lights Dimmer Knob
	[414] = "%.1f", -- Instrument Panel Dimmer Knob
	[415] = "%.1f", -- Flood Light Dimmer Knob
	[417] = "%.1f", -- WARN/CAUTION Light Dimmer Knob
	[418] = "%.1f", -- CHART Light Dimmer Knob
}

local function check(data)
	local value
	if data == nil then value = "0" else value = "1" end
	return value
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
	send(89, PWDEV.Tools.GetAircraftDrawArgumentValue(89, "%.1f"))
	send(90, PWDEV.Tools.GetAircraftDrawArgumentValue(90, "%.1f"))
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)

	-- UFC Displays
	local ufc = PWDEV.Tools.getListIndicatorValue(6)

	if ufc ~= nil and ufc.UFC_MainDummy ~= nil then
		-- ScratchPadString Displays
		ufc.UFC_ScratchPadString1Display = string.gsub(ufc.UFC_ScratchPadString1Display, "~", "2") -- need to be 2
		ufc.UFC_ScratchPadString2Display = string.gsub(ufc.UFC_ScratchPadString2Display, "~", "2") -- need to be 2
		ufc.UFC_ScratchPadString1Display = string.gsub(ufc.UFC_ScratchPadString1Display, "`", "1") -- need to be 1
		ufc.UFC_ScratchPadString2Display = string.gsub(ufc.UFC_ScratchPadString2Display, "`", "1") -- need to be 1
		send(2020, string.gsub(ufc.UFC_ScratchPadString1Display, " ", ""))
		send(2021, PWDEV.Tools.DisplayFormat(ufc.UFC_ScratchPadString2Display, 2))
		send(2022, PWDEV.Tools.DisplayFormat(ufc.UFC_ScratchPadNumberDisplay, 8))

		local _tmpCueing = " "
		-- Option Displays
		_tmpCueing = (#ufc.UFC_OptionCueing1 > 0 and "¦" or " ")
		send(2023, PWDEV.Tools.DisplayFormat(_tmpCueing .. ufc.UFC_OptionDisplay1, 5))
		_tmpCueing = (#ufc.UFC_OptionCueing2 > 0 and "¦" or " ")
		send(2024, PWDEV.Tools.DisplayFormat(_tmpCueing .. ufc.UFC_OptionDisplay2, 5))
		_tmpCueing = (#ufc.UFC_OptionCueing3 > 0 and "¦" or " ")
		send(2025, PWDEV.Tools.DisplayFormat(_tmpCueing .. ufc.UFC_OptionDisplay3, 5))
		_tmpCueing = (#ufc.UFC_OptionCueing4 > 0 and "¦" or " ")
		send(2026, PWDEV.Tools.DisplayFormat(_tmpCueing .. ufc.UFC_OptionDisplay4, 5))
		_tmpCueing = (#ufc.UFC_OptionCueing5 > 0 and "¦" or " ")
		send(2027, PWDEV.Tools.DisplayFormat(_tmpCueing .. ufc.UFC_OptionDisplay5, 5))

		-- Comm Displays
		ufc.UFC_Comm1Display = string.gsub(ufc.UFC_Comm1Display, "~", "2")
		ufc.UFC_Comm2Display = string.gsub(ufc.UFC_Comm2Display, "~", "2")
		ufc.UFC_Comm1Display = string.gsub(ufc.UFC_Comm1Display, "`", "1")
		ufc.UFC_Comm2Display = string.gsub(ufc.UFC_Comm2Display, "`", "1")
		send(2028, PWDEV.Tools.DisplayFormat(ufc.UFC_Comm1Display, 2))
		send(2029, PWDEV.Tools.DisplayFormat(ufc.UFC_Comm2Display, 2))
	else
		-- ScratchPadString Displays
		send(2020, "  ")
		send(2021, "  ")
		send(2022, "        ")

		-- Option Displays
		send(2023, "     ")
		send(2024, "     ")
		send(2025, "     ")
		send(2026, "     ")
		send(2027, "     ")

		-- Comm Displays
		send(2028, "  ")
		send(2029, "  ")
	end

	local _UHF1Radio = GetDevice(38)
	send(2030, PWDEV.Tools.DisplayFormat(PWDEV.Tools.RoundFreqeuncy((_UHF1Radio:get_frequency()/1000000))), 7)

	local _UHF2Radio = GetDevice(39)
	send(2031, PWDEV.Tools.DisplayFormat(PWDEV.Tools.RoundFreqeuncy((_UHF2Radio:get_frequency()/1000000), "7.3", false, 0.005)), 7)


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

	local ifei = PWDEV.Tools.getListIndicatorValue(5)
	if not ifei then
		return
	end
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

	local RPMTexture = check(ifei.RPMTexture)
	local TempTexture = check(ifei.TempTexture)
	local FFTexture = check(ifei.FFTexture)
	local NOZTexture = check(ifei.NOZTexture)
	local OILTexture = check(ifei.OILTexture)
	local BINGOTexture = check(ifei.BINGOTexture)

	local LScaleTexture = check(ifei.LScaleTexture)
	local RScaleTexture = check(ifei.RScaleTexture)
	local LPointerTexture = check(ifei.LPointerTexture)
	local RPointerTexture = check(ifei.RPointerTexture)
	local L0Texture = check(ifei.L0Texture)
	local L50Texture = check(ifei.L50Texture)
	local L100Texture = check(ifei.L100Texture)
	local R0Texture = check(ifei.R0Texture)
	local R50Texture = check(ifei.R50Texture)
	local R100Texture = check(ifei.R100Texture)

	txt_RPM_L		= coerce_nil_to_string(ifei.txt_RPM_L)
	txt_RPM_R		= coerce_nil_to_string(ifei.txt_RPM_R)
	txt_TEMP_L		= coerce_nil_to_string(ifei.txt_TEMP_L)
	txt_TEMP_R		= coerce_nil_to_string(ifei.txt_TEMP_R)
	txt_FF_L		= coerce_nil_to_string(ifei.txt_FF_L)
	txt_FF_R		= coerce_nil_to_string(ifei.txt_FF_R)
	txt_OilPress_L	= coerce_nil_to_string(ifei.txt_OilPress_L)
	txt_OilPress_R	= coerce_nil_to_string(ifei.txt_OilPress_R)
	txt_BINGO 		= coerce_nil_to_string(ifei.txt_BINGO)
	txt_FUEL_UP		= coerce_nil_to_string(ifei.txt_FUEL_UP)
	txt_FUEL_DOWN	= coerce_nil_to_string(ifei.txt_FUEL_DOWN)
	txt_CLOCK_S		= coerce_nil_to_string(ifei.txt_CLOCK_S)
	txt_CLOCK_M		= coerce_nil_to_string(ifei.txt_CLOCK_M)
	txt_CLOCK_H		= coerce_nil_to_string(ifei.txt_CLOCK_H)
	txt_TIMER_H		= coerce_nil_to_string(ifei.txt_TIMER_H)
	txt_TIMER_M		= coerce_nil_to_string(ifei.txt_TIMER_M)
	txt_TIMER_S		= coerce_nil_to_string(ifei.txt_TIMER_S)
	txt_Codes		= coerce_nil_to_string(ifei.txt_Codes)
	txt_SP			= coerce_nil_to_string(ifei.txt_SP)
	txt_T			= coerce_nil_to_string(ifei.txt_T)
	txt_TimeSetMode	= coerce_nil_to_string(ifei.txt_TimeSetMode)
	if ifei.LTexture == nil then LTexture = "0" else LTexture = "1" end
	if ifei.RTexture == nil then RTexture = "0" else RTexture = "1" end
	if ifei.ZTexture == nil then ZTexture = "0" else ZTexture = "1" end

	if (txt_CLOCK_S == "") then txt_CLOCK_S = "__" end
	if (txt_CLOCK_M == "") then txt_CLOCK_M = "__" end
	if (txt_CLOCK_H == "") then txt_CLOCK_H = "__" end
	if (txt_TIMER_S == "") then txt_TIMER_S = "  " end
	if (txt_TIMER_M == "") then txt_TIMER_M = "  " end
	if (txt_TIMER_H == "") then txt_TIMER_H = "  " end

	send(2101, PWDEV.Tools.DisplayFormat(txt_BINGO, 5))
	send(2102, PWDEV.Tools.DisplayFormat(txt_CLOCK_H .. ":" .. txt_CLOCK_M .. ":" .. txt_CLOCK_S, 8))
	send(2103, PWDEV.Tools.DisplayFormat(txt_TIMER_H .. ":" .. txt_TIMER_M .. ":" .. txt_TIMER_S, 8))
	send(2108, PWDEV.Tools.DisplayFormat(txt_FF_L, 4))
	send(2109, PWDEV.Tools.DisplayFormat(txt_FF_R, 4))
	send(2110, PWDEV.Tools.DisplayFormat(txt_FUEL_DOWN, 6))
	send(2111, PWDEV.Tools.DisplayFormat(txt_FUEL_UP, 6))
	send(2112, PWDEV.Tools.DisplayFormat(txt_OilPress_L, 3))
	send(2113, PWDEV.Tools.DisplayFormat(txt_OilPress_R, 3))
	send(2114, PWDEV.Tools.DisplayFormat(txt_RPM_L, 3))
	send(2115, PWDEV.Tools.DisplayFormat(txt_RPM_R, 3))
	send(2116, PWDEV.Tools.DisplayFormat(txt_TEMP_L, 4))
	send(2117, PWDEV.Tools.DisplayFormat(txt_TEMP_R, 4))
	send(2118, PWDEV.Tools.DisplayFormat(txt_SP, 4))
	send(2119, PWDEV.Tools.DisplayFormat(txt_Codes, 4))
	send(2120, PWDEV.Tools.DisplayFormat(txt_T, 6))
	send(2121, PWDEV.Tools.DisplayFormat(txt_TimeSetMode, 6))
	-- texture values
	send(2201, LTexture)
	send(2202, RTexture)
	send(2203, ZTexture)

	send(2204, LTexture .. RTexture .. ZTexture)
	send(2205, RPMTexture .. TempTexture .. FFTexture .. NOZTexture .. OILTexture .. BINGOTexture)
	send(2206, LScaleTexture .. RScaleTexture .. LPointerTexture .. RPointerTexture .. L0Texture .. L50Texture .. L100Texture .. R0Texture .. R50Texture .. R100Texture)

    send(2501, PWDEV.Tools.GetArgumentsString({220,219}))

end

