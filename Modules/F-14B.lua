-- F-14B
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	[3760] = "%1d",	-- PILOT AOA Slow (green)
	[3761] = "%1d",	-- PILOT AOA Optimum (yellow)
	[3762] = "%1d",	-- PILOT AOA Fast (red)
}
ExportScript.ConfigArguments = 
{
	
}

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
end