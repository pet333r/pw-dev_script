-- VNAO T-45C Goshawk
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments = 
{
    -- Cautions
    [71] = "%1d", -- SEAT (red)
    [72] = "%1d", -- CANOPY (red)
    [74] = "%1d", -- HYD (red)
    [75] = "%1d", -- NWS AUG (red)
    [77] = "%1d", -- ACCEL (red)
    [78] = "%1d", -- FUEL (red)
    [80] = "%1d", -- RAT (red)
    [81] = "%1d", -- TP HOT (red)
    [83] = "%1d", -- LP PMP (red)
    [84] = "%1d", -- F PRES (red)
    [86] = "%1d", -- PK BRK (red)
    [87] = "%1d", -- C AUG (red)
    [89] = "%1d", -- ECA 2 (red)
    [90] = "%1d", -- AV HOT (red)
    [92] = "%1d", -- SLATS (red)
    [93] = "%1d", -- AC INV (red)
    [95] = "%1d", -- NWS (red)
    [96] = "%1d", -- SKID (red)
    [98] = "%1d", -- GTS (green)
    [99] = "%1d", -- READY (green)
    [101] = "%1d", -- NWS HI (green)
    [102] = "%1d", -- SKID (green)
    [104] = "%1d", -- ECA (green)
    [105] = "%1d", -- M FUEL (green)
    [107] = "%1d", -- - (green)
    [108] = "%1d", -- - (green)
    [110] = "%1d", -- BRK PRS (red)
    [111] = "%1d", -- HOOK (black)

    -- Landing gear
    [120] = "%1d", -- DOOR (red)
    [121] = "%1d", -- NOSE (green)
    [122] = "%1d", -- LEFT (green)
    [123] = "%1d", -- RIGHT (green)

    -- Flaps
    [127] = "%1d", -- HALF (green)
    [128] = "%1d", -- FULL (green)

    --
    [130] = "%1d", -- L BAR (black)
    [131] = "%1d", -- L BAR (green)
    --
    [134] = "%1d", -- I (red)
    [135] = "%1d", -- M (red)
    [136] = "%1d", -- O (green)
    --
    [140] = "%1d", -- SP BRK (green)
    [141] = "%1d", -- FULL (green)
    [144] = "%1d", -- MASTER ALERT (black)

    -- warnings
    [146] = "%1d", -- GTS FIRE (red)
    [147] = "%1d", -- EGT/RPM (red)
    [148] = "%1d", -- OIL PRESS (red)
    [149] = "%1d", -- HYD FAIL (red)
    [150] = "%1d", -- - (red)
    [151] = "%1d", -- CABIN ALT (red)
    [152] = "%1d", -- OXYGEN (red)
    [154] = "%1d", -- GENERATOR (red)
    [155] = "%1d", -- - (red)
    [156] = "%1d", -- - (red)
    [157] = "%1d", -- FIRE (red)

    -- DEP
    [219] = "%1d", -- ON/OFF knob
    [220] = "%.1f", -- DAY/AUTO knob
    [221] = "%.1f", -- BRT knob

    -- AOA Indicator
    [320] = "%1d", -- AOA indexer Green
    [321] = "%1d", -- AoA indexer Yellow
    [322] = "%1d", -- AoA indexer Red
}

PWDEV.ConfigArguments = 
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end