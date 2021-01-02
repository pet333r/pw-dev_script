-- A-10A
ExportScript.FoundFCModule = true

-- auxiliary function
dofile(ExportScript.Config.ExportModulePath.."FC_Functions.lua")

function ExportScript.ProcessFCHighImportanceConfig()
    ExportScript.AF.FC_AoA_A10A()
end

function ExportScript.ProcessFCLowImportanceConfig()
end