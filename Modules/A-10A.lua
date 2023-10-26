-- A-10A
PWDEV.FoundFCModule = true

-- auxiliary function
dofile(PWDEV.Config.ExportModulePath.."FC_Functions.lua")

function PWDEV.ProcessFCHighImportanceConfig()
    PWDEV.AF.FC_AoA_A10A()

    -- Cautions
    PWDEV.AF.StatusLamp()
end

function PWDEV.ProcessFCLowImportanceConfig()
end