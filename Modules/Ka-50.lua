-- Ka-50

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Datalink
    [159] = "%.1f", -- Send/Memory LED
    [150] = "%.1f", -- Ingress to targetLED
    [161] = "%.1f", -- Erase  LED
    [15] = "%.1f", -- N/A LED
    [16] = "%.1f", -- To all LED
    [17] = "%.1f", -- Wingman 1 LED
    [18] = "%.1f", -- Wingman 2 LED
    [19] = "%.1f", -- Wingman 3 LED
    [20] = "%.1f", -- Wingman 4 LED
    [21] = "%.1f", -- Target #1/Vehicle LED
    [22] = "%.1f", -- Target #2/SAM LED
    [23] = "%.1f", -- Target #3/Other type LED
    [50] = "%.1f", -- Ingress point LED

	[146] = "%.1f", -- Navigation Lights 10% / 30% / 100% / Off
	[147] = "%.1f", -- Windshield wiper switch
	[148] = "%d", -- Windshield washer fluid switch
	[149] = "%.1f", -- Warning Lights Brightness
	[539] = "%d", -- Pitot static port and AoA sensors heat switch
	[151] = "%d", -- Pitot ram air and clock heat switch
	[153] = "%d", -- Rotor de-icing system switch
	[154] = "%.1f", -- Engines de-icing / dust-protection systems switch

	[228] = "%d", -- Anticollision Light
	[296] = "%d", -- Tip Lights
	[297] = "%d", -- Formation Lights
	[298] = "%d", -- Lighting ADI and SAI switch
	[299] = "%d", -- Lighting night vision cockpit switch
	[300] = "%d", -- Lighting cockpit panel switch

	[324] = "%.1f", -- NAV Master modes
	[325] = "%d", -- NAV INU fixtaking method
	[326] = "%d", -- NAV Datalink power
	[327] = "%.1f", -- NAV Brightness

    -- autopilot
    [330] = "%.1f", -- Bank hold LED (green)
    [331] = "%.1f", -- Pitch hold LED (green)
    [332] = "%.1f", -- Heading hold LED (green)
    [333] = "%.1f", -- Altitude hold LED (green)
    [334] = "%.1f", -- Flight director LED (green)
    [335] = "%.1f", -- BARO/RALT altitude hold mode Switch
    [336] = "%.1f", -- DH/DT Switch

    [381] = "%.1f", -- ADF Inner-Auto-Outer NDB switch
    [382] = "%.1f", -- Light landing-search
    [383] = "%d", -- Light landing-search
    [386] = "%d", -- Voice message system emergency on

    [387] = "%d", -- Master Arm
    [388] = "%d", -- green 1
    [389] = "%d", -- green 2
    [390] = "%d", -- green 3
    [391] = "%d", -- green 4
    [392] = "%d", -- yellow 1
    [393] = "%d", -- yellow 2
    [394] = "%d", -- yellow 3
    [395] = "%d", -- yellow 4
    [396] = "%d", -- Jettison arm mode
    [397] = "%.1f", -- Expedite emergency ATGM launch
    [398] = "%d", -- Cannon rate of fire setting
    [399] = "%d", -- Cannon round selector switch HE/AP
    [400] = "%.1f", -- Weapon mode switch - Burst Length
    [403] = "%d", -- Manual/Auto weapon system control switch

    [404] = "%d", -- IT-23 Black-White indication switch
    [405] = "%.2f", -- Helmet device brightness
    [406] = "%.2f", -- IT-23 display brightness
    [407] = "%.2f", -- IT-23 display contrast
    [408] = "%.1f", -- Laser code selector
    [409] = "%d", -- HUD/TV declutter switch
    [410] = "%d", -- 
    [411] = "%.1f", -- SHKVAL Optics adjustment

    [431] = "%.1f", -- Weapon system mode selector
    [432] = "%d", -- Training mode Switch
    [433] = "%d", -- K-041 power Switch
    [434] = "%d", -- HMS/NVG power Switch
    [435] = "%d", -- Laser standby ON/OFF Switch
    [437] = "%d", -- Automatic turn on target LED (green)
    [438] = "%d", -- Airborne target LED
    [439] = "%d", -- Head-on airborne target LED
    [440] = "%d", -- Ground moving target LED
    [441] = "%d", -- Targeting mode reset LED

    [450] = "%d", -- Lighting auxiliary panel switch
    [451] = "%.1f", -- Lighting auxiliary panel brightness knob
    [507] = "%.1f", -- Lighting night vision cockpit brightness knob
    [508] = "%.1f", -- Lighting HSI and ADI brightness knob
    [593] = "%.1f", -- Lighting cockpit panel brightness knob

    -- PVI-800
    [315] = "%.1f", -- Waypoints LED
    [519] = "%.1f", -- Inflight INU Realignment LED
    [316] = "%.1f", -- Fixpoints LED
    [520] = "%.1f", -- Precise INU Alignment LED
    [317] = "%.1f", -- Airfields LED
    [521] = "%.1f", -- Normal INU Alignment LED
    [318] = "%.1f", -- Targets LED
    [313] = "%.1f", -- Enter LED
    [314] = "%.1f", -- Cancel LED
    [522] = "%.1f", -- Initial Nav Pos LED
    [319] = "%.1f", -- Self coordinates LED
    [320] = "%.1f", -- Course:Course Deviation/Time/Range to WPT LED
    [321] = "%.1f", -- Wind Heading/Speed LED
    [322] = "%.1f", -- True Heading/Time/Range to final WPT LED
    [323] = "%.1f", -- Bearing/Range to target LED
}

