-- JF-17
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
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
}

ExportScript.ConfigArguments = 
{
    -- HUD panel
    [728] = "%.1f", -- HUD Contrast Knob
    [729] = "%.1f", -- HUD Brightness Knob
    [731] = "%.1f", -- HUD Backup Reticle Knob
    [732] = "%.1f", -- UFCP Brightness Knob
}

function coerce_nil_to_string(value)
	if value == nil then
		return ""
	else
		return value
	end
end

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function processUFCPLine(ufcpLine, lineNum)
	local temp_txt_win      = ufcpLine["txt_win"..lineNum]
	local txt_win_fill      = ufcpLine["txt_win"..lineNum.."_fill"]
	local cur_win           = ufcpLine["cur_win"..lineNum]
	local txt_winr          = ufcpLine["txt_win"..lineNum.."r"]
	local cur_winr          = ufcpLine["cur_win"..lineNum.."r"]
	local UFCPLineLength    = 8
	local txt_win
		 
	if temp_txt_win ~= null then
			txt_win = temp_txt_win:gsub(string.char(127),"^")
	 else
		 txt_win = ""
	 end
	
	if txt_win_fill ~= null then
	   local full_txt_win_fill  = txt_win_fill .. string.rep(" ",UFCPLineLength - string.len(txt_win_fill))
	   if temp_txt_win ~= null then
		  if cur_win ~= null then
			 if txt_win:find("-") then
				processedUFCPLine = txt_win:sub(1,txt_win:find("-") - cur_win:len()) .. cur_win .. txt_win:sub(txt_win:find("-") + cur_win:len()) .. full_txt_win_fill:sub(txt_win:len() + 1)
			 else
				processedUFCPLine = txt_win:sub(1,txt_win:len() - cur_win:len()) .. cur_win .. full_txt_win_fill:sub(txt_win:len() + 1)
			 end
		  else
			 processedUFCPLine = txt_win .. full_txt_win_fill:sub(txt_win:len() + 1)
		  end
		else
		  if cur_winr ~= null then
			 processedUFCPLine = full_txt_win_fill:sub(1,UFCPLineLength - txt_winr:len()) .. txt_winr:sub(1,txt_winr:len() - cur_winr:len()) .. cur_winr
		  else
			 processedUFCPLine = full_txt_win_fill:sub(1,UFCPLineLength - txt_winr:len() .. txt_winr
		  end
		end
	elseif txt_win ~= null then
	   processedUFCPLine = txt_win
	else
	   processedUFCPLine = txt_winr
	end
	return processedUFCPLine      
 end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
    if ExportScript.Config.ExportDisplaysJF17 == true then

        -- local comm1 = "        "
        -- local comm2 = "        "

        -- local radio = ExportScript.Tools.getListIndicatorValue(7)
        -- if not radio then
        --     return
        -- end
        -- comm1 = coerce_nil_to_string(radio.radio_disp_l1)
        -- ExportScript.Tools.SendData(2011, comm1)
        -- comm2 = coerce_nil_to_string(radio.radio_disp_l2)
        -- ExportScript.Tools.SendData(2012, comm2)

        -- local clk1 = "        "
        -- local clk2 = "        "

        -- local clock1 = ExportScript.Tools.getListIndicatorValue(11)
        -- if not clock1 then
        --     return
        -- end
        -- clk1 = coerce_nil_to_string(clock1.txt_win1)
        -- ExportScript.Tools.SendData(2021, clk1)

        -- local clock2 = ExportScript.Tools.getListIndicatorValue(12)
        -- if not clock2 then
        --     return
        -- end
        -- clk2 = coerce_nil_to_string(clock2.txt_win2)
        -- ExportScript.Tools.SendData(2022, clk2)

        local ufcLcdLine1 = "        "
        local ufcLcdLine2 = "        "
        local ufcLcdLine3 = "        "
        local ufcLcdLine4 = "        "

        -- 3 / 4 / 5 / 6
        local indLcd1 = ExportScript.Tools.getListIndicatorValue(3)
        if not indLcd1 then
            return
        end
        ufcLcdLine1 = coerce_nil_to_string(processUFCPLine(indLcd1,1))
        ExportScript.Tools.SendData(2001, ufcLcdLine1)

        local indLcd2 = ExportScript.Tools.getListIndicatorValue(4)
        if not indLcd2 then
            return
        end
        ufcLcdLine2 = coerce_nil_to_string(processUFCPLine(indLcd2,2))
        ExportScript.Tools.SendData(2002, ufcLcdLine2)

        local indLcd3 = ExportScript.Tools.getListIndicatorValue(5)
        if not indLcd3 then
            return
        end
        ufcLcdLine3 = coerce_nil_to_string(processUFCPLine(indLcd3,3))
        ExportScript.Tools.SendData(2003, ufcLcdLine3)

        local indLcd4 = ExportScript.Tools.getListIndicatorValue(6)
        if not indLcd4 then
            return
        end
        ufcLcdLine4 = coerce_nil_to_string(processUFCPLine(indLcd4,4))
        ExportScript.Tools.SendData(2004, ufcLcdLine4)
    end
end