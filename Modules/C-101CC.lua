-- C-101CC
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	-- Angle of attack indicator
	[291] = "%1d",	-- AOA_INDEXER_HIGH
	[292] = "%1d",	-- AOA_INDEXER_NORM
	[293] = "%1d",	-- AOA_INDEXER_LOW
}

PWDEV.ConfigArguments =
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end