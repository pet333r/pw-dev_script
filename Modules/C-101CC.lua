-- C-101CC
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    	-- Angle of attack indicator
	[291] = "%0.1f",	-- AOA_INDEXER_HIGH
	[292] = "%0.1f",	-- AOA_INDEXER_NORM
	[293] = "%0.1f",	-- AOA_INDEXER_LOW
}

ExportScript.ConfigArguments = 
{
}

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end