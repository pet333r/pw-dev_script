-- A-10C

A10C_CDU = dofile(lfs.writedir()..[[Scripts\pw-dev_script\disp\A10C_CDU.lua]])

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Fuel
	[106] = "%d",	-- External Wing Tanks Boost Pumps
	[107] = "%d",	-- External Fuselage Tanks Boost Pumps
	[108] = "%d",	-- Tank Gate
	[109] = "%d",	-- Crossfeed
	[110] = "%d",	-- Boost Pumps Left Wing
	[111] = "%d",	-- Boost Pumps Right Wing
	[112] = "%d",	-- Boost Pumps Main Fuselage Left
	[113] = "%d",	-- Boost Pumps Main Fuselage Right
	[114] = "%d",	-- Signal Amplifier
	[116] = "%.1f",	-- Refueling Lighting Dial
	[121] = "%d",	-- Aerial Refueling Slipway Control Lever

    -- Autopilot
    [129] = "%d",   -- EAC On/Off
    [130] = "%d",   -- Radar Altimeter
    [132] = "%d",   -- AP MODE
    -- AM Radio
	[133] = "%.1f",   -- PTR-ANARC186-VHFAM-VOLUME (Volume)
	[134] = "%d",     -- PTR-ANARC186-VHFAM-SQUELCH (Squelch / TONE) -1/1
	[135] = "%.1f",   -- PTR-ANARC186-VHFAM-FREQEMER-CONTROL (Frequency Selection Dial) 0-0.3
	-- [136] = "%d",     -- PTR-ANARC186-VHFAM-LOAD (Load btn)
	[137] = "%.2f",   -- PTR-ANARC186-VHFAM-PRESET (Preset Channel Selector) 0.01 0-0.2
	[138] = "%.1f",   -- PTR-ANARC186-VHFAM-MODE (Frequency Mode Dial) 0-0.2
	[139] = "%.2f",   -- PTR-ANARC186-VHFAM-FREQ-1 (Frequency Selector the 1nd)
	[140] = "%.1f",   -- PTR-ANARC186-VHFAM-FREQ-2 (Frequency Selector the 2nd)
	[141] = "%.1f",   -- PTR-ANARC186-VHFAM-FREQ-3 (Frequency Selector the 3nd)
	[142] = "%.1f",   -- PTR-ANARC186-VHFAM-FREQ-4 (Frequency Selector the 4nd)
	[143] = "%.2f",   -- Frequency 1nd val 0.05 0-0.75
	[144] = "%.1f",   -- Frequency 2nd val 0.1 0-1
	[145] = "%.1f",   -- Frequency 3nd val 0.1 0-1
	[146] = "%.2f",   -- Frequency 4nd val 0.25 0-1
    -- FM Radio
	[147] = "%.1f",   -- PTR-ANARC186-VHFFM-VOLUME (Volume)
	[148] = "%d",     -- PTR-ANARC186-VHFFM-SQUELCH (Squelch / TONE) -1/1
	[149] = "%.1f",   -- PTR-ANARC186-VHFFM-FREQEMER-CONTROL (Frequency Selection Dial) 0-0.3
	-- [150] = "%d",     -- PTR-ANARC186-VHFFM-LOAD (Load btn)
	[151] = "%.2f",   -- PTR-ANARC186-VHFFM-PRESET (Preset Channel Selector) 0.01 0-0.2
	[152] = "%.2f",   -- PTR-ANARC186-VHFFM-MODE (Frequency Mode Dial)
	[153] = "%.1f",   -- PTR-ANARC186-VHFFM-FREQ-1 (Frequency Selector the 1nd)
	[154] = "%.1f",   -- PTR-ANARC186-VHFFM-FREQ-2 (Frequency Selector the 2nd)
	[155] = "%.1f",   -- PTR-ANARC186-VHFFM-FREQ-3 (Frequency Selector the 3nd)
	[156] = "%.1f",   -- PTR-ANARC186-VHFFM-FREQ-4 (Frequency Selector the 4nd)
    [157] = "%.2f",   -- Frequency 1nd val 0.05 0-0.75
	[158] = "%.1f",   -- Frequency 2nd val 0.1 0-1
	[159] = "%.1f",   -- Frequency 3nd val 0.1 0-1
	[160] = "%.2f",   -- Frequency 4nd val 0.25 0-1

    -- UHF
    [161] = "%.2f", -- UHF Preset Channel Selector
    [162] = "%.1f", -- UHF 100MHz Selector
    [163] = "%.1f", -- UHF 10MHz Selector
    [164] = "%.1f", -- UHF 1MHz Selector
    [165] = "%.1f", -- UHF 0.1MHz Selector
    [166] = "%.1f", -- UHF 0.25MHz Selector
    [167] = "%.1f",   -- Frequency Mode Dial MNL/PRESET/GRD
    [168] = "%.1f", -- UHF Function Dial OFF/MAIN/BOTH/ADF
    [169] = "%d",   -- T-Tone Switch
    [170] = "%d",   -- Squelch Switch
    [171] = "%.1f", -- UHF Volume Control

    [193] = "%.1f", -- Refuel Status Indexer Lights
    [194] = "%.1f", -- Nightvision Lights

    -- ILS
    [247] = "%d",  -- ILS Power
    [248] = "%.1f", -- ILS Frequency MHz 0/1/2/3
    [249] = "%.1f", -- ILS Frequency KHz
    [250] = "%.1f", -- ILS Volume

    -- TACAN
    [256] = "%.1f", -- Left Channel Selector
    [257] = "%.1f", -- Right Channel Selector 0-9
    [258] = "%.1f", -- TACAN Channel X/Y Toggle
    [260] = "1d",   -- Test Indicator Light
    [261] = "%.1f", -- TACAN Signal Volume
    [262] = "%.1f", -- TACAN Mode Dial 0/1/2/3/4

    [287] = "%d",  -- Position Lights FLASH/OFF/STEADY
    [288] = "%.1f", -- Formation Lights
    [289] = "%d",  -- Anticollision Lights
    [290] = "%.1f", -- Engine Instrument Lights
    [291] = "%d",  -- Nose Illumination
    [292] = "%.1f", -- Flight Instrument Lights
    [293] = "%.1f", -- Aux Instrument Lights
    [294] = "%d",  -- Signal Lights
    [295] = "%d",  -- Accelerometer and Compass Lights
    [296] = "%.1f", -- Flood Lights
    [297] = "%.1f", -- Console Lights

    [358] = "%d", -- JTSN / OFF
    [360] = "%d",  -- Missile Warning System OFF - ON - (MENU)
    [361] = "%d",  -- Jammer OFF - ON - (MENU)
    [362] = "%d",  -- Radar Warning Receiver OFF - ON - (MENU)
    [363] = "%d",  -- Countermeasure Dispenser OFF - ON - (MENU)
    [364] = "%.1f", -- CMSP Mode Select

    -- AHCP
    [375] = "%.1f", -- Master Arm TRAIN - SAFE - ARM
    [376] = "%.1f", -- GUN/PAC GUNARM - SAFE - ARM
    [377] = "%.1f", -- Laser Arm TRAIN - SAFE - ARM
    [378] = "%d", -- TGP OFF - ON
    [379] = "%.1f", -- Altimeter Source RADAR - DELTA - BARO
    [380] = "%d", -- Hud Mode NIGHT - DAY
    [381] = "%d", -- Hud Mode STBY - NORM
    [382] = "%d", -- CICU OFF - ON
    [383] = "%d", -- JTRS OFF - ON
    [384] = "%.1f", -- IFFCC OFF - TEST - ON

    -- AAP
    [473] = "%.1f",    -- PNT-LVR-STEER-PT-SEL-SWITCH (Use Steerpoint From Active Flight Plan)
    [474] = "%d",      -- PNT-TMB-STEER-SPRING-LD-SWITCH (Toggle Steerpoint)
    [475] = "%.1f",    -- PNT-LEV-PAGE-SEL-SWITCH (CDU Page Select)
    [476] = "%d",      -- CDU Power On/Off
    [477] = "%d",      -- EGI Power On/Off

	[404] = "%d",	    -- Master Caution Light
	[540] = "%d",	    -- AOA Indexer High
	[541] = "%d",	    -- AOA Indexer Normal
    [542] = "%d",	    -- AOA Indexer Low

    -- Indicators
    [662] = "%d",	    -- GUN READY Indicator
    [663] = "%d",	    -- Nosewheel Steering Indicator
    [664] = "%d",	    -- MARKER BEACON Indicator
    [665] = "%d",	    -- CANOPY UNLOCKED Indicator

    -- Fire handlers
    [102] = "%d",      -- Fire Eng 1
    [103] = "%d",      -- Fire APU
    [104] = "%d",      -- Fire Eng 2
    -- Fire Indicator Lights
    [215] = "%d",      -- Left Engine Fire Indicator
    [216] = "%d",      -- APU Fire Indicator
    [217] = "%d",      -- Right Engine Fire Indicator

    [372] = "%d",      -- ML Light
    [373] = "%d",      -- PRI Light
    [374] = "%d",      -- UNK Light

    -- Caution Panel LAMPS
	[480] = "%d",		-- ENG_START_CYCLE
	[481] = "%d",		-- L_HYD_PRESS
	[482] = "%d",		-- R_HYD_PRESS
	[483] = "%d",		-- GUN_UNSAFE
	[484] = "%d",		-- ANTISKID
	[485] = "%d",		-- L_HYD_RES
	[486] = "%d",		-- R_HYD_RES
	[487] = "%d",		-- OXY_LOW
	[488] = "%d",		-- ELEV_DISENG
	[489] = "%d",		-- VOID1
	[490] = "%d",		-- SEAT_NOT_ARMED
	[491] = "%d",		-- BLEED_AIR_LEAK
	[492] = "%d",		-- AIL_DISENG
	[493] = "%d",		-- L_AIL_TAB
	[494] = "%d",		-- R_AIL_TAB
	[495] = "%d",		-- SERVICE_AIR_HOT
	[496] = "%d",		-- PITCH_SAS
	[497] = "%d",		-- L_ENG_HOT
	[498] = "%d",		-- R_ENG_HOT
	[499] = "%d",		-- WINDSHIELD_HOT
	[500] = "%d",		-- YAW_SAS
	[501] = "%d",		-- L_ENG_OIL_PRESS
	[502] = "%d",		-- R_ENG_OIL_PRESS
	[503] = "%d",		-- CICU
	[504] = "%d",		-- GCAS
	[505] = "%d",		-- L_MAIN_PUMP
	[506] = "%d",		-- R_MAIN_PUMP
	[507] = "%d",		-- VOID2
	[508] = "%d",		-- LASTE
	[509] = "%d",		-- L_WING_PUMP
	[510] = "%d",		-- R_WING_PUMP
	[511] = "%d",		-- HARS
	[512] = "%d",		-- IFF_MODE_4
	[513] = "%d",		-- L_MAIN_FUEL_LOW
	[514] = "%d",		-- R_MAIN_FUEL_LOW
	[515] = "%d",		-- L_R_TKS_UNEQUAL
	[516] = "%d",		-- EAC
	[517] = "%d",		-- L_FUEL_PRESS
	[518] = "%d",		-- R_FUEL_PRESS
	[519] = "%d",		-- NAV
	[520] = "%d",		-- STALL_SYS
	[521] = "%d",		-- L_CONV
	[522] = "%d",		-- R_CONV
	[523] = "%d",		-- CADC
	[524] = "%d",		-- APU_GEN
	[525] = "%d",		-- L_GEN
	[526] = "%d",		-- R_GEN
    [527] = "%d",		-- INST_INV

    -- ARC-210
    [551] = "%.1f",		-- knob
    [552] = "%.2f",		-- knob Channel
    [553] = "%.1f",		-- knob
    [554] = "%.1f",		-- 100 MHz Selector
    [555] = "%.1f",		-- 10 MHz Selector
    [556] = "%.1f",		-- 1 MHz Selector
    [557] = "%.1f",		-- 100 KHz Selector
    [558] = "%.1f",		-- 25 KHz Selector
    [568] = "%.1f",		-- Squelch on/off

    [606] = "%d",		-- HARS
    [608] = "%d",		-- EGI
    [610] = "%d",		-- TISL
    [612] = "%d",		-- STEERPT
    [614] = "%d",		-- ANCHR
    [616] = "%d",		-- TCN
    [618] = "%d",		-- ILS
    [619] = "%d",		-- UHF
	[620] = "%d",		-- FM
    [621] = "%d",     -- PTR-NMSP-ABLE-STOW (ABLE-STOW ADI Localizer Bar)

    [655] = "%.1f",     -- Land Taxi Lights

	[666] = "%d", 	-- AILERON DISC L Circuit Breaker
	[667] = "%d", 	-- AILERON DISC R Circuit Breaker
	[668] = "%d", 	-- SPS RUDDER AUTH LIM Circuit Breaker
	[669] = "%d", 	-- ELEVATOR DISC L Circuit Breaker
	[670] = "%d", 	-- ELEVATOR DISC R Circuit Breaker
	[671] = "%d", 	-- AILERON TAB L Circuit Breaker
	[672] = "%d", 	-- AILERON TAB R Circuit Breaker
	[673] = "%d", 	-- EMER FLAP Circuit Breaker
	[674] = "%d", 	-- EMER TRIM Circuit Breaker
	[675] = "%d", 	-- GEAR Circuit Breaker
	[676] = "%d", 	-- ENG START L Circuit Breaker
	[677] = "%d", 	-- ENG START R Circuit Breaker
	[678] = "%d", 	-- APU CONT Circuit Breaker
	[679] = "%d", 	-- ENG IGNITOR 1 Circuit Breaker
	[680] = "%d", 	-- ENG IGNITOR 2 Circuit Breaker
	[681] = "%d", 	-- FUEL SHUTOFF L Circuit Breaker
	[682] = "%d", 	-- FUEL SHUTOFF R Circuit Breaker
	[683] = "%d", 	-- DC FUEL PUMP Circuit Breaker
	[684] = "%d", 	-- BLEED AIR CONT L Circuit Breaker
	[685] = "%d", 	-- BLEED AIR CONT R Circuit Breaker
	[686] = "%d", 	-- EXT STORES JETT 1 Circuit Breaker
	[687] = "%d", 	-- EXT STORES JETT 2 Circuit Breaker
	[688] = "%d", 	-- STBY ATT IND Circuit Breaker
	[689] = "%d", 	-- MASTER CAUTION Circuit Breaker
	[690] = "%d", 	-- PITOT HEAT AC Circuit Breaker
	[691] = "%d", 	-- IFF Circuit Breaker
	[692] = "%d", 	-- UHF Circuit Breaker
	[693] = "%d", 	-- INTERCOM Circuit Breaker
	[694] = "%d", 	-- GEN CONT L Circuit Breaker
	[695] = "%d", 	-- GEN CONT R Circuit Breaker
	[696] = "%d", 	-- CONVERTER L Circuit Breaker
	[697] = "%d", 	-- AUX ESS BUS 0A Circuit Breaker
	[698] = "%d", 	-- AUX ESS BUS 0B Circuit Breaker
	[699] = "%d", 	-- AUX ESS BUS 0C Circuit Breaker
	[700] = "%d", 	-- BAT BUS TRANS Circuit Breaker
	[701] = "%d", 	-- INVERTER PWR Circuit Breaker
	[702] = "%d", 	-- INVERTER CONT Circuit Breaker
	[703] = "%d", 	-- AUX ESS BUS TIE Circuit Breaker

    [730] = "%d",		-- Air Refuel READY
    [731] = "%d",		-- Air Refuel LATCHED
    [732] = "%d",		-- Air Refuel DISCONNECT

    [998] = "%d",		-- ARC-210
}

