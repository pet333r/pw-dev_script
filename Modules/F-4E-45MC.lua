-- F-4E Phantom II

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Aoa left
    [77] = "%.1f",-- ^
    [78] = "%.1f",-- o
    [79] = "%.1f",-- up

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