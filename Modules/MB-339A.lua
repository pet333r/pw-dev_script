-- MB-339
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    [727] = "%d",	-- ARM switch -1/0/1

    [209] = "%.1f",	-- MASTER CAUTION light (yellow)

    -- warn col 1
    [210] = "%.1f",	-- NO 1 DC GEN
    [211] = "%.1f",	-- NO 2 DC GEN
    [212] = "%.1f",	-- NO 1 BATT
    [213] = "%.1f",	-- NO 2 BATT
    [214] = "%.1f",	-- BATT HOT
    [215] = "%.1f",	-- AC ESS BUS
    [216] = "%.1f",	-- AC SEC BUS
    -- warn col 2
    [217] = "%.1f",	-- CKT BKR
    [218] = "%.1f",	-- AIL SERVO
    [219] = "%.1f",	-- OXY LOW
    [220] = "%.1f",	-- DUCT ANTI-ICE
    [221] = "%.1f",	-- PYL TK EMPTY
    [222] = "%.1f",	-- FUEL TRANSF
    [223] = "%.1f",	-- TIP TK UNBAL
    -- warn col 3
    [224] = "%.1f",	-- FUEL LOW
    [225] = "%.1f",	-- FUEL PRESS
    [226] = "%.1f",	-- OIL PRESS
    [227] = "%.1f",	-- ICE
    [228] = "%.1f",	-- JPT LMTR
    [229] = "%.1f",	-- IFF
    [230] = "%.1f",	-- IFF MODE 4

    [253] = "%.1f",	-- FIRE light (red)
    [254] = "%.1f",	-- STEER light (green)
    [255] = "%.1f",	-- A/SKID light (yellow)
    [256] = "%.1f",	-- OVERHEAT light

    [300] = "%d",	-- BATT switch 0/1
    [301] = "%d",	-- GEN 1 switch -1/0/1
    [302] = "%d",	-- GEN 2 switch -1/0/1
    [303] = "%d",	-- AC POWER switch -1/0/1

    [308] = "%.1f",	-- COMM 1 light
    [316] = "%.1f",	-- COMM 2 light
    [318] = "%.1f",	-- ADF light
    [325] = "%.1f",	-- TACAN light
    [327] = "%.1f",	-- VOR ILS light

    [339] = "%.1f",	-- HDG light
    [340] = "%.1f",	-- GS ARM light
    [341] = "%.1f",	-- STBY light
    [342] = "%.1f",	-- RADIO NAV light
    [343] = "%.1f",	-- GS light
    [344] = "%.1f",	-- ALT HILD light

    [369] = "%.1f",	-- TACAN light
    [370] = "%.1f",	-- VOR light
    [383] = "%.1f",	-- RNAV light

    [399] = "%.1f",	-- Canopy light

    [64] = "%.1f",	-- 6 txt
    [65] = "%.1f",	-- 5 txt
    [66] = "%.1f",	-- 4 txt
    [67] = "%.1f",	-- 3 txt
    [68] = "%.1f",	-- 2 txt
    [69] = "%.1f",	-- 1 txt
    [475] = "%d",	-- MASTER ARMT switch
    [488] = "%d",	-- btn 1
    [489] = "%d",	-- btn 2
    [490] = "%d",	-- btn 3
    [491] = "%d",	-- btn 4
    [492] = "%d",	-- btn 5
    [493] = "%d",	-- btn 6
    [494] = "%d",	-- BOMB FUZE switch -1/0/1
    [495] = "%d",	-- Sequence switch 0/1
    [496] = "%d",	-- 1 light (green)
    [497] = "%d",	-- 2 light (green)
    [498] = "%d",	-- 3 light (green)
    [499] = "%d",	-- 4 light (green)
    [500] = "%d",	-- 5 light (green)
    [501] = "%d",	-- 6 light (green)

    -- COMM
    [673] = "%.2f",	-- Channel knob
    [674] = "%.1f",	-- knob 1 2-3
    [675] = "%.1f",	-- knob 2
    [676] = "%.1f",	-- knob 3
    [677] = "%.1f",	-- knob 4
    [678] = "%.1f",	-- knob 5
    [679] = "%d",	-- MEM
    -- Lights
    [685] = "%d",	-- BCN switch 0/1
    -- IFF
    [710] = "%d",	-- MODE 4TEST switch -1/0/1
    [711] = "%d",	-- MODE 4 AUDIO switch -1/0/1
    [712] = "%d",	-- IDENT switch -1/0/1
    [713] = "%.1f",	-- CODE knob
    [714] = "%.1f",	-- MASTER knob
    [715] = "%d",	-- TOP switch -1/0/1
    [716] = "%d",	-- RAD TEST switch -1/0/1
    [717] = "%d",	-- M-C switch -1/0/1
    [718] = "%d",	-- M-3/A switch -1/0/1
    [719] = "%d",	-- M-2 switch -1/0/1
    [720] = "%d",	-- M-1 switch -1/0/1
    [721] = "%.1f",	-- REPLY light (green)
    [722] = "%.1f",	-- TEST light (green)
    [723] = "%.1f",	-- TEST/MON light (yellow)
    [724] = "%.1f",	-- ALT light
    [725] = "%.1f",	-- KIT light
    [726] = "%.1f",	-- ANT light
    [728] = "%d",	-- MODE 1
    [729] = "%d",	-- MODE 1
    [730] = "%d",	-- MODE 3/A
    [731] = "%d",	-- MODE 3/A
    [732] = "%d",	-- MODE 3/A
    [733] = "%d",	-- MODE 3/A
}

PWDEV.ConfigArguments =
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    local cp = PWDEV.Tools.getListCockpitParamsStr()
    send(2001, string.format("%s", cp.FwdCduDisplay1))
    send(2002, string.format("%s", cp.FwdCduDisplay2))
    send(2003, string.format("%s", cp.FwdCduDisplay3))
    send(2004, string.format("%s", cp.FwdCduDisplay4))
    send(2005, string.format("%s", cp.FwdRfrDisplay1))
    send(2006, string.format("%s", cp.FwdRfrDisplay2))
    send(2007, string.format("%s", cp.FwdRduDisplay1))
    send(2008, string.format("%s", cp.FwdRduDisplay2))
    send(2010, string.format("%s", cp.COMM2_FREQUENCY_FWD))
    send(2101, string.format("%s", cp.AftCduDisplay1))
    send(2102, string.format("%s", cp.AftCduDisplay2))
    send(2103, string.format("%s", cp.AftCduDisplay3))
    send(2104, string.format("%s", cp.AftCduDisplay4))
    send(2105, string.format("%s", cp.AftRfrDisplay1))
    send(2106, string.format("%s", cp.AftRfrDisplay2))
    send(2107, string.format("%s", cp.AftRduDisplay1))
    send(2108, string.format("%s", cp.AftRduDisplay2))
    send(2109, string.format("%s", cp.COMM2_FREQUENCY_AFT))
end