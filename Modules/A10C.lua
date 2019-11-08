-- F-14B
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

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
end