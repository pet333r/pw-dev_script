-- Ka-50
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
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
    [324] = "%.1f", -- NAV Master modes 0.1-0.6
	[325] = "%1d",  -- NAV INU fixtaking method
	[326] = "%1d",  -- NAV Datalink power
	[327] = "%.1f", -- NAV Brightness
}

ExportScript.ConfigArguments =
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

-- function coerce_nil_to_string(value)
-- 	if value == nil then
-- 		return ""
-- 	else
-- 		return value
-- 	end
-- end

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
    if ExportScript.Config.ExportDisplaysKA50 == true then
        -- ABRIS
        local ABRIS = ExportScript.Tools.getListIndicatorValue(3) or {}
        ExportScript.Tools.SendData(2031, ExportScript.Tools.coerce_nil_to_string(ABRIS.button1))
        ExportScript.Tools.SendData(2032, ExportScript.Tools.coerce_nil_to_string(ABRIS.button2))
        ExportScript.Tools.SendData(2033, ExportScript.Tools.coerce_nil_to_string(ABRIS.button3))
        ExportScript.Tools.SendData(2034, ExportScript.Tools.coerce_nil_to_string(ABRIS.button4))
        ExportScript.Tools.SendData(2035, ExportScript.Tools.coerce_nil_to_string(ABRIS.button5))
        -- PVI-800 Navigation Control Panel 
        local indPVI = ExportScript.Tools.getListIndicatorValue(5)

        if not indPVI then
            return
        end
        local pviLine1      = ExportScript.Tools.coerce_nil_to_string(indPVI.txt_VIT)
        local pviLine2      = ExportScript.Tools.coerce_nil_to_string(indPVI.txt_NIT)
        local pviLine1Point = ExportScript.Tools.coerce_nil_to_string(indPVI.txt_OIT_PPM)
        local pviLine2Point = ExportScript.Tools.coerce_nil_to_string(indPVI.txt_OIT_NOT)
        ExportScript.Tools.SendData(2008, pviLine1)
        ExportScript.Tools.SendData(2009, pviLine2)
        ExportScript.Tools.SendData(2010, pviLine1Point)
        ExportScript.Tools.SendData(2011, pviLine2Point)

        ExportScript.Tools.SendData(801, ExportScript.Tools.coerce_nil_to_string(indPVI.txt_VIT_apostrophe1))
        ExportScript.Tools.SendData(802, ExportScript.Tools.coerce_nil_to_string(indPVI.txt_VIT_apostrophe2))
        ExportScript.Tools.SendData(803, ExportScript.Tools.coerce_nil_to_string(indPVI.txt_NIT_apostrophe1))
        ExportScript.Tools.SendData(804, ExportScript.Tools.coerce_nil_to_string(indPVI.txt_NIT_apostrophe2))

        local Cannon = ExportScript.Tools.getListIndicatorValue(6) or {}
        ExportScript.Tools.SendData(2061, ExportScript.Tools.coerce_nil_to_string(Cannon.txt_cannon_count))

        local UV26 = ExportScript.Tools.getListIndicatorValue(7) or {}
        ExportScript.Tools.SendData(2071, ExportScript.Tools.coerce_nil_to_string(UV26.txt_digits))

    end
end