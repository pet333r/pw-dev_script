-- Su-25T
PWDEV.FoundFCModule = true

-- auxiliary function
dofile(PWDEV.Config.ExportModulePath.."FC_Functions.lua")

function PWDEV.ProcessFCHighImportanceConfig()
	-- Cautions
    PWDEV.AF.StatusLamp()
end

function PWDEV.ProcessFCLowImportanceConfig()
	-- SPO15 Radar Warning Reciver
	PWDEV.AF.FC_SPO15RWR()
end