-- CH-47F Chinook

CH47F_CDU = dofile(lfs.writedir()..[[Scripts\pw-dev_script\disp\CH47F_CDU.lua]])

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- FUEL CONTR
    [1] = "%d",  -- L FWD AUX sw
    [2] = "%d",  -- L sw 2
    [3] = "%d",  -- L
    [4] = "%d",  -- L
    [5] = "%d",  -- R FWD AUX sw
    [6] = "%d",  -- R
    [7] = "%d",  -- R
    [8] = "%d",  -- R AFT AUX
    [9] = "%d",  -- C XFEED sw
    [10] = "%d",  -- C REFUEL sw

    -- LEFT Circuits
    [17] = "%.1f",  -- 
    [18] = "%.1f",  -- 
    [19] = "%.1f",  -- 
    [20] = "%.1f",  -- 
    [21] = "%.1f",  -- 
    [22] = "%.1f",  -- 
    [23] = "%.1f",  -- 
    [24] = "%.1f",  -- 
    [25] = "%.1f",  -- 
    [26] = "%.1f",  -- 
    [27] = "%.1f",  -- 
    [28] = "%.1f",  -- 
    [29] = "%.1f",  -- 
    [30] = "%.1f",  -- 
    [31] = "%.1f",  -- 
    [32] = "%.1f",  -- 
    [33] = "%.1f",  -- 
    [34] = "%.1f",  -- 
    [35] = "%.1f",  -- 

    [37] = "%.1f",  -- 
    [40] = "%.1f",  -- 
    [42] = "%.1f",  -- 

    [45] = "%.1f",  -- 
    [46] = "%.1f",  -- 
    [47] = "%.1f",  -- 
    [48] = "%.1f",  -- 
    [49] = "%.1f",  -- 
    [50] = "%.1f",  -- 
    [51] = "%.1f",  -- 
    [52] = "%.1f",  -- 
    [53] = "%.1f",  -- 
    [54] = "%.1f",  -- 
    [55] = "%.1f",  -- 
    [56] = "%.1f",  -- 
    [57] = "%.1f",  -- 
    [58] = "%.1f",  -- 
    [59] = "%.1f",  -- 
    [60] = "%.1f",  -- 
    [61] = "%.1f",  -- 
    [62] = "%.1f",  -- 
    [63] = "%.1f",  -- 
    [64] = "%.1f",  -- 
    [65] = "%.1f",  -- 
    [66] = "%.1f",  -- 

    [70] = "%.1f",  -- 
    [73] = "%.1f",  -- 
    [75] = "%.1f",  -- 
    [76] = "%.1f",  -- 
    [77] = "%.1f",  -- 

    [85] = "%.1f",  -- 
    [86] = "%.1f",  -- 
    [87] = "%.1f",  -- 
    [88] = "%.1f",  -- 
    [89] = "%.1f",  -- 
    [90] = "%.1f",  -- 
    [91] = "%.1f",  -- 
    [92] = "%.1f",  -- 
    [93] = "%.1f",  -- 
    [94] = "%.1f",  -- 
    [95] = "%.1f",  -- 
    [96] = "%.1f",  -- 
    [97] = "%.1f",  -- 
    [98] = "%.1f",  -- 
    [99] = "%.1f",  -- 

    [103] = "%.1f",  -- 
    [106] = "%.1f",  -- 
    [108] = "%.1f",  -- 
    [109] = "%.1f",  -- 

    [114] = "%.1f",  -- 
    [115] = "%.1f",  -- 
    [116] = "%.1f",  -- 
    [117] = "%.1f",  -- 
    [118] = "%.1f",  -- 
    [119] = "%.1f",  -- 
    [120] = "%.1f",  -- 
    [121] = "%.1f",  -- 
    [122] = "%.1f",  -- 
    [123] = "%.1f",  -- 
    [124] = "%.1f",  -- 
    [125] = "%.1f",  -- 
    [126] = "%.1f",  -- 
    [127] = "%.1f",  -- 
    [128] = "%.1f",  -- 
    [129] = "%.1f",  -- 
    [130] = "%.1f",  -- 
    [131] = "%.1f",  -- 
    [132] = "%.1f",  -- 
    [133] = "%.1f",  -- 
    [134] = "%.1f",  -- 

    [136] = "%.1f",  -- 
    [139] = "%.1f",  -- 

    [147] = "%.1f",  -- 
    [148] = "%.1f",  -- 
    [149] = "%.1f",  -- 
    [150] = "%.1f",  -- 
    [151] = "%.1f",  -- 

    [157] = "%.1f",  -- 
    [158] = "%.1f",  -- 
    [159] = "%.1f",  -- 
    [160] = "%.1f",  -- 
    [161] = "%.1f",  -- 
    [162] = "%.1f",  -- 
    [163] = "%.1f",  -- 

    [165] = "%.1f",  -- 
    [166] = "%.1f",  -- 
    [167] = "%.1f",  -- 
    [168] = "%.1f",  -- 
    [169] = "%.1f",  -- 
    [170] = "%.1f",  -- 
    [172] = "%.1f",  -- 
    [175] = "%.1f",  -- 
    [176] = "%.1f",  -- 

    -- RIGHT Circuits
    [184] = "%.1f",  -- 
    [185] = "%.1f",  -- 
    [186] = "%.1f",  -- 
    [187] = "%.1f",  -- 
    [188] = "%.1f",  -- 
    [189] = "%.1f",  -- 
    [190] = "%.1f",  -- 
    [191] = "%.1f",  -- 
    [192] = "%.1f",  -- 
    [193] = "%.1f",  -- 
    [194] = "%.1f",  -- 
    [195] = "%.1f",  -- 
    [196] = "%.1f",  -- 
    [197] = "%.1f",  -- 
    [198] = "%.1f",  -- 
    [199] = "%.1f",  -- 

    [202] = "%.1f",  -- 
    [205] = "%.1f",  -- 
    [207] = "%.1f",  -- 
    
    [213] = "%.1f",  -- 
    [214] = "%.1f",  -- 
    [215] = "%.1f",  -- 
    [216] = "%.1f",  -- 
    [217] = "%.1f",  -- 
    [218] = "%.1f",  -- 
    [219] = "%.1f",  -- 
    [220] = "%.1f",  -- 

    [222] = "%.1f",  -- 
    [223] = "%.1f",  -- 
    [224] = "%.1f",  -- 
    [225] = "%.1f",  -- 
    [226] = "%.1f",  -- 
    [227] = "%.1f",  -- 
    [228] = "%.1f",  -- 
    [229] = "%.1f",  -- 
    [230] = "%.1f",  -- 
    [231] = "%.1f",  -- 
    [232] = "%.1f",  -- 
    [233] = "%.1f",  -- 

    [235] = "%.1f",  -- 
    [238] = "%.1f",  -- 
    [240] = "%.1f",  -- 
    [241] = "%.1f",  -- 
    [242] = "%.1f",  -- 

    [250] = "%.1f",  -- 
    [251] = "%.1f",  -- 
    [252] = "%.1f",  -- 
    [253] = "%.1f",  -- 
    [254] = "%.1f",  -- 
    [255] = "%.1f",  -- 
    [256] = "%.1f",  -- 
    [257] = "%.1f",  -- 
    [258] = "%.1f",  -- 
    [259] = "%.1f",  -- 
    [260] = "%.1f",  -- 
    [261] = "%.1f",  -- 
    [262] = "%.1f",  -- 

    [264] = "%.1f",  -- 
    [268] = "%.1f",  -- 
    [271] = "%.1f",  -- 
    [273] = "%.1f",  -- 

    [277] = "%.1f",  -- 
    [278] = "%.1f",  -- 
    [279] = "%.1f",  -- 
    [280] = "%.1f",  -- 
    [281] = "%.1f",  -- 
    [282] = "%.1f",  -- 
    [283] = "%.1f",  -- 
    [284] = "%.1f",  -- 
    [285] = "%.1f",  -- 
    [286] = "%.1f",  -- 
    [287] = "%.1f",  -- 
    [288] = "%.1f",  -- 
    [289] = "%.1f",  -- 
    [290] = "%.1f",  -- 
    [291] = "%.1f",  -- 
    [292] = "%.1f",  -- 
    [293] = "%.1f",  -- 
    [294] = "%.1f",  -- 
    [295] = "%.1f",  -- 
    [296] = "%.1f",  -- 
    [297] = "%.1f",  -- 
    [298] = "%.1f",  -- 
    [299] = "%.1f",  -- 

    [301] = "%.1f",  -- 
    [304] = "%.1f",  -- 

    [310] = "%.1f",  -- 
    [311] = "%.1f",  -- 
    [312] = "%.1f",  -- 
    [313] = "%.1f",  -- 
    [314] = "%.1f",  -- 
    [315] = "%.1f",  -- 
    [316] = "%.1f",  -- 

    [318] = "%.1f",  -- 
    [319] = "%.1f",  -- 
    [320] = "%.1f",  -- 
    [321] = "%.1f",  -- 
    [322] = "%.1f",  -- 
    [323] = "%.1f",  -- 
    [324] = "%.1f",  -- 
    [325] = "%.1f",  -- 
    [326] = "%.1f",  -- 
    [327] = "%.1f",  -- 
    [328] = "%.1f",  -- 

    [330] = "%.1f",  -- 
    [331] = "%.1f",  -- 
    [332] = "%.1f",  -- 
    [334] = "%.1f",  -- 
    [337] = "%.1f",  -- 
    [340] = "%.1f",  -- 
    [341] = "%.1f",  -- 


    -- LTG
    [505] = "%.1f", -- CTR CSL knob
    [506] = "%.1f", -- STICK POS knob
    -- INTR LTG
    [507] = "%d",   -- INST sw
    [508] = "%d",   -- OVHD sw
    [509] = "%.1f", -- EMER EXIT sw
    [510] = "%.1f", -- DOME sw
    [511] = "%.1f", -- knob
    -- EXT LTG
    [512] = "%.1f",  -- knob 1
    [513] = "%.1f",  -- IR FLASH PATT knob
    [514] = "%.1f",  -- IR INTEN knob
    [515] = "%.1f",  -- sw 1
    [516] = "%d",  -- sw 2
    [517] = "%.1f",  -- knob
    [518] = "%.1f",  -- sw 3
    [519] = "%d",  -- sw 4
    -- PLT LTG
    [520] = "%d",  -- PLT SRCHLT sw
    [521] = "%.1f",  -- MODE SEL sw
    [522] = "%.1f",  -- CTR INST knob
    [523] = "%.1f",  -- PLT INST knob
    
    -- CPLT LTG
    [524] = "%d",  -- switch
    [525] = "%.1f",  -- CPLT INST knob
    [526] = "%.1f",  -- OVHD CSL knob
    -- HTG
    [539] = "%d",  -- GREEN light
    [540] = "%d",  -- RED light
    [541] = "%.1f",  -- JUMP LT switch
    [542] = "%d",  -- ALARM switch
    [543] = "%.1f",  -- CABIN TEMP SEL knob
    [544] = "%.1f",  -- BLWR ONLY switch
    -- [545] = "%d",  -- 
    [756] = "%.1f",  -- W/S WIPER knob
    -- ELEC
    [556] = "%.1f",  -- GEN 1 sw
    [557] = "%.1f",  -- GEN 2 sw
    [558] = "%.1f",  -- GEN 3 sw
    [559] = "%d",  -- BATT sw
    [560] = "%.1f",  -- APU sw
    [562] = "%d",  -- UTIL PRES lt
    [563] = "%d",  -- APU RDY lt

    -- AFCS
    [575] = "%d",  -- CPLR light
    [576] = "%d",  -- FWD switch
    [577] = "%d",  -- AFT switch
    [578] = "%d",  -- mode switch
    [579] = "%.1f",  -- knob
    
    [580] = "%.1f", -- cdu_dimmer 1
    [581] = "%.1f", -- cdu_dimmer 2
    -- EMERGENCY
    [583] = "%.1f", -- radio switch
    [584] = "%d",   -- ident switch
    [585] = "%.1f", -- gd switch
    [586] = "%d",  -- zero switch
    -- CDU MFK
    -- irght
    [982] = "%.1f",  -- out knob
    [983] = "%.1f",  -- in knob
    [984] = "%d",  -- push knob
    -- left
    [985] = "%.1f",  -- out knob
    [986] = "%.1f",  -- in knob
    [987] = "%d",  -- push knob

    [1392] = "%d",  -- MASTER CAUTION light CPLT
    [1394] = "%d",  -- MASTER CAUTION light PLT
}

