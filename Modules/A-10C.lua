-- A-10C
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	[403] = "%1d",	-- PNT-BTN-UFC-MASTWARN (Master Caution Light)
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