-- SA342M

-- init arg 398

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Warnings
    [1] = "%d",  -- Pitot Tube Warning
    [2] = "%d",  -- Turbine Oil Pressure Warning
    [3] = "%d",  -- Main Rotor Oil Pressure Warning
    [4] = "%d",  -- Low Turbine RPM Warning
    [5] = "%d",  -- Generator Warning
    [6] = "%d",  -- Alternator Warning
    [7] = "%d",  -- Battery Warning
    [8] = "%d",  -- Autopilot Warning
    [9] = "%d",  -- AC 115 V Bus/NAV Warning
    [10] = "%d", -- Low Fuel Warning
    [11] = "%d", -- Low Rotor RPM Warning
    [12] = "%d", -- Chips In Oil Warning
    [13] = "%d", -- Sand Filter Warning

    [68] = "%.1f", -- VHF AM Radio Volume 1
    [69] = "%.1f", -- FM Radio Volume 1
    [70] = "%.1f", -- UHF Radio Volume 1

    [79] = "%.1f", -- VHF AM Radio Volume 2
    [80] = "%.1f", -- FM Radio Volume 2
    [81] = "%.1f", -- UHF Radio Volume 2

    -- VHF
    [128] = "%.1f", -- AM Radio Selector
    [129] = "%.1f", -- AM Radio Frequency Dial Right
    [130] = "%.1f", -- AM Radio 25/50kHz Selector
    [131] = "%.1f", -- AM Radio Frequency Dial Left

    -- ADF
    [158] = "%.1f",
    [159] = "%.1f",
    [160] = "%.1f",
    [161] = "%.1f",
    [162] = "%.1f",
    [163] = "%.1f",
    [164] = "%.1f",
    [165] = "%.1f",
    [166] = "%d", -- ADF1/ADF2 Select
    [167] = "%d", -- ADF Tone On/Off
    -- [168] = "%.1f", -- ADF NAV1 100s
    -- [169] = "%.1f", -- ADF NAV1 10s
    -- [173] = "%.1f", -- ADF NAV1 1s
    -- [174] = "%.1f", -- ADF NAV2 100s
    -- [175] = "%.1f", -- ADF NAV2 10s
    -- [176] = "%.1f", -- ADF NAV2 1s
    [178] = "%.2f", -- ADF Mode
    [179] = "%.1f", -- ADF Gain

    [180] = "%.2f", -- HOT3 Panel Test/Off/On
    [181] = "%.3f", -- HOT3 Station Select
    [182] = "%.1f", -- HOT3 Brightness
    [183] = "%d", -- BON (green)
    [184] = "%d", -- MAUVAIS (red)
    [185] = "%d", -- ALIMENTATION (green)
    [186] = "%d", -- MISSILE PRET (blue)
    [187] = "%d", -- TIR AUTOR (green)
    [188] = "%d", -- DEFAULT (red)
    [189] = "%d", -- TEST (blue)
    [190] = "%d", -- JOUR (green)
    [191] = "%d", -- (yellow)
    [192] = "%d", -- TEST II (blue)
    [193] = "%d", -- NUIT (green)

    -- Flare Dispenser
    [220] = "%.1f", -- Flare Dispenser Side Selector D/G+D/G
    [221] = "%.1f", -- Flare Dispenser Mode
    [222] = "%.1f", -- Flare Dispenser Off/On/Speed Select
    [223] = "%.1f", -- yellow G ?
    [224] = "%.1f", -- yellow vide 1
    [225] = "%.1f", -- yellow D
    [226] = "%.1f", -- yellow vide 2
    [227] = "%.1f", -- green LEU

    -- INST LTG
    [230] = "%.1f", -- Overhead Console Panel
    [231] = "%.1f", -- Pedestal
    [232] = "%.1f", -- Secondary Instrument
    [233] = "%.1f", -- Engine Instrument
    -- [234] = "%.1f", -- Copilot Instrument
    -- [235] = "%.1f", -- Pilot Instrument

    -- IFF
    -- [234] = "%.1f", -- IFF Mode 1 Digit 1
    -- [235] = "%.1f", -- IFF Mode 1 Digit 2
    -- [236] = "%.1f", -- IFF Mode 3A Digit 1
    -- [237] = "%.1f", -- IFF Mode 3A Digit 2
    [238] = "%.1f", -- IFF Mode 3A Digit 3
    [239] = "%.1f", -- IFF Mode 3A Digit 4
    [240] = "%d", -- IFF IDENT/OFF/MIC
    [241] = "%.1f", -- REPONSE knob
    [243] = "%.1f", -- green light knob
    [244] = "%.2f", -- IFF Code
    [245] = "%.2f", -- IFF Master
    [246] = "%d", -- IFF Power ON/OFF
    [247] = "%d", -- IFF Antenna
    [248] = "%d", -- IFF Test M-1
    [249] = "%d", -- IFF Test M-2
    [250] = "%d", -- IFF Test M-3A
    [251] = "%d", -- IFF Test M-C
    -- [252] = "%d", -- IFF Test Lamp (green)

    -- FM
    [272] = "%.2f", -- FM Radio Mode Select
    [273] = "%.3f", -- FM Radio Channel Select

    -- NADIR
    [330] = "%.1f", -- Brightness
    [331] = "%.1f", -- Doppler Mode
    [332] = "%.1f", -- Parameter

    -- UHF
    [383] = "%.3f", -- Radio Mode Select
    [386] = "%.1f", -- Radio Page Knob

    [398] = "%d", -- VUHF backlight

    [1330] = "%d", -- ALV lt
    [1331] = "%d", -- ALV lt
    [1332] = "%d", -- CVS lt
    [1333] = "%d", -- CVS lt
}

