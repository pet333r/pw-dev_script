-- AH-64D Longbow

AH64D_EUFD = dofile(lfs.writedir()..[[Scripts\pw-dev_script\disp\AH64D_EUFD.lua]])

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- CPG MPD Left
    [94] = "%.1f",  -- DAY/NT/MONO knob
    -- CPG MPD Right
    [128] = "%.1f",  -- DAY/NT/MONO knob
    -- CPG TEDAC
    [154] = "%.1f",  -- DAY/NT/OFF knob
    [494] = "%d",    -- TADS Sensor Select Switch, FLIR/TV/DVO
    [510] = "%d",    -- Laser Tracker Mode Switch, A/O/M
    [507] = "%d",    -- Image Auto Tracker Polarity Switch, W/A/B

    -- CPG FIRE DET/EXTG
    [284] = "%d",  -- ENG 1 btn
    [285] = "%d",  -- ENG 1 cover
    [286] = "%d",  -- APU btn
    [287] = "%d",  -- APU cover
    [288] = "%d",  -- ENG 2 btn
    [289] = "%d",  -- ENG 2 cover
    -- [290] = "%d",  -- PRI btn
    [291] = "%d",  -- TEST -1/0-1
    -- [292] = "%d",  -- RES btn
    [441] = "%d",  -- ENG 1 FIRE light yellow
    [442] = "%d",  -- ENG 1 RDY light green
    [443] = "%d",  -- APU FIRE light yellow
    [444] = "%d",  -- APU RDY light green
    [445] = "%d",  -- ENG 2 FIRE light yellow
    [446] = "%d",  -- ENG 2 RDY light green
    [447] = "%d",  -- PRI DISCH light green
    [448] = "%d",  -- RES DISCH light green
    -- CPG ARMAMENT
    -- [293] = "%d",  -- ARMAMENT A/S btn
    -- [294] = "%d",  -- ARMAMENT GND ORIDE btn
    [438] = "%d",  -- A/S ARM light yellow
    [439] = "%d",  -- A/S SAFE light green
    [440] = "%d",  -- GND ORIDE ON light green


    [621] = "%.1f",  -- CPG Keyboard bright knob
    -- CPG EMERGENCY
    -- [358] = "%d",  -- GUARD btn
    -- [359] = "%d",  -- XPNDR btn
    [360] = "%d",  -- ZEROIZE
    -- [361] = "%d",  -- EMERG HYD btn
    [427] = "%d",  -- GUARD ON light green
    [428] = "%d",  -- XPNDR ON light green
    [429] = "%d",  -- EMERG HYD ON light green
    --
    [362] = "%d",  -- TAIL WHEEL
    [363] = "%d",  -- NVS MODE switch 1/0/-1
    [426] = "%d",  -- TAIL WHEEL UNLOCK light green
    -- CPG INTR LT
    [367] = "%.1f",  -- FLOOD knob
    -- CPG STORES JETTISON
    -- [368] = "%d",  -- L OUTBD btn
    -- [369] = "%d",  -- L INBD btn
    -- [370] = "%d",  -- R INBD btn
    -- [371] = "%d",  -- R OUTBD btn
    -- [372] = "%d",  -- L TIP btn
    -- [373] = "%d",  -- JETT btn
    -- [374] = "%d",  -- R TIP btn
    [430] = "%d",  -- L OUTBD ARM light green
    [431] = "%d",  -- L INDB ARM light green
    [432] = "%d",  -- R INBD ARM light green
    [433] = "%d",  -- R OUTBD ARM light green
    [434] = "%d",  -- L TIP light green
    [435] = "%d",  -- R TIP light green

    -- CPG COMM
    [380] = "%d",  -- SQL 1
    [381] = "%d",  -- SQL 2
    [382] = "%d",  -- SQL 3
    [383] = "%d",  -- SQL 4
    [384] = "%d",  -- SQL 5
    [387] = "%d",  -- ICS 1/0/-1
    -- [388] = "%d",  -- IDENT

    -- CPG WINDSHIELD WIPER
    [394] = "%d",  -- DEFOG
    [395] = "%.1f",  -- knob 0.1
    -- CPG PROCESSOR SELECT
    [396] = "%d",  -- button
    [399] = "%d",  -- switch SP1/AUTO/SP2 -1/0/1
    [436] = "%d",  -- SP1 light green
    [437] = "%d",  -- SP2 light green

    -- CPG MASTER WARN/CAUTION
    -- [805] = "%d",  -- MSTR WARN button
    -- [807] = "%d",  -- MSTR CAUT button
    [806] = "%d",  -- MSTR WARN light yellow
    [808] = "%d",  -- MSTR CAUT light green

