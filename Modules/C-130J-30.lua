-- C-130J

C130J_AMU = dofile(lfs.writedir()..[[Scripts\pw-dev_script\disp\C130J_AMU.lua]])
C130J_CNI = dofile(lfs.writedir()..[[Scripts\pw-dev_script\disp\C130J_CNI.lua]])

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	[30] = "%d", -- Left Landing Light Motor Switch
	[31] = "%d", -- Right Landing Light Motor Switch
	[32] = "%d", -- Left Landing Light Switch
	[33] = "%d", -- Right Landing Light Switch
	[34] = "%d", -- Taxi Lights Switch
	[35] = "%d", -- Wingtip Taxi Lights Switch

	[37] = "%d", -- Anti-Skid Switch

	-- DEFENSIVE SYSTEMS
	[59] = "%d", -- CMS Jettison Switch Guard
	[60] = "%d", -- CMS Jettison Switch
	[61] = "%d", -- Defensive Systems Master Switch
	[62] = "%d", -- ECM Master Switch
	[63] = "%d", -- IRCM Master Switch
	[64] = "%.1f", -- MAN PRGMS Switch
	[74] = "%.2f", -- CMDS Mode Selector
	-- AERIAL DELIVERY
	[76] = "%d", -- Chute Release Button Cover
	[78] = "%d", -- Cargo Bay Alarm Switch Guard
	[79] = "%d", -- Cargo Bay Alarm Switch
	[474] = "%.1f", -- Computer Drop Switch
	[478] = "%d", -- Air Deflector Control Switch
	[479] = "%.1f", -- Ramp/Door Control Switch

	[107] = "%.1f", -- Pilot Baro Set Knob
	[108] = "%.1f", -- Pilot Altitude Alerter Set Knob
	[109] = "%.1f", -- Pilot Reference Set Knob
	[110] = "%.1f", -- Pilot Reference Select Switch

	[126] = "%d", -- Landing Gear Handle

	[310] = "%.2f", -- Engine 1 Start Switch
	[311] = "%.2f", -- Engine 2 Start Switch
	[312] = "%.2f", -- Engine 3 Start Switch
	[313] = "%.2f", -- Engine 4 Start Switch
	[314] = "%.1f", -- Engine 1 Fire Handle
	[315] = "%.1f", -- Engine 1 Fire Handle
	[316] = "%.1f", -- Engine 2 Fire Handle
	[317] = "%.1f", -- Engine 2 Fire Handle
	[318] = "%.1f", -- Engine 3 Fire Handle
	[319] = "%.1f", -- Engine 3 Fire Handle
	[320] = "%.1f", -- Engine 4 Fire Handle
	[321] = "%.1f", -- Engine 4 Fire Handle
	--FADEC
	[327] = "%d", -- ATCS Switch Guard
	[328] = "%d", -- Engine 1 FADEC Switch Guard
	[329] = "%d", -- Engine 2 FADEC Switch Guard
	[330] = "%d", -- Engine 3 FADEC Switch Guard
	[331] = "%d", -- Engine 4 FADEC Switch Guard
	[372] = "%d", -- Propeller 1 Control Switch
	[373] = "%d", -- Propeller 2 Control Switch
	[374] = "%d", -- Propeller 3 Control Switch
	[375] = "%d", -- Propeller 4 Control Switch
	[412] = "%d", -- Engine 1 FADEC Switch
	[413] = "%d", -- Engine 2 FADEC Switch
	[414] = "%d", -- Engine 3 FADEC Switch
	[415] = "%d", -- Engine 4 FADEC Switch
	[416] = "%d", -- ATCS Switch
	-- FUEL
	[332] = "%d", -- Left Fuel Dump Switch Guard
	[333] = "%d", -- Right Fuel Dump Switch Guard
	[1338] = "%d", -- Left Fuel Dump Switch
	[1339] = "%d", -- Right Fuel Dump Switch
	[356] = "%d", -- Left Auxiliary Tank Transfer Pump Selector
	[357] = "%d", -- Main Tank 1 Transfer Pump Selector
	[358] = "%d", -- Main Tank 2 Transfer Pump Selector
	[359] = "%d", -- Left Auxiliary Tank Transfer Pump Selector
	[360] = "%d", -- Crosship Separation Valve Switch
	[361] = "%d", -- Right External Tank Transfer Pump Selector
	[362] = "%d", -- SPR Valve Switch
	[363] = "%d", -- Main Tank 3 Transfer Pump Selector
	[364] = "%d", -- Main Tank 4 Transfer Pump Selector
	[365] = "%d", -- Right External Tank Transfer Pump Selector
	[366] = "%d", -- Engine 1 Crossfeed Valve Switch
	[367] = "%d", -- Engine 2 Crossfeed Valve Switch
	[368] = "%d", -- Engine 3 Crossfeed Valve Switch
	[369] = "%d", -- Engine 4 Crossfeed Valve Switch
	[370] = "%.3f", -- Fuel Tank Select
	[487] = "%.1f", -- Fuel Transfer Quantity Set Knob

	[417] = "%d", -- Leading Edge Light Switch
	[418] = "%d", -- Top Strobe Light Switch
	[419] = "%d", -- Bottom Strobe Light Switch
	[420] = "%d", -- Bottom Strobe Light Test Switch
	[421] = "%d", -- Exterior Lighting Master Switch
	[422] = "%d", -- Navigation Light Mode Switch
	[423] = "%d", -- Navigation Light Brightness Switch
	[424] = "%.1f", -- Covert/Formation Light Brightness Control

	-- Gauges
	[426] = "%.2f", -- Flaps
	[470] = "%.2f", -- Aileron Trim L
	[471] = "%.2f", -- Aileron Trim R
	[472] = "%.2f", -- Rudder Trim
	[473] = "%.2f", -- Elevator Trim

	[485] = "%.1f", -- Radar Master Power Switch
	[486] = "%.2f", -- Intensity Target Select Switch

	[1335] = "%.1f", -- Pilot Master Display Brightness Knob
	[1336] = "%d", -- Annunciator Light Brightness Switch
	[1337] = "%d", -- Lighting Mode Master Switch
	[1340] = "%.1f", -- Cockpit Dome Lighting Brightness Knob
	[1341] = "%.1f", -- Pilot Circuit Breaker Lighting Brightness Knob
	[1342] = "%.1f", -- Pilot Panel Backlighting Brightness Knob
	[1343] = "%.1f", -- Pilot Panel Flood Lighting Brightness Knob
	[1344] = "%.1f", -- Floor Lighting Brightness Knob

	[4000] = "%.1f", -- EXEC

	[4010] = "%.1f", -- lights
	-- HUD
	[4011] = "%.1f", -- VIS *
	[4012] = "%.1f", -- CAT2 *
	[4013] = "%.1f", -- O/S *
	[4014] = "%.1f", -- UNCG *
	[4015] = "%.1f", -- NAV *
	[4016] = "%.1f", -- TACT *
	-- FIRE
	[4023] = "%.1f", -- *
	[4024] = "%.1f", -- *
	[4025] = "%.1f", -- *
	[4026] = "%.1f", -- *

	[4027] = "%.1f", -- APU *
	[4028] = "%.1f", -- FUEL *

	[4030] = "%.1f", -- 
	[4032] = "%.1f", -- ldg
	[4033] = "%.1f", -- ldg
	[4034] = "%.1f", -- ldg
	[4035] = "%.1f", -- ldg
	-- ELECTRICAL
	[4036] = "%.1f", -- 1
	[4037] = "%.1f", -- 2
	[4038] = "%.1f", -- 3
	[4039] = "%.1f", -- 4

	[4040] = "%.1f", -- lights
	[4042] = "%.1f", -- lights

	[4045] = "%.1f", -- MASTER WARNING
	[4046] = "%.1f", -- MASTER CAUTION

	[4047] = "%.1f", -- ALT ON
	[4048] = "%.1f", -- VA ON
	[4049] = "%.1f", -- SEL ON
	[4050] = "%.1f", -- IAS ON
	[4051] = "%.1f", -- HDG ON
	[4052] = "%.1f", -- NAV ON
	[4053] = "%.1f", -- CAPS ON
	[4054] = "%.1f", -- APPR ON
	[4055] = "%.1f", -- AT ON

	-- pilot cautions
	[4056] = "%.1f", -- APU ON
	[4057] = "%.1f", -- PTCH OFF
	[4058] = "%.1f", -- NAV ARM
	[4059] = "%.1f", -- GS ARM
	[4060] = "%.1f", -- GO ARND
	[4061] = "%.1f", -- CAT2 ARM
	[4062] = "%.1f", -- AP DSGN
	[4063] = "%.1f", -- LAT OFF
	[4064] = "%.1f", -- NAV CAPT
	[4065] = "%.1f", -- GS CAPT
	[4066] = "%.1f", -- BACK LOC
	[4067] = "%.1f", -- CAT2

	-- hydraulic
	[4041] = "%.1f", -- 
	[4068] = "%.1f", -- EMER
	[4069] = "%.1f", -- OFF 1
	[4070] = "%.1f", -- OFF 2
	[4071] = "%.1f", -- OFF 3
	[4072] = "%.1f", -- OFF 4
	[4073] = "%.1f", -- OFF
	[4074] = "%.1f", -- OFF

	[4075] = "%.1f", -- FULL
	-- radar
	[4077] = "%.1f", -- PCRN
	[4078] = "%.1f", -- MAP
	[4079] = "%.1f", -- WX
	[4080] = "%.1f", -- SP
	[4081] = "%.1f", -- MGM
	[4082] = "%.1f", -- WS
	[4083] = "%.1f", -- BCN
	[4084] = "%.1f", -- PSEL
	[4085] = "%.1f", -- OFS
	[4086] = "%.1f", -- FRZ
	[4087] = "%.1f", -- PEN
	[4088] = "%.1f", -- SCTR
	-- AFCS
	[4089] = "%.1f", -- PITCH OFF
	[4090] = "%.1f", -- LAT OFF
	-- THROTTLE
	[4091] = "%.1f", -- LOW 1
	[4092] = "%.1f", -- LOW 2
	[4093] = "%.1f", -- LOW 3
	[4094] = "%.1f", -- LOW 4
	-- AERIAL DELIVERY
	[4095] = "%d", -- CAUTION
	[4096] = "%d", -- JUMP
	-- DEFENSIVE SYSTEMS
	[4097] = "%d", -- ON
	[4098] = "%d", -- PRI
	[4099] = "%d", -- <>
	[4100] = "%d", -- HIGH
	[4101] = "%d", -- ON
	-- AIR COND
	[4102] = "%.1f", -- OFF
	[4103] = "%.1f", -- OFF
	[4104] = "%.1f", -- ON
	[4105] = "%.1f", -- ON
	-- FIRE
	[4131] = "%.1f", -- FIRE 1
	[4132] = "%.1f", -- FIRE 2
	[4133] = "%.1f", -- FIRE 3
	[4134] = "%.1f", -- FIRE 4
	[4135] = "%.1f", -- APU
}

