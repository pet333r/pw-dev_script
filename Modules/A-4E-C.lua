-- A-4E-C
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    -- Approach Power Compensator
    [147] = "%1d", -- APC indator light

    -- AOA Indicator
    [850] = "%1d", -- AOA indexer Green
    [851] = "%1d", -- AoA indexer Yellow
    [852] = "%1d", -- AoA indexer Red
}

ExportScript.ConfigArguments = 
{
}

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end