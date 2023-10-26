-- A-4E-C
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments = 
{
    -- Approach Power Compensator
    [147] = "%1d", -- APC indator light

    -- AOA Indicator
    [850] = "%1d", -- AOA indexer Green
    [851] = "%1d", -- AoA indexer Yellow
    [852] = "%1d", -- AoA indexer Red
}

PWDEV.ConfigArguments = 
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end