-- MIG-29G
ExportScript.FoundFCModule = true

-- auxiliary function
dofile(ExportScript.Config.ExportModulePath.."FC_Functions.lua")

function ExportScript.ProcessFCHighImportanceConfig()
    -- Cautions
    ExportScript.AF.StatusLamp()
end

function ExportScript.ProcessFCLowImportanceConfig()
    -- SPO15 Radar Warning Reciver
    ExportScript.AF.FC_SPO15RWR()
end