PWDEV.ConfigArguments =
{
}

local function GetDigit(arg)
    tmp = string.format("%1.0f",GetDevice(0):get_argument_value(arg) * 10)
    if (tmp == "10") then
        return "0"
    else
        return tmp
    end
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    vhf = {}
	vhf[1] = GetDigit(133)
	vhf[2] = GetDigit(134)
	vhf[3] = GetDigit(136)
	vhf[4] = GetDigit(138)
    local d5 = tonumber(string.format("%.2f",GetDevice(0):get_argument_value(139) * 100))
    if (d5 == 0) then
        vhf[5] = "00"
    else
        vhf[5] = d5
    end

	send(2006, PWDEV.Tools.DisplayFormat(vhf[1]..vhf[2]..vhf[3].."."..vhf[4]..vhf[5], 7))

    local cp = PWDEV.Tools.getListCockpitParams()

    local nadirN = string.format("%.0f", cp.A_N_vis)
    local nadirS = string.format("%.0f", cp.A_S_vis)
    local nadirW = string.format("%.0f", cp.C_W_vis)
    local nadirE = string.format("%.0f", cp.C_E_vis)
    local nadirX = string.format("%.0f", cp.A_X_vis)
    local nadirY = string.format("%.0f", cp.C_Y_vis)
    local nadirTeta = string.format("%.0f", cp.A_teta_vis) -- θ
    local nadirRo = string.format("%.0f", cp.C_ro_vis) -- P

    -- widocznosc CYFR gora
    local nadirD1U = tonumber(string.format("%d", cp.B_centmille_vis))
    local nadirD2U = tonumber(string.format("%d", cp.B_dixmille_vis))
    local nadirD3U = tonumber(string.format("%d", cp.B_mille_vis))
    local nadirD4U = tonumber(string.format("%d", cp.B_cent_vis))
    local nadirD5U = tonumber(string.format("%d", cp.B_dix_vis))
    local nadirD6U = tonumber(string.format("%d", cp.B_unit_vis))

    -- widocznosc CYFR dol
    local nadirD1B = tonumber(string.format("%d", cp.D_centmille_vis))
    local nadirD2B = tonumber(string.format("%d", cp.D_dixmille_vis))
    local nadirD3B = tonumber(string.format("%d", cp.D_mille_vis))
    local nadirD4B = tonumber(string.format("%d", cp.D_cent_vis))
    local nadirD5B = tonumber(string.format("%d", cp.D_dix_vis))
    local nadirD6B = tonumber(string.format("%d", cp.D_unit_vis))

    -- deg
    local nadirDegU = string.format("%.0f", cp.B_deg_vis)
    local nadirDegB = string.format("%.0f", cp.D_deg_vis)

    -- kropki TOP
    local nadirP1U = string.format("%.0f", cp.B_pcentmille_vis)
    local nadirP2U = string.format("%.0f", cp.B_pdixmille_vis)
    local nadirP3U = string.format("%.0f", cp.B_pmille_vis)
    local nadirP4U = string.format("%.0f", cp.B_pcent_vis)
    local nadirP5U = string.format("%.0f", cp.B_pdix_vis)
    local nadirP6U = string.format("%.0f", cp.B_punit_vis)

    -- kropki BOTTOM
    local nadirP1B = string.format("%.0f", cp.D_pcentmille_vis)
    local nadirP2B = string.format("%.0f", cp.D_pdixmille_vis)
    local nadirP3B = string.format("%.0f", cp.D_pmille_vis)
    local nadirP4B = string.format("%.0f", cp.D_pcent_vis)
    local nadirP5B = string.format("%.0f", cp.D_pdix_vis)
    local nadirP6B = string.format("%.0f", cp.D_punit_vis)

    -- errors vis
    local nadirGel = string.format("%.0f", cp.E_GEL_vis)
    local nadirPile = string.format("%.0f", cp.E_PILE_vis)
    local nadirAir = string.format("%.0f", cp.E_AIR_vis)
    local nadirErr = string.format("%.0f", cp.E_ERR_vis)
    local nadirPanne = string.format("%.0f", cp.E_PANNE_vis)
    local nadirNav = string.format("%.0f", cp.E_NAV_vis)

    local nadir = PWDEV.Tools.getListIndicatorValue(2)
    if not nadir then
        return
    else
        if (nadirD1U == 0) then nadir.CentMille = " " end
        if (nadirD2U == 0) then nadir.DixMille = " " end
        if (nadirD3U == 0) then nadir.Mille = " " end
        if (nadirD4U == 0) then nadir.Cent = " " end
        if (nadirD5U == 0) then nadir.Dix = " " end
        if (nadirD6U == 0) then nadir.Unit = " " end

        if (nadirD1B == 0) then nadir.CentMilleI = " " end
        if (nadirD2B == 0) then nadir.DixMilleI = " " end
        if (nadirD3B == 0) then nadir.MilleI = " " end
        if (nadirD4B == 0) then nadir.CentI = " " end
        if (nadirD5B == 0) then nadir.DixI = " " end
        if (nadirD6B == 0) then nadir.UnitI = " " end
    end

    send(2001, PWDEV.Tools.DisplayFormat(nadir.CentMille..nadir.DixMille..nadir.Mille..nadir.Cent..nadir.Dix..nadir.Unit, 6))
    send(2002, PWDEV.Tools.DisplayFormat(nadir.CentMilleI..nadir.DixMilleI..nadir.MilleI..nadir.CentI..nadir.DixI..nadir.UnitI, 6))
    send(2003, nadir.F_unit)

    -- UHF
    local uhf = PWDEV.Tools.getListIndicatorValue(4)
    local ufm_freq = ""
    if uhf ~= nil then
        ufm_freq = uhf.UHF_Freq
    end
    send(2004, ufm_freq)

    -- FM Radio
    local fm = PWDEV.Tools.getListIndicatorValue(3)
    local fm_freq = ""
    if fm ~= nil then
        fm_freq = fm.FM_Freq
    end
    send(2005, fm_freq)

    send(1000, nadirN)
    send(1001, nadirS)
    send(1002, nadirW)
    send(1003, nadirE)
    send(1004, nadirX)
    send(1005, nadirY)
    send(1006, nadirTeta)
    send(1007, nadirRo)

    send(1008, nadirDegU)
    send(1009, nadirDegB)

    send(1010, nadirGel)
    send(1011, nadirPile)
    send(1012, nadirAir)
    send(1013, nadirErr)
    send(1014, nadirPanne)
    send(1015, nadirNav)

    send(1021, nadirP1U)
    send(1022, nadirP2U)
    send(1023, nadirP3U)
    send(1024, nadirP4U)
    send(1025, nadirP5U)
    send(1026, nadirP6U)

    send(1031, nadirP1B)
    send(1032, nadirP2B)
    send(1033, nadirP3B)
    send(1034, nadirP4B)
    send(1035, nadirP5B)
    send(1036, nadirP6B)

    local vhf_hundrets = {
        ["0.00"] = "00",
        ["0.25"] = "25",
        ["0.50"] = "50",
        ["0.75"] = "75",
        ["1.00"] = "00"
    }

    -- VHF freq
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(133) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(134) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(136) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(138) * 10)
    local hun = vhf_hundrets[string.format("%.2f", mainPanelDevice:get_argument_value(139))]
	send(2009, digits[1]..digits[2]..digits[3].. "." ..digits[4]..hun)

    -- ADF freq 1
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(158) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(159) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(160) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(161) * 10)
	send(2010, digits[1]..digits[2]..digits[3].. "." ..digits[4])

    -- ADF freq 2
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(162) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(163) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(164) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(165) * 10)
	send(2011, digits[1]..digits[2]..digits[3].. "." ..digits[4])
end