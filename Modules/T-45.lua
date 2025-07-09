-- VNAO T-45C Goshawk
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Cautions
    [71] = "%d", -- SEAT (red)
    [72] = "%d", -- CANOPY (red)
    [74] = "%d", -- HYD (red)
    [75] = "%d", -- NWS AUG (red)
    [77] = "%d", -- ACCEL (red)
    [78] = "%d", -- FUEL (red)
    [80] = "%d", -- RAT (red)
    [81] = "%d", -- TP HOT (red)
    [83] = "%d", -- LP PMP (red)
    [84] = "%d", -- F PRES (red)
    [86] = "%d", -- PK BRK (red)
    [87] = "%d", -- C AUG (red)
    [89] = "%d", -- ECA 2 (red)
    [90] = "%d", -- AV HOT (red)
    [92] = "%d", -- SLATS (red)
    [93] = "%d", -- AC INV (red)
    [95] = "%d", -- NWS (red)
    [96] = "%d", -- SKID (red)
    [98] = "%d", -- GTS (green)
    [99] = "%d", -- READY (green)
    [101] = "%d", -- NWS HI (green)
    [102] = "%d", -- SKID (green)
    [104] = "%d", -- ECA (green)
    [105] = "%d", -- M FUEL (green)
    [107] = "%d", -- - (green)
    [108] = "%d", -- - (green)
    [110] = "%d", -- BRK PRS (red)
    [111] = "%d", -- HOOK (black)

    -- Landing gear
    [120] = "%d", -- DOOR (red)
    [121] = "%d", -- NOSE (green)
    [122] = "%d", -- LEFT (green)
    [123] = "%d", -- RIGHT (green)

    -- Flaps
    [127] = "%d", -- HALF (green)
    [128] = "%d", -- FULL (green)

    --
    [130] = "%d", -- L BAR (black)
    [131] = "%d", -- L BAR (green)
    --
    [134] = "%d", -- I (red)
    [135] = "%d", -- M (red)
    [136] = "%d", -- O (green)
    --
    [140] = "%d", -- SP BRK (green)
    [141] = "%d", -- FULL (green)
    [144] = "%d", -- MASTER ALERT (black)

    -- warnings
    [146] = "%d", -- GTS FIRE (red)
    [147] = "%d", -- EGT/RPM (red)
    [148] = "%d", -- OIL PRESS (red)
    [149] = "%d", -- HYD FAIL (red)
    [150] = "%d", -- - (red)
    [151] = "%d", -- CABIN ALT (red)
    [152] = "%d", -- OXYGEN (red)
    [154] = "%d", -- GENERATOR (red)
    [155] = "%d", -- - (red)
    [156] = "%d", -- - (red)
    [157] = "%d", -- FIRE (red)

    -- DEP
    [219] = "%d", -- ON/OFF knob
    [220] = "%.1f", -- DAY/AUTO knob
    [221] = "%.1f", -- BRT knob

    -- AOA Indicator
    [320] = "%d", -- AOA indexer Green
    [321] = "%d", -- AoA indexer Yellow
    [322] = "%d", -- AoA indexer Red
}

PWDEV.ConfigArguments =
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end