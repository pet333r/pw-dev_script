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
}

ExportScript.ConfigArguments = 
{
}

function coerce_nil_to_string(value)
	if value == nil then
		return ""
	else
		return value
	end
end

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
    if ExportScript.Config.ExportDisplaysKA50 == true then
        -- PVI-800 Navigation Control Panel 
        local indPVI = ExportScript.Tools.getListIndicatorValue(5)

        if not indPVI then
            return
        end
        local pviLine1      = coerce_nil_to_string(indPVI.txt_VIT)
        local pviLine2      = coerce_nil_to_string(indPVI.txt_NIT)
        local pviLine1Point = coerce_nil_to_string(indPVI.txt_OIT_PPM)
        local pviLine2Point = coerce_nil_to_string(indPVI.txt_OIT_NOT)
        ExportScript.Tools.SendData(2008, pviLine1)
        ExportScript.Tools.SendData(2009, pviLine2)
        ExportScript.Tools.SendData(2010, pviLine1Point)
        ExportScript.Tools.SendData(2011, pviLine2Point)
    end
end