-- A-4E-C
local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

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
    -- COMMS
    local comm = PWDEV.Tools.getListIndicatorValue(4) or {}

    send(2801, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[1]", 6))
    send(2802, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[2]", 6))
    send(2803, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[3]", 6))
    send(2804, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[4]", 6))
    send(2805, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[5]", 6))
    send(2806, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[6]", 6))
    send(2807, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[7]", 6))
    send(2808, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[8]", 6))
    send(2809, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[9]", 6))
    send(2810, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[10]", 6))
    send(2811, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[11]", 6))
    send(2812, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[12]", 6))
    send(2813, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[13]", 6))
    send(2814, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[14]", 6))
    send(2815, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[15]", 6))
    send(2816, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[16]", 6))
    send(2817, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[17]", 6))
    send(2818, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[18]", 6))
    send(2819, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[19]", 6))
    send(2820, PWDEV.Tools.getListIndicatorValueByName(4, "txt_chn[20]", 6))
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end