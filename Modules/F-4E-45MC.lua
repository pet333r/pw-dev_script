-- F-4E Phantom II
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Aoa left
    [77] = "%.1f",-- ^
    [78] = "%.1f",-- o
    [79] = "%.1f",-- down

    -- Aoa right
    [375] = "%.1f",-- ^
    [376] = "%.1f",-- o
    [377] = "%.1f",-- up

}

PWDEV.ConfigArguments =
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end