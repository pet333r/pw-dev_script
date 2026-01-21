 -- F-16C_50
F16C_DED = dofile(lfs.writedir()..[[Scripts\pw-dev_script\disp\F16C_DED.lua]])
local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	[13] = "%d",		-- flag LOC
	[14] = "%d",		-- flag AUX
	[25] = "%d",		-- flag OFF
	[61] = "%d",		-- PNEU ind
	-- CMDS
	[365] = "%d", 	-- O1 Expendable Category Switch, ON/OFF
	[366] = "%d", 	-- O2 Expendable Category Switch, ON/OFF
	[367] = "%d", 	-- CH Expendable Category Switch, ON/OFF
	[368] = "%d", 	-- FL Expendable Category Switch, ON/OFF
	[369] = "%d", 	-- LDG handle red light
	[375] = "%d", 	-- RWR Source Switch, ON/OFF
	[374] = "%d", 	-- JMR Source Switch, ON/OFF
	[373] = "%d", 	-- MWS Source Switch, ON/OFF
	[371] = "%d", 	-- Jettison Switch, JETT/OFF
	[377] = "%.1f", -- PROGRAM Knob, BIT/1/2/3/4
	[378] = "%.1f", -- MODE Knob, OFF/STBY/MAN/SEMI/AUTO/BYP
	[370] = "%d", 	-- NO GO Light (green)
	[372] = "%d", 	-- GO Light (green)
	[376] = "%d", 	-- DISPENSE Light (green)
	[379] = "%d", 	-- RDY Light (green)

	[430] = "%.1f", -- COMM 1 Power Knob
	[431] = "%.1f", -- COMM 2 Power Knob 
	[432] = "%.1f", -- SECURE VOICE Knob
	[433] = "%.1f", -- MSL Tone Knob
	[434] = "%.1f", -- COMM 1 (UHF) Mode Knob
	[435] = "%.1f", -- COMM 2 (VHF) Mode Knob
	[436] = "%.1f", -- TF Tone Knob
	[437] = "%.1f", -- THREAT Tone Knob

	[440] = "%.1f", -- INTERCOM Knob
	[441] = "%.1f", -- TACAN Knob
	[442] = "%.1f", -- ILS Power Knob
	[443] = "%d", 	-- HOT MIC CIPHER Switch

	-- SNSR
	[670] = "%d", 	-- LEFT HDPT Switch
	[671] = "%d", 	-- RIGHT HDPT Switch
	[672] = "%d", 	-- FCR Switch
	[673] = "%d", -- RDR ALT Switch

	--HUD Remote Control Panel
	[675] = "%d", -- Scales Switch, VV/VAH / VAH / OFF
	[676] = "%d", -- Flightpath Marker Switch, ATT/FPM / FPM / OFF
	[677] = "%d", -- DED/PFLD Data Switch, DED / PFL / OFF
	[678] = "%d", -- Depressible Reticle Switch, STBY / PRI / OFF
	[679] = "%d", -- Velocity Switch, CAS / TAS / GND SPD
	[680] = "%d", -- Altitude Switch, RADAR / BARO / AUTO
	[681] = "%d", -- Brightness Control Switch, DAY / AUTO BRT / NIGHT
	[682] = "%d", -- TEST Switch, STEP / ON / OFF

	-- LIGHTING
	[691] = "%d", -- MAL & IND LTS Switch, BRT/Center/DIM

	[97] = "%d",	-- ADV MODE Switch
	[102] = "%d",	-- ECM green light
	[103] = "%d",	-- LASER ARM Switch
	[105] = "%d",	-- MASTER ARM Switch
	[106] = "%d",	-- ADV MODE ACTIVE green
	[107] = "%d",	-- ADV MODE STBY orange
	[108] = "%d",	-- Autopilot ROLL Switch

	[110] = "%d",	-- Warning, Caution and IndicatorLights","AoA Light up (red)
	[111] = "%d",	-- Warning, Caution and IndicatorLights","AoA Light up (green)
	[112] = "%d",	-- Warning, Caution and IndicatorLights","AoA Light up (yellow)

	[113] = "%d",	-- RDY Light (blue)
	[114] = "%d",	-- AR NWS Light (green)
	[115] = "%d",	-- DISC Light (red)

	[117] = "%d", -- MASTER CAUTION Light (yellow)
	[119] = "%d", -- Edge - Light (red)
	[121] = "%d", -- TF FAIL Light (red)
	[126] = "%d", -- ENG FIRE Light (red)
	[127] = "%d", -- ENGINE Light (red)
	[129] = "%d", -- HYD_OIL_PRESS Light (red)
	[130] = "%d", -- FLCS Light (red)
	[131] = "%d", -- DBU ON Light (red)
	[133] = "%d", -- TO LDG CONFIG Light (red)
	[134] = "%d", -- CANOPY Light (red)
	[135] = "%d", -- OXY LOW Light (red)

	[186] = "%d",	-- ICP Drift CO Switch
	[189] = "%d",	-- ICP FLIR GAIN/LEVEL Switch, GAIN/LVL/AUTO	-1 / 0 / 1
	--	[183] = "%d"

	-- HMCS
	[392] = "%.1f", -- HMCS SYMBOLOGY INT Knob

	[401] = "%.1f", -- RWR POWER Button

	--RWR button lights
	[396] = "%d", -- RWR SEARCH Light (green)
	[398] = "%d", -- RWR ACTIVITY Light (yellow)
	[423] = "%d", -- RWR ACT POWER Light (green)
	[400] = "%d", -- RWR ALT LOW Light (yellow)
	[424] = "%d", -- RWR ALT Light (green)
	[402] = "%d", -- RWR POWER Light (green)
	[142] = "%d", -- RWR HANDOFF UP Light (green)
	[136] = "%d", -- RWR HANDOFF H Light (green)
	[144] = "%d", -- RWR MSL_LAUNCH Light (red)
	[146] = "%d", -- RWR MODE PRI Light (green)
	[137] = "%d", -- RWR MODE OPEN Light (green)
	[148] = "%d", -- RWR SHIP UNKNOWN Light (green)
	[150] = "%d", -- RWR SYSTEST Light (green)
	[152] = "%d", -- RWR TGTSEP UP Light (green)
	[153] = "%d", -- RWR U Light (green)
	[138] = "%d", -- RWR TGTSEP DOWN Light (green)

	[350] = "%d", -- LDG NOSE green
	[351] = "%d", -- LDG LEFT green
	[352] = "%d", -- LDG right green
	[354] = "%d", -- HOOK Switch
	[355] = "%d", -- GND JETT ENABLE Switch
	[356] = "%d", -- BRAKES Channel Switch
	[357] = "%d", -- ANTI-SKID Switch
	[358] = "%d", -- STORES CONFIG Switch
	[360] = "%d", -- LANDING TAXI LIGHTS Switch,
	[362] = "%d", -- LG Handle
	[361] = "%d", -- DN LOCK REL Button - Push to reset
	[363] = "%d", -- SPEED BRAKE ind

	-- UHF
	[410] = "%.2f", -- UHF Preset Channel Selector
	[411] = "%.1f", -- UHF 100MHz Selector
	[412] = "%.1f", -- UHF 10MHz Selector
	[413] = "%.1f", -- UHF 1MHz Selector
	[414] = "%.1f", -- UHF 0.1MHz Selector
	[415] = "%.1f", -- UHF 0.25MHz Selector
	[416] = "%.1f",   -- Frequency Mode Dial MNL/PRESET/GRD
	[417] = "%.1f", -- UHF Function Dial OFF/MAIN/BOTH/ADF
	[418] = "%d",   -- UHF Tone Button
	[419] = "%d",   -- Squelch Switch

	-- ECM
	[460] = "%d", -- btn 1
	[465] = "%d", -- btn 2
	[470] = "%d", -- btn 3
	[475] = "%d", -- btn 4
	[480] = "%d", -- btn 5
	[485] = "%d", -- btn
	[490] = "%d", -- btn FRM
	[495] = "%d", -- btn SPL
	[455] = "%d", -- switch OPR/STBY/OFF
	[457] = "%d", -- switch 123/XMIT
	[461] = "%.1f", -- Button 1 S Light (yellow)
	[462] = "%.1f", -- Button 1 A Light (green)
	[463] = "%.1f", -- Button 1 F Light (red)
	[464] = "%.1f", -- Button 1 T Light (blue)
	[466] = "%.1f", -- Button 2 S Light (yellow)
	[467] = "%.1f", -- Button 2 A Light (green)
	[468] = "%.1f", -- Button 2 F Light (red)
	[469] = "%.1f", -- Button 2 T Light (blue)
	[471] = "%.1f", -- Button 3 S Light (yellow)
	[472] = "%.1f", -- Button 3 A Light (green)
	[473] = "%.1f", -- Button 3 F Light (red)
	[474] = "%.1f", -- Button 3 T Light (blue)
	[476] = "%.1f", -- Button 4 S Light (yellow)
	[477] = "%.1f", -- Button 4 A Light (green)
	[478] = "%.1f", -- Button 4 F Light (red)
	[479] = "%.1f", -- Button 4 T Light (blue)
	[481] = "%.1f", -- Button 5 S Light (yellow)
	[482] = "%.1f", -- Button 5 A Light (green)
	[483] = "%.1f", -- Button 5 F Light (red)
	[484] = "%.1f", -- Button 5 T Light (blue)
	[486] = "%.1f", -- Button S Light (yellow)
	[487] = "%.1f", -- Button A Light (green)
	[488] = "%.1f", -- Button F Light (red)
	[489] = "%.1f", -- Button T Light (blue)
	[491] = "%.1f", -- Button FRM S Light (yellow)
	[492] = "%.1f", -- Button FRM A Light (green)
	[493] = "%.1f", -- Button FRM F Light (red)
	[494] = "%.1f", -- Button FRM T Light (blue)
	[496] = "%.1f", -- Button SPL S Light (yellow)
	[497] = "%.1f", -- Button SPL A Light (green)
	[498] = "%.1f", -- Button SPL F Light (red)
	[499] = "%.1f", -- Button SPL T Light (blue)

	-- EXT LIGHTING
	[531] = "%.1f", -- ANTI-COLL Knob, OFF/1/2/3/4/A/B/C
	[532] = "%d", -- FLASH STEADY Light Switch, FLASH/STEADY
	[533] = "%d", -- WING/TAIL Light Switch, BRT/OFF/DIM
	[534] = "%d", -- FUSELAGE Light Switch, BRT/OFF/DIM
	[536] = "%.1f", -- FORM Light Knob

	--Caution Light Panel
	[630] = "%d", -- FLCS FAULT Light (yellow)
	[631] = "%d", -- ENGINE FAULT Light (yellow)
	[632] = "%d", -- AVIONICS FAULT Light (yellow)
	[633] = "%d", -- SEAT NOT ARMED Light (yellow)
	[634] = "%d", -- ELEC SYS Light (yellow)
	[635] = "%d", -- SEC Light (yellow)
	[636] = "%d", -- EQUIP HOT Light (yellow)
	[637] = "%d", -- NWS FAIL Light (yellow)
	[638] = "%d", -- PROBE HEAT Light (yellow)
	[639] = "%d", -- FUEL OIL HOT Light (yellow)
	[640] = "%d", -- RADAR ALT Light (yellow)
	[641] = "%d", -- ANTI SKID Light (yellow)
	[642] = "%d", -- CADC Light (yellow)
	[643] = "%d", -- INLET ICING Light (yellow)
	[644] = "%d", -- IFF Light (yellow)
	[645] = "%d", -- HOOK Light (yellow)
	[646] = "%d", -- STORES CONFIG Light (yellow)
	[647] = "%d", -- OVERHEAT Light (yellow)
	[648] = "%d", -- NUCLEAR Light (yellow)
	[649] = "%d", -- OBOGS Light (yellow)
	[650] = "%d", -- ATF NOT ENGAGED Light (yellow)
	[651] = "%d", -- EEC Light (yellow)
	[652] = "%d", -- 1. Caution - Light (yellow)
	[653] = "%d", -- CABIN PRESS Light (yellow)
	[654] = "%d", -- FWD FUEL LOW Light (yellow)
	[655] = "%d", -- BUC Light (yellow)
	[656] = "%d", -- 2. Caution - Light (yellow)
	[657] = "%d", -- 3. Caution - Light (yellow)
	[658] = "%d", -- AFT FUEL LOW Light (yellow)
	[659] = "%d", -- 4. Caution - Light (yellow)
	[660] = "%d", -- 5. Caution - Light (yellow)
	[661] = "%d", -- 6. Caution - Light  (yellow)

	-- AVIONICS POWER
	[715] = "%d", -- MMC Switch, MMC/OFF
	[716] = "%d", -- ST STA Switch, ST STA/OFF
	[717] = "%d", -- MFD Switch, MFD/OFF
	[718] = "%d", -- UFC Switch, UFC/OFF
	[722] = "%d", -- MAP Switch, MAP/OFF
	[719] = "%.1f", -- INS Knob, OFF/STOR HDG/NORM/NAV/CAL/INFLT ALIGN/ATT
	[720] = "%d", -- GPS Switch, GPS/OFF
	[721] = "%d", -- DL Switch, DL/OFF
	[723] = "%.1f", -- MIDS LVT Knob, ZERO/OFF/ON
}
PWDEV.ConfigArguments =
{
	-- UHF
	[420] = "%.1f", -- UHF Volume Control

	-- EXT LIGHTING
	[535] = "%.1f", -- FORM Light Knob
	[537] = "%.1f", -- AERIAL REFUELING Light Knob

	-- LIGHTING
	[685] = "%.1f", -- PRIMARY CONSOLES BRT Knob
	[686] = "%.1f", -- PRIMARY INST PNL BRT Knob
	[687] = "%.1f", -- PRIMARY DATA ENTRY DISPLAY BRT Knob
	[688] = "%.1f", -- FLOOD CONSOLES BRT Knob
	[690] = "%.1f", -- FLOOD INST PNL BRT Knob
}