PWDEV.ConfigArguments =
{
    [288] = "%.1f", -- Formation Lights
    [290] = "%.1f", -- Engine Instrument Lights
    [292] = "%.1f", -- Flight Instrument Lights
    [293] = "%.1f", -- Aux Instrument Lights
    [296] = "%.1f", -- Flood Lights
    [297] = "%.1f", -- Console Lights
}

local function getTacanChannel()
    local tcn_2 = ""
    if GetDevice(0):get_argument_value(263) == 0 then
        tcn_2 = "0"
    else
    	tcn_2 = "1"
    end
    local tcn_1 = string.format("%.1f", GetDevice(0):get_argument_value(264)):sub(3)
    local tcn_0 = string.format("%.1f", GetDevice(0):get_argument_value(265)):sub(3)

	local tcn_xy = ""
	if GetDevice(0):get_argument_value(266) == 0 then
		tcn_xy = "X"
	else
		tcn_xy = "Y"
	end

    return tcn_2 .. tcn_1 .. tcn_0 .. tcn_xy
end

local function getILSFrequency()
    local ils_mhz_lut = {
        ["0.0"] = "108",
        ["0.1"] = "109",
        ["0.2"] = "110",
        ["0.3"] = "111"
    }
    local ils_khz_lut = {
		["0.0"] = "10",
        ["0.1"] = "15",
        ["0.2"] = "30",
        ["0.3"] = "35",
        ["0.4"] = "50",
        ["0.5"] = "55",
        ["0.6"] = "70",
        ["0.7"] = "75",
        ["0.8"] = "90",
        ["0.9"] = "95"
    }
    local mhz = ils_mhz_lut[string.format("%.1f", GetDevice(0):get_argument_value(251))]
	if mhz == nil then mhz = "108" end
    local khz = ils_khz_lut[string.format("%.01f", GetDevice(0):get_argument_value(252))]
	if khz == nil then khz = "10" end
    return mhz .. "." .. khz