PWDEV.ConfigArguments =
{
}

local LINE_WIDTH = 24
local MIN_MATCH_LINES = 1

local function match_score(page_table, received_data)
	local score = 0

	for _, base in pairs(page_table) do
		if base then
			local clean = base:gsub("[<>]", "")
			for _, item in ipairs(received_data) do
				if item.text and item.text:find(clean, 1, true) then
					score = score + 1
					break
				end
			end
		end
	end

	return score
end

local function select_best_page_variant(page_variants, received_data)
	local best_score = -1
	local best_page = nil

	for _, variant in ipairs(page_variants) do
		local score = match_score(variant, received_data)
		if score > best_score then
			best_score = score
			best_page = variant
		end
	end

	if best_score < MIN_MATCH_LINES then
		return nil
	end

	return best_page
end

local function build_page(page_name, page_table, received_data)
	local output = {}

	if not page_name or not page_table or not C130J_AMU[page_name] then
		for i = 1, 9 do output[i] = string.rep("_", LINE_WIDTH) end
		return output
	end

    output[1] = page_name

	local expected = {}
	for i, v in pairs(page_table) do
		if v then
			expected[#expected + 1] = {
				base = v,
				index = i
			}
		end
	end

	for i = 2, 9 do output[i] = nil end

	local used_slots = {}

	for _, item in ipairs(received_data) do
		if item.text then
			for _, exp in ipairs(expected) do
				if not used_slots[exp.index] then
					local base = exp.base:gsub("[<>]", "")
					if item.text:find(base, 1, true) then
						output[exp.index + 1] = item.text
						used_slots[exp.index] = true
						break
					end
				end
			end
		end
	end

	local function pad(text, align)
		text = text or ""
		local len = #text
		if len >= LINE_WIDTH then return text:sub(1, LINE_WIDTH) end
		local spaces = LINE_WIDTH - len
		if align == "left" then
			return text .. string.rep(" ", spaces)
		else
			return string.rep(" ", spaces) .. text
		end
	end

	local function get_alignment(idx) return idx <= 4 and "left" or "right" end

	for i = 2, 9 do
		local alignment = get_alignment(i-1)
		local expected_line = page_table[i-1]
		local text = output[i] or (expected_line or "")
		output[i] = pad(text, alignment)
	end

	return output
