-- F-5E-3
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	[48] = "%1d",	-- AOA Indexer red
	[49] = "%1d",	-- AOA Indexer green
	[50] = "%1d",	-- AOA Indexer yellow
}
ExportScript.ConfigArguments = 
{
}

-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end