------------------------------------------------------
    -- PLT MPD Left
    [26] = "%.1f",  -- DAY/NT/MONO knob
    -- PLT MPD Right
    [60] = "%.1f",  -- DAY/NT/MONO knob

    -- PLT FIRE DET/EXTG
    [295] = "%d",  -- ENG 1 btn
    [296] = "%d",  -- ENG 1 cover
    [297] = "%d",  -- APU btn
    [298] = "%d",  -- APU cover
    [299] = "%d",  -- ENG 2 btn
    [300] = "%d",  -- ENG 2 cover
    -- [301] = "%d",  -- PRI btn
    [302] = "%d",  -- TEST -1/0-1
    -- [303] = "%d",  -- RES btn
    [416] = "%d",  -- ENG 1 FIRE light yellow
    [417] = "%d",  -- ENG 1 RDY light green
    [418] = "%d",  -- APU FIRE light yellow
    [419] = "%d",  -- APU RDY light green
    [420] = "%d",  -- ENG 2 FIRE light yellow
    [421] = "%d",  -- ENG 2 RDY light green
    [422] = "%d",  -- PRI DISCH light green
    [423] = "%d",  -- RES DISCH light green

    -- PLT MASTER WARN/CAUTION
    -- [304] = "%d",  -- MASTER WARN btn
    -- [305] = "%d",  -- MASTER CAUT btn
    [424] = "%d",  -- MASTER WARN yellow
    [425] = "%d",  -- MASTER CAUT green

    -- PLT ARMAMENT
    -- [306] = "%d",  -- ARMAMENT A/S btn
    -- [307] = "%d",  -- ARMAMENT GND ORIDE btn
    [413] = "%d",  -- A/S ARM light yellow
    [414] = "%d",  -- A/S SAFE light green
    [415] = "%d",  -- GND ORIDE ON light green

    -- PLT Keyboard
    [316] = "%.1f",  -- PLT Keyboard bright knob
    -- 
    [308] = "%d",  -- TAIL WHEEL
    [309] = "%d",  -- NVS MODE switch 1/0/-1
    [402] = "%d",  -- TAIL WHEEL UNLOCK light green
    -- PLT EMERGENCY
    -- [310] = "%d",  -- GUARD btn
    -- [311] = "%d",  -- XPNDR btn
    [312] = "%d",  -- ZEROIZE
    -- [313] = "%d",  -- EMERG HYD
    [403] = "%d",  -- GUARD ON light green
    [404] = "%d",  -- XPNDR ON light green
    [405] = "%d",  -- EMERG HYD ON light green
    -- PLT POWER
    [406] = "%d",  -- APU ON light green
    -- PLT STORES JETTISON
    -- [319] = "%d",  -- L OUTBD btn
    -- [320] = "%d",  -- L INBD btn
    -- [321] = "%d",  -- R INBD btn
    -- [322] = "%d",  -- R OUTBD btn
    -- [323] = "%d",  -- L TIP btn
    -- [324] = "%d",  -- JETT btn
    -- [325] = "%d",  -- R TIP btn
    [407] = "%d",  -- L OUTBD ARM light green
    [408] = "%d",  -- L INDB ARM light green
    [409] = "%d",  -- R INBD ARM light green
    [410] = "%d",  -- R OUTBD ARM light green
    [411] = "%d",  -- L TIP light green
    [412] = "%d",  -- R TIP light green
    -- PLT EXT/INTR LT
    [326] = "%d",  -- NAV switch 1/0/-1
    [332] = "%d",  -- ANTI switch 1/0/-1

    -- PLT COMM
    [339] = "%d",  -- SQL 1
    [340] = "%d",  -- SQL 2
    [341] = "%d",  -- SQL 3
    [342] = "%d",  -- SQL 4
    [343] = "%d",  -- SQL 5
    [346] = "%d",  -- ICS 1/0/-1
    -- [347] = "%d",  -- IDENT

    [353] = "%d",  -- CHK OVSP 1/0/-1
    [354] = "%d",  -- TEST 1/0/-1
    [355] = "%d",  -- GEN RST -1/0/1
    -- PLT WINDSHIELD WIPER
    -- [356] = "%d",  -- DEFOG
    [357] = "%.1f",  -- knob 0.1
    -- PLT CMWS
    [610] = "%d",  -- PWR Switch
    [614] = "%d",  -- Flare Squibs Switch ARM/SAFE
    [615] = "%d",  -- Mode Switch CMWS/NAV
    [616] = "%d",  -- Operation Switch BYPASS/AUTO
    [617] = "%d",  -- Flare Jettison Switch Cover
    [618] = "%d",  -- Flare Jettison Switch
}

