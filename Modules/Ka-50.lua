-- Ka-50
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    [315] = "%0.1f", -- Waypoints LED
    [519] = "%0.1f", -- Inflight INU Realignment LED
    [316] = "%0.1f", -- Fixpoints LED
    [520] = "%0.1f", -- Precise INU Alignment LED
    [317] = "%0.1f", -- Airfields LED
    [521] = "%0.1f", -- Normal INU Alignment LED
    [318] = "%0.1f", -- Targets LED
    [313] = "%0.1f", -- Enter LED
    [314] = "%0.1f", -- Cancel LED
    [522] = "%0.1f", -- Initial Nav Pos LED
    [319] = "%0.1f", -- Self coordinates LED
    [320] = "%0.1f", -- Course:Course Deviation/Time/Range to WPT LED
    [321] = "%0.1f", -- Wind Heading/Speed LED
    [322] = "%0.1f", -- True Heading/Time/Range to final WPT LED
    [323] = "%0.1f", -- Bearing/Range to target LED
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