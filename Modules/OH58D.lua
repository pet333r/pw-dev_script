-- OH-58D

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
}

PWDEV.ConfigArguments =
{
    -- CMWS
    [38] = "%.1f", -- 
    [39] = "%.1f", -- 
    [40] = "%.1f", -- 

    -- CMWS 2
    [44] = "%d", -- switch 1
    [45] = "%d", -- switch 2

    [118] = "%.1f", -- switch 1
    [119] = "%.1f", -- switch 2
    [120] = "%.1f", -- switch 3
    [122] = "%.1f", -- MPD knob

    [192] = "%d", -- keyboard switch 1
    [193] = "%d", -- Zeroize Switch Guard
    [194] = "%d", -- Emergency Switch Guard
    [195] = "%d", -- 
    [196] = "%d", -- 

    [247] = "%d", -- 
    [248] = "%d", -- 
    [249] = "%d", -- 
    [250] = "%d", -- 
    [251] = "%.1f", -- 
    [252] = "%.1f", -- 
    [253] = "%.1f", -- 
    [254] = "%d", -- 
    [255] = "%d", -- 
    [256] = "%d", -- 
    [257] = "%d", -- 
    [258] = "%d", -- 
    [259] = "%d", -- 
    [260] = "%d", -- 
    [261] = "%d", -- 
    [262] = "%d", -- 
    [263] = "%d", -- 
    [264] = "%d", -- 
    [268] = "%d", -- 
    [269] = "%d", -- 
    [270] = "%d", -- 
    [271] = "%d", -- 
    [272] = "%d", -- 
    [274] = "%d", -- 
    [275] = "%.1f", -- 
    [276] = "%d", -- 
    [277] = "%d", -- 
    [278] = "%d", -- 
    [279] = "%d", -- 
    [280] = "%d", -- 
    [281] = "%d", -- 

    [640] = "%d", -- 
    [641] = "%d", -- 
    [642] = "%d", -- 
    [643] = "%d", -- 
    [644] = "%d", -- 
    [635] = "%d", -- 
    [636] = "%d", -- 
    [637] = "%d", -- 
    [638] = "%d", -- 
    [639] = "%d", -- 
    [632] = "%d", -- 
    [633] = "%d", -- 
    [634] = "%d", -- 
    [627] = "%d", -- 
    [628] = "%d", -- 
    [629] = "%d", -- 
    [630] = "%d", -- 
    [631] = "%d", -- 
    [621] = "%d", -- 
    [622] = "%d", -- 
    [623] = "%d", -- 
    [624] = "%d", -- 
    [625] = "%d", -- 
    [626] = "%d", -- 
    [617] = "%d", -- 
    [618] = "%d", -- 
    [619] = "%d", -- 
    [620] = "%d", -- 
    [614] = "%d", -- 
    [615] = "%d", -- 
    [616] = "%d", -- 
    [273] = "%d", -- 
    [610] = "%d", -- 
    [611] = "%d", -- 
    [612] = "%d", -- 
    [613] = "%d", -- 

    [675] = "%d", -- 
    [676] = "%d", -- 
    [677] = "%d", -- 
    [678] = "%d", -- 
    [679] = "%d", -- 
    [680] = "%d", -- 
    [669] = "%d", -- 
    [670] = "%d", -- 
    [671] = "%d", -- 
    [672] = "%d", -- 
    [673] = "%d", -- 
    [674] = "%d", -- 
    [663] = "%d", -- 
    [664] = "%d", -- 
    [665] = "%d", -- 
    [666] = "%d", -- 
    [667] = "%d", -- 
    [668] = "%d", -- 
    [657] = "%d", -- 
    [658] = "%d", -- 
    [659] = "%d", -- 
    [660] = "%d", -- 
    [661] = "%d", -- 
    [662] = "%d", -- 
    [651] = "%d", -- 
    [652] = "%d", -- 
    [653] = "%d", -- 
    [654] = "%d", -- 
    [655] = "%d", -- 
    [656] = "%d", -- 
    [645] = "%d", -- 
    [646] = "%d", -- 
    [647] = "%d", -- 
    [648] = "%d", -- 
    [649] = "%d", -- 
    [650] = "%d", -- 

    [681] = "%d", -- 
    [682] = "%d", -- 
    [683] = "%d", -- 
}