end

local function received_data_to_list(tbl)
	local lines = {}
	for _, text in pairs(tbl) do
		if text ~= "" and text ~= nil then
			table.insert(lines, { text = text })
		end
	end
	return lines
end

local function find_page_title_in_received(C130J_AMU, received_data)
	for _, item in ipairs(received_data) do
		if item.text and C130J_AMU[item.text] then
			return item.text
		end
	end
	return nil
end

local function processAMU(id, sendCode)
    local raw = PWDEV.Tools.getListIndicatorValue(id)
    local data = received_data_to_list(raw or {})
    local page_title = find_page_title_in_received(C130J_AMU, data)
    local empty_line = string.rep(" ", LINE_WIDTH)

    if not page_title then
        for i = 1, 9 do send(sendCode + i, empty_line) end
        return
    end

	local page_entry = C130J_AMU[page_title]
	if not page_entry then return end

	local page_table

	if page_entry[1] and type(page_entry[1]) == "table" then
		page_table = select_best_page_variant(page_entry, data)
	else
		page_table = page_entry
	end

	if not page_table then return end

	local lines = build_page(page_title, page_table, data)

    for i = 1, 9 do
        send(sendCode + i, lines[i])
    end
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    processAMU(18, 2000)
    processAMU(19, 2010)
    processAMU(22, 2020)
    processAMU(20, 2030)
    processAMU(21, 2040)

	local refPlt = PWDEV.Tools.getListIndicatorValue(16) or {}
	send(2050, refPlt.ref_mode_value)
	if (refPlt.ref_symbol_period ~= nil) then send(2051, "1") else send(2051, "0") end

	local refCp = PWDEV.Tools.getListIndicatorValue(17) or {}
	send(2052, refCp.ref_mode_value)
	if (refPlt.ref_symbol_period ~= nil) then send(2053, "1") else send(2053, "0") end

	local cni1 = PWDEV.Tools.getListIndicatorValue(8) or {}
	send(2101, cni1.cni_title)
	send(2114, cni1.cni_scratchpad)
end