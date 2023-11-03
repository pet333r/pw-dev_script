-- JF-17

local coerce_nil_to_string = PWDEV.Tools.coerce_nil_to_string
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- warning/caution indicator lights (left side)
    [130] = "%1d", -- MASTER WARNING (red)
    [131] = "%1d", -- FIRE (red)
    [132] = "%1d", -- FCS (red)

    -- UFC buttons lights
    [150] = "%1d", -- UFCP Button Light OAP (green)
    [151] = "%1d", -- UFCP Button Light MRK (green)
    [152] = "%1d", -- UFCP Button Light PU (green)
    [153] = "%1d", -- UFCP Button Light HNS (green)
    [154] = "%1d", -- UFCP Button Light AP (green)
    [155] = "%1d", -- UFCP Button Light FPM (green)
    [156] = "%1d", -- UFCP Button Light NULL1 (green)
    [157] = "%1d", -- UFCP Button Light NULL2 (green)

    -- warning/caution indicator lights (right side)
    [160] = "%1d", -- PITCH TRIM (green)
    [161] = "%1d", -- ROLL TRIM (green)
    [162] = "%1d", -- YAW TRIM (green)
    [163] = "%1d", -- AA (green)
    [164] = "%1d", -- AG1 (green)
    [165] = "%1d", -- AG2 (green)
    [166] = "%1d", -- EFCS (green)
    [167] = "%1d", -- No.3 TANK (green)
    [168] = "%1d", -- No.1 TANK (green)
    [169] = "%1d", -- WING DT (green)
    [170] = "%1d", -- CTR DT (green)
    [171] = "%1d", -- ----- (green)
    [172] = "%1d", -- START (green)
    [173] = "%1d", -- AB (green)
    [174] = "%1d", -- COMBAT (green)
    [175] = "%1d", -- EMG HYD (green)
    [176] = "%1d", -- NWS (green)
    [177] = "%1d", -- ADVISORY (green)

    -- warning panel
    [200] = "%1d", -- ----- (red)
    [201] = "%1d", -- OXY LOW (red)
    [202] = "%1d", -- CANOPY (red)
    [203] = "%1d", -- HYD LOW (red)
    [204] = "%1d", -- AIR DATA (red)
    [205] = "%1d", -- LOW FUEL (red)
    [206] = "%1d", -- CABIN PRESS (red)
    [207] = "%1d", -- REDUCE RPM (red)
    [208] = "%1d", -- CONFIG (red)
    [209] = "%1d", -- FUEL PUMP (red)
    [210] = "%1d", -- AC SYS (red)
    [211] = "%1d", -- OIL (red)
    [212] = "%1d", -- DL (red)
    [213] = "%1d", -- START PUMP (red)
    [214] = "%1d", -- DC GEN (red)
    [215] = "%1d", -- STARTER (red)
    [216] = "%1d", -- FCS 3 (red)
    [217] = "%1d", -- BRAKE (red)
    [218] = "%1d", -- BATT (red)
    [219] = "%1d", -- ENG TEMP (red)
    [220] = "%1d", -- FCS 2 (yellow)
    [221] = "%1d", -- ANTI SKID (yellow)
    [222] = "%1d", -- TRU (yellow)
    [223] = "%1d", -- ANTI SURGE (yellow)
    [224] = "%1d", -- FCS 1 (yellow)
    [225] = "%1d", -- NWS (yellow)
    [226] = "%1d", -- STATIC_INV (yellow)
    [227] = "%1d", -- ANTI ICING (yellow)
    [228] = "%1d", -- ROLL CAS (yellow)
    [229] = "%1d", -- ECS (yellow)
    [230] = "%1d", -- EMMC (yellow)
    [231] = "%1d", -- SEC (yellow)
    [232] = "%1d", -- YAW CAS (yellow)
    [233] = "%1d", -- EQUIP HOT (yellow)
    [234] = "%1d", -- LWC (yellow)
    [235] = "%1d", -- EDU (yellow)
    [236] = "%1d", -- AUTOPILOT (yellow)
    [237] = "%1d", -- PITOT HEAT (yellow)
    [238] = "%1d", -- AVIONS (yellow)
    [239] = "%1d", -- DEEC (yellow)
    [240] = "%1d", -- EFCS (yellow)
    [241] = "%1d", -- SEAT (yellow)
    --[242] = "%1d", -- OXY BLINK (green)
    [900] = "%1d", -- Warning Panel Day/Night Switch
    [901] = "%.1f", -- Warning Panel Brightness Knob
    [902] = "%1d", -- Warning Panel Test Button
    [903] = "%.1f", -- Oxygen Indicator Brightness Knob

    -- AAP button lights
    [260] = "%1d", -- ACMI (green)
    [261] = "%1d", -- NULL1 (green)
    [262] = "%1d", -- NULL2 (green)
    [263] = "%1d", -- NULL3 (green)
    [264] = "%1d", -- HMD (green)
    [265] = "%1d", -- SPJ (green)
    [266] = "%1d", -- CLDP (green)
    [267] = "%1d", -- IRST (green)
    [268] = "%1d", -- RDR (green)
    [269] = "%1d", -- SLNK (green)
    [270] = "%1d", -- OESP (green)
    [271] = "%1d", -- RWR (green)
    [272] = "%1d", -- COM1 (green)
    [273] = "%1d", -- COM2 (green)
    [274] = "%1d", -- NAV (green)
    [275] = "%1d", -- IFF (green)
    [276] = "%1d", -- INS (green)
    [277] = "%1d", -- VMMC1 (green)
    [278] = "%1d", -- VMMC2 (green)
    [279] = "%1d", -- SAIU (green)
    [280] = "%1d", -- CMBT (green)
    [281] = "%1d", -- TRAIN (green)

    -- FCS
    [527] = "%d", -- Record Switch
    [528] = "%d", -- EFCS Switch
    [529] = "%d", -- Yaw/Roll CAS Switch
    [530] = "%d", -- Direct Mode Switch
    [531] = "%d", -- BIT Button
    [532] = "%d", -- Yaw Trim Switch
    [533] = "%d", -- Flight Test Switch 1
    [534] = "%d", -- Flight Test Switch 2
    [535] = "%d", -- AG1/AG2 Switch
    [536] = "%d", -- AA/AG Switch

    --
    [539] = "%d", -- Emergency Hydraulic Pump Switch
    [540] = "%d", -- SHARS Switch
    [553] = "%d", -- P.H. Test Switch

    -- Radio
    [545] = "%.1f", -- Radio Volume Knob
    [546] = "%1d", -- Squelch OFF/SQL/ACKN
    [547] = "%.1f", -- Radio Mode Selector

    -- ELEC
    [904] = "%1d", -- Battery Switch
    [905] = "%1d", -- Main AC Gen Switch
    [906] = "%1d", -- DC Gen Switch

    -- AAP
    [907] = "%1d", -- HUD/MFCD Day/Night Switch
    [908] = "%.1f", -- INS Mode Knob Selector
    [909] = "%.1f", -- AAP Brightness Knob
    [910] = "%1d", -- HUD Symbology Reject Switch

    -- ACP
    [934] = "%.1f", -- COM1 Volume Knob
    [935] = "%d",   -- Intercom Switch
    [936] = "%d",   -- Radio Top/Bottom Antenna Switch
    [937] = "%d",   -- Speaker Control Box Channel Antenna Switch
    [938] = "%.1f", -- COM2 Volume Knob
    [939] = "%.1f", -- TCN/ILS Volume Knob
    [940] = "%.1f", -- MSL Volume Knob

    -- INT LTS
    [944] = "%.2f", -- Instrument Light Knob
    [945] = "%.2f", -- Console Light Knob
    [946] = "%.2f", -- Flood Light Knob

    -- EXT LIG
    [947] = "%1d", -- Exterior Light Master Switch 1/0/-1
    [948] = "%.1f", -- Formation Light Knob Selector 0/3/5/8/1.0
    [949] = "%.1f", -- Anti-Collision Light Knob Selector 0/3/5/8/1.0
    [950] = "%1d", -- Navigation Light Switch - Bright/Off/Dim 1/0/-1
    [951] = "%1d", -- Navigation Light Switch - Flash/Steady 1/-1
    [952] = "%1d", -- Light Switch - Tow/Off/Anti-Collision 1/0/-1
    [963] = "%1d", -- AAR Light Switch 1/-1
    [964] = "%.2f", -- AAR Light Brightness Knob
}