PWDEV.ConfigArguments =
{
    -- CPG
    -- MPD L
    [86] = "%.1f",  -- BRT knob
    [87] = "%.1f",  -- VID knob
    -- MPD R
    [120] = "%.1f",  -- BRT knob
    [121] = "%.1f",  -- VID knob
    -- TEDAC
    [148] = "%.1f",  -- GAIN knob
    [149] = "%.1f",  -- LEV knob
    -- EUFD
    [265] = "%.1f",  -- EUFD BRT knob
    -- INTR LT
    [365] = "%.1f",  -- SIGNAL knob
    [366] = "%.1f",  -- PRIMARY knob
    -- COMM
    [375] = "%.1f",  -- VHF knob
    [376] = "%.1f",  -- UHF knob
    [377] = "%.1f",  -- FM1 knob
    [378] = "%.1f",  -- FM2 knob
    [379] = "%.1f",  -- HF knob
    [385] = "%.1f",  -- MASTER knob
    [386] = "%.1f",  -- SENS knob
    [389] = "%.1f",  -- AUX IFF knob
    [390] = "%.1f",  -- AUX RLWR knob
    [391] = "%.1f",  -- AUX ATA knob
    [392] = "%.1f",  -- AUX VCR knob
    [393] = "%.1f",  -- AUX ADF knob

    -- PLT
    -- MPD L
    [18] = "%.1f",  -- BRT knob
    [19] = "%.1f",  -- VID knob
    -- MPD R
    [52] = "%.1f",  -- BRT knob
    [53] = "%.1f",  -- VID knob
    -- EUFD
    [273] = "%.1f",  -- EUFD BRT knob
    -- EXT/INTR LT
    [327] = "%.1f",  -- SIGNAL knob
    [328] = "%.1f",  -- PRIMARY knob
    [329] = "%.1f",  -- FORM knob
    [330] = "%.1f",  -- FLOOD knob
    [331] = "%.1f",  -- STBY INST knob
    -- COMM
    [334] = "%.1f",  -- VHF knob
    [335] = "%.1f",  -- UHF knob
    [336] = "%.1f",  -- FM1 knob
    [337] = "%.1f",  -- FM2 knob
    [338] = "%.1f",  -- HF knob
    [344] = "%.1f",  -- MASTER knob
    [345] = "%.1f",  -- SENS knob
    [348] = "%.1f",  -- AUX IFF knob
    [349] = "%.1f",  -- AUX RLWR knob
    [350] = "%.1f",  -- AUX ATA knob
    [351] = "%.1f",  -- AUX VCR knob
    [352] = "%.1f",  -- AUX ADF knob
    -- CMWS
    [611] = "%.1f", -- Audio Volume Knob
    [612] = "%.1f", -- Lamp Knob
}
local function replaceSymbols(s)
	s = s:gsub(" ", "a")
	s = s:gsub("=", "'")
	return s
end

local plt_EUFD = {}
local cpg_EUFD = {}

-- Enhanced Up-Front Display
local function CreateEUFD()
    local eufd_indicator_data = AH64D_EUFD
    local LINE_LEN = 56

    local function parse_eufd(indicator_id)
        local dcs_eufd = PWDEV.Tools.getListIndicatorValue(indicator_id)
        -- todo: return different page based on the actual page
        return PWDEV.Displays.GetDisplayLines(dcs_eufd, LINE_LEN, 14, eufd_indicator_data, function() return "MAIN" end)
    end

    cpg_EUFD = parse_eufd(19)
    plt_EUFD = parse_eufd(18)
end

--CMWS Display
local flare_letter = ""
local flare_count = ""
local chaff_letter = ""
local chaff_count = ""
local bit_line_1 = ""
local bit_line_2 = ""
local d_light_bright = 0
local r_light_bright = 0

local fwd_left_sector_brt = 0
local aft_left_sector_brt = 0
local aft_right_sector_brt = 0
local fwd_right_sector_brt = 0

local cmws_page = ""

local function int_for_flag(flag)
	if flag ~= nil then return 1 else return 0 end
end