-- PFLD Layout Information ------------------------------------------------------
local PFLDLayout_l1={}
local PFLDLayout_l2={}
local PFLDLayout_l3={}
local PFLDLayout_l4={}
local PFLDLayout_l5={}

PFLDLayout_l1["FLCS Label"] = {2,4}
PFLDLayout_l1["ENG Label"] = {9,3}
PFLDLayout_l1["AV Label"] = {18,2}

PFLDLayout_l2["Fault 1 Warning Indicator Lhs"] = {2,1}
PFLDLayout_l2["Fault 1 Warning Indicator Rhs"] = {19,1}
PFLDLayout_l2["Fault 1 Subsystem"] = {3,4}
PFLDLayout_l2["Fault 1 Function"] = {9,4}
PFLDLayout_l2["Fault 1 Severity"] = {15,4}

PFLDLayout_l3["Fault 2 Warning Indicator Lhs"] = {2,1}
PFLDLayout_l3["Fault 2 Warning Indicator Rhs"] = {19,1}
PFLDLayout_l3["Fault 2 Subsystem"] = {3,4}
PFLDLayout_l3["Fault 2 Function"] = {9,4}
PFLDLayout_l3["Fault 2 Severity"] = {15,4}

PFLDLayout_l4["Fault 3 Warning Indicator Lhs"] = {2,1}
PFLDLayout_l4["Fault 3 Warning Indicator Rhs"] = {19,1}
PFLDLayout_l4["Fault 3 Subsystem"] = {3,4}
PFLDLayout_l4["Fault 3 Function"] = {9,4}
PFLDLayout_l4["Fault 3 Severity"] = {15,4}