PWDEV.ConfigArguments =
{
    -- HUD panel
    [728] = "%.1f", -- HUD Contrast Knob
    [729] = "%.1f", -- HUD Brightness Knob
    [731] = "%.1f", -- HUD Backup Reticle Knob
    [732] = "%.1f", -- UFCP Brightness Knob
}

local function processUFCPLine(ufcpLine, lineNum)
	local temp_txt_win      = ufcpLine["txt_win" .. lineNum]
	local txt_win_fill      = ufcpLine["txt_win" .. lineNum .. "_fill"]
	local cur_win           = ufcpLine["cur_win" .. lineNum]
	local txt_winr          = ufcpLine["txt_win" .. lineNum .. "r"]
	local cur_winr          = ufcpLine["cur_win" .. lineNum .. "r"]
	local UFCPLineLength    = 8
	local txt_win

	if temp_txt_win ~= null then
        txt_win = temp_txt_win:gsub(string.char(127), "^")
    else
        txt_win = ""
    end

	if txt_win_fill ~= null then
	    local full_txt_win_fill  = txt_win_fill..string.rep(" ", UFCPLineLength - string.len(txt_win_fill))
	    if temp_txt_win ~= null then
		    if cur_win ~= null then
			    if txt_win:find("-") then
				    processedUFCPLine = txt_win:sub(1, txt_win:find("-") - cur_win:len()) .. cur_win .. txt_win:sub(txt_win:find("-") + cur_win:len()) .. full_txt_win_fill:sub(txt_win:len() + 1)
			    else
				    processedUFCPLine = txt_win:sub(1, txt_win:len() - cur_win:len()) .. cur_win .. full_txt_win_fill:sub(txt_win:len() + 1)
			    end
		    else
			    processedUFCPLine = txt_win .. full_txt_win_fill:sub(txt_win:len() + 1)
		    end
		else
		    if cur_winr ~= null then
			    processedUFCPLine = full_txt_win_fill:sub(1, UFCPLineLength - txt_winr:len()) .. txt_winr:sub(1, txt_winr:len() - cur_winr:len()) .. cur_winr
		    else
			    processedUFCPLine = full_txt_win_fill:sub(1, UFCPLineLength - txt_winr:len()) .. txt_winr
		    end
		end
	elseif txt_win ~= null then
	    processedUFCPLine = txt_win
	else
	    processedUFCPLine = txt_winr
	end
	return processedUFCPLine
