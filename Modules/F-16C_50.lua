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

	[189] = "%1d",	-- ICP FLIR GAIN/LEVEL Switch, GAIN/LVL/AUTO	-1 / 0 / 1
	--	[183] = "%1d"

	--Caution Light Panel
	[630] = "%1d", -- FLCS FAULT Light (yellow)
	[631] = "%1d", -- ENGINE FAULT Light (yellow)
	[632] = "%1d", -- AVIONICS FAULT Light (yellow)
	[633] = "%1d", -- SEAT NOT ARMED Light (yellow)
	[634] = "%1d", -- ELEC SYS Light (yellow)
	[635] = "%1d", -- SEC Light (yellow)
	[636] = "%1d", -- EQUIP HOT Light (yellow)
	[637] = "%1d", -- NWS FAIL Light (yellow)
	[638] = "%1d", -- PROBE HEAT Light (yellow)
	[639] = "%1d", -- FUEL OIL HOT Light (yellow)
	[640] = "%1d", -- RADAR ALT Light (yellow)
	[641] = "%1d", -- ANTI SKID Light (yellow)
	[642] = "%1d", -- CADC Light (yellow)
	[643] = "%1d", -- INLET ICING Light (yellow)
	[644] = "%1d", -- IFF Light (yellow)
	[645] = "%1d", -- HOOK Light (yellow)
	[646] = "%1d", -- STORES CONFIG Light (yellow)
	[647] = "%1d", -- OVERHEAT Light (yellow)
	[648] = "%1d", -- NUCLEAR Light (yellow)
	[649] = "%1d", -- OBOGS Light (yellow)
	[650] = "%1d", -- ATF NOT ENGAGED Light (yellow)
	[651] = "%1d", -- EEC Light (yellow)
	[652] = "%1d", -- 1. Caution - Light (yellow)
	[653] = "%1d", -- CABIN PRESS Light (yellow)
	[654] = "%1d", -- FWD FUEL LOW Light (yellow)
	[655] = "%1d", -- BUC Light (yellow)
	[656] = "%1d", -- 2. Caution - Light (yellow)
	[657] = "%1d", -- 3. Caution - Light (yellow)
	[658] = "%1d", -- AFT FUEL LOW Light (yellow)
	[659] = "%1d", -- 4. Caution - Light (yellow)
	[660] = "%1d", -- 5. Caution - Light (yellow)
	[661] = "%1d", -- 6. Caution - Light  (yellow)
}
ExportScript.ConfigArguments = 
{
	-- Integrated Control Panel (ICP) of Upfront Controls (UFC)
	-- [190] = "%.2f"	-- ICP HUD Symbology Intensity Knob
	-- [191] = "%.2f"	-- ICP Raster Intensity Knob
	-- [192] = "%.2f"	-- ICP Reticle Depression Control Knob
	-- [193] = "%.2f"	-- ICP Raster Contrast Knob

	-- [171] = "%1d",   -- ICP Priority Function Button, 1(T-ILS)
	-- [172] = "%1d",   -- ICP Priority Function Button, 2/N(ALOW)
	-- [173] = "%1d",   -- ICP Priority Function Button, 3
	-- [175] = "%1d",   -- ICP Priority Function Button, 4/W(STPT)
	-- [176] = "%1d",   -- ICP Priority Function Button, 5(CRUS)
	-- [177] = "%1d",   -- ICP Priority Function Button, 6/E(TIME)
	-- [179] = "%1d",   -- ICP Priority Function Button, 7(MARK)
	-- [180] = "%1d",   -- ICP Priority Function Button, 8/S(FIX)
	-- [181] = "%1d",   -- ICP Priority Function Button, 9(A-CAL)
	-- [182] = "%1d",   -- ICP Priority Function Button, 0(M-SEL)
	-- [165] = "%1d",   -- ICP COM Override Button, COM1(UHF)
	-- [166] = "%1d",   -- ICP COM Override Button, COM2(UHF)
	-- [167] = "%1d",   -- ICP IFF Override Button, IFF"
	-- [168] = "%1d",   -- ICP LIST Override Button, LIST"
	-- [169] = "%1d",   -- ICP Master Mode Button, A-A"
	-- [170] = "%1d",   -- ICP Master Mode Button, A-G"
	-- [174] = "%1d",   -- ICP Recall Button, RCL"
	-- [178] = "%1d",   -- ICP Enter Button, ENTR"
	-- [187] = "%1d",   -- ICP FLIR Polarity Button, Wx"
	-- [167] = "%1d",   -- ICP IFF Override Button, IFF"
	-- [167] = "%1d",   -- ICP IFF Override Button, IFF"
}

-- DED Layout Information ------------------------------------------------------
local DEDLayout_l1={}
local DEDLayout_l2={}
local DEDLayout_l3={}
local DEDLayout_l4={}
local DEDLayout_l5={}