end

local function getUHFPreset()
    local ind = PWDEV.Tools.getListIndicatorValue(10)
    if ind == nil then return "  " end
    return ind["txtPresetChannel"]
end

local function getUHFFrequency()
    local ind = PWDEV.Tools.getListIndicatorValue(11)
    if ind == nil then return "       " end
    local freqStatus = ind["txtFreqStatus"] -- e.g. "251000"
    return freqStatus:sub(0,3) .. "." .. freqStatus:sub(4,6)
end

local function getARC210()
    local radioArc210 = {}
    radioArc210.line01 = " "
    radioArc210.line02 = " "
    radioArc210.line03 = ""
    radioArc210.line03mhz = ""
    radioArc210.line03khz = ""

    radioArc210.line11 = ""
    radioArc210.line12 = ""
    radioArc210.line13 = ""
    radioArc210.line21 = ""
    radioArc210.line31 = ""
    radioArc210.line32 = ""
    radioArc210.line41 = ""

    -- ARC-210
    local arc210 = PWDEV.Tools.getListIndicatorValue(18) or {}

    if (arc210.active_channel ~= nil) then
        radioArc210.line02 = arc210.active_channel
    elseif (arc210.active_oper_date ~= nil) then
        radioArc210.line02 = arc210.active_oper_date
    elseif (arc210.WOD_segment_date ~= nil) then
        radioArc210.line02 = arc210.WOD_segment_date
    end
    send(2041, radioArc210.line02)

    if (arc210.freq_label_mhz ~= nil) then
        radioArc210.line03mhz = arc210.freq_label_mhz
    elseif (arc210.WOD_segment_data_mhz ~= nil) then
        radioArc210.line03mhz = arc210.WOD_segment_data_mhz
    end

    if (arc210.freq_label_khz ~= nil) then
        radioArc210.line03khz = arc210.freq_label_khz
    elseif (arc210.WOD_segment_data_khz ~= nil) then
        radioArc210.line03khz = arc210.WOD_segment_data_khz
    end
    --todo zmienic na 6 znakow, do prawej
    send(2042, radioArc210.line03mhz .. radioArc210.line03khz)

    -- line 11
    if (arc210.EXIT ~= nil) then
        radioArc210.line11 = arc210.EXIT
    elseif (arc210.PREV ~= nil) then
        radioArc210.line11 = arc210.PREV
    elseif (arc210.LOAD ~= nil) then
        radioArc210.line11 = arc210.LOAD
    elseif (arc210.top_line_label ~= nil) then
        radioArc210.line11 = arc210.top_line_label
    elseif (arc210.prev_freq_label ~= nil) then
        radioArc210.line11 = arc210.prev_freq_label
    elseif (arc210["COLD ST"] ~= nil) then
        radioArc210.line11 = arc210["COLD ST"]
    elseif (arc210["EXIT/LOAD"] ~= nil) then
        radioArc210.line11 = arc210["EXIT/LOAD"]
    end
    send(2051, radioArc210.line11)

    -- line 12
    if (arc210.prev_manual_freq ~= nil) then
        radioArc210.line12 = arc210.prev_manual_freq
    elseif (arc210.satcom_top_channel_label ~= nil) then
        radioArc210.line12 = arc210.satcom_top_channel_label
    elseif (arc210["POWER UP LOADER"] ~= nil) then
        radioArc210.line12 = arc210["POWER UP LOADER"]
    end
    send(2052, radioArc210.line12)

    -- line 13
    if (arc210.txt_RT ~= nil) then
        radioArc210.line13 = arc210.txt_RT
    end
    send(2053, radioArc210.line13)

    -- line 21
    if (arc210.COMSEC ~= nil) then
        radioArc210.line21 = arc210.COMSEC
    elseif (arc210.comsec_mode ~= nil) then
        radioArc210.line21 = arc210.comsec_mode
    elseif (arc210.comsec_satcom_mode ~= nil) then
        radioArc210.line21 = arc210.comsec_satcom_mode
    elseif (arc210.LOAD ~= nil) then
        radioArc210.line21 = arc210.LOAD
    elseif (arc210.INITIALIZING ~= nil) then
        radioArc210.line21 = arc210.INITIALIZING
    elseif (arc210["RT1: 1"] ~= nil) then
        radioArc210.line21 = arc210["RT1: 1"]
    elseif (arc210["OPER. DATE LOAD"] ~= nil) then
        radioArc210.line21 = arc210["OPER. DATE LOAD"]
    elseif (arc210["NO FILL"] ~= nil) then
        radioArc210.line21 = arc210["NO FILL"]
    elseif (arc210["RADIO ID NUMBERS"] ~= nil) then
        radioArc210.line21 = arc210["RADIO ID NUMBERS"]
    elseif (arc210["VERIFY WOD/MWOD"] ~= nil) then
        radioArc210.line21 = arc210["VERIFY WOD/MWOD"]
    elseif (arc210["WOD LOAD"] ~= nil) then
        radioArc210.line21 = arc210["WOD LOAD"]
    elseif (arc210["DAMA CHANNELS"] ~= nil) then
        radioArc210.line21 = arc210["DAMA CHANNELS"]
    elseif (arc210["BEEP ENABLE"] ~= nil) then
        radioArc210.line21 = arc210["BEEP ENABLE"]
    elseif (arc210["USER DATA PORT"] ~= nil) then
        radioArc210.line21 = arc210["USER DATA PORT"]
    elseif (arc210["SWITCH TEST"] ~= nil) then
        radioArc210.line21 = arc210["SWITCH TEST"]
    elseif (arc210["ENTER KEY ENABLE"] ~= nil) then
        radioArc210.line21 = arc210["ENTER KEY ENABLE"]
    end
    send(2054, radioArc210.line21)

    -- line 31
    if (arc210.comsec_submode ~= nil) then
        radioArc210.line31 = arc210.comsec_submode
    elseif (arc210.CT ~= nil) then
        radioArc210.line31 = arc210.CT
    end
    send(2055, radioArc210.line31)

    -- line 32
    if (arc210.modulation_label ~= nil) then
        radioArc210.line32 = arc210.modulation_label
    elseif (arc210.AM ~= nil) then
        radioArc210.line32 = arc210.AM
    end
    send(2056, radioArc210.line32)

    -- line 41
    if (arc210.ky_submode_label ~= nil) then
        radioArc210.line41 = arc210.ky_submode_label
    elseif (arc210.comsec_satcom_delay ~= nil) then
        radioArc210.line41 = arc210.comsec_satcom_delay
    elseif (arc210["RADIO SETTINGS"] ~= nil) then
        radioArc210.line41 = arc210["RADIO SETTINGS"]
    elseif (arc210.MORE ~= nil) then
        radioArc210.line41 = arc210.MORE
    elseif (arc210["OPER. DATE"] ~= nil) then
        radioArc210.line41 = arc210["OPER. DATE"]
    elseif (arc210["CHECKING PAGE 1"] ~= nil) then
        radioArc210.line41 = arc210["CHECKING PAGE 1"]
    end
    send(2057, radioArc210.line41)
