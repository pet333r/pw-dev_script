-- Mi-8MT
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    [64] = "%d", -- LOW FUEL 270 LT
    [65] = "%d", -- DOPPLER FAIL

    [68] = "%d", -- FUEL FILTER LEFT ENG
    [69] = "%d", -- FUEL FILTER RIGHT ENG
    [70] = "%d", -- CHIP LEFT ENG
    [71] = "%d", -- CHIP RIGHT ENG
    [72] = "%d", -- HIGH VIB LEFT ENG
    [73] = "%d", -- HIGH VIB RIGHT ENG
    [74] = "%d", -- FIRE
    [76] = "%d", -- SHUT OFF LEFT ENG
    [77] = "%d", -- SHUT OFF RIGHT ENG

    [78] = "%d", -- OVERSPEED LEFT ENG
    [79] = "%d", -- OVERSPEED RIGHT ENG
    [80] = "%d", -- LOW OIL P LEFT ENG
    [81] = "%d", -- LOW OIL P RIGHT ENG
    [82] = "%d", -- EMER PWR LEFT ENG
    [83] = "%d", -- EMER PWR RIGHT ENG
    [84] = "%d", -- GOV PWR LEFT ENG
    [85] = "%d", -- GOV PWR RIGHT ENG
    [86] = "%d", -- EXT PWR ON
    [87] = "%d", -- 620I FAIL

    [316] = "%d", -- LFT ENG TEMP REG
    [317] = "%d", -- RGT ENG TEMP REG

    [325] = "%d", -- HORN ON
    [326] = "%d", -- HOOK OPEN
    [327] = "%d", -- DOORS OPEN

    [340] = "%d", -- TURN ON VWS SYS
    [341] = "%d", -- HEATER OPER

    [360] = "%d", -- ICING
    [361] = "%d", -- ANTI-ICE SYS ON
    [362] = "%d", -- LEFT ENG ANTI-ICE
    [363] = "%d", -- RIGHT ENG ANTI-ICE
    [364] = "%d", -- L DUST PROT ON FWD
    [365] = "%d", -- R DUST PROT ON
    [366] = "%d", -- L DUST PROT AFT
    [367] = "%d", -- R DUST PROT AFT
    [368] = "%d", -- HEATER OPER (anti-ice)
    [373] = "%d", -- SECTION 1
    [374] = "%d", -- SECTION 3
    [375] = "%d", -- SECTION 2
    [376] = "%d", -- SECTION 4

    [377] = "%d", -- FIRE LEFT ENG
    [378] = "%d", -- FIRE RIGHT ENG
    [379] = "%d", -- FIRE COMBUST
    [380] = "%d", -- FIRE APU
    [381] = "%d", -- MAIN DISCH
    [382] = "%d", -- MAIN DISCH
    [383] = "%d", -- MAIN DISCH
    [384] = "%d", -- MAIN DISCH
    [385] = "%d", -- ALTN DISCH
    [386] = "%d", -- ALTN DISCH
    [387] = "%d", -- ALTN DISCH
    [388] = "%d", -- ALTN DISCH

    [398] = "%d", -- DETECTOR TEST

    [408] = "%d", -- AUX SYS ON
    [414] = "%d", -- AUTO IGNITION ON
    [416] = "%d", -- OIL PRESS NORMAL
    [417] = "%d", -- RPM NORMAL
    [418] = "%d", -- RPM OVERSPEED
    [420] = "%d", -- AUTO IGNITION ON
    [424] = "%d", -- STARTER ON

    [434] = "%d", -- LFT VALVE CLOSED
    [435] = "%d", -- RGT VALVE CLOSED
    [436] = "%d", -- CROSSFEEED CLOSED
    [441] = "%d", -- SERVICE PUMP ON
    [442] = "%d", -- LFT PUMP ON
    [443] = "%d", -- RGT PUMP ON

    [461] = "%d", -- PREHEAT
    [462] = "%d", -- IGNITION
    [463] = "%d", -- COMBUST HTR ON

    [490] = "%d", -- HEATER OPER

    [504] = "%d", -- TURN ON RECT 1
    [505] = "%d", -- TURN ON RECT 2
    [506] = "%d", -- TURN ON RECT 3
    [507] = "%d", -- EXT PWR ON
    [508] = "%d", -- EQUIP TEST
    [509] = "%d", -- L DUST PROT ON
    [510] = "%d", -- R DUST PROT ON

    [543] = "%d", -- GEN 1 FAIL
    [544] = "%d", -- GEN 2 FAIL
    [545] = "%d", -- EXT PWR ON
    [546] = "%d", -- INVERTER ON

    [554] = "%d", -- BOMB CCT ON
    [555] = "%d", -- RACK 1 LOADED
    [556] = "%d", -- RACK 2 LOADED
    [557] = "%d", -- RACK 3 LOADED
    [558] = "%d", -- RACK 4 LOADED
    [559] = "%d", -- RACK 5 LOADED
    [560] = "%d", -- RACK 6 LOADED
    [561] = "%d", -- EMERG ARMED
    [562] = "%d", -- FIRE EXT 1 ARMED
    [563] = "%d", -- FIRE EXT 3 ARMED
    [564] = "%d", -- FIRE EXT 4 ARMED
    [565] = "%d", -- FIRE EXT 6 ARMED
    [566] = "%d", -- ROCKET CCT ON
    [567] = "%d", -- GUN CCT ON
    [568] = "%d", -- CAMERA ON
    [860] = "%d", -- PKT CCT ON
    [861] = "%d", -- PKT CCT ON

    [705] = "%d", -- EMERG ARMED
    [710] = "%d", -- BOMB CCT ON
    [711] = "%d", -- RACK 1 LOADED
    [712] = "%d", -- RACK 2 LOADED
    [713] = "%d", -- RACK 3 LOADED
    [714] = "%d", -- RACK 4 LOADED
    [715] = "%d", -- RACK 5 LOADED
    [716] = "%d", -- RACK 6 LOADED
}

PWDEV.ConfigArguments =
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end