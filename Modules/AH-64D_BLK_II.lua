-- AH-64D Longbow

ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    -- CPG MPD Left
    [86] = "%.1f",  -- BRT knob
    [87] = "%.1f",  -- VID knob
    [94] = "%.1f",  -- DAY/NT/MONO knob
    -- CPG MPD Right
    [120] = "%.1f",  -- BRT knob
    [121] = "%.1f",  -- VID knob
    [128] = "%.1f",  -- DAY/NT/MONO knob
    -- CPG TEDAC
    [148] = "%.1f",  -- GAIN knob
    [149] = "%.1f",  -- LEV knob
    [154] = "%.1f",  -- DAY/NT/OFF knob

    [265] = "%.1f",  -- EUFD BRT knob

    -- CPG FIRE DET/EXTG
    [284] = "%1d",  -- ENG 1 btn
    [285] = "%1d",  -- ENG 1 cover
    [286] = "%1d",  -- APU btn
    [287] = "%1d",  -- APU cover
    [288] = "%1d",  -- ENG 2 btn
    [289] = "%1d",  -- ENG 2 cover
    -- [290] = "%1d",  -- PRI btn
    [291] = "%1d",  -- TEST -1/0-1
    -- [292] = "%1d",  -- RES btn
    [441] = "%1d",  -- ENG 1 FIRE light yellow
    [442] = "%1d",  -- ENG 1 RDY light green
    [443] = "%1d",  -- APU FIRE light yellow
    [444] = "%1d",  -- APU RDY light green
    [445] = "%1d",  -- ENG 2 FIRE light yellow
    [446] = "%1d",  -- ENG 2 RDY light green
    [447] = "%1d",  -- PRI DISCH light green
    [448] = "%1d",  -- RES DISCH light green
    -- CPG ARMAMENT
    -- [293] = "%1d",  -- ARMAMENT A/S btn
    -- [294] = "%1d",  -- ARMAMENT GND ORIDE btn
    [438] = "%1d",  -- A/S ARM light yellow
    [439] = "%1d",  -- A/S SAFE light green
    [440] = "%1d",  -- GND ORIDE ON light green


    [621] = "%.1f",  -- CPG Keyboard bright knob
    -- CPG EMERGENCY
    -- [358] = "%1d",  -- GUARD btn
    -- [359] = "%1d",  -- XPNDR btn
    [360] = "%1d",  -- ZEROIZE
    -- [361] = "%1d",  -- EMERG HYD btn
    [427] = "%1d",  -- GUARD ON light green
    [428] = "%1d",  -- XPNDR ON light green
    [429] = "%1d",  -- EMERG HYD ON light green
    --
    [362] = "%1d",  -- TAIL WHEEL
    [363] = "%1d",  -- NVS MODE switch 1/0/-1
    [426] = "%1d",  -- TAIL WHEEL UNLOCK light green
    -- CPG INTR LT
    [365] = "%.1f",  -- SIGNAL knob
    [366] = "%.1f",  -- PRIMARY knob
    [367] = "%.1f",  -- FLOOD knob
    -- CPG STORES JETTISON
    -- [368] = "%1d",  -- L OUTBD btn
    -- [369] = "%1d",  -- L INBD btn
    -- [370] = "%1d",  -- R INBD btn
    -- [371] = "%1d",  -- R OUTBD btn
    -- [372] = "%1d",  -- L TIP btn
    -- [373] = "%1d",  -- JETT btn
    -- [374] = "%1d",  -- R TIP btn
    [430] = "%1d",  -- L OUTBD ARM light green
    [431] = "%1d",  -- L INDB ARM light green
    [432] = "%1d",  -- R INBD ARM light green
    [433] = "%1d",  -- R OUTBD ARM light green
    [434] = "%1d",  -- L TIP light green
    [435] = "%1d",  -- R TIP light green

    -- CPG COMM
    [375] = "%.1f",  -- VHF knob
    [376] = "%.1f",  -- UHF knob
    [377] = "%.1f",  -- FM1 knob
    [378] = "%.1f",  -- FM2 knob
    [379] = "%.1f",  -- HF knob
    [380] = "%1d",  -- SQL 1
    [381] = "%1d",  -- SQL 2
    [382] = "%1d",  -- SQL 3
    [383] = "%1d",  -- SQL 4
    [384] = "%1d",  -- SQL 5
    [385] = "%.1f",  -- MASTER knob
    [386] = "%.1f",  -- SENS knob
    [387] = "%1d",  -- ICS 1/0/-1
    -- [388] = "%1d",  -- IDENT
    [389] = "%.1f",  -- AUX IFF knob
    [390] = "%.1f",  -- AUX RLWR knob
    [391] = "%.1f",  -- AUX ATA knob
    [392] = "%.1f",  -- AUX VCR knob
    [393] = "%.1f",  -- AUX ADF knob
    -- CPG WINDSHIELD WIPER
    [394] = "%1d",  -- DEFOG
    [395] = "%.1f",  -- knob 0.1
    -- CPG PROCESSOR SELECT
    [396] = "%1d",  -- button
    [399] = "%1d",  -- switch SP1/AUTO/SP2 -1/0/1
    [436] = "%1d",  -- SP1 light green
    [437] = "%1d",  -- SP2 light green

    -- CPG MASTER WARN/CAUTION
    -- [805] = "%1d",  -- MSTR WARN button
    -- [807] = "%1d",  -- MSTR CAUT button
    [806] = "%1d",  -- MSTR WARN light yellow
    [808] = "%1d",  -- MSTR CAUT light green