end

-- Pointed to by ProcessDCSHighImportance
function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by PWDEV.ProcessDCSConfigLowImportance
function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    -- ScratchPad
    local lScratchPad = PWDEV.Tools.getListIndicatorValue(5)
    send(2010, coerce_nil_to_string(lScratchPad.Scratch_PAD))

    -- CMSC 2020 (Text only)
    -------------------------------------------------
    if mainPanelDevice:get_argument_value(364) > 0 then
        local lCMSCTable = PWDEV.Tools.getListIndicatorValue(8)

        if lCMSCTable ~= nil and lCMSCTable.txt_JMR ~= nil then
            send(2011, string.format("%s", lCMSCTable.txt_CHAFF_FLARE))	-- txt_CHAFF_FLARE
            send(2012, string.format("%s", lCMSCTable.txt_JMR))	-- txt_JMR
            send(2013, string.format("%s", lCMSCTable.txt_MWS))	-- txt_MWS
        end
    else
        send(2011, " ")	-- txt_CHAFF_FLARE
        send(2012, " ")	-- txt_JMR
        send(2013, " ")	-- txt_MWS
    end

    -- CMSP
    -------------------------------------------------
    if mainPanelDevice:get_argument_value(364) > 0 then
        local lCMSP = PWDEV.Tools.getListIndicatorValue(7) or {}

        local lCMSPTable = {"","","",""}

        if lCMSP ~= nil and lCMSP.txt_UP ~= nil then
            lCMSP.txt_UP = lCMSP.txt_UP:gsub("  ", " ")
            lCMSP.txt_UP = lCMSP.txt_UP.." "
            lCMSPTable  = PWDEV.Tools.split(lCMSP.txt_UP, "%s")
        end

        send(2114, lCMSP.txt_UP or " ")
        send(2014,  string.format("%s", lCMSPTable[1]))
        send(2015,  string.format("%s", lCMSPTable[2]))
        send(2016,  string.format("%s", lCMSPTable[3]))
        send(2017,  string.format("%s", lCMSPTable[4]))
        send(2018,  string.format("%s", lCMSP.txt_DOWN1))
        send(2019,  string.format("%s", lCMSP.txt_DOWN2))
        send(2020,  string.format("%s", lCMSP.txt_DOWN3))
        send(2021,  string.format("%s", lCMSP.txt_DOWN4))
    else
        send(2014,  " ")
        send(2015,  " ")
        send(2016,  " ")
        send(2017,  " ")
        send(2018,  " ")
        send(2019,  " ")
        send(2020,  " ")
        send(2021,  " ")
    end

    -- CDU Data
    PWDEV.exportCDU()

    -- UHF
    send(2022,  getUHFPreset())
    send(2023,  getUHFFrequency())
    -- TACAN_KNB
    send(2024,  getTacanChannel())
    -- ILS
    send(2025,  getILSFrequency())

    getARC210()