--CNI
DEDLayout_l1["UHF Mode Rotary"]={1,3}
DEDLayout_l1["UHF IncDecSymbol"]={5,1}
DEDLayout_l1["Selected UHF Frequency"]={6,6}
DEDLayout_l1["Steerpoint Use"]={14,4}
DEDLayout_l1["WPT IncDecSymbol"]={19,1}
DEDLayout_l1["Selected Steerpoint"] = {20,3}
--COM
DEDLayout_l1["Secure Voice"] = {1,3}
DEDLayout_l1["COM 1 Mode"] = {5,3}
DEDLayout_l1["Receiver Mode"] = {13,4}
DEDLayout_l1["COM 1 Power Status"] = {13,2}
DEDLayout_l1["COM 2 Mode"] = {9,3}
DEDLayout_l1["COM 2 Mode Voice"] = {8,3}
DEDLayout_l1["Receiver Power Status"] = {15,2}
DEDLayout_l1["GUARD VHF Label"] = {8,3}
DEDLayout_l1["GUARD COM 2 Receiver Mode"] = {13,2}
--IFF
DEDLayout_l1["STAT IFF label"] = {1,3}
DEDLayout_l1["STAT IFF Power Status"] = {5,3}
DEDLayout_l1["STAT Mode label"] = {12,3}
DEDLayout_l1["STAT Event Occured"] = {18,3}
DEDLayout_l1["POS IFF label"] = {1,3}
DEDLayout_l1["POS IFF Power Status"] = {5,3,0,"","I"}
DEDLayout_l1["POS Event Occured"] = {18,3,0,"","I"}
DEDLayout_l1["POS Mode Group State"] = {22,1}
DEDLayout_l1["POS IncDec Symbol"] = {23,1}
DEDLayout_l1["TIM IFF label"] = {1,3}
DEDLayout_l1["TIM IFF Power Status"] = {5,3}
DEDLayout_l1["TIM Event Occured"] = {18,3,0,"","I"}
DEDLayout_l1["TIM Code Group State"] = {22,1}
DEDLayout_l1["TIM IncDec Symbol"] = {23,1}
DEDLayout_l1["IFF label"] = {8,3}
DEDLayout_l1["IFF Status"] = {12,4}
--List
DEDLayout_l1["LIST Label"] = {10,4}
--T-ILS
DEDLayout_l1["TCN Label"]={1,3}
DEDLayout_l1["TCN Mode"]={5,3}
DEDLayout_l1["TCN BIG OFF Label"]={5,3,0,"","B","OFF"}
DEDLayout_l1["ILS Label"]={13,3}
DEDLayout_l1["ILS Mode"]={18,3}
--ALOW
DEDLayout_l1["ALOW ALOW label"] = {10,4}
DEDLayout_l1["ALOW Selected Steerpoint"] = {19,2}
DEDLayout_l1["ALOW WPT IncDecSymbol"] = {23,1}
--STPT
DEDLayout_l1["STEERPOINT LABEL"] = {6,4}
DEDLayout_l1["STEERPOINT NUMBER"] = {12,2,0,"_inv","I"}
DEDLayout_l1["STEERPOINT IncDecSymbol"] = {16,1}
DEDLayout_l1["STEERPOINT SEQUENCE"] = {18,4}
DEDLayout_l1["STEERPOINT NUMBER Asteriscs_both"] = {11,1,15,"","I"}
--TIME
DEDLayout_l1["TIME_label"] = {9,4}
--BINGO
DEDLayout_l1["BINGO label"] = {9,5}
DEDLayout_l1["BINGO STPT Num"] = {20,2}
DEDLayout_l1["BINGO IncDecSymbol"] = {23,1}
--NAV
DEDLayout_l1["NAV STATUS NAV Status lbl"] = {7,10}
DEDLayout_l1["NAV COMMANDS NAV Status lbl"] = {6,12}
DEDLayout_l1["NAV STATUS INS_SelectedSteerpoint"] = {20,2}
DEDLayout_l1["NAV STATUS INS_STPT_IncDecSymbol"] = {23,1}
DEDLayout_l1["NAV COMMANDS INS_SelectedSteerpoint"] = {20,2}
DEDLayout_l1["NAV COMMANDS INS_STPT_IncDecSymbol"] = {23,1}
--MAN
DEDLayout_l1["MAN Label"] = {10,3}
DEDLayout_l1["MAN STPT Num"] = {20,2}
DEDLayout_l1["MAN IncDecSymbol"] = {23,1}
--INS
DEDLayout_l1["INS_SelectedSteerpoint"] = {20,2}
DEDLayout_l1["INS_STPT_IncDecSymbol"] = {23,1}
DEDLayout_l1["INS_lbl"] = {2,3}
DEDLayout_l1["INS_AlignTime"] = {7,4}
DEDLayout_l1["INS_AlignSlash"] = {11,1}
DEDLayout_l1["INS_AlignStatusCode"] = {12,2}
DEDLayout_l1["INS_Ready"] = {15,3}
DEDLayout_l1["INFLT ALGN INS_SelectedSteerpoint"] = {20,2}
DEDLayout_l1["INFLT ALGN INS_STPT_IncDecSymbol"] = {23,1}
DEDLayout_l1["INFLT ALGN INS_lbl"] = {4,3}
DEDLayout_l1["INFLT ALGN INS_INFLT_ALGN_lbl"] = {8,10}
--CMDS
DEDLayout_l1["CMDS_Prog_label"] = {15,4}
DEDLayout_l1["CMDS_Selected_Program"] = {21,2}
DEDLayout_l1["CMDS_Prog_IncDecSymbol"] = {23,1}
DEDLayout_l1["BINGO CMDS_BINGO_label"] = {5,11}
DEDLayout_l1["BINGO Selected Steerpoint"] = {19,2}
DEDLayout_l1["BINGO WPT IncDecSymbol"] = {23,1}
DEDLayout_l1["CMDS_CHAFF_label"] = {2,9}
DEDLayout_l1["CMDS_FLARE_label"] = {2,9}
DEDLayout_l1["CMDS_OTHER1_label"] = {2,10}
DEDLayout_l1["CMDS_OTHER2_label"] = {2,10}
--Mode
DEDLayout_l1["Master_mode_label"] = {4,4}
DEDLayout_l1["Master_mode"] = {10,3,0,"_inv","I"}
DEDLayout_l1["Master_mode_ast_both"] = {9, 1, 13,"","I"}
-- DLNK
DEDLayout_l1["LINK16 lbl"] = {7,6}
DEDLayout_l1["LINK16 STN lbl"] = {5,11}
DEDLayout_l1["NET STATUS lbl"] = {5,10}
DEDLayout_l1["AG DL lbl"] = {7,6}
DEDLayout_l1["NET STATUS lbl"] = {5,10}
DEDLayout_l1["INTRAFLIGHT INTRAFLIGHT lbl"] = {7,11}
--Misc
DEDLayout_l1["MISC Label"] = {10,4}
--MAGV
DEDLayout_l1["MAGV lbl"] = {7,4}
DEDLayout_l1["MAGV Mode"] = {13,4}
DEDLayout_l1["Asterisks_on_MAGV_Mode_both"] = {12,1,17,"","I"}
--LASER
DEDLayout_l1["LASR LABEL"] = {11,4}
--INTG
DEDLayout_l1["INTG INTG label"] = {13,4}
DEDLayout_l1["INTG INTG Mode"] = {8,4}
DEDLayout_l1["INTG TIM Event"] = {20,3}
--DEDLayout_l1[""] = {,}

