-- F-16C_50
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	[110] = "%1d",	-- Warning, Caution and IndicatorLights","AoA Light up (red)
	[111] = "%1d",	-- Warning, Caution and IndicatorLights","AoA Light up (green)
	[112] = "%1d",	-- Warning, Caution and IndicatorLights","AoA Light up (yellow)

	[113] = "%1d",	-- RDY Light (blue)
	[114] = "%1d",	-- AR NWS Light (green)
	[115] = "%1d",	-- DISC Light (red)
}
ExportScript.ConfigArguments = 
{
	[171] = "%1d",   -- ICP Priority Function Button, 1(T-ILS)
	[172] = "%1d",   -- ICP Priority Function Button, 2/N(ALOW)
	[173] = "%1d",   -- ICP Priority Function Button, 3
	[175] = "%1d",   -- ICP Priority Function Button, 4/W(STPT)
	[176] = "%1d",   -- ICP Priority Function Button, 5(CRUS)
	[177] = "%1d",   -- ICP Priority Function Button, 6/E(TIME)
	[179] = "%1d",   -- ICP Priority Function Button, 7(MARK)
	[180] = "%1d",   -- ICP Priority Function Button, 8/S(FIX)
	[181] = "%1d",   -- ICP Priority Function Button, 9(A-CAL)
	[182] = "%1d",   -- ICP Priority Function Button, 0(M-SEL)
	[165] = "%1d",   -- ICP COM Override Button, COM1(UHF)
	[166] = "%1d",   -- ICP COM Override Button, COM2(UHF)
	[167] = "%1d",   -- ICP IFF Override Button, IFF"
	[168] = "%1d",   -- ICP LIST Override Button, LIST"
	[169] = "%1d",   -- ICP Master Mode Button, A-A"
	[170] = "%1d",   -- ICP Master Mode Button, A-G"
	[174] = "%1d",   -- ICP Recall Button, RCL"
	[178] = "%1d",   -- ICP Enter Button, ENTR"
	[187] = "%1d",   -- ICP FLIR Polarity Button, Wx"
	[167] = "%1d",   -- ICP IFF Override Button, IFF"
	[167] = "%1d",   -- ICP IFF Override Button, IFF"
	-- Left MFD
	[300] = "%1d",   -- Left MFD PB 1
	[301] = "%1d",   -- Left MFD PB 2
	[302] = "%1d",   -- Left MFD PB 3
	[303] = "%1d",   -- Left MFD PB 4
	[304] = "%1d",   -- Left MFD PB 5
	[305] = "%1d",   -- Left MFD PB 6
	[306] = "%1d",   -- Left MFD PB 7
	[307] = "%1d",   -- Left MFD PB 8
	[308] = "%1d",   -- Left MFD PB 9
	[309] = "%1d",   -- Left MFD PB 10
	[310] = "%1d",   -- Left MFD PB 11
	[311] = "%1d",   -- Left MFD PB 12
	[312] = "%1d",   -- Left MFD PB 13
	[313] = "%1d",   -- Left MFD PB 14
	[314] = "%1d",   -- Left MFD PB 15
	[315] = "%1d",   -- Left MFD PB 16
	[316] = "%1d",   -- Left MFD PB 17
	[317] = "%1d",   -- Left MFD PB 18
	[318] = "%1d",   -- Left MFD PB 19
	[319] = "%1d",   -- Left MFD PB 20
	
	-- Right MFD
	[326] = "%1d",   -- Left MFD PB 1
	[327] = "%1d",   -- Left MFD PB 2
	[328] = "%1d",   -- Left MFD PB 3
	[329] = "%1d",   -- Left MFD PB 4
	[330] = "%1d",   -- Left MFD PB 5
	[331] = "%1d",   -- Left MFD PB 6
	[332] = "%1d",   -- Left MFD PB 7
	[333] = "%1d",   -- Left MFD PB 8
	[334] = "%1d",   -- Left MFD PB 9
	[335] = "%1d",   -- Left MFD PB 10
	[336] = "%1d",   -- Left MFD PB 11
	[337] = "%1d",   -- Left MFD PB 12
	[338] = "%1d",   -- Left MFD PB 13
	[339] = "%1d",   -- Left MFD PB 14
	[340] = "%1d",   -- Left MFD PB 15
	[341] = "%1d",   -- Left MFD PB 16
	[342] = "%1d",   -- Left MFD PB 17
	[343] = "%1d",   -- Left MFD PB 18
	[344] = "%1d",   -- Left MFD PB 19
	[345] = "%1d",   -- Left MFD PB 20
}

-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end