end

-- Unicode UTF-16
function PWDEV.replaceSymbols(s)
	s = s:gsub(string.char(0xB0), "°") --DEGREE		"°"
	s = s:gsub(string.char(0xB1), "±") --INC_DEC		"±"
	s = s:gsub(string.char(0xA9), "ʘ") --INC_DEC		(Circle with Dot)
	-- s = s:gsub(string.char(0x3A), ":") --Colon			":"
	-- --s = s:gsub(":"              , "0x003A") --Colon			":"
	s = s:gsub(string.char(0xBB), "→") --Right Arrow 	"→"
	s = s:gsub(string.char(0xAB), "←") --Left Arrow 	"←"
	s = s:gsub(string.char(0xB6), "█") --Cursor		"█"
	s = s:gsub(string.char(0xA1), "࢐") --DATA_ENTRY	"⌷" "࢐"
	s = s:gsub(string.char(0xAE), "↕") --UpDown Arrow	"↕"
	-- --s = s:gsub("*"              , "*") -- Asterisk 	"*"
	return s
end

function PWDEV.preReplaceSymbols(s)
	s = s:gsub(string.char(26), string.char(0xBB)) -- BRANCH_L
	s = s:gsub(string.char(27), string.char(0xAB)) -- BRANCH_R
	s = s:gsub(string.char(18), string.char(0xAE)) -- ROTARY
	s = s:gsub(string.char(20), string.char(0xA1)) -- DATA_ENTRY
	s = s:gsub("©"            , string.char(0xA9)) -- SYS_ACTION
	s = s:gsub("°"            , string.char(0xB0)) -- DEGREE
	s = s:gsub("ю"            , string.char(0xB6)) -- FILLED
	s = s:gsub("я"            , string.char(0xB1)) -- INC_DEC
	return s