end

local function radio_parse_indication(indicator_id)  -- Thanks to [FSF]Ian code
	local ret = {}
	local li = list_indication(indicator_id)
	if li == "" then return nil end
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local name, value = m()
		if not name then break end
			-- there's # characters in one of the radio indicator names which break parsing if it isn't replaced
			ret[name:gsub("\#", "hash")] = value
		end
	return ret
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    local ufcLcdLine1 = "        "
    local ufcLcdLine2 = "        "
    local ufcLcdLine3 = "        "
    local ufcLcdLine4 = "        "

    -- 3 / 4 / 5 / 6
    local indLcd1 = PWDEV.Tools.getListIndicatorValue(3)
    if not indLcd1 then
        return
    end
    ufcLcdLine1 = coerce_nil_to_string(processUFCPLine(indLcd1, 1))
    send(2001, ufcLcdLine1)

    local indLcd2 = PWDEV.Tools.getListIndicatorValue(4)
    if not indLcd2 then
        return
    end
    ufcLcdLine2 = coerce_nil_to_string(processUFCPLine(indLcd2, 2))
    send(2002, ufcLcdLine2)

    local indLcd3 = PWDEV.Tools.getListIndicatorValue(5)
    if not indLcd3 then
        return
    end
    ufcLcdLine3 = coerce_nil_to_string(processUFCPLine(indLcd3, 3))
    send(2003, ufcLcdLine3)

    local indLcd4 = PWDEV.Tools.getListIndicatorValue(6)
    if not indLcd4 then
        return
    end
    ufcLcdLine4 = coerce_nil_to_string(processUFCPLine(indLcd4, 4))
    send(2004, ufcLcdLine4)


    local radio_line_1
    local radio_line_2
    local radio_sql_light
    local radio_or_light
    local radio_take_light
    local radio_go_light
    local radio_tx_light

    local radioDisplay = radio_parse_indication(7)
    radio_line_1 = "        "
    radio_line_2 = "        "
    radio_sql_light = 0
    radio_or_light = 0
    radio_take_light = 0
    radio_go_light= 0
    radio_tx_light = 0
    if not radioDisplay then
        return
    end
    if radioDisplay.radio_sql then
        radio_sql_light = 1;
    end
    if radioDisplay.radio_or then
        radio_or_light = 1;
    end
    if radioDisplay.radio_take then
        radio_take_light = 1;
    end
    if radioDisplay.radio_go then
        radio_go_light = 1;
    end
    if radioDisplay.radio_tx then
        radio_tx_light = 1;
    end

    -- Radio Display Line 2 uses unprintable characters to display the power symbol - replace these with something printable
    if radioDisplay.radio_disp_l2 then
        local charReplacements = {
            [string.char(29)] = "_",
            [string.char(30)] = "|",
            [string.char(31)] = "^"
        }
        radio_line_2 = radioDisplay.radio_disp_l2:gsub(".", charReplacements)
    end

    -- original name for field is "#3#"" but this is modified in radio_parse_indication to "hash3hash"
    if radioDisplay.hash3hash then
        local tempString
        if radioDisplay.radio_cursor and radioDisplay.radio_cursor:len() > 0 then
            if radioDisplay.radio_disp_l1 and radioDisplay.radio_disp_l1:len() > 1 then
                tempString = radioDisplay.radio_disp_l1:sub(1, radioDisplay.radio_disp_l1:len() - 1) .. radioDisplay.radio_cursor
            else
                tempString = radioDisplay.radio_cursor
            end
        else
            tempString = radioDisplay.radio_disp_l1
        end
        radio_line_1 = radioDisplay.hash3hash:sub(1, radioDisplay.hash3hash:len() - tempString:len()) .. tempString
    else
        radio_line_1 = radioDisplay.radio_disp_l1
    end

    send(2010, radio_line_1)
    send(2011, radio_line_2)
    send(2012, radio_sql_light)
    send(2013, radio_or_light)
    send(2014, radio_take_light)
    send(2015, radio_go_light)
    send(2016, radio_tx_light)
end