PWDEV.ConfigArguments =
{
    -- warnings
    [47] = "%d", -- LASER WARNING (red)
    [48] = "%d", -- EXTEND GEAR (red)
    [78] = "%d", -- LH ENG OVERSPEED (red)
    [79] = "%d", -- RH ENG OVERSPEED (red)
    [80] = "%d", -- OVER-G (red)
    [81] = "%d", -- LH ENG VIBR (red)
    [82] = "%d", -- RH ENG VIBR (red)
    [83] = "%d", -- IAS MAX (red)
    [84] = "%d", -- MAIN GRBX (red)
    [85] = "%d", -- FIRE (red)
    [86] = "%d", -- IFF FAIL (red)
    -- cautions
    [164] = "%d", -- AC-POS CAL.DATA
    [165] = "%d", -- END COURSE
    [166] = "%d", -- ROUTE END
    [167] = "%d", -- MASTER ARM ON
    [170] = "%d", -- R-ALT HOLD
    [171] = "%d", -- ENR NAV ON
    [172] = "%d", -- DESCENT
    [173] = "%d", -- CANNON
    [175] = "%d", -- AUTO HOVER
    [176] = "%d", -- NEXT WP
    [177] = "%d", -- CANNON TRIANGLE
    [178] = "%d", -- WEAP ARM (red)
    [179] = "%d", -- SHKVAL FAIL (yellow)
    [180] = "%d", -- WEAPON TRAINING (green)
    [181] = "%d", -- LH ENG ANTI-ICE (green)
    [182] = "%d", -- RH ENG ANTI-ICE (green)
    [183] = "%d", -- ROTOR ANTI-ICE (green)
    [184] = "%d", -- WINDSHIELD HEATER ON (green)
    [185] = "%d", -- LH OUTER TANK PUMP (green)
    [186] = "%d", -- RH OUTER TANK PUMP (green)
    [187] = "%d", -- TURBO GEAR (green)
    [188] = "%d", -- HUD NO READY (yellow)
    [189] = "%d", -- COMPUTER DIAGNOSE (yellow)
    [190] = "%d", -- LH ENG DUST-PROT (green)
    [191] = "%d", -- RH ENG DUST-PROT (green)
    [200] = "%d", -- FWD TANK PUMP ON (green)
    [201] = "%d", -- AFT TANK PUMP ON (green)
    [202] = "%d", -- LH INNER TANK PUMP (green)
    [203] = "%d", -- RH INNER TANK PUMP (green)
    [204] = "%d", -- AGB OIL PRESS (green)
    [205] = "%d", -- SHKVAL FAIL (yellow)
    [206] = "%d", -- COMPUTER FAIL (yellow)
    [207] = "%d", -- LH POWER SET LIM (yellow)
    [208] = "%d", -- RH POWER SET LIM (yellow)
    [209] = "%d", -- LH VLV CLOSED (yellow)
    [210] = "%d", -- RH VLV CLOSED (yellow)
    [211] = "%d", -- X-FEED VLV OPEN (green)
    [212] = "%d", -- INVERTER ON (green)
    [213] = "%d", -- SL-HOOK OPEN (green)

    [237] = "%d", -- FIRE LH ENG (red)
    [239] = "%d", -- FIRE APU (red)
    [568] = "%d", -- FIRE HYDR (red)
    [241] = "%d", -- FIRE RH ENG (red)
    [243] = "%d", -- FIRE GRBX (red)
    [244] = "%d", -- 1 (yellow)
    [245] = "%d", -- 2 (yellow)
}