--TODO
DEDLayout_l2["TODO remove lbl"]={4,20}
--CNI
DEDLayout_l2["UHF Status"]={1,1}
DEDLayout_l2["Default Value Indication"]={11,1}
DEDLayout_l2["Wind Magnetic Direction"]={16,2}
DEDLayout_l2["Wind Speed"]={20,2}
--COM
DEDLayout_l2["Active Frequency or Channel"]={2,6}
DEDLayout_l2["Active Frequency or Channe"]={2,6}
--IFF
DEDLayout_l2["STAT Mode Asterisks_both"]={17,1,23,"","I"}
DEDLayout_l2["STAT Mode Scratchpad"]={18,5,0,"_inv","I"}
--List
DEDLayout_l2["List Item 1 Number"]={0,1,0,"","I"}
DEDLayout_l2["List Item 1 Name"]={1,4}
DEDLayout_l2["List Item 2 Number"]={6,1,0,"","I"}
DEDLayout_l2["List Item 2 Name"]={7,4}
DEDLayout_l2["List Item 3 Number"]={12,1,0,"","I"}
DEDLayout_l2["List Item 3 Name"]={13,4}
DEDLayout_l2["List Item R Number"]={18,1,0,"","I"}
DEDLayout_l2["List Item R Name"]={19,4}
--STPT
DEDLayout_l2["STEERPOINT Latitude"] = {3,3}
DEDLayout_l2["STEERPOINT Latitude Value"] = {8,12,0,"_inv","I"}
DEDLayout_l2["STEERPOINT Latitude Asteriscs_both"] = {7,1,20,"","I"}
--TIME
DEDLayout_l2["SYSTEM_label"]={4,6}
DEDLayout_l2["GPS_SYSTEM_label"]={0,10}
DEDLayout_l2["SYSTEM_value"]={13,8,0,"_inv","I"}
DEDLayout_l2["Asterisks_on_SYSTEM_both"]= {12,1,21,"","I"}
--NAV
DEDLayout_l2["NAV STATUS SYS ACCURACY label"] = {3,9}
DEDLayout_l2["NAV STATUS SYS ACCURACY value"] = {14,4}
--MAN
DEDLayout_l2["WSPAN Label"] = {6,5}
DEDLayout_l2["WSPAN DATA"] =  {13,5,0,"_inv","I"}
DEDLayout_l2["WSPAN Asteriscs_both"] = {12,1,18,"","I"}
--INS
DEDLayout_l2["INS_LAT_lbl"] = {2,3}
DEDLayout_l2["INS_LAT_Scratchpad"] = {7,10,0,"_inv","I"}
DEDLayout_l2["Asterisks_on_LAT_Scratchpad_both"] = {6,1,17,"","I"}
--CMDS
DEDLayout_l2["CMDS_BQ_lbl"] = {6,2}
DEDLayout_l2["CMDS_BQ_Scratchpad"] = {10,2,0,"_inv","I"}
DEDLayout_l2["CMDS_BQ_Asterisks_both"] = {9,1,12,"","I"}
DEDLayout_l2["CMDS_CH_lbl"] = {1,2}
DEDLayout_l2["CMDS_CH_Scratchpad"] = {7,2,0,"_inv","I"}
DEDLayout_l2["CMDS_CH_Asterisks_both"] = {6,1,9,"","I"}
-- DLNK
DEDLayout_l2["FC lbl"] = {3,2}
DEDLayout_l2["FC value"] = {6,3,0,"_inv","I"}
DEDLayout_l2["Asterisks on FC_both"] = {15,1,20,"","I"}
DEDLayout_l2["CallSign Name char1"] = {11,1,0,"_inv","I"}
DEDLayout_l2["CallSign Name char2"] = {12,1,0,"_inv","I"}
DEDLayout_l2["Asterisks on CS Name_both"] = {10,1,13,"","I"}
DEDLayout_l2["VCS IncDecSymbol"] = {14,1}
DEDLayout_l2["CallSign Number"] = {16,2,0,"_inv","I"}
DEDLayout_l2["Asterisks on CS Number_both"] = {15,1,18,"","I"}
DEDLayout_l2["STN id lbl1"] = {0,2}
DEDLayout_l2["STN value1"] = {3,5}
DEDLayout_l2["STN id lbl5"] = {9,2}
DEDLayout_l2["STN value5"] = {12,5}
DEDLayout_l2["OWN lbl"] = {18,3}
DEDLayout_l2["GPS TIME lbl"] = {0,8}
DEDLayout_l2["GPS TIME status"] = {9,3,0,"_inv","I"}
DEDLayout_l2["Asterisks on ETR_both"] = {8,1,12,"","I"}
DEDLayout_l2["IPF Reset lbl"] = {14,9,0,"_inv","I"}
DEDLayout_l2["Asterisks on IPF_both"] = {13,1,23,"","I"}
DEDLayout_l2["A-G DL XMT lbl"] = {3,3}
DEDLayout_l2["A-G DL XMT value"] = {7,2}
DEDLayout_l2["A-G DL COMM lbl"] = {12,4}
DEDLayout_l2["A-G DL COMM status"] = {17,3}
DEDLayout_l2["INTRAFLIGHT STN id lbl1"] = {1,2}
DEDLayout_l2["INTRAFLIGHT STN value1"] = {4,5}
DEDLayout_l2["INTRAFLIGHT STN id lbl5"] = {7,2}
DEDLayout_l2["INTRAFLIGHT STN value5"] = {10,5}
DEDLayout_l2["INTRAFLIGHT COMM lbl"] = {13,4}
DEDLayout_l2["INTRAFLIGHT COMM status"] = {18,3}
--Misc
DEDLayout_l2["Misc Item 1 Number"]={0,1,0,"","I"}
DEDLayout_l2["Misc Item 1 Name"]={1,4}
DEDLayout_l2["Misc Item 2 Number"]={6,1,0,"","I"}
DEDLayout_l2["Misc Item 2 Name"]={7,4}
DEDLayout_l2["Misc Item 3 Number"]={12,1,0,"","I"}
DEDLayout_l2["Misc Item 3 Name"]={13,4}
DEDLayout_l2["Misc Item R Number"]={18,1,0,"","I"}
DEDLayout_l2["Misc Item R Name"]={19,4}
--LASER
DEDLayout_l2["TGP CODE LABEL"] = {1,8}
DEDLayout_l2["TGP CODE VALUE"] = {13,4,0,"_inv","I"}
DEDLayout_l2["TGP CODE Asteriscs_both"] = {12,1,17,"","I"}

--DEDLayout_l2[""] = {,}