------------------------------------------------------
    -- PLT MPD Left
    [18] = "%.1f",  -- BRT knob
    [19] = "%.1f",  -- VID knob
    [26] = "%.1f",  -- DAY/NT/MONO knob
    -- PLT MPD Right
    [52] = "%.1f",  -- BRT knob
    [53] = "%.1f",  -- VID knob
    [60] = "%.1f",  -- DAY/NT/MONO knob

    [273] = "%.1f",  -- EUFD BRT knob

    -- PLT FIRE DET/EXTG
    [295] = "%1d",  -- ENG 1 btn
    [296] = "%1d",  -- ENG 1 cover
    [297] = "%1d",  -- APU btn
    [298] = "%1d",  -- APU cover
    [299] = "%1d",  -- ENG 2 btn
    [300] = "%1d",  -- ENG 2 cover
    -- [301] = "%1d",  -- PRI btn
    [302] = "%1d",  -- TEST -1/0-1
    -- [303] = "%1d",  -- RES btn
    [416] = "%1d",  -- ENG 1 FIRE light yellow
    [417] = "%1d",  -- ENG 1 RDY light green
    [418] = "%1d",  -- APU FIRE light yellow
    [419] = "%1d",  -- APU RDY light green
    [420] = "%1d",  -- ENG 2 FIRE light yellow
    [421] = "%1d",  -- ENG 2 RDY light green
    [422] = "%1d",  -- PRI DISCH light green
    [423] = "%1d",  -- RES DISCH light green

    -- PLT MASTER WARN/CAUTION
    -- [304] = "%1d",  -- MASTER WARN btn
    -- [305] = "%1d",  -- MASTER CAUT btn
    [424] = "%1d",  -- MASTER WARN yellow
    [425] = "%1d",  -- MASTER CAUT green

    -- PLT ARMAMENT
    -- [306] = "%1d",  -- ARMAMENT A/S btn
    -- [307] = "%1d",  -- ARMAMENT GND ORIDE btn
    [413] = "%1d",  -- A/S ARM light yellow
    [414] = "%1d",  -- A/S SAFE light green
    [415] = "%1d",  -- GND ORIDE ON light green

    -- PLT Keyboard
    [316] = "%.1f",  -- PLT Keyboard bright knob
    -- 
    [308] = "%1d",  -- TAIL WHEEL
    [309] = "%1d",  -- NVS MODE switch 1/0/-1
    [402] = "%1d",  -- TAIL WHEEL UNLOCK light green
    -- PLT EMERGENCY
    -- [310] = "%1d",  -- GUARD btn
    -- [311] = "%1d",  -- XPNDR btn
    [312] = "%1d",  -- ZEROIZE
    -- [313] = "%1d",  -- EMERG HYD
    [403] = "%1d",  -- GUARD ON light green
    [404] = "%1d",  -- XPNDR ON light green
    [405] = "%1d",  -- EMERG HYD ON light green
    -- PLT POWER
    [406] = "%1d",  -- APU ON light green
    -- PLT STORES JETTISON
    -- [319] = "%1d",  -- L OUTBD btn
    -- [320] = "%1d",  -- L INBD btn
    -- [321] = "%1d",  -- R INBD btn
    -- [322] = "%1d",  -- R OUTBD btn
    -- [323] = "%1d",  -- L TIP btn
    -- [324] = "%1d",  -- JETT btn
    -- [325] = "%1d",  -- R TIP btn
    [407] = "%1d",  -- L OUTBD ARM light green
    [408] = "%1d",  -- L INDB ARM light green
    [409] = "%1d",  -- R INBD ARM light green
    [410] = "%1d",  -- R OUTBD ARM light green
    [411] = "%1d",  -- L TIP light green
    [412] = "%1d",  -- R TIP light green
    -- PLT EXT/INTR LT
    [326] = "%1d",  -- NAV switch 1/0/-1
    [327] = "%.1f",  -- SIGNAL knob
    [328] = "%.1f",  -- PRIMARY knob
    [329] = "%.1f",  -- FORM knob
    [330] = "%.1f",  -- FLOOD knob
    [331] = "%.1f",  -- STBY INST knob
    [332] = "%1d",  -- ANTI switch 1/0/-1

    -- PLT COMM
    [334] = "%.1f",  -- VHF knob
    [335] = "%.1f",  -- UHF knob
    [336] = "%.1f",  -- FM1 knob
    [337] = "%.1f",  -- FM2 knob
    [338] = "%.1f",  -- HF knob
    [339] = "%1d",  -- SQL 1
    [340] = "%1d",  -- SQL 2
    [341] = "%1d",  -- SQL 3
    [342] = "%1d",  -- SQL 4
    [343] = "%1d",  -- SQL 5
    [344] = "%.1f",  -- MASTER knob
    [345] = "%.1f",  -- SENS knob
    [346] = "%1d",  -- ICS 1/0/-1
    -- [347] = "%1d",  -- IDENT
    [348] = "%.1f",  -- AUX IFF knob
    [349] = "%.1f",  -- AUX RLWR knob
    [350] = "%.1f",  -- AUX ATA knob
    [351] = "%.1f",  -- AUX VCR knob
    [352] = "%.1f",  -- AUX ADF knob

    [353] = "%1d",  -- CHK OVSP 1/0/-1
    [354] = "%1d",  -- TEST 1/0/-1
    [355] = "%1d",  -- GEN RST -1/0/1
    -- PLT WINDSHIELD WIPER
    -- [356] = "%1d",  -- DEFOG
    [357] = "%.1f",  -- knob 0.1
}

ExportScript.ConfigArguments = 
{
}

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end