PFLDLayout_l5["More Fault Indicator Lhs"] = {1,1}
PFLDLayout_l5["More Fault Indicator Rhs"] = {20,1}

PFLDLayout_l4["Page Label"] = {20,1}
PFLDLayout_l4["Page Index"] = {21,2}

PFLDLayout = {PFLDLayout_l1, PFLDLayout_l2, PFLDLayout_l3, PFLDLayout_l4, PFLDLayout_l5}

-- PFLD Display Main Function -----------------------------------------------
local function buildPFLDLine(line)
	-- Get Layout Information for line being built
	local PFLDLayoutLine = PFLDLayout[line]
	-- Get Exported PFLD Objects
	local PFLD_fields = PWDEV.Tools.getListIndicatorValue(7) or {}
	local layout
	local label
	local value
	local dataLine ="                         "

	--Loop through Exported PFLD Objects
	for k,v in pairs(PFLD_fields) do
		label = k
		--Get layout data associated with current key
		layout = PFLDLayoutLine[label:gsub("_inv", "", 1):gsub("_lhs", "_both", 1)]
		if layout ~= nil then
			--If layout value 6 is present then use this value to override the value returned from DCS
			if layout[6] ~= nil then
				value = layout[6]
			else
				value = v
			end

			dataLine = PWDEV.Tools.mergeString(dataLine, value, layout[1])

			if layout[3] ~= nil and layout[3] > 0 then
				dataLine = PWDEV.Tools.mergeString(dataLine, value, layout[3])
			end
		end
	end

    return dataLine