--CNI
DEDLayout_l3["VHF Label"]={1,3}
DEDLayout_l3["VHF IncDecSymbol"]={5,1}
DEDLayout_l3["Selected VHF Frequency"]={6,6}
DEDLayout_l3["System Time"]={15,8}
--COM
DEDLayout_l3["Scratchpad"]={14,6,0,"_inv","I"}
DEDLayout_l3["Asterisks on Scratchpad_both"]={13,1,20,"","I"}
DEDLayout_l3["Guard or Backup Status"]={9,5}
DEDLayout_l3["GUARD COM 2 Receiver Band"]={8,2}
DEDLayout_l3["GUARD Guard Label"]={12,5}
--IFF
DEDLayout_l3["STAT M1 Mode"]={0,2,0,"_inv","I"}
DEDLayout_l3["STAT M1 Lockout Status"]={3,1}
DEDLayout_l3["STAT M1 Code"]={4,2}
DEDLayout_l3["STAT M4 Mode"]={8,2,0,"_inv","I"}
DEDLayout_l3["STAT M4 Code"]={12,1}
DEDLayout_l3["STAT M4 Key"]={14,3}
DEDLayout_l3["STAT POS EVENT - Side"]={19,1}
DEDLayout_l3["STAT POS EVENT - OF"]={20,2}
DEDLayout_l3["STAT POS EVENT - Number"]={22,1}
DEDLayout_l3["POS M1 Mode"]={1,2,0,"_inv","I"}
DEDLayout_l3["POS M1 Lockout Status"]={3,1}
DEDLayout_l3["POS M1 Code"]={4,5}
DEDLayout_l3["POS M4 Mode"]={9,2,0,"_inv","I"}
DEDLayout_l3["POS M4 Code"]={13,1}
DEDLayout_l3["POS M4 Key"]={14,2}
DEDLayout_l3["POS Mode Asterisks_both"]={18,1,23,"","I"}
DEDLayout_l3["POS Mode Scratchpad"]={14,5,0,"_inv","I"}
DEDLayout_l3["TIM M1 Mode"]={1,2,0,"_inv","I"}
DEDLayout_l3["TIM M1 Lockout Status"]={3,1}
DEDLayout_l3["TIM M1 Code"]={4,5}
DEDLayout_l3["TIM M4 Mode"]={9,2,0,"_inv","I"}
DEDLayout_l3["TIM M4 Code"]={13,1}
DEDLayout_l3["TIM M4 Key"]={14,2}
DEDLayout_l3["TIM Mode Asterisks_both"]={18,1,23,"","I"}
DEDLayout_l3["TIM Mode Scratchpad"]={14,5,0,"_inv","I"}
DEDLayout_l3["BACKUP label"]={9,6}
--List
DEDLayout_l3["List Item 4 Number"]={0,1,0,"","I"}
DEDLayout_l3["List Item 4 Name"]={1,4}
DEDLayout_l3["List Item 5 Number"]={6,1,0,"","I"}
DEDLayout_l3["List Item 5 Name"]={7,4}
DEDLayout_l3["List Item 6 Number"]={12,1,0,"","I"}
DEDLayout_l3["List Item 6 Name"]={13,4}
DEDLayout_l3["List Item E Number"]={18,1,0,"","I"}
DEDLayout_l3["List Item E Name"]={19,4}
--T-ILS
DEDLayout_l3["TILS Scratchpad"]={8,6,0,"_inv","I"}
DEDLayout_l3["TILS Asterisks_both"]={7,1,14,"",'INV'}
DEDLayout_l3["ILS CMD STRG"]={15,8}
DEDLayout_l3["TCN BCN Label"] = {0,3}
DEDLayout_l3["TCN BCN ID"] = {4,3}
--ALOW
DEDLayout_l3["CARA ALOW label"] = {3,9}
DEDLayout_l3["CARA ALOW Scratchpad"] = {15,7,0,"_inv","I"}
DEDLayout_l3["CARA ALOW Asterisks_both"] = {14,1,22,"","I"}
--STPT
DEDLayout_l3["STEERPOINT Longitude"] = {3,3}
DEDLayout_l3["STEERPOINT Longitude Value"] = {8,12,0,"_inv","I"}
DEDLayout_l3["STEERPOINT Longitude Asteriscs_both"] = {7,1,20,"","I"}
--TIME
DEDLayout_l3["HACK_label"] = {6,4}
DEDLayout_l3["HACK_value"] = {13,8,0,"_inv","I"}
DEDLayout_l3["Asterisks_on_HACK_both"] = {12,1,21,"","I"}
DEDLayout_l3["HACK_IncDecSymbol"] = {23,1}
--BINGO
DEDLayout_l3["SET label"] = {6,3}
DEDLayout_l3["BINGO Asterisks_both"] = {10,1,19,"","I"}
DEDLayout_l3["BINGO Scratchpad"] = {11,8,0,"_inv","I"}
--NAV
DEDLayout_l3["NAV STATUS GPS ACCURACY label"] = {3,9}
DEDLayout_l3["NAV STATUS GPS ACCURACY value"] = {14,5}
DEDLayout_l3["NAV COMMANDS FILTER MODE label"] = {3,11}
DEDLayout_l3["NAV COMMANDS FILTER MODE value"] = {16,4}
DEDLayout_l3["NAV COMMANDS Asterisks_both"] = {15,1,20,"","I"}
--MAN
DEDLayout_l3["MBAL Label"] = {10,4}
--INS
DEDLayout_l3["INS_LNG_lbl"] = {2,3}
DEDLayout_l3["INS_LNG_Scratchpad"] = {7,10,0,"_inv","I"}
DEDLayout_l3["Asterisks_on_LNG_Scratchpad_both"] = {6,1,17,"","I"}
DEDLayout_l3["INFLT ALGN INS_COMPASS_HDG_lbl"] = {3,11}
DEDLayout_l3["INFLT ALGN INS_CompassHdgScratchpad"] = {16,4,0,"_inv","I"}
DEDLayout_l3["INFLT ALGN Asterisks on Scratchpad_both"] = {15,1,20,"","I"}
--CMDS
DEDLayout_l3["CMDS_BI_lbl"] = {6,2}
DEDLayout_l3["CMDS_BI_Scratchpad"] = {10,6,0,"_inv","I"}
DEDLayout_l3["CMDS_BI_Asterisks_both"] = {9,1,16,"","I"}
DEDLayout_l3["CMDS_FL_lbl"] = {2,2}
DEDLayout_l3["CMDS_FL_Scratchpad"] = {7,2,0,"_inv","I"}
DEDLayout_l3["CMDS_FL_Asterisks_both"] = {6,1,9,"","I"}
DEDLayout_l3["CMDS_FDBK_lbl"] = {11,4}
DEDLayout_l3["CMDS_FDBK_value"] = {19,3,0,"_inv","I"}
DEDLayout_l3["CMDS_FDBK_Asterisks_both"] = {18,1,22,"","I"}
-- DLNK
DEDLayout_l3["MC lbl"] = {3,2}
DEDLayout_l3["MC value"] = {6,3,0,"_inv","I"}
DEDLayout_l3["Asterisks on MC_both"] = {5,1,9,"","I"}
DEDLayout_l3["FL lbl"] = {12,2}
DEDLayout_l3["FL status"] = {16,3,0,"_inv","I"}
DEDLayout_l3["Asterisks on FL_both"] = {15,1,19,"","I"}
DEDLayout_l3["NUM lbl"] = {18,1}
DEDLayout_l3["Own num value"] = {20,1}
DEDLayout_l3["TIME lbl"] = {4,4}
DEDLayout_l3["TIME value"] = {9,8,0,"_inv","I"}
DEDLayout_l3["Asterisks on TIME_both"] = {8,1,17,"","I"}
DEDLayout_l3["STN id lbl2"] = {0,2}
DEDLayout_l3["STN value2"] = {3,5}
DEDLayout_l3["STN id lbl6"] = {9,2}
DEDLayout_l3["STN value6"] = {12,5}
DEDLayout_l3["OWN lbl"] = {3,3}
DEDLayout_l3["OWN value"] = {7,2}
DEDLayout_l3["DATA lbl"] = {12,4}
DEDLayout_l3["DATA value"] = {7,3}
DEDLayout_l3["INTRAFLIGHT STN id lbl2"] = {1,2}
DEDLayout_l3["INTRAFLIGHT STN value2"] = {4,5}
DEDLayout_l3["INTRAFLIGHT STN id lbl6"] = {7,2}
DEDLayout_l3["INTRAFLIGHT STN value6"] = {10,5}
DEDLayout_l3["INTRAFLIGHT DATA lbl"] = {13,4}
DEDLayout_l3["INTRAFLIGHT DATA value"] = {18,3}
--Misc
DEDLayout_l3["Misc Item 4 Number"]={0,1,0,"","I"}
DEDLayout_l3["Misc Item 4 Name"]={1,4}
DEDLayout_l3["Misc Item 5 Number"]={6,1,0,"","I"}
DEDLayout_l3["Misc Item 5 Name"]={7,4}
DEDLayout_l3["Misc Item 6 Number"]={12,1,0,"","I"}
DEDLayout_l3["Misc Item 6 Name"]={13,4}
DEDLayout_l3["Misc Item E Number"]={18,1,0,"","I"}
DEDLayout_l3["Misc Item E Name"]={19,4}
--MAGV
DEDLayout_l3["INS_MAGV_Scratchpad"] = {9,6,0,"_inv","I"}
DEDLayout_l3["Asterisks_on_MAGV_Scratchpad_both"] = {8,1,15,"","I"}
--LASER
DEDLayout_l3["LST CODE LABEL"] = {1,8}
DEDLayout_l3["LST CODE VALUE"] = {13,4,0,"_inv","I"}
DEDLayout_l3["LST CODE Asteriscs_both"] = {12,1,17,"","I"}
--INTG
DEDLayout_l3["INTG M1 Mode"] = {0,2,0,"_inv","I"}
DEDLayout_l3["INTG M1 Decoupled Status"] = {3,1}
DEDLayout_l3["INTG M1 Code"] = {4,2}
DEDLayout_l3["INTG M4 Mode"] = {16,2,0,"_inv","I"}
DEDLayout_l3["INTG M4 Decoupled Status"] = {19,1}
DEDLayout_l3["INTG M4 Code"] = {20,1,0,"_inv","I"}
DEDLayout_l3["INTG M4 Key"] = {21,3}
--DEDLayout_l3[""] = {,}