function CreateCMWS()
	local cmws = PWDEV.Tools.getListIndicatorValue(25)

	flare_letter = " "
	flare_count = "   "
	chaff_letter = " "
	chaff_count = "   "
	bit_line_1 = "    "
	bit_line_2 = "    "
	d_light_bright = 0
	r_light_bright = 0
	fwd_left_sector_brt = 0
	aft_left_sector_brt = 0
	aft_right_sector_brt = 0
	fwd_right_sector_brt = 0
	cmws_page = "NONE"

	if cmws == nil then
        send(2031, bit_line_1)
        send(2032, bit_line_2)

        send(2033, d_light_bright)
        send(2034, r_light_bright)
        send(2035, fwd_left_sector_brt)
        send(2036, aft_left_sector_brt)
        send(2037, aft_right_sector_brt)
        send(2038, fwd_right_sector_brt)
        return
    end

	local is_test_page = cmws["#83#"] == nil or cmws["#84#"] == nil or cmws["#85#"] == nil or cmws["#86#"] == nil

	if is_test_page then
		cmws_page = "TEST"
		bit_line_1 = coerce_nil_to_string(cmws["#42#"])
		bit_line_2 = coerce_nil_to_string(cmws["#43#"])

        send(2031, bit_line_1)
        send(2032, bit_line_2)
	else
		cmws_page = "MAIN"
		flare_letter = coerce_nil_to_string(cmws["#83#"])
		chaff_letter = coerce_nil_to_string(cmws["#84#"])
		flare_count = coerce_nil_to_string(cmws["#85#"])
		chaff_count = coerce_nil_to_string(cmws["#86#"])
		d_light_bright = int_for_flag(cmws["#88#"])
		r_light_bright = int_for_flag(cmws["#87#"])

		fwd_left_sector_brt = int_for_flag(cmws["#8#"])
		aft_left_sector_brt = int_for_flag(cmws["#7#"])
		aft_right_sector_brt = int_for_flag(cmws["#6#"])
		fwd_right_sector_brt = int_for_flag(cmws["#9#"])

        send(2031, flare_letter .. flare_count)
        send(2032, chaff_letter .. chaff_count)
	end

    send(2033, d_light_bright)
    send(2034, r_light_bright)
    send(2035, fwd_left_sector_brt)
    send(2036, aft_left_sector_brt)
    send(2037, aft_right_sector_brt)
    send(2038, fwd_right_sector_brt)
end


function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
    CreateCMWS()
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    CreateEUFD()

    -- PLT
    send(2011, replaceSymbols(plt_EUFD[1]))
    send(2012, replaceSymbols(plt_EUFD[2]))
    send(2013, replaceSymbols(plt_EUFD[3]))
    send(2014, replaceSymbols(plt_EUFD[4]))
    send(2015, replaceSymbols(plt_EUFD[5]))
    send(2016, replaceSymbols(plt_EUFD[6]))
    send(2017, replaceSymbols(plt_EUFD[7]))
    send(2018, replaceSymbols(plt_EUFD[8]))
    send(2019, replaceSymbols(plt_EUFD[9]))
    send(2020, replaceSymbols(plt_EUFD[10]))
    send(2021, replaceSymbols(plt_EUFD[11]))
    send(2022, replaceSymbols(plt_EUFD[12]))
    send(2023, replaceSymbols(plt_EUFD[13]))
    send(2024, replaceSymbols(plt_EUFD[14]))
    -- CPG
    send(2111, replaceSymbols(cpg_EUFD[1]))
    send(2112, replaceSymbols(cpg_EUFD[2]))
    send(2113, replaceSymbols(cpg_EUFD[3]))
    send(2114, replaceSymbols(cpg_EUFD[4]))
    send(2115, replaceSymbols(cpg_EUFD[5]))
    send(2116, replaceSymbols(cpg_EUFD[6]))
    send(2117, replaceSymbols(cpg_EUFD[7]))
    send(2118, replaceSymbols(cpg_EUFD[8]))
    send(2119, replaceSymbols(cpg_EUFD[9]))
    send(2120, replaceSymbols(cpg_EUFD[10]))
    send(2121, replaceSymbols(cpg_EUFD[11]))
    send(2122, replaceSymbols(cpg_EUFD[12]))
    send(2123, replaceSymbols(cpg_EUFD[13]))
    send(2124, replaceSymbols(cpg_EUFD[14]))

    -- PLT
    send(2001, PWDEV.Tools.getListIndicatorValueByNameLeft(16, "Standby_text", 22))

    -- CPG
    send(2101, PWDEV.Tools.getListIndicatorValueByNameLeft(15, "Standby_text", 22))
end