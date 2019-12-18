-- F-16C_50
ExportScript.FoundDCSModule = true
local _exportDed = false

ExportScript.ConfigEveryFrameArguments = 
{
	[110] = "%1d",	-- Warning, Caution and IndicatorLights","AoA Light up (red)
	[111] = "%1d",	-- Warning, Caution and IndicatorLights","AoA Light up (green)
	[112] = "%1d",	-- Warning, Caution and IndicatorLights","AoA Light up (yellow)

	[113] = "%1d",	-- RDY Light (blue)
	[114] = "%1d",	-- AR NWS Light (green)
	[115] = "%1d",	-- DISC Light (red)

	[189] = "%1d"	-- ICP FLIR GAIN/LEVEL Switch, GAIN/LVL/AUTO	-1 / 0 / 1
--	[183] = "%1d"
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
	
	-- Left MFD
	-- [300] = "%1d",   -- Left MFD PB 1
	-- [301] = "%1d",   -- Left MFD PB 2
	-- [302] = "%1d",   -- Left MFD PB 3
	-- [303] = "%1d",   -- Left MFD PB 4
	-- [304] = "%1d",   -- Left MFD PB 5
	-- [305] = "%1d",   -- Left MFD PB 6
	-- [306] = "%1d",   -- Left MFD PB 7
	-- [307] = "%1d",   -- Left MFD PB 8
	-- [308] = "%1d",   -- Left MFD PB 9
	-- [309] = "%1d",   -- Left MFD PB 10
	-- [310] = "%1d",   -- Left MFD PB 11
	-- [311] = "%1d",   -- Left MFD PB 12
	-- [312] = "%1d",   -- Left MFD PB 13
	-- [313] = "%1d",   -- Left MFD PB 14
	-- [314] = "%1d",   -- Left MFD PB 15
	-- [315] = "%1d",   -- Left MFD PB 16
	-- [316] = "%1d",   -- Left MFD PB 17
	-- [317] = "%1d",   -- Left MFD PB 18
	-- [318] = "%1d",   -- Left MFD PB 19
	-- [319] = "%1d",   -- Left MFD PB 20
	
	-- Right MFD
	-- [326] = "%1d",   -- Righ MFD PB 1
	-- [327] = "%1d",   -- Righ MFD PB 2
	-- [328] = "%1d",   -- Righ MFD PB 3
	-- [329] = "%1d",   -- Righ MFD PB 4
	-- [330] = "%1d",   -- Righ MFD PB 5
	-- [331] = "%1d",   -- Righ MFD PB 6
	-- [332] = "%1d",   -- Righ MFD PB 7
	-- [333] = "%1d",   -- Righ MFD PB 8
	-- [334] = "%1d",   -- Righ MFD PB 9
	-- [335] = "%1d",   -- Righ MFD PB 10
	-- [336] = "%1d",   -- Righ MFD PB 11
	-- [337] = "%1d",   -- Righ MFD PB 12
	-- [338] = "%1d",   -- Righ MFD PB 13
	-- [339] = "%1d",   -- Righ MFD PB 14
	-- [340] = "%1d",   -- Righ MFD PB 15
	-- [341] = "%1d",   -- Righ MFD PB 16
	-- [342] = "%1d",   -- Righ MFD PB 17
	-- [343] = "%1d",   -- Righ MFD PB 18
	-- [344] = "%1d",   -- Righ MFD PB 19
	-- [345] = "%1d",   -- Righ MFD PB 20
}

------------------------------------------------------------------DED Layout Information----------------------------------------------------------------------------
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
DEDLayout_l1["IFF label_backup"] = {8,3}
DEDLayout_l1["STATus"] = {12,4}
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
--BINGO
DEDLayout_l1["BINGO label"] = {9,5}
DEDLayout_l1["BINGO STPT Num"] = {20,2}
DEDLayout_l1["BINGO IncDecSymbol"] = {21,1}
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
--BINGO
DEDLayout_l3["SET label"] = {6,3}
DEDLayout_l3["BINGO Asterisks_both"] = {10,1,19,"","I"}
DEDLayout_l3["BINGO Scratchpad"] = {11,8,0,"_inv","I"}
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
--BINGO
DEDLayout_l4["TOTAL label"] = {4,5}
DEDLayout_l4["TOTAL value"] = {11,5}
DEDLayout_l4["TOTAL LBS label"] = {16,3}
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
DEDLayout_l5["STAT M3 Mode"] = {0,2,0,"_inv","I"}
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
--INS
DEDLayout_l5["INS_THDG_lbl"] = {1,4}
DEDLayout_l5["INS_THDG_value"] = {7,6}
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