--TODO
DEDLayout_l4["TODO remove label"] = {4,20}
--CNI
DEDLayout_l4["VHF Status"]={1,1}
DEDLayout_l4["Hack Time"]={15,8}
--COM
DEDLayout_l4["Preset Label"]={2,9}
DEDLayout_l4["Preset Number"]={7,2,0,"_inv","I"}
DEDLayout_l4["Asterisks on PresetChannel_both"]={6,1,9,"","I"}
DEDLayout_l4["TOD Label"]={17,3}
--IFF
DEDLayout_l4["STAT M2 Mode"]={0,2,0,"_inv","I"}
DEDLayout_l4["STAT M2 Lockout Status"]={3,1}
DEDLayout_l4["STAT M2 Code"]={4,4}
DEDLayout_l4["STAT MC Mode"]={9,2,0,"_inv","I"}
DEDLayout_l4["STAT MC Code"]={12,1}
DEDLayout_l4["STAT MC Key"]={14,3}
DEDLayout_l4["STAT M2 Mode"]={0,2,0,"_inv","I"}
DEDLayout_l4["STAT M2 Lockout Status"]={3,1}
DEDLayout_l4["STAT M2 Code"]={4,4}
DEDLayout_l4["STAT MC Mode"]={9,2,0,"_inv","I"}
DEDLayout_l4["STAT MC Code"]={12,1}
DEDLayout_l4["STAT MC Key"]={14,3}
DEDLayout_l4["STAT TIM EVENT - Time"]={18,5}
DEDLayout_l4["POS M2 Mode"]={1,2,0,"_inv","I"}
DEDLayout_l4["POS M2 Lockout Status"]={3,1}
DEDLayout_l4["POS M2 Code"]={4,4,0,"_inv","I"}
DEDLayout_l4["POS MC Mode"]={9,2}
DEDLayout_l4["POS MC Code"]={12,1}
DEDLayout_l4["POS MC Key"]={14,3}
DEDLayout_l4["POS POS EVENT - Side"]={19,1}
DEDLayout_l4["POS POS EVENT - OF"]={20,2}
DEDLayout_l4["POS POS EVENT - Number"]={22,1}
DEDLayout_l4["TIM M2 Mode"]={1,2,0,"_inv","I"}
DEDLayout_l4["TIM M2 Lockout Status"]={3,1}
DEDLayout_l4["TIM M2 Lockout Status"]={4,4}
DEDLayout_l4["TIM MC Mode"]={9,2}
DEDLayout_l4["TIM MC Code"]={12,1}
DEDLayout_l4["TIM MC Key"]={14,3}
DEDLayout_l4["TIM EVENT - Time"]={18,5}
--List
DEDLayout_l4["List Item 7 Number"]={0,1,0,"","I"}
DEDLayout_l4["List Item 7 Name"]={1,4}
DEDLayout_l4["List Item 8 Number"]={6,1,0,"","I"}
DEDLayout_l4["List Item 8 Name"]={7,4}
DEDLayout_l4["List Item 9 Number"]={12,1,0,"","I"}
DEDLayout_l4["List Item 9 Name"]={13,4}
DEDLayout_l4["List Item 0 Number"]={18,1,0,"","I"}
DEDLayout_l4["List Item 0 Name"]={19,4}
--T-ILS
DEDLayout_l4["ILS FRQ Label"]={12,3}
DEDLayout_l4["ILS FRQ Scratchpad"]={17,6,0,"_inv","I"}
DEDLayout_l4["ILS FRQ Asterisks_both"]={16,1,23,"","I"}
DEDLayout_l4["TCN CHAN Label"] = {0,4}
DEDLayout_l4["TCN CHAN Scratchpad"]={5,3,0,"_inv","I"}
DEDLayout_l4["TCN CHAN Asterisks_both"]={4,1,8,"","I"}
DEDLayout_l4["BACKUP lbl"] = {2,6}
--ALOW
DEDLayout_l4["MSL FLOOR label"] = {3,9}
DEDLayout_l4["MSL FLOOR Scratchpad"] = {15,7,0,"_inv","I"}
DEDLayout_l4["MSL FLOOR Asterisks_both"] = {14,1,22,"","I"}
--STPT
DEDLayout_l4["STEERPOINT Elevation"] = {2,3}
DEDLayout_l4["STEERPOINT Elevation Value"] = {8,8,0,"_inv","I"}
DEDLayout_l4["STEERPOINT Elevation Asteriscs_both"] = {7,1,16,"","I"}
--TIME
DEDLayout_l4["DELTA_TOS_label"] = {1,9}
DEDLayout_l4["DELTA_TOS_value"] = {12,9,0,"_inv","I"}
DEDLayout_l4["Asterisks_on_DELTA_TOS_both"] = {11,1,21,"","I"}
--BINGO
DEDLayout_l4["TOTAL label"] = {4,5}
DEDLayout_l4["TOTAL value"] = {11,5}
DEDLayout_l4["TOTAL LBS label"] = {16,3}
--NAV
DEDLayout_l4["NAV STATUS MSN DUR label"] = {3,7}
DEDLayout_l4["NAV STATUS DAYS label"] = {16,4}
DEDLayout_l4["NAV STATUS Scratchpad"] = {12,2,0,"_inv","I"}
DEDLayout_l4["NAV STATUS Asterisks on Scratchpad_both"] = {11,1,14,"","I"}
DEDLayout_l4["NAV COMMANDS RESET GPS label"] = {6,11}
DEDLayout_l4["NAV COMMANDS Asterisks on RESET_both"] = {5,1,17,"","I"}
--MAN
DEDLayout_l4["RNG Label"] = {8,3}
DEDLayout_l4["RNG Data"] = {11,7}
DEDLayout_l4["RNG FT"] = {18,2}
--INS
DEDLayout_l4["INS_SALT_lbl"] = {1,4}
DEDLayout_l4["INS_SALT_Scratchpad"] = {8,7,0,"_inv","I"}
DEDLayout_l4["Asterisks_on_SALT_Scratchpad_both"] = {7,1,15,"","I"}
DEDLayout_l4["INS_FIX_NECESSARY_lbl"] = {3,17}
--CMDS
DEDLayout_l4["CMDS_SQ_lbl"] = {6,2}
DEDLayout_l4["CMDS_SQ_Scratchpad"] = {10,2,0,"_inv","I"}
DEDLayout_l4["CMDS_SQ_Asterisks_both"] = {9,1,13,"","I"}
DEDLayout_l4["CMDS_O1_lbl"] = {2,2}
DEDLayout_l4["CMDS_O1_Scratchpad"] = {7,2,0,"_inv","I"}
DEDLayout_l4["CMDS_O1_Asterisks_both"] = {6,1,9,"","I"}
DEDLayout_l4["CMDS_REQCTR_lbl"] = {11,6}
DEDLayout_l4["CMDS_REQCTR_value"] = {19,3,0,"_inv","I"}
DEDLayout_l4["CMDS_REQCTR_Asterisks_both"] = {18,1,22,"","I"}
-- DLNK
DEDLayout_l4["SC lbl"] = {3,2}
DEDLayout_l4["SC value"] = {6,3,0,"_inv","I"}
DEDLayout_l4["Asterisks on SC_both"] = {5,1,9,"","I"}
DEDLayout_l4["XMT lbl"] = {11,3}
DEDLayout_l4["XMT status"] = {16,2,0,"_inv","I"}
DEDLayout_l4["Asterisks on XMT_both"] = {15,1,18,"","I"}
DEDLayout_l4["NTR lbl"] = {5,3}
DEDLayout_l4["NTR status"] = {9,3,0,"_inv","I"}
DEDLayout_l4["Asterisks on NTR_both"] = {8,1,12,"","I"}
DEDLayout_l4["STN id lbl3"] = {0,2}
DEDLayout_l4["STN value3"] = {3,5}
DEDLayout_l4["STN id lbl7"] = {9,2}
DEDLayout_l4["STN value7"] = {12,5}
DEDLayout_l4["FILL lbl"] = {2,4}
DEDLayout_l4["FILL status"] = {7,3}
DEDLayout_l4["PRTL lbl"] = {12,4}
DEDLayout_l4["PRTL status"] = {17,5}
DEDLayout_l4["INTRAFLIGHT STN id lbl3"] = {1,2}
DEDLayout_l4["INTRAFLIGHT STN value3"] = {4,5}
DEDLayout_l4["INTRAFLIGHT STN id lbl7"] = {7,2}
DEDLayout_l4["INTRAFLIGHT STN value7"] = {10,5}
DEDLayout_l4["INTRAFLIGHT OWN lbl"] = {14,4}
DEDLayout_l4["INTRAFLIGHT Own value"] = {18,2}
--Misc
DEDLayout_l4["Misc Item 7 Number"]={0,1,0,"","I"}
DEDLayout_l4["Misc Item 7 Name"]={1,4}
DEDLayout_l4["Misc Item 8 Number"]={6,1,0,"","I"}
DEDLayout_l4["Misc Item 8 Name"]={7,4}
DEDLayout_l4["Misc Item 9 Number"]={12,1,0,"","I"}
DEDLayout_l4["Misc Item 9 Name"]={13,4}
DEDLayout_l4["Misc Item 0 Number"]={18,1,0,"","I"}
DEDLayout_l4["Misc Item 0 Name"]={19,4}
--INTG
DEDLayout_l4["INTG M2 Mode"] = {0,2}
DEDLayout_l4["INTG M2 Decoupled Status"] = {3,1}
DEDLayout_l4["INTG M2 Code"] = {4,4}
DEDLayout_l4["INTG IJAM Mode"] = {15,4}
DEDLayout_l4["INTG IJAM Key"] = {20,3}
--DEDLayout_l4[""] = {,}