end

OR, XOR, AND = 1, 3, 4

local lastSentValue = nil
local step = 0.003  -- możesz zmienić na dowolny krok

function sendAltitude(argument, lastValue)
    local valStr = PWDEV.Tools.GetArgumentsValue(argument, "%.3f")
    local val = tonumber(valStr)
    if val == nil then return end

    if lastValue == nil or math.abs(val - lastValue) >= step then
        send(argument, valStr)
        lastValue = val
    end

	return lastValue
end


-- Unicode UTF-16
function PWDEV.replaceSymbols(s)
	s = s:gsub("a", "¦") -- INC_DEC		"±"
	s = s:gsub("o", "°") -- DEGREE		"°"
	s = s:gsub("d", "È") -- arrow down
	s = s:gsub("u", "Ů") -- arrow up
	return s
end

local DED_LINE_LENGTH = 24
local ded_lines = { "", "", "", "", "" }
local ded_formats = { "", "", "", "", "" }

--- Guesses the current DED page. This is the best we can do, as the DED page name isn't actually exposed anywehre.
--- @param ded { [string|integer]: string } the actual DED data
--- @param reference { [string]: TextDisplayItem[] } the reference used to determine which strings are shown where
--- @return string page_name the name of the current DED page
local function guess_ded_page_name(ded, reference)
	for key, _ in pairs(ded) do
		local ref = reference[key]

		-- first, find a control that only has one variation
		if ref ~= nil and #ref == 1 then
			local pages = ref[1].pages
			-- then, ensure that control only occurs on one page
			if pages ~= nil and #pages == 1 then
				return pages[1] -- if so, this must be the right page
			end
		end
	end

	return ""