------------------------------------------------------------------DED Display Utility Functions---------------------------------------------------------------------
function parse_indication(indicator_id)  -- Thanks to [FSF]Ian code
	local t = {}
	local li = list_indication(indicator_id)
	local m = li:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
    	local name, value = m()
    	if not name then break end
   			t[name]=value
	end
	return t
end

local function mergeString(original_string, new_data, location)
	local new_data_length = string.len(new_data)
	local before = string.sub(original_string,1,location)
	local after = string.sub(original_string,location+new_data_length+1)
	local base = string.sub(original_string,location+1, location+new_data_length)
	local merged = {}

	for i = 1, new_data_length
	do
		local curr_base = string.sub(base,i, i)
		if curr_base  ~= " " then
			merged[i]=curr_base
		else
			merged[i]=string.sub(new_data,i, i)
		end
	end
	return before..table.concat(merged)..after
end
------------------------------------------------------------------DED Display Main Function-------------------------------------------------------------------------
local function buildDEDLine(line)
	-- Get Layout Information for line being built
		local DEDLayoutLine = DEDLayout[line]
	-- Get Exported DED Objects
		local DED_fields = parse_indication(6)
		local layout
		local label
		local value
	
	-- Base Output String
		local dataLine ="                         "
	
	-- Check for present of Objects that indicate Duplicate Key Names that need resolving
		local guard = DED_fields["Guard Label"]
		local mode =  DED_fields["Mode label"]
		local event = DED_fields["Event Occured"]
		local alow =  DED_fields["ALOW label"]
		local bingo = DED_fields["CMDS_BINGO_lbl"]
		local inflt_algn = DED_fields["INS_INFLT_ALGN_lbl"]
	
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
			elseif inflt_algn ~= nil and (line == 1 or line==3) then
				label = inflt_algn.." "..k
			else
				label = k
			end
	--Get layout data associated with current key
			layout = DEDLayoutLine[label:gsub("_inv","",1):gsub("_lhs","_both",1)]
			if layout ~= nil then
	--If layout value 6 is present then use this value to override the value returned from DCS
				if layout[6] ~= nil then
					value = layout[6]
				else
					value = v
				end
				
	-- Add Value to dataLine using mergeString because some values are are supposed to fit within others
				dataLine = mergeString(dataLine, value, layout[1])
	
	--If layout value 3 > 0 we need to duplicate this item at position specific in value 3 (this is for "*"s marking enterable fields
				if layout[3] ~= nil and layout[3] > 0 then
					dataLine = mergeString(dataLine, value, layout[3])
				end
			end
		end
		return dataLine
end

-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
	local DEDLine1 = ""
	local DEDLine2 = ""
	local DEDLine3 = ""
	local DEDLine4 = ""
	local DEDLine5 = ""

	if _exportDed == true then
	-- Build DED Display Lines
		--moduleBeingDefined.exportHooks[#moduleBeingDefined.exportHooks+1] = function()
		DEDLine1 = buildDEDLine(1);
		DEDLine2 = buildDEDLine(2);
		DEDLine3 = buildDEDLine(3);
		DEDLine4 = buildDEDLine(4);
		DEDLine5 = buildDEDLine(5);
	--end
		ExportScript.Tools.SendData(2022, DEDLine1)
		ExportScript.Tools.SendData(2022, DEDLine2)
		ExportScript.Tools.SendData(2022, DEDLine3)
		ExportScript.Tools.SendData(2022, DEDLine4)
		ExportScript.Tools.SendData(2022, DEDLine5)
	end
end