--CNI
DEDLayout_l5["IFF Modes Label"]={1,1}
DEDLayout_l5["IFF Modes Enabled"]={2,6}
DEDLayout_l5["Active Mode 3 Code"]={9,4}
DEDLayout_l5["IFF Switching"]={14,1}
DEDLayout_l5["TACAN Label"]={19,1}
DEDLayout_l5["TACAN Channel"]={20,3}
DEDLayout_l5["TACAN Band"]={23,1}
--COM
DEDLayout_l5["Preset Frequency"]={5,6,0,"_inv","I"}
DEDLayout_l5["Asterisks on PresetFrequency_both"]={4,11,11,"","I"}
DEDLayout_l5["Bandwidth"]={18,2,0,"_inv","I"}
DEDLayout_l5["Asterisks on Band_both"]={17,1,20,"","I"}
DEDLayout_l5["Preset Channel Number"]={20,2}
DEDLayout_l5["Guard or Backup Frequency"]={10,6}
--IFF
DEDLayout_l5["STAT M3 Lockout Status"] = {3,1}
DEDLayout_l5["STAT M3 Code"] = {4,4}
DEDLayout_l5["STAT M4 Monitoring"] = {9,3}
DEDLayout_l5["STAT M4 Monitoring Key"] = {14,3}
DEDLayout_l5["STAT MS Mode"] = {18,2,0,"_inv","I"}
DEDLayout_l5["STAT MS Code"] = {20,1}
DEDLayout_l5["STAT MS Key"] = {21,3}
DEDLayout_l5["POS M3 Mode"] = {1,2,0,"_inv","I"}
DEDLayout_l5["POS M3 Lockout Status"] = {3,1}
DEDLayout_l5["POS M3 Code"] = {4,4}
DEDLayout_l5["POS M4 Monitoring"] = {9,3}
DEDLayout_l5["POS M4 Monitoring Key"] = {14,3}
DEDLayout_l5["POS MS Mode"] = {18,2,0,"_inv","I"}
DEDLayout_l5["POS MS Code"] = {20,1}
DEDLayout_l5["POS MS Key"] = {21,3}
DEDLayout_l5["TIM M3 Mode"] = {1,2,0,"_inv","I"}
DEDLayout_l5["TIM M3 Lockout Status"] = {3,1}
DEDLayout_l5["TIM M3 Code"] = {4,4}
DEDLayout_l5["TIM M4 Monitoring"] = {9,3}
DEDLayout_l5["TIM M4 Monitoring Key"] = {14,3}
DEDLayout_l5["TIM MS Mode"] = {18,2,0,"_inv","I"}
DEDLayout_l5["TIM MS Code"] = {20,1}
DEDLayout_l5["TIM MS Key"] = {21,3}
--T-ILS
DEDLayout_l5["ILS CRS Label"]={12,3}
DEDLayout_l5["ILS CRS Scratchpad"]={17,4,0,"_inv","I"}
DEDLayout_l5["ILS CRS Asterisks_both"]={16,1,21,"","I"}
DEDLayout_l5["TCN BAND Label"] = {0,4}
DEDLayout_l5["TCN BAND XY"] = {5,1}
DEDLayout_l5["TCN BAND Key"] = {6,3}
--STPT
DEDLayout_l5["STEERPOINT Time over current STP"] = {3,3}
DEDLayout_l5["STEERPOINT TOS Value"] = {8,8,0,"_inv","I"}
DEDLayout_l5["STEERPOINT TOS Asteriscs_both"] = {7,1,16,"","I"}
--TIME
DEDLayout_l5["DATE_FORMAT_label"] = {2,8}
DEDLayout_l5["DATE_value"] = {13,8,0,"_inv","I"}
DEDLayout_l5["Asterisks_on_DATE_both"] = {12,1,21,"","I"}
--NAV
DEDLayout_l5["NAV STATUS Keys Msg"] = {3,18}
DEDLayout_l5["NAV COMMANDS ZEROIZE GPS label"] = {6,11}
DEDLayout_l5["NAV COMMANDS Asterisks on ZEROIZE_both"] = {5,1,17,"","I"}
--MAN
DEDLayout_l5["TOF Label"] = {8,3}
DEDLayout_l5["TOF Data"] = {11,6}
DEDLayout_l5["TOF SEC"]	= {17,3}
--INS
DEDLayout_l5["INS_THDG_lbl"] = {1,4}
DEDLayout_l5["INS_THDG_Scratchpad"] = {7,6,0,"_inv","I"}
DEDLayout_l5["Asterisks_on_THDG_Scratchpad"] = {6,1,13,"","I"}
DEDLayout_l5["INS_GS_lbl"] = {16,3}
DEDLayout_l5["INS_GS_value"] = {20,3}
--CMDS
DEDLayout_l5["CMDS_SI_lbl"] = {6,2}
DEDLayout_l5["CMDS_SI_Scratchpad"] = {10,6,0,"_inv","I"}
DEDLayout_l5["CMDS_SI_Asterisks_both"] = {9,1,16,"","I"}
DEDLayout_l5["CMDS_O2_lbl"] = {2,2}
DEDLayout_l5["CMDS_O2_Scratchpad"] = {7,2,0,"_inv","I"}
DEDLayout_l5["CMDS_O2_Asterisks_both"] = {6,1,9,"","I"}
DEDLayout_l5["CMDS_BINGO_lbl"] = {11,5}
DEDLayout_l5["CMDS_BINGO_value"] = {19,3,0,"_inv","I"}
DEDLayout_l5["CMDS_BINGO_Asterisks_both"] = {18,1,22,"","I"}
-- DLNK
DEDLayout_l5["P2 lbl"] = {21,3}
DEDLayout_l5["P3 lbl"] = {21,3}
DEDLayout_l5["SYNC lbl"] = {4,4}
DEDLayout_l5["SYNC status"] = {9,4,0,"_inv","I"}
DEDLayout_l5["Asterisks on SYNC_both"] = {8,1,13,"","I"}
DEDLayout_l5["P1 lbl"] = {21,3}
DEDLayout_l5["STN id lbl4"] = {0,2}
DEDLayout_l5["STN value4"] = {3,5}
DEDLayout_l5["STN id lbl8"] = {9,2}
DEDLayout_l5["STN value8"] = {12,5}
DEDLayout_l5["P5 lbl"] = {21,3}
DEDLayout_l5["INTRAFLIGHT STN id lbl4"] = {1,2}
DEDLayout_l5["INTRAFLIGHT STN value4"] = {4,5}
DEDLayout_l5["INTRAFLIGHT STN id lbl8"] = {7,2}
DEDLayout_l5["INTRAFLIGHT STN value8"] = {10,5}
DEDLayout_l5["INTRAFLIGHT LAST lbl"] = {13,4}
DEDLayout_l5["INTRAFLIGHT LAST value"] = {18,2}
DEDLayout_l5["INTRAFLIGHT P6 lbl"] = {21,3}
--LASER
DEDLayout_l5["Laser ST Time LABEL"] = {1,13}
DEDLayout_l5["Laser ST Time VALUE"] = {17,2,0,"_inv","I"}
DEDLayout_l5["Laser ST Time Asteriscs_both"] = {16,1,19,"","I"}
--INTG
DEDLayout_l5["INTG M3 Mode"] = {0,2,0,"_inv","I"}
DEDLayout_l5["INTG M3 Decoupled Status"] = {3,1}
DEDLayout_l5["INTG M3 Code"] = {4,4}
DEDLayout_l5["INTG Asterisks_both"] = {9,1,16,"","I"}
DEDLayout_l5["INTG Scratchpad"] = {10,5,0,"_inv","I"}
DEDLayout_l5["INTG COUPLE Mode"] = {16,4,0,"_inv","I"}
DEDLayout_l5["INTG COUPLE Key"] = {20,3}
--DEDLayout_l5[""] = {,}