local function getParamVisibility(param)
    if param == nil then return end
    v = string.format("%.1f", param)
    if v == "0.0" then
        return "0"
    else
        return "1"
    end
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    local ng = PWDEV.Tools.getListIndicatorValue(1) or {}
    send(2001, PWDEV.Tools.DisplayFormat(string.format("%s", ng.NGParamDisplay), 4, "r"))
    send(2002, PWDEV.Tools.DisplayFormat(string.format("%s", ng.LeftParamDisplay), 3, "r"))
    send(2003, PWDEV.Tools.DisplayFormat(string.format("%s", ng.RightParamDisplay), 3, "r"))

    local trq = PWDEV.Tools.getListIndicatorValue(2)
    if not trq then
        return
    end

    send(2004, string.format("%s", trq.TRQDisplay))
    send(2005, string.format("%s", trq.TGTDisplay))

    local time = PWDEV.Tools.getListIndicatorValue(7) or {}
    send(2006, string.format("%s:%s:%s", time.Hours, time.Minutes, time.Seconds))

    local lcd = PWDEV.Tools.getListIndicatorValue(8) or {}
    local function getChnl(chnl)
        if chnl == nil then return "  "
        else return PWDEV.Tools.DisplayFormat(chnl, 2, "r")
        end
    end

    send(2101, PWDEV.Tools.DisplayFormat(string.format("%s %s", getChnl(lcd.CHNL1), lcd.Freq1), 10, "r"))
    send(2102, PWDEV.Tools.DisplayFormat(string.format("%s %s", getChnl(lcd.CHNL2), lcd.Freq2), 10, "r"))
    send(2103, PWDEV.Tools.DisplayFormat(string.format("%s %s", getChnl(lcd.CHNL3), lcd.Freq3), 10, "r"))
    send(2104, PWDEV.Tools.DisplayFormat(string.format("%s %s", getChnl(lcd.CHNL4), lcd.Freq4), 10, "r"))
    send(2105, PWDEV.Tools.DisplayFormat(string.format("%s %s", getChnl(lcd.CHNL5), lcd.Freq5), 10, "r"))

    send(2106, lcd.Number1)
    send(2107, lcd.Number2)
    send(2108, lcd.Number3)
    send(2109, lcd.Number4)
    send(2110, lcd.Number5)

    local cockpitParams = PWDEV.Tools.getListCockpitParams()

    send(2111,  getParamVisibility(cockpitParams.CopilotSelect_vis1) ..
                getParamVisibility(cockpitParams.CopilotSelect_vis2) ..
                getParamVisibility(cockpitParams.CopilotSelect_vis3) ..
                getParamVisibility(cockpitParams.CopilotSelect_vis4) ..
                getParamVisibility(cockpitParams.CopilotSelect_vis5))

    send(2112,  getParamVisibility(cockpitParams.PilotSelect_vis1) ..
                getParamVisibility(cockpitParams.PilotSelect_vis2) ..
                getParamVisibility(cockpitParams.PilotSelect_vis3) ..
                getParamVisibility(cockpitParams.PilotSelect_vis4) ..
                getParamVisibility(cockpitParams.PilotSelect_vis5))

    send(2113,  getParamVisibility(cockpitParams.Cipher_vis1) ..
                getParamVisibility(cockpitParams.Cipher_vis2) ..
                getParamVisibility(cockpitParams.Cipher_vis3) ..
                getParamVisibility(cockpitParams.Cipher_vis4) ..
                getParamVisibility(cockpitParams.Cipher_vis5))

    -- TRQ
    send(2201,  getParamVisibility(cockpitParams.TRQ_Ladder_vis0) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis1) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis2) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis3) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis4) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis5) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis6) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis7) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis8) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis9) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis10) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis11) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis12) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis13) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis14) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis15) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis16) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis17) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis18) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis19) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis20) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis21) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis22) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis23) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis24) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis25) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis26) ..
                getParamVisibility(cockpitParams.TRQ_Ladder_vis27))

    -- TGT
    send(2202,  getParamVisibility(cockpitParams.TGT_Ladder_vis0) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis1) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis2) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis3) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis4) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis5) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis6) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis7) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis8) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis9) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis10) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis11) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis12) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis13) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis14) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis15) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis16) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis17) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis18) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis19) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis20) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis21) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis22) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis23) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis24) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis25) ..
                getParamVisibility(cockpitParams.TGT_Ladder_vis26))

    -- RPM L
    send(2203,  getParamVisibility(cockpitParams.NRRPM_Ladder_vis0) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis1) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis2) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis3) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis4) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis5) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis6) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis7) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis8) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis9) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis10) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis11) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis12) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis13) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis14) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis15) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis16) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis17) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis18) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis19) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis20) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis21) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis22) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis23) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis24) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis25) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis26) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis27) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis28) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis29) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis30) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis31) ..
                getParamVisibility(cockpitParams.NRRPM_Ladder_vis32))
    -- RPM R
    send(2204,  getParamVisibility(cockpitParams.NPRPM_Ladder_vis0) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis1) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis2) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis3) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis4) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis5) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis6) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis7) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis8) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis9) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis10) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis11) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis12) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis13) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis14) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis15) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis16) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis17) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis18) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis19) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis20) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis21) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis22) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis23) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis24) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis25) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis26) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis27) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis28) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis29) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis30) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis31) ..
                getParamVisibility(cockpitParams.NPRPM_Ladder_vis32))

    send(2301,  getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis0) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis1) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis2) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis3) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis4) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis5) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis6) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis7) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis8) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis9) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis10) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis11) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis12) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis13) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis14) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis15) ..
                getParamVisibility(cockpitParams.TRANSOILPRESS_Ladder_vis16))

    send(2302,  getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis0) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis1) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis2) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis3) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis4) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis5) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis6) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis7) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis8) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis9) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis10) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis11) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis12) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis13) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis14) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis15) ..
                getParamVisibility(cockpitParams.TRANSOILTEMP_Ladder_vis16))

    send(2303,  getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis0) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis1) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis2) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis3) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis4) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis5) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis6) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis7) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis8) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis9) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis10) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis11) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis12) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis13) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis14) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis15) ..
                getParamVisibility(cockpitParams.ENGOILPRESS_Ladder_vis16))

    send(2304,  getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis0) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis1) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis2) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis3) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis4) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis5) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis6) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis7) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis8) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis9) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis10) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis11) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis12) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis13) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis14) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis15) ..
                getParamVisibility(cockpitParams.ENGOILTEMP_Ladder_vis16))

    send(2305,  getParamVisibility(cockpitParams.FUELQTY_Ladder_vis0) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis1) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis2) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis3) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis4) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis5) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis6) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis7) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis8) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis9) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis10) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis11) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis12) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis13) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis14) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis15) ..
                getParamVisibility(cockpitParams.FUELQTY_Ladder_vis16))

    send(2306,  getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis0) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis1) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis2) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis3) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis4) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis5) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis6) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis7) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis8) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis9) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis10) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis11) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis12) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis13) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis14) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis15) ..
                getParamVisibility(cockpitParams.NG_PERCENT_Ladder_vis16))

    send(2307,  getParamVisibility(cockpitParams.BATTV_STARTV_vis) ..
                getParamVisibility(cockpitParams.RECTLD_SGENLD_vis) ..
                getParamVisibility(cockpitParams.ACV_RECTV_vis) ..
                getParamVisibility(cockpitParams.FUELQTY_ENGTRQ_vis) ..
                getParamVisibility(cockpitParams.NG_NP_vis) ..
                getParamVisibility(cockpitParams.BIT_vis))

    local cmws = PWDEV.Tools.parseListIndicatorList(10) or {}
    if (cmws ~= nil) then
        send(2007, string.format("%s", cmws.statusDisplay[1]))
        send(2008, string.format("%s", cmws.statusDisplay[2]))
    end
end