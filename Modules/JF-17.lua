-- JF-17
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    -- UFC buttons lights
    [150] = "%1d", -- UFCP Button Light OAP (green)
    [151] = "%1d", -- UFCP Button Light MRK (green)
    [152] = "%1d", -- UFCP Button Light PU (green)
    [153] = "%1d", -- UFCP Button Light HNS (green)
    [154] = "%1d", -- UFCP Button Light AP (green)
    [155] = "%1d", -- UFCP Button Light FPM (green)
    [156] = "%1d", -- UFCP Button Light NULL1 (green)
    [157] = "%1d", -- UFCP Button Light NULL2 (green)
}

ExportScript.ConfigArguments = 
{
}

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end