PWDEV.ConfigArguments =
{
}

local plt_CDU = {}
local cpg_CDU = {}

local cpg_CDU_color = {}
local plt_CDU_color = {}

local function CreateCDU()
    local cdu_indicator_data = CH47F_CDU
    local LINE_LEN = 24

    local function parse_cdu(indicator_id)
        local dcs_cdu = PWDEV.Tools.getListIndicatorValue(indicator_id)
        -- todo: return different page based on the actual page
        local displayLines, colorString = PWDEV.Displays.GetDisplayLinesWithColors(dcs_cdu, LINE_LEN, 15, cdu_indicator_data, function() return "MAIN" end)

        return displayLines, colorString
    end

    plt_CDU, plt_CDU_color = parse_cdu(1)
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    CreateCDU()

    -- PLT
    send(2101, plt_CDU[1] .. plt_CDU_color[1])
    send(2102, plt_CDU[2] .. plt_CDU_color[2])
    send(2103, plt_CDU[3] .. plt_CDU_color[3])
    send(2104, plt_CDU[4] .. plt_CDU_color[4])
    send(2105, plt_CDU[5] .. plt_CDU_color[5])
    send(2106, plt_CDU[6] .. plt_CDU_color[6])
    send(2107, plt_CDU[7] .. plt_CDU_color[7])
    send(2108, plt_CDU[8] .. plt_CDU_color[8])
    send(2109, plt_CDU[9] .. plt_CDU_color[9])
    send(2110, plt_CDU[10]  .. plt_CDU_color[10])
    send(2111, plt_CDU[11]  .. plt_CDU_color[11])
    send(2112, plt_CDU[12]  .. plt_CDU_color[12])
    send(2113, plt_CDU[13]  .. plt_CDU_color[13])
    send(2114, plt_CDU[14]  .. plt_CDU_color[14])
    send(2115, plt_CDU[15]  .. plt_CDU_color[15])

    local warn = PWDEV.Tools.getListIndicatorValue(8) or {}
    if not warn then
        return
    end

    local caut1      = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt1)
    local caut2      = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt2)
    local caut3      = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt3)
    local caut4      = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt4)
    local caut5      = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt5)
    local caut6      = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt6)
    local caut7      = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt7)
    local caut8      = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt8)
    local caut9      = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt9)
    local caut10     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt10)
    local caut11     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt11)
    local caut12     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt12)
    local caut13     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt13)
    local caut14     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt14)
    local caut15     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt15)
    local caut16     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt16)
    local caut17     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt17)
    local caut18     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt18)
    local caut19     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt19)
    local caut20     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt20)
    local caut21     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt21)
    local caut22     = coerce_nil_to_string(warn.caut_unacknowledted_msg_txt22)

    local adv1      = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt1)  or coerce_nil_to_string(warn.adv_acknowledted_msg_txt1)
    local adv2      = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt2)  or coerce_nil_to_string(warn.adv_acknowledted_msg_txt2)
    local adv3      = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt3)  or coerce_nil_to_string(warn.adv_acknowledted_msg_txt3)
    local adv4      = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt4)  or coerce_nil_to_string(warn.adv_acknowledted_msg_txt4)
    local adv5      = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt5)  or coerce_nil_to_string(warn.adv_acknowledted_msg_txt5)
    local adv6      = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt6)  or coerce_nil_to_string(warn.adv_acknowledted_msg_txt6)
    local adv7      = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt7)  or coerce_nil_to_string(warn.adv_acknowledted_msg_txt7)
    local adv8      = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt8)  or coerce_nil_to_string(warn.adv_acknowledted_msg_txt8)
    local adv9      = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt9)  or coerce_nil_to_string(warn.adv_acknowledted_msg_txt9)
    local adv10     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt10) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt10)
    local adv11     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt11) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt11)
    local adv12     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt12) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt12)
    local adv13     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt13) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt13)
    local adv14     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt14) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt14)
    local adv15     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt15) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt15)
    local adv16     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt16) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt16)
    local adv17     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt17) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt17)
    local adv18     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt18) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt18)
    local adv19     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt19) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt19)
    local adv20     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt20) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt20)
    local adv21     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt21) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt21)
    local adv22     = coerce_nil_to_string(warn.adv_unacknowledted_msg_txt22) or coerce_nil_to_string(warn.adv_acknowledted_msg_txt22)


    send(2201, caut1)
    send(2202, caut2)
    send(2203, caut3)
    send(2204, caut4)
    send(2205, caut5)
    send(2206, caut6)
    send(2207, caut7)
    send(2208, caut8)
    send(2209, caut9)
    send(2210, caut10)
    send(2211, caut11)
    send(2212, caut12)
    send(2213, caut13)
    send(2214, caut14)
    send(2215, caut15)
    send(2216, caut16)
    send(2217, caut17)
    send(2218, caut18)
    send(2219, caut19)
    send(2220, caut20)
    send(2221, caut21)
    send(2222, caut22)

    send(2301, adv1)
    send(2302, adv2)
    send(2303, adv3)
    send(2304, adv4)
    send(2305, adv5)
    send(2306, adv6)
    send(2307, adv7)
    send(2308, adv8)
    send(2309, adv9)
    send(2310, adv10)
    send(2311, adv11)
    send(2312, adv12)
    send(2313, adv13)
    send(2314, adv14)
    send(2315, adv15)
    send(2316, adv16)
    send(2317, adv17)
    send(2318, adv18)
    send(2319, adv19)
    send(2320, adv20)
    send(2321, adv21)
    send(2322, adv22)
end