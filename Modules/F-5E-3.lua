-- F-5E-3
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	[48] = "%1d",	-- AOA Indexer red
	[49] = "%1d",	-- AOA Indexer green
	[50] = "%1d",	-- AOA Indexer yellow

	[530] = "%1d", -- L Generator Lamp
	[531] = "%1d", -- Canopy Open
	[532] = "%1d", -- R Generator Lamp
	[533] = "%1d", -- Utility Hydr
	[534] = "%1d", -- Spare 1
	[535] = "%1d", -- Flight Hydr
	[536] = "%1d", -- External Tanks Empty
	[537] = "%1d", -- IFF
	[538] = "%1d", -- Oxygen
	[539] = "%1d", -- Left Flow Indicator
	[540] = "%1d", -- Anti Ice
	[541] = "%1d", -- Right Flow Indicator
	[542] = "%1d", -- L Fuel Press
	[543] = "%1d", -- Inertial Navigation System
	[544] = "%1d", -- R Fuel Press
	[545] = "%1d", -- AoA Flaps
	[546] = "%1d", -- Air Data Computer
	[547] = "%1d", -- Directional Gyroscope
	[548] = "%1d", -- Spare 2
	[549] = "%1d", -- DC Overload
	[550] = "%1d", -- Spare 3
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