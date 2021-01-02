-- C-101CC
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    	-- Angle of attack indicator
	[291] = "%1d",	-- AOA_INDEXER_HIGH
	[292] = "%1d",	-- AOA_INDEXER_NORM
	[293] = "%1d",	-- AOA_INDEXER_LOW
}

ExportScript.ConfigArguments = 
{
}

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end