local indEKRAN = nil
local function getEKRAN_memory()
    if indEKRAN == nil or indEKRAN.txt_memory == nil then return "0" end
    return "1"
end
local function getEKRAN_queue()
	if indEKRAN == nil or indEKRAN.txt_queue == nil then return "0" end
    return "1"
end
local function getEKRAN_failure()
	if indEKRAN == nil or indEKRAN.txt_failure == nil then return "0" end
    return "1"
end

local function getEKRAN_txt1_line(value)
	if indEKRAN == nil or indEKRAN.txt_1 == nil then return "          " end
	return indEKRAN.txt_1[value] or "          "
end

local function getEKRAN_txt2_line(value)
	if indEKRAN == nil or indEKRAN.txt_2 == nil then return "          " end
	return indEKRAN.txt_2[value] or "          "
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
    indEKRAN = PWDEV.Tools.parseListIndicatorList(4)
	send(2040, getEKRAN_txt1_line(1) .. getEKRAN_txt1_line(2) .. getEKRAN_txt1_line(3) .. getEKRAN_txt1_line(4))
	send(2041, getEKRAN_txt2_line(1) .. getEKRAN_txt2_line(2) .. getEKRAN_txt2_line(3) .. getEKRAN_txt2_line(4))

    send(2049, getEKRAN_memory())
    -- jeżeli jest 1 to wyświetlane są dane z EKRAN #2
    send(2050, getEKRAN_queue())
    send(2051, getEKRAN_failure())
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    -- ABRIS
    local ABRIS = PWDEV.Tools.getListIndicatorValue(3) or {}
    send(2031, coerce_nil_to_string(ABRIS.button1))
    send(2032, coerce_nil_to_string(ABRIS.button2))
    send(2033, coerce_nil_to_string(ABRIS.button3))
    send(2034, coerce_nil_to_string(ABRIS.button4))
    send(2035, coerce_nil_to_string(ABRIS.button5))
    -- PVI-800 Navigation Control Panel 
    local indPVI = PWDEV.Tools.getListIndicatorValue(5)

    if not indPVI then
        return
    end
    local pviLine1      = coerce_nil_to_string(indPVI.txt_VIT)
    local pviLine2      = coerce_nil_to_string(indPVI.txt_NIT)
    local pviLine1Point = coerce_nil_to_string(indPVI.txt_OIT_PPM)
    local pviLine2Point = coerce_nil_to_string(indPVI.txt_OIT_NOT)
    send(2008, pviLine1)
    send(2009, pviLine2)
    send(2010, pviLine1Point)
    send(2011, pviLine2Point)

    send(801, coerce_nil_to_string(indPVI.txt_VIT_apostrophe1))
    send(802, coerce_nil_to_string(indPVI.txt_VIT_apostrophe2))
    send(803, coerce_nil_to_string(indPVI.txt_NIT_apostrophe1))
    send(804, coerce_nil_to_string(indPVI.txt_NIT_apostrophe2))

    local indPUI800 = PWDEV.Tools.getListIndicatorValue(6) or {}

    local function getPUI800_txt_weap_type()
        return indPUI800.txt_weap_type_AT and "AT"
            or indPUI800.txt_weap_type_RT and "RT"
            or indPUI800.txt_weap_type_Iron_Bomb and "IB"
            or indPUI800.txt_weap_type_Gun_Pod and "GP"
            or ""
    end

    send(2060, getPUI800_txt_weap_type())
    send(2061, coerce_nil_to_string(indPUI800.txt_weap_count))
    send(2062, coerce_nil_to_string(indPUI800.txt_cannon_count))

    local UV26 = PWDEV.Tools.getListIndicatorValue(7) or {}
    send(2071, coerce_nil_to_string(UV26.txt_digits))
end