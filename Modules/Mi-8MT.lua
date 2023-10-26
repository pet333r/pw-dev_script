-- Mi-8MT
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments = 
{
    [64] = "%1d", -- LOW FUEL 270 LT
    [65] = "%1d", -- DOPPLER FAIL

    [68] = "%1d", -- FUEL FILTER LEFT ENG
    [69] = "%1d", -- FUEL FILTER RIGHT ENG
    [70] = "%1d", -- CHIP LEFT ENG
    [71] = "%1d", -- CHIP RIGHT ENG
    [72] = "%1d", -- HIGH VIB LEFT ENG
    [73] = "%1d", -- HIGH VIB RIGHT ENG
    [74] = "%1d", -- FIRE
    [76] = "%1d", -- SHUT OFF LEFT ENG
    [77] = "%1d", -- SHUT OFF RIGHT ENG

    [78] = "%1d", -- OVERSPEED LEFT ENG
    [79] = "%1d", -- OVERSPEED RIGHT ENG
    [80] = "%1d", -- LOW OIL P LEFT ENG
    [81] = "%1d", -- LOW OIL P RIGHT ENG
    [82] = "%1d", -- EMER PWR LEFT ENG
    [83] = "%1d", -- EMER PWR RIGHT ENG
    [84] = "%1d", -- GOV PWR LEFT ENG
    [85] = "%1d", -- GOV PWR RIGHT ENG
    [86] = "%1d", -- EXT PWR ON
    [87] = "%1d", -- 620I FAIL

    [316] = "%1d", -- LFT ENG TEMP REG
    [317] = "%1d", -- RGT ENG TEMP REG

    [325] = "%1d", -- HORN ON
    [326] = "%1d", -- HOOK OPEN
    [327] = "%1d", -- DOORS OPEN

    [340] = "%1d", -- TURN ON VWS SYS
    [341] = "%1d", -- HEATER OPER

    [360] = "%1d", -- ICING
    [361] = "%1d", -- ANTI-ICE SYS ON
    [362] = "%1d", -- LEFT ENG ANTI-ICE
    [363] = "%1d", -- RIGHT ENG ANTI-ICE
    [364] = "%1d", -- L DUST PROT ON FWD
    [365] = "%1d", -- R DUST PROT ON
    [366] = "%1d", -- L DUST PROT AFT
    [367] = "%1d", -- R DUST PROT AFT
    [368] = "%1d", -- HEATER OPER (anti-ice)
    [373] = "%1d", -- SECTION 1
    [374] = "%1d", -- SECTION 3
    [375] = "%1d", -- SECTION 2
    [376] = "%1d", -- SECTION 4

    [377] = "%1d", -- FIRE LEFT ENG
    [378] = "%1d", -- FIRE RIGHT ENG
    [379] = "%1d", -- FIRE COMBUST
    [380] = "%1d", -- FIRE APU
    [381] = "%1d", -- MAIN DISCH
    [382] = "%1d", -- MAIN DISCH
    [383] = "%1d", -- MAIN DISCH
    [384] = "%1d", -- MAIN DISCH
    [385] = "%1d", -- ALTN DISCH
    [386] = "%1d", -- ALTN DISCH
    [387] = "%1d", -- ALTN DISCH
    [388] = "%1d", -- ALTN DISCH

    [398] = "%1d", -- DETECTOR TEST

    [408] = "%1d", -- AUX SYS ON
    [414] = "%1d", -- AUTO IGNITION ON
    [416] = "%1d", -- OIL PRESS NORMAL
    [417] = "%1d", -- RPM NORMAL
    [418] = "%1d", -- RPM OVERSPEED
    [420] = "%1d", -- AUTO IGNITION ON
    [424] = "%1d", -- STARTER ON

    [434] = "%1d", -- LFT VALVE CLOSED
    [435] = "%1d", -- RGT VALVE CLOSED
    [436] = "%1d", -- CROSSFEEED CLOSED
    [441] = "%1d", -- SERVICE PUMP ON
    [442] = "%1d", -- LFT PUMP ON
    [443] = "%1d", -- RGT PUMP ON

    [461] = "%1d", -- PREHEAT
    [462] = "%1d", -- IGNITION
    [463] = "%1d", -- COMBUST HTR ON

    [490] = "%1d", -- HEATER OPER

    [504] = "%1d", -- TURN ON RECT 1
    [505] = "%1d", -- TURN ON RECT 2
    [506] = "%1d", -- TURN ON RECT 3
    [507] = "%1d", -- EXT PWR ON
    [508] = "%1d", -- EQUIP TEST
    [509] = "%1d", -- L DUST PROT ON
    [510] = "%1d", -- R DUST PROT ON

    [543] = "%1d", -- GEN 1 FAIL
    [544] = "%1d", -- GEN 2 FAIL
    [545] = "%1d", -- EXT PWR ON
    [546] = "%1d", -- INVERTER ON

    [554] = "%1d", -- BOMB CCT ON
    [555] = "%1d", -- RACK 1 LOADED
    [556] = "%1d", -- RACK 2 LOADED
    [557] = "%1d", -- RACK 3 LOADED
    [558] = "%1d", -- RACK 4 LOADED
    [559] = "%1d", -- RACK 5 LOADED
    [560] = "%1d", -- RACK 6 LOADED
    [561] = "%1d", -- EMERG ARMED
    [562] = "%1d", -- FIRE EXT 1 ARMED
    [563] = "%1d", -- FIRE EXT 3 ARMED
    [564] = "%1d", -- FIRE EXT 4 ARMED
    [565] = "%1d", -- FIRE EXT 6 ARMED
    [566] = "%1d", -- ROCKET CCT ON
    [567] = "%1d", -- GUN CCT ON
    [568] = "%1d", -- CAMERA ON
    [860] = "%1d", -- PKT CCT ON
    [861] = "%1d", -- PKT CCT ON

    [705] = "%1d", -- EMERG ARMED
    [710] = "%1d", -- BOMB CCT ON
    [711] = "%1d", -- RACK 1 LOADED
    [712] = "%1d", -- RACK 2 LOADED
    [713] = "%1d", -- RACK 3 LOADED
    [714] = "%1d", -- RACK 4 LOADED
    [715] = "%1d", -- RACK 5 LOADED
    [716] = "%1d", -- RACK 6 LOADED
}

PWDEV.ConfigArguments = 
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end