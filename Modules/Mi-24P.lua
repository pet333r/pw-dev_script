-- Mi-24P Hind
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Pilot cautions
    [11] = "%.1f", -- VERT GYRO 1 FAIL
    [13] = "%.1f", -- VERT GYRO 2 FAIL
    [150] = "%.1f", -- ICING
    [151] = "%.1f", -- FIRE
    [152] = "%.1f", -- TANK 1 120 LITRES REMAIN
    [153] = "%.1f", -- TANK 1 120 LITRES REMAIN
    [154] = "%.1f", -- MAIN G/B LOW OIL PRESS
    [155] = "%.1f", -- ATTENTION TO ELECT CONT.PANEL
    [156] = "%.1f", -- ANTI-ICE AUTO TEST
    [157] = "%.1f", -- LIMIT MANEUVER
    [158] = "%.1f", -- CHIPS IN GRBX OIL
    [159] = "%.1f", -- LH ENG HIGH VIBRATION
    [160] = "%.1f", -- RH ENG HIGH VIBRATION
    [161] = "%.1f", -- LH ENG HIGH TEMP
    [162] = "%.1f", -- RH ENG HIGH TEMP
    [163] = "%.1f", -- M&T ROT ANTI-ICE FAIL
    [164] = "%.1f", -- HIGH CABIN PRESS
    [165] = "%.1f", -- HIGH PEDAL PUSH RATE
    [166] = "%.1f", -- SHUT DOWN LH ENG
    [167] = "%.1f", -- SHUT DOWN RH ENG
    [168] = "%.1f", -- CHIPS IN LH ENG OIL
    [169] = "%.1f", -- CHIPS IN RH ENG OIL
    [170] = "%.1f", -- SELECT STBY CODE
    [171] = "%.1f", -- XPDR FAIL
    [172] = "%.1f", -- HIGH CABIN PRESS
    [173] = "%.1f", -- SPEED HOLD
    [174] = "%.1f", -- MAP LIMIT
    [175] = "%.1f", -- RH ENG DUST PROT ON
    [176] = "%.1f", -- LH ENG DUST PROT ON
    [177] = "%.1f", -- CONTROL TO OPERATOR

    -- Signal, flares
    [343] = "%d", -- Cassette 1 Power Switch
    [344] = "%d", -- Cassette 1 Launch Red Button
    [345] = "%d", -- Cassette 1 Launch Green Button
    [346] = "%d", -- Cassette 1 Launch Yellow Button
    [347] = "%d", -- Cassette 1 Launch White Button
    [352] = "%d", -- Cassette 2 Power Switch
    [351] = "%d", -- Cassette 2 Launch Red Button
    [350] = "%d", -- Cassette 2 Launch Green Button
    [349] = "%d", -- Cassette 2 Launch Yellow Button
    [348] = "%d", -- Cassette 2 Launch White Button

    -- Radio navigation
    [365] = "%d", -- RWR Signal
    [366] = "%d", -- RWR Power
    [367] = "%d", -- Greben' ON/OFF
    [368] = "%d", -- Gyro 2 Power
    [369] = "%d", -- Gyro 1 Power
    [370] = "%d", -- Airspeed to DISS ON/OFF
    [371] = "%d", -- DISS-15D ON/OFF
    [372] = "%d", -- RV-5 ON/OFF
    [373] = "%d", -- Eucalypt-M24 ON/OFF
    [374] = "%d", -- Jadro-1I ON/OFF
    [375] = "%d", -- R-863 ON/OFF
    [376] = "%d", -- Switch SPU-8 NET-1 ON/OFF
    [377] = "%d", -- Switch SPU-8 NET-2 ON/OFF

    -- HEATIN
    [388] = "%.1f", -- LEFT HEAT FAIL
    [390] = "%.1f", -- RIGHT HEAT FAIL
    [391] = "%.1f", -- LH TANK 1 VALVE CLOSED
    [393] = "%.1f", -- RH TANK 2 VALVE CLOSED
    [395] = "%.1f", -- LH ENG VALVE CLOSED
    [398] = "%.1f", -- RH ENG VALVE CLOSED
    [401] = "%.1f", -- ISOLATING VALVE CLOSED
    [403] = "%.1f", -- PUMP N4 ON
    [405] = "%.1f", -- PUMP N5 ON
    [407] = "%.1f", -- PUMP N1 ON
    [409] = "%.1f", -- PUMP N2 ON
    [412] = "%.1f", -- CUT OFF TRANSF.

    -- FIRE PROTECTION SYSTEM
    [470] = "%.1f", -- LEFT ENGINE FIRE
    [471] = "%.1f", -- LEFT ENGINE FIRE 1
    [472] = "%.1f", -- LEFT ENGINE FIRE 2
    [473] = "%.1f", -- RIGHT ENGINE FIRE
    [474] = "%.1f", -- RIGHT ENGINE FIRE 1
    [475] = "%.1f", -- RIGHT ENGINE FIRE 2
    [476] = "%.1f", -- APU TANK 3 CMPTS FIRE
    [477] = "%.1f", -- APU TANK 3 CMPTS FIRE 1
    [478] = "%.1f", -- APU TANK 3 CMPTS FIRE 2
    [479] = "%.1f", -- MAIN GEAR BOX CMPT FIRE
    [480] = "%.1f", -- MAIN GEAR BOX CMPT FIRE 1
    [481] = "%.1f", -- MAIN GEAR BOX CMPT FIRE 2
    [483] = "%.1f", -- FIRE DET TEST

    [559] = "%.1f", -- USLP
    [560] = "%.1f", -- FXD MG
    [561] = "%.1f", -- BOMBS
    [562] = "%.1f", -- 30
    [563] = "%.1f", -- RKT
}

PWDEV.ConfigArguments =
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end