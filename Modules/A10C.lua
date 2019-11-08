-- A-10C
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	[540] = "%1d",	-- AOA Indexer High
	[541] = "%1d",	-- AOA Indexer Normal
	[542] = "%1d",	-- AOA Indexer Low
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