end

local cdu_replace_map = {
	[string.char(26)] = string.char(0xBB),
	[string.char(27)] = string.char(0xAB),
	[string.char(18)] = string.char(0xAE),
	[string.char(20)] = string.char(0xA1),
	["©"] = string.char(0xA9),
	["°"] = string.char(0xB0),
	["ю"] = string.char(0xB6),
	["я"] = string.char(0xB1),
}

local cdu_parent_map = {
	["WIND1"] = "WIND",
	["WIND2"] = "WIND",
	["WNDEDIT1"] = "WNDEDIT",
	["WNDEDIT2"] = "WNDEDIT",
}

local function get_cdu_page_name()
	local page = list_cockpit_params():match('CDU_PAGE:"([0-9A-Za-z_]+)"')
	if not page then
		return "EGI1"
	end
	local page_name = page:sub(5)
	return page_name
end

function PWDEV.exportCDU()
	local cdu = PWDEV.Tools.getListIndicatorValue(3) or {}

    local cdu_indicator_data = A10C_CDU

	local cdu_lines = {}
	local empty_line = "                        " -- 24 spaces
	cdu_lines[1] = empty_line
	cdu_lines[2] = empty_line
	cdu_lines[3] = empty_line
	cdu_lines[4] = empty_line
	cdu_lines[5] = empty_line
	cdu_lines[6] = empty_line
	cdu_lines[7] = empty_line
	cdu_lines[8] = empty_line
	cdu_lines[9] = empty_line
	cdu_lines[10] = empty_line
	if not cdu then
		send(2030, cdu_lines[1])
		send(2031, cdu_lines[2])
		send(2032, cdu_lines[3])
		send(2033, cdu_lines[4])
		send(2034, cdu_lines[5])
		send(2035, cdu_lines[6])
		send(2036, cdu_lines[7])
		send(2037, cdu_lines[8])
		send(2038, cdu_lines[9])
		send(2039, cdu_lines[10])
		return
	end

    local cursor_pos = 2
	if cdu.ScratchString then
		cursor_pos = cursor_pos + cdu.ScratchString:len()
	end
	cdu_indicator_data["Cursor"][1].x = cursor_pos

	cdu_lines = PWDEV.Displays.GetDisplayLines(cdu, 24, 10, cdu_indicator_data, get_cdu_page_name, cdu_replace_map, cdu_parent_map)

	cdu_lines[1] = PWDEV.replaceSymbols(cdu_lines[1])
	cdu_lines[2] = PWDEV.replaceSymbols(cdu_lines[2])
	cdu_lines[3] = PWDEV.replaceSymbols(cdu_lines[3])
	cdu_lines[4] = PWDEV.replaceSymbols(cdu_lines[4])
	cdu_lines[5] = PWDEV.replaceSymbols(cdu_lines[5])
	cdu_lines[6] = PWDEV.replaceSymbols(cdu_lines[6])
	cdu_lines[7] = PWDEV.replaceSymbols(cdu_lines[7])
	cdu_lines[8] = PWDEV.replaceSymbols(cdu_lines[8])
	cdu_lines[9] = PWDEV.replaceSymbols(cdu_lines[9])
	cdu_lines[10] = PWDEV.replaceSymbols(cdu_lines[10])

	send(2030, cdu_lines[1])
	send(2031, cdu_lines[2])
	send(2032, cdu_lines[3])
	send(2033, cdu_lines[4])
	send(2034, cdu_lines[5])
	send(2035, cdu_lines[6])
	send(2036, cdu_lines[7])
	send(2037, cdu_lines[8])
	send(2038, cdu_lines[9])
	send(2039, cdu_lines[10])
end