end

local function GetDedData()
	local ded = PWDEV.Tools.parse_indication(6)

	local display_page = guess_ded_page_name(ded, F16C_DED)
	ded_lines, ded_formats = PWDEV.Displays.GetDisplayLinesWithColor(ded, DED_LINE_LENGTH, 5, F16C_DED, display_page, {}, nil, false)
end

local function get_UHF_CHAN()
    local ind = PWDEV.Tools.getListIndicatorValue(10)
    if ind == nil then return "  " end
    return ind["txtPresetChannel"]
end

local function get_UHF_FREQUENCY()
    local UHF = PWDEV.Tools.getListIndicatorValue(11)
    if UHF and UHF.txtFreqStatus then
        local UHF_Freq = UHF.txtFreqStatus
        local UHF_dot =  UHF.txtDot
        return UHF_Freq:sub(1,3)..UHF_dot..UHF_Freq:sub(4,6)
    else
        return "       "
    end
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
	GetDedData()

	-- DED Display Lines
	send(2101, PWDEV.replaceSymbols(ded_lines[1]) .. ded_formats[1])
	send(2102, PWDEV.replaceSymbols(ded_lines[2]) .. ded_formats[2])
	send(2103, PWDEV.replaceSymbols(ded_lines[3]) .. ded_formats[3])
	send(2104, PWDEV.replaceSymbols(ded_lines[4]) .. ded_formats[4])
	send(2105, PWDEV.replaceSymbols(ded_lines[5]) .. ded_formats[5])

	-- PFLD Display Lines
	send(2106, PWDEV.replaceSymbols(buildPFLDLine(1)))
	send(2107, PWDEV.replaceSymbols(buildPFLDLine(2)))
	send(2108, PWDEV.replaceSymbols(buildPFLDLine(3)))
	send(2109, PWDEV.replaceSymbols(buildPFLDLine(4)))
	send(2110, PWDEV.replaceSymbols(buildPFLDLine(5)))

	-- UHF
	send(2305, get_UHF_CHAN())
	send(2306, get_UHF_FREQUENCY())

	-- CMDS
	local cmds = PWDEV.Tools.getListIndicatorValue(16) or {}
	local CMDS_O1_Amount = "    "
	local CMDS_O2_Amount = "    "
	local CMDS_CH_Amount = "    "
	local CMDS_FL_Amount = "    "

	CMDS_O1_Amount = coerce_nil_to_string(cmds.CMDS_O1_Amount)
	CMDS_O2_Amount = coerce_nil_to_string(cmds.CMDS_O2_Amount)
	CMDS_CH_Amount = coerce_nil_to_string(cmds.CMDS_CH_Amount)
	CMDS_FL_Amount = coerce_nil_to_string(cmds.CMDS_FL_Amount)

	send(2301, CMDS_O1_Amount)
	send(2302, CMDS_O2_Amount)
	send(2303, CMDS_CH_Amount)
	send(2304, CMDS_FL_Amount)

	-- COMMS
	local comm = PWDEV.Tools.getListIndicatorValue(12) or {}

	send(2801, comm.txtCh12)
	send(2802, comm.txtCh13)
	send(2803, comm.txtCh14)
	send(2804, comm.txtCh15)
	send(2805, comm.txtCh16)
	send(2806, comm.txtCh17)
	send(2807, comm.txtCh21)
	send(2808, comm.txtCh22)
	send(2809, comm.txtCh23)
	send(2810, comm.txtCh24)
	send(2811, comm.txtCh25)
	send(2812, comm.txtCh26)
	send(2813, comm.txtCh27)
	send(2814, comm.txtCh31)
	send(2815, comm.txtCh32)
	send(2816, comm.txtCh33)
	send(2817, comm.txtCh34)
	send(2818, comm.txtCh35)
	send(2819, comm.txtCh36)
	send(2820, comm.txtCh37)
    send(2501, PWDEV.Tools.GetArgumentsString({52,53,54}))
    send(2502, PWDEV.Tools.GetArgumentsString({56,57,58,59}))
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end