-- F-14BU

dofile(PWDEV.Config.ExportModulePath.."F-14B.lua")

PWDEV.Tools.MergeTables(PWDEV.ConfigArguments, {
    [825] = "%d",
})

local originalHighImportance = PWDEV.ProcessDCSConfigHighImportance

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
    if originalHighImportance then
        originalHighImportance(mainPanelDevice)
    end
end

local originalProcessDCSConfigLowImportance = PWDEV.ProcessDCSConfigLowImportance

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    if originalProcessDCSConfigLowImportance then
        originalProcessDCSConfigLowImportance(mainPanelDevice)
    end
end