DEDLayout = {DEDLayout_l1, DEDLayout_l2, DEDLayout_l3, DEDLayout_l4, DEDLayout_l5}

-- DED Display Main Function -----------------------------------------------
local function buildDEDLine(line)
		-- Get Layout Information for line being built
		local DEDLayoutLine = DEDLayout[line]
		-- Get Exported DED Objects
		local DED_fields = ExportScript.Tools.getListIndicatorValue(6)
		local layout
		local label
		local value
	
		-- Base Output String
		local dataLine ="                         "
	
		-- Check for present of Objects that indicate Duplicate Key Names that need resolving
		local guard 		= DED_fields["Guard Label"]
		local mode 			= DED_fields["Mode label"]
		local event 		= DED_fields["Event Occured"]
		local alow 			= DED_fields["ALOW label"]
		local bingo 		= DED_fields["CMDS_BINGO_lbl"]
		local inflt_algn 	= DED_fields["INS_INFLT_ALGN_lbl"]
		local intraflight 	= DED_fields["INTRAFLIGHT lbl"]
		local dlnk_A_G		= DED_fields["A-G DL lbl"]
	
		--Loop through Exported DED Objects
		for k,v in pairs(DED_fields) do
			-- Handle Duplicate Key Names on COM2 Guard page items        
			if guard ~= nil then
				label = guard.." "..k
			-- Handle Duplicate Key Names on IFF STAT page items
			elseif mode ~= nil then
				label = mode.." "..k
			-- Handle Duplicate Key Names on IFF POS & TIM page items
			elseif event ~= nil then
				label = event.." "..k
			-- Handle Duplicate Key Names on ALOW page Line 1 items
			elseif alow ~= nil and line == 1 then
				label = alow.." "..k
			-- Handle Duplicate Key Names on CMDS Bingo page Line 1 items
			elseif bingo ~= nil and line == 1 then
				label = bingo.." "..k
			-- Handle Duplicate Key Names on INS INFL ALGN page Lines 1 & 3 items
			elseif inflt_algn ~= nil and (line == 1 or line == 3) then
				label = inflt_algn.." "..k
			-- Handle Duplicate Key Names on DLNK INTRAFLIGHT page
			elseif intraflight ~= nil then
				label = intraflight.." "..k
			-- Handle Duplicate Key Names on DLNK A-G page Line 2 items
			elseif dlnk_A_G ~= nil and line == 2 then
				label = dlnk_A_G.." "..k
			else
				label = k
			end
			--Get layout data associated with current key
			layout = DEDLayoutLine[label:gsub("_inv", "", 1):gsub("_lhs", "_both", 1)]
			if layout ~= nil then
				--If layout value 6 is present then use this value to override the value returned from DCS
				if layout[6] ~= nil then
					value = layout[6]
				else
					value = v
				end
				
				-- Add Value to dataLine using ExportScript.Tools.mergeString because some values are are supposed to fit within others
				dataLine = ExportScript.Tools.mergeString(dataLine, value, layout[1])
	
				--If layout value 3 > 0 we need to duplicate this item at position specific in value 3 (this is for "*"s marking enterable fields
				if layout[3] ~= nil and layout[3] > 0 then
					dataLine = ExportScript.Tools.mergeString(dataLine, value, layout[3])
				end
			end
		end
	return dataLine
end

-- Unicode UTF-16
function ExportScript.replaceSymbols(s)
	s = s:gsub("a", "↕") --DEGREE		"°"
	s = s:gsub("o", "°") --INC_DEC		"±"
	return s
end

-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
	-- DED Displays
	local DEDLine1 = ""
	local DEDLine2 = ""
	local DEDLine3 = ""
	local DEDLine4 = ""
	local DEDLine5 = ""

	-- CMDS Display
	local CMDS_O1_Amount
	local CMDS_O2_Amount
	local CMDS_CH_Amount
	local CMDS_FL_Amount

	local UHF_Channel
	local UHF_Frequency

	if ExportScript.Config.ExportDisplaysF16 == true then
		-- Build DED Display Lines
		DEDLine1 = ExportScript.replaceSymbols(buildDEDLine(1)) --buildDEDLine(1);
		DEDLine2 = ExportScript.replaceSymbols(buildDEDLine(2)) --buildDEDLine(2);
		DEDLine3 = ExportScript.replaceSymbols(buildDEDLine(3)) --buildDEDLine(3);
		DEDLine4 = ExportScript.replaceSymbols(buildDEDLine(4)) --buildDEDLine(4);
		DEDLine5 = ExportScript.replaceSymbols(buildDEDLine(5)) --buildDEDLine(5);

		

		ExportScript.Tools.SendData(2101, DEDLine1)
		ExportScript.Tools.SendData(2102, DEDLine2)
		ExportScript.Tools.SendData(2103, DEDLine3)
		ExportScript.Tools.SendData(2104, DEDLine4)
		ExportScript.Tools.SendData(2105, DEDLine5)

		-- CMDS
		local cmds = ExportScript.Tools.getListIndicatorValue(17)
		CMDS_O1_Amount = "    "
		CMDS_O2_Amount = "    "
		CMDS_CH_Amount = "    "
		CMDS_FL_Amount = "    "

		CMDS_O1_Amount = coerce_nil_to_string(cmds.CMDS_O1_Amount)
		CMDS_O2_Amount = coerce_nil_to_string(cmds.CMDS_O2_Amount)
		CMDS_CH_Amount = coerce_nil_to_string(cmds.CMDS_CH_Amount)
		CMDS_FL_Amount = coerce_nil_to_string(cmds.CMDS_FL_Amount)

		ExportScript.Tools.SendData(2301, CMDS_O1_Amount)
		ExportScript.Tools.SendData(2302, CMDS_O2_Amount)
		ExportScript.Tools.SendData(2303, CMDS_CH_Amount)
		ExportScript.Tools.SendData(2304, CMDS_FL_Amount)

		-- UHF Channel
		local UHF = ExportScript.Tools.getListIndicatorValue(11)
		if UHF and UHF.txtPresetChannel then
			UHF_Channel = coerce_nil_to_string(UHF.txtPresetChannel)
		else
			UHF_Channel = "  "
		end
		ExportScript.Tools.SendData(2801, UHF_Channel)

		-- UHF Frequency
		local UHFFreq = ExportScript.Tools.getListIndicatorValue(12)
		if UHFFreq and UHFFreq.txtFreqStatus then
			local UHF_Freq = UHFFreq.txtFreqStatus
			local UHF_dot =  UHFFreq.txtDot
			UHF_Frequency = UHF_Freq:sub(1, 3) .. UHF_dot .. UHF_Freq:sub(4, 6)
		else
			UHF_Frequency = "       "
		end
		ExportScript.Tools.SendData(2802, UHF_Frequency)
	end
end