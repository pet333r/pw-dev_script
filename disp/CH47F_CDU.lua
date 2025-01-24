--module("CH47F_CDU", package.seeall)

--- @type { [string]: TextDisplayItem[] }
local CH47F_CDU = {
    VERSION_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "VERSION_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    EGI_2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "EGI_2_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "EGI_2_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    CN1_MODE_OPER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "CN1_MODE_OPER",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    L_AFT_SNSR_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_AFT_SNSR_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    HDG_TRK_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "HDG_TRK_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    CN1_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "CN1_MODE_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    PITCH_AXIS_DISABLED = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "PITCH_AXIS_DISABLED",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    FRAME_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "FRAME_field",
            static_text = true,
            x = 91,
            y = 6,
            color = 0,
        },
    },
    OFFSETS_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "OFFSETS_value",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    ECU_STATUS_DEG = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "ECU_STATUS_DEG",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    prev_FPP_name = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "prev_FPP_name",
            static_text = true,
            x = 5,
            y = 3,
            color = 4,
        },
    },
    INIT_EGI1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INIT_EGI1_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    V3_VHF_AM_FM_MODE_GUARD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_MODE_GUARD",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    ALTN_NAME_TITLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN_MGNT_cmn",
            },
            id = "ALTN_NAME_TITLE",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    HOV_H1_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "HOV_H1_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    RADIUS_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "RADIUS_left_bracket",
            static_text = true,
            x = 16,
            y = 7,
            color = 0,
        },
    },
    H4_presets_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_value_1",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    OAT_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "OAT_left_bracket",
            static_text = true,
            x = 18,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "OAT_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "OAT_left_bracket",
            static_text = true,
            x = 18,
            y = 7,
            color = 0,
        },
    },
    BAND_OPACITY_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "BAND_OPACITY_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    R_FWD_SNSR_STATUS_GO = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_FWD_SNSR_STATUS_GO",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    F1_SCAN_LIST_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_2",
            },
            id = "F1_SCAN_LIST_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    L_FWD_SNSR_STATUS_GO = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_STATUS_GO",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_STATUS_GO",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    prev_FPP_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "prev_FPP_arrow",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    DAFIF_LOAD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "DAFIF_LOAD",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    V3_UHF_presets_page_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_value_4",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    MLS_mode_AUTO = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MLS_mode_AUTO",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    TCN_BRG_RNG_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_BRG_RNG_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    V3_VHF_AM_FM_COMSEC_MODE_PLAIN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    HUD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "HUD_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    Display_LOAD_MFD2_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD2_STATUS_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    HAT_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "HAT_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    PAGE_num = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "PAGE_num",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    TANK_WT_MO_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "TANK_WT_MO_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    LENGTH_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_LADDER",
            },
            id = "LENGTH_right_bracket",
            static_text = true,
            x = 22,
            y = 7,
            color = 0,
        },
    },
    Display_LOAD_PSM1_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "Display_LOAD_PSM1_STATUS",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    pg_title_U2_UHF_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "pg_title_U2_UHF_Presets",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    ADF_tuned_freq_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_tuned_freq_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    EGI2_AVAILABLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI2_AVAILABLE",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    INU_2_MODE_GC_ALN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_2_MODE_GC_ALN",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    -- 02_branch = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "02_branch",
    --         static_text = true,
    --         x = 1,
    --         y = 5,
    --         color = 0,
    --     },
    -- },
    BOTTOM_SNSR_STATUS_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BOTTOM_SNSR_STATUS_NONE",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    T1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "T1_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    H4_LQA_CALL_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_LQA_CALL_page_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    F5_INTERCOMM_SIMUL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_INTERCOMM_SIMUL",
            static_text = true,
            x = 24,
            y = 10,
            color = 2,
        },
    },
    SPEED_BRACKET_LEFT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "SPEED_BRACKET_LEFT",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    MODE_2_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_2_value",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    CDU_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
            },
            id = "CDU_field",
            static_text = true,
            x = 1,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "CDU_field",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    ADF_MODE_ANT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_MODE_ANT",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    F1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "F1_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    CSP_CTR_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "CSP_CTR_value",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    VERT_POSN_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "VERT_POSN_right_bracket",
            static_text = true,
            x = 6,
            y = 7,
            color = 0,
        },
    },
    RALT_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
                "CDU_PAGE_EMCON",
            },
            id = "RALT_MODE_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    ACCEPT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "ACCEPT_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    ACP_IDENT_BRACKET_RIGHT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_IDENT_BRACKET_RIGHT",
            static_text = true,
            x = 12,
            y = 5,
            color = 0,
        },
    },
    pg_title_ACP_MARK_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "pg_title_ACP_MARK_NAME",
            static_text = true,
            x = 10,
            y = 1,
            color = 0,
        },
    },
    -- 03_branch = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "03_branch",
    --         static_text = true,
    --         x = 1,
    --         y = 7,
    --         color = 0,
    --     },
    -- },
    U2_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    T2_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "T2_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    MS_CODE_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_CODE_right_bracket",
            static_text = true,
            x = 11,
            y = 5,
            color = 0,
        },
    },
    V3_UHF_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    ERASE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "ERASE_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    H4_MODE_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_MODE_available",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    ECU_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "ECU_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    MISSION_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "MISSION_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "MISSION_field",
            static_text = true,
            x = 10,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "MISSION_field",
            static_text = true,
            x = 2,
            y = 4,
            color = 2,
        },
    },
    SKIP = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "SKIP",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "SKIP",
            static_text = true,
            x = 1,
            y = 6,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "SKIP",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    LEAD_TURN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "LEAD_TURN_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    SELECT_2_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "SELECT_2_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_2_field",
            static_text = true,
            x = 2,
            y = 4,
            color = 0,
        },
    },
    TEST7 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST7",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    FLT_XFER_PILOT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FLT_XFER_PILOT",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "FLT_XFER_PILOT",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    V3_VHF_AM_FM_DELAY_MODE_IN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_DELAY_MODE_IN",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    branch_DATA_LOAD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_DATA_LOAD",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    -- 04_branch = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "04_branch",
    --         static_text = true,
    --         x = 1,
    --         y = 9,
    --         color = 0,
    --     },
    -- },
    V3_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    VOR_TCN_PAIR_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "VOR_TCN_PAIR_available",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    NAV = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "NAV",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
            },
            id = "NAV",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    TANK_WT_MO_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "TANK-WT_MO_right_bracket",
            static_text = true,
            x = 12,
            y = 11,
            color = 0,
        },
    },
    H4_LBT_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
            },
            id = "H4_LBT_available",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    MAX_MSN_SPD_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "MAX_MSN_SPD_units",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    BINGO_RES_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "BINGO_RES_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    PARAMETERS_CODE_EGI_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "PARAMETERS_CODE_EGI_left_bracket",
            static_text = true,
            x = 16,
            y = 5,
            color = 0,
        },
    },
    POS_WPT_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "POS_WPT_2",
            static_text = true,
            x = 14,
            y = 8,
            color = 2,
        },
    },
    EGI2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "EGI2_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    Satelitte_freq_code_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_freq_code_2",
            static_text = true,
            x = 13,
            y = 5,
            color = 2,
        },
    },
    MODE_4_TIME_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_TIME_left_bracket",
            static_text = true,
            x = 16,
            y = 13,
            color = 0,
        },
    },
    FPP_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "FPP_arrow",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    COPY_ACP_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "COPY_ACP_field",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    V3_VHF_AM_FM_POWER_MEDIUM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_POWER_MEDIUM",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    Circular_Error_Probability_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "Circular_Error_Probability_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    SELECTED_ACP_POSN_TITLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "SELECTED_ACP_POSN_TITLE",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    GS_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "GS_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    CHAF_PROG_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CHAF_PROG_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    MS_CODE_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_CODE_code",
            static_text = true,
            x = 3,
            y = 5,
            color = 2,
        },
    },
    REJECT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "REJECT_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    H4_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "H4_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "H4_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    BRG_DIST_skip_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "BRG_DIST_skip_2",
            static_text = true,
            x = 6,
            y = 9,
            color = 2,
        },
    },
    H4_POWER_HIGH = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_POWER_HIGH",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    POWER_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
                "CDU_PAGE_MSN",
            },
            id = "POWER_branch",
            static_text = true,
            x = 23,
            y = 13,
            color = 2,
        },
    },
    ACP_POSN_BRACKET_RIGHT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_POSN_BRACKET_RIGHT",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    FLARE_TOTAL_total = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "FLARE_TOTAL_total",
            static_text = true,
            x = 15,
            y = 13,
            color = 2,
        },
    },
    H4_POWER_LOW = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_POWER_LOW",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    GS_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "GS_right_bracket",
            static_text = true,
            x = 21,
            y = 7,
            color = 0,
        },
    },
    H4_presets_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_presets_page_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    TGT_ELEV_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "TGT_ELEV_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    TKA_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TKA_value",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    MS_FLT_ID_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF_2",
            },
            id = "MS_FLT_ID_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    H4_ALE_NETS_call_address_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_call_address_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    LENGTH_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_LADDER",
            },
            id = "LENGTH_value",
            static_text = true,
            x = 21,
            y = 7,
            color = 2,
        },
    },
    V3_VHF_AM_FM_POWER_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_POWER_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    H4_presets_page_right_bracket_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_right_bracket_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    PARAMETERS_CODE_EGI_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "PARAMETERS_CODE_EGI_value",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    Satelitte_vehicle_channel_number_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_number_1",
            static_text = true,
            x = 10,
            y = 3,
            color = 2,
        },
    },
    Satelitte_state_code_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_state_code_4",
            static_text = true,
            x = 19,
            y = 7,
            color = 2,
        },
    },
    branch_REF_SELECT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_REF_SELECT",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    ECU_STATUS_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "ECU_STATUS_NONE",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    M2_SINCGARS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "M2_SINCGARS_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    IDM_CNFG_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "IDM_CNFG_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    OFP_LOADSETS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "OFP_LOADSETS_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    CONTRAST_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "CONTRAST_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    F1_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
                "CDU_PAGE_F1_HOPSETS_2",
            },
            id = "F1_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    V3_FM_presets_page_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_value_2",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    Circular_Error_Probability_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "Circular_Error_Probability_value",
            static_text = true,
            x = 1,
            y = 9,
            color = 2,
        },
    },
    ALT_REPORT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "ALT_REPORT_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    SINGARS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "SINGARS_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    AVL_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "AVL_units",
            static_text = true,
            x = 4,
            y = 13,
            color = 0,
        },
    },
    CREEP_COURSE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "CREEP_COURSE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    H4_DY_MO_YR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_DY_MO_YR_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    ROLL_OFFSET_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "ROLL_OFFSET_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    V3_VHF_AM_FM_TONE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_TONE_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    HOV_H1_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "HOV_H1_field",
            static_text = true,
            x = 21,
            y = 5,
            color = 0,
        },
    },
    CARGO_ZONE_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_ZONE_left_bracket",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "CARGO_ZONE_left_bracket",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    ANVIS_HUD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "ANVIS_HUD_field",
            static_text = true,
            x = 7,
            y = 8,
            color = 0,
        },
    },
    CSP_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_SECTOR",
            },
            id = "CSP_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    BARO_SET = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "BARO_SET",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    U2_UHF_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    F1_FM_FH_MODE_LOW = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_MODE_LOW",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    FPP_name = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "FPP_name",
            static_text = true,
            x = 7,
            y = 5,
            color = 4,
        },
    },
    HOVER_FIX_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "HOVER_FIX_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    INTENSITY_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "INTENSITY_arrow",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    LEG_DIST_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_DIST_units",
            static_text = true,
            x = 8,
            y = 11,
            color = 0,
        },
    },
    ADF_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "ADF_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "ADF_field",
            static_text = true,
            x = 2,
            y = 8,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "ADF_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "ADF_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "ADF_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    AUTO_TILT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "AUTO_TILT_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    BOTTOM_SNSR_STATUS_GO = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BOTTOM_SNSR_STATUS_GO",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    FAF_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "FAF_field",
            static_text = true,
            x = 2,
            y = 2,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "FAF_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    CARD_A_chCheckSgn = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_A_chCheckSgn",
            static_text = true,
            x = 8,
            y = 3,
            color = 0,
        },
    },
    EGI1_NOT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_EGI_1",
            },
            id = "EGI1_NOT",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    MLS_MHAA_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "MLS_MHAA_num",
            static_text = true,
            x = 3,
            y = 5,
            color = 2,
        },
    },
    BRG_DIST_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "BRG_DIST_value",
            static_text = true,
            x = 1,
            y = 9,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "BRG_DIST_value",
            static_text = true,
            x = 22,
            y = 5,
            color = 2,
        },
    },
    CARD_2_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_2_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    LEG_ALT_ELEV_TITLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "LEG_ALT_ELEV_TITLE",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    DIFF_EGI_1_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "DIFF_EGI_1_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    F1_FM_FH_presets_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "F1_FM_FH_presets_page_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    V3_UHF_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    H4_ALE_NETS_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    M5_PIN_code = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_PIN_code",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    EGI_1_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "EGI_1_page_branch_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    SAVE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "SAVE_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    Satelitte_vehicle_channel_number_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_number_3",
            static_text = true,
            x = 16,
            y = 3,
            color = 2,
        },
    },
    FRAME_NAME_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "FRAME_NAME_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    MFD3_CONFIRM_OFP_LOAD_status = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD3_CONFIRM_OFP_LOAD_status",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    V3_UHF_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    F1_SCAN_LIST_page_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_value_5",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    MODE_4_TIME_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_TIME_field",
            static_text = true,
            x = 24,
            y = 12,
            color = 0,
        },
    },
    GPS_2_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "GPS_2_page_branch",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    EGI_2_ACTIVE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_2_ACTIVE",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_2_ACTIVE",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    TEST9 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST9",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    ALARM1_MODE_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM1_MODE_available",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    GPS1_KEYS_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "GPS1_KEYS_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    branch_PERF_DEFAULT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_2",
            },
            id = "branch_PERF_DEFAULT",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    pg_title_ADF_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "pg_title_ADF_Presets",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    HQll_SETUP_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "HQll_SETUP_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    F5_SINCGARS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "F5_SINCGARS_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    V3_FM_FH_presets_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_FM_FH_presets_page_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    DLU_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "DLU_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    pg_title_U2_FMT_LOAD_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_FMT_LOAD_2",
            },
            id = "pg_title_U2_FMT_LOAD_2",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    TGT_TYPE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "TGT_TYPE_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    DIG_MAP_CONTROL_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "DIG_MAP_CONTROL_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    V3_UHF_presets_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_value_1",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    pg_title_GPS_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_2",
            },
            id = "pg_title_GPS_2",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
    },
    V3_FM_presets_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_value_1",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    PITCH_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "PITCH_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "PITCH_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    GPS_KEYS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "GPS_KEYS_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    ATIRCM_CMWS_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "ATIRCM_CMWS_OFF",
            static_text = true,
            x = 23,
            y = 13,
            color = 2,
        },
    },
    PSM1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "PSM1",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    TDZE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "TDZE_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    THRUST_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "THRUST_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    MAN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "MAN",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    U2_VHF_AM_REKEY_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_REKEY_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    LOCKOUTS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "LOCKOUTS_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    V3_VHF_AM_FM_COMSEC_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_COMSEC_MODE_available",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    COMP_SELECT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "COMP_SELECT_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    V3_FM_FH_presets_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_FM_FH_presets_page_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    SELECT_5_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_5_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    LASER_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "LASER_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    ANVIS_HUD_VIDEO_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "ANVIS_HUD_VIDEO_page_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    CREEP_COURSE_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "CREEP_COURSE_right_bracket",
            static_text = true,
            x = 5,
            y = 7,
            color = 0,
        },
    },
    ACP_POSN_VALUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_POSN_VALUE",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    MOD_FPLN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN",
            },
            id = "MOD_FPLN_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    ANT_TILT_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "ANT_TILT_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    JVMF_MSGS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "JVMF_MSGS_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    FINAL_SPD_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_SPD_units",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_units",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    GLIDEPATH_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "GLIDEPATH_left_bracket",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    CARD_B_chCheckSgn = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_B_chCheckSgn",
            static_text = true,
            x = 8,
            y = 9,
            color = 0,
        },
    },
    SATURATION = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "SATURATION",
            static_text = true,
            x = 3,
            y = 9,
            color = 2,
        },
    },
    V3_VHF_AM_FM_DELAY_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_DELAY_MODE_available",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    ACP_LIST_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "ACP_LIST_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "ACP_LIST_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "ACP_LIST_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    CENTER_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "CENTER_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    H4_tuned_freq_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_tuned_freq_4",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    TIV_OPACITY_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "TIV_OPACITY_right_bracket",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    STANDBY = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "STANDBY",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    H4_SPEECH_PRO_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_SPEECH_PRO_OFF",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    DIFF_EGI_1_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "DIFF_EGI_1_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    pg_title_ZEROIZE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "pg_title_ZEROIZE",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    TCN_power_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "TCN_power_ON",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    VOR_freq = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "VOR_freq",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "VOR_freq",
            static_text = true,
            x = 23,
            y = 13,
            color = 2,
        },
    },
    ATIRCM_CMWS_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "ATIRCM_CMWS_available",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    TO_TGT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TO_TGT_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    TSA_ONLY = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "TSA_ONLY",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    TEST10 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST10",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    TO_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_field_3",
            static_text = true,
            x = 2,
            y = 10,
            color = 0,
        },
    },
    MLS_mode_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MLS_mode_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    DEFAULTS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "DEFAULTS_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "DEFAULTS_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    TGT_TYPE_mode = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "TGT_TYPE_mode",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    ACP_ELEV_FT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_ELEV_FT",
            static_text = true,
            x = 8,
            y = 7,
            color = 0,
        },
    },
    BRG_DIST_slash = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "BRG_DIST_slash",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    NOT_AVAILABLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "NOT_AVAILABLE",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    WXR_CONTROL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
            },
            id = "WXR_CONTROL_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    H4_DY_MO_YR_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_DY_MO_YR_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    FAF_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FAF_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    H4_presets_page_right_bracket_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_right_bracket_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    MB_SENS_LOW = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "MB_SENS_LOW",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    SELECT_5_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_5_value",
            static_text = true,
            x = 3,
            y = 11,
            color = 2,
        },
    },
    pg_title_MOVING_ACP_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "pg_title_MOVING_ACP_NAME",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    VSPEED_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_MSN",
            },
            id = "VSPEED_right_bracket",
            static_text = true,
            x = 21,
            y = 9,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "VSPEED_right_bracket",
            static_text = true,
            x = 21,
            y = 5,
            color = 0,
        },
    },
    ANT_TILT_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "ANT_TILT_value",
            static_text = true,
            x = 3,
            y = 9,
            color = 2,
        },
    },
    EPU_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "EPU_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    TRACK_SPACE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "TRACK_SPACE_field",
            static_text = true,
            x = 7,
            y = 10,
            color = 0,
        },
    },
    branch_POWER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_POWER",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    FWD_POSN_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "FWD_POSN_left_bracket",
            static_text = true,
            x = 15,
            y = 5,
            color = 0,
        },
    },
    ACP_IDENT_TITLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_IDENT_TITLE",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    SATS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "SATS_field",
            static_text = true,
            x = 20,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "SATS_field",
            static_text = true,
            x = 19,
            y = 11,
            color = 0,
        },
    },
    EGI1_GPS_OUT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_EGI_1",
            },
            id = "EGI1_GPS_OUT",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    M2_INTERCOMM_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_INTERCOMM_NONE",
            static_text = true,
            x = 24,
            y = 4,
            color = 2,
        },
    },
    H4_ALE_NETS_call_address_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_call_address_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    DAFIF_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "DAFIF_field",
            static_text = true,
            x = 10,
            y = 9,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
            },
            id = "DAFIF_field",
            static_text = true,
            x = 4,
            y = 6,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "DAFIF_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
            },
            id = "DAFIF_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    ALL_EMITTERS_MODE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EMCON",
                "CDU_PAGE_EMCON",
            },
            id = "ALL_EMITTERS_MODE_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    U2_HQ_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    H4_UTC_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_UTC_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    HDG_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "HDG_value",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
            },
            id = "HDG_value",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "HDG_value",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    VISIBILITY_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "VISIBILITY_units",
            static_text = true,
            x = 5,
            y = 5,
            color = 0,
        },
    },
    IM_ALIGN_NOT_AVAILABLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
            },
            id = "IM_ALIGN_NOT_AVAILABLE",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    Display_LOAD_MFD5_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD5_STATUS_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    EPU_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "EPU_page_field",
            static_text = true,
            x = 10,
            y = 2,
            color = 0,
        },
    },
    H4_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    INTENSITY_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "INTENSITY_right_bracket",
            static_text = true,
            x = 6,
            y = 11,
            color = 0,
        },
    },
    V3_INTERCOMM_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "V3_INTERCOMM_NONE",
            static_text = true,
            x = 24,
            y = 6,
            color = 2,
        },
    },
    HOV_ALT_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_ALT_left_bracket",
            static_text = true,
            x = 17,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "HOV_ALT_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    pg_title_FPLN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "pg_title_FPLN",
            static_text = true,
            x = 1,
            y = 1,
            color = 0,
        },
    },
    MMR_ident_label = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MMR_ident_label",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    H4_presets_page_left_bracket_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
            },
            id = "H4_presets_page_left_bracket_5",
            static_text = true,
            x = 3,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_left_bracket_5",
            static_text = true,
            x = 4,
            y = 11,
            color = 0,
        },
    },
    UPDATE_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
            },
            id = "UPDATE_page_field",
            static_text = true,
            x = 9,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_page_field",
            static_text = true,
            x = 9,
            y = 13,
            color = 2,
        },
    },
    TGT_ACPS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "TGT_ACPS_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    M1_SINCGARS_presets = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "M1_SINCGARS_presets",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    VOR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "VOR_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "VOR_field",
            static_text = true,
            x = 2,
            y = 2,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "VOR_field",
            static_text = true,
            x = 2,
            y = 12,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "VOR_field",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    VOR_TCN_PAIR_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "VOR_TCN_PAIR_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    ROTATE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "ROTATE_field",
            static_text = true,
            x = 23,
            y = 6,
            color = 0,
        },
    },
    PSM2_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "PSM2_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    F1_SINCGARS_presets = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "F1_SINCGARS_presets",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    MGRS_POSITION_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "MGRS_POSITION_value_deg",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    H4_presets_page_right_bracket_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_right_bracket_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    SPEED_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "SPEED_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    ADF_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    OFFSETS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "OFFSETS_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    ACTV_TGT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "ACTV_TGT",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    FAF_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FAF_latitude_value_fract",
            static_text = true,
            x = 6,
            y = 3,
            color = 2,
        },
    },
    MODE_3_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_3_available",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    TGT_ELEV_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "TGT_ELEV_value",
            static_text = true,
            x = 21,
            y = 7,
            color = 2,
        },
    },
    pg_title_EOS_CONTROL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "pg_title_EOS_CONTROL",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "pg_title_EOS_CONTROL",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    RAIM_AVAILABLE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "RAIM_AVAILABLE_field",
            static_text = true,
            x = 7,
            y = 9,
            color = 0,
        },
    },
    TO_arrow_down_1_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_arrow_down_1_3",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    SECTOR_SCAN_status = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "SECTOR_SCAN_status",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    NAME_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "NAME_3",
            static_text = true,
            x = 6,
            y = 11,
            color = 4,
        },
    },
    PERF_RESET_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "PERF_RESET_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    BRG_RNG_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "BRG_RNG_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    MFD1_CONFIRM_OFP_LOAD_status = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD1_CONFIRM_OFP_LOAD_status",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    V3_FM_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    ALERT_AUD_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "ALERT_AUD_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "ALERT_AUD_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    VOR_CRS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_CRS_field",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    VOR_ident_label = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_ident_label",
            static_text = true,
            x = 6,
            y = 3,
            color = 2,
        },
    },
    F1_INTERCOMM_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F1_INTERCOMM_NONE",
            static_text = true,
            x = 24,
            y = 2,
            color = 2,
        },
    },
    ADF_TONE_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_TONE_OFF",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    ACP_ELEV_VALUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_ELEV_VALUE",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    HOLD_SPD_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "HOLD_SPD_value",
            static_text = true,
            x = 3,
            y = 13,
            color = 2,
        },
    },
    RNP_RNAV_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "RNP_RNAV_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "RNP_RNAV_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    SELECT_3_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_3_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    SLAVE_VAR_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "SLAVE_VAR_right_bracket",
            static_text = true,
            x = 8,
            y = 12,
            color = 0,
        },
    },
    pg_title_V3_COMM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "pg_title_V3_COMM",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    U2_INTERCOMM_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "U2_INTERCOMM_NONE",
            static_text = true,
            x = 24,
            y = 4,
            color = 2,
        },
    },
    MODE_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF_2",
            },
            id = "MODE_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    COUNTDOWN_TIMER_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "COUNTDOWN_TIMER_right_bracket",
            static_text = true,
            x = 7,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "COUNTDOWN_TIMER_right_bracket",
            static_text = true,
            x = 10,
            y = 11,
            color = 0,
        },
    },
    SECTOR_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "SECTOR_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    F1_FM_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    F1_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
                "CDU_PAGE_F1_HOPSETS_2",
            },
            id = "F1_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    TURN_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_LADDER",
                "CDU_PAGE_SECTOR",
            },
            id = "TURN_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    F1_FM_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    UTC_TIME_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "UTC_TIME_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    SELECT_1_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_1_left_bracket",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    H4_presets_page_right_bracket_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_right_bracket_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    SELECT_1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_1_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    MS_FLT_ID_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF_2",
            },
            id = "MS_FLT_ID_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    TCN_skip_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TCN_skip_1",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    FRONT_AZIMUTH_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "FRONT_AZIMUTH_right_bracket",
            static_text = true,
            x = 5,
            y = 11,
            color = 0,
        },
    },
    BRG_1_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "BRG_1_value",
            static_text = true,
            x = 15,
            y = 5,
            color = 2,
        },
    },
    AZ_OFFSET_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "AZ_OFFSET_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    FINAL_ALT_add = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "FINAL_ALT_add",
            static_text = true,
            x = 9,
            y = 9,
            color = 0,
        },
    },
    PSM2_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "PSM2_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    COORD_REF_LAT_LON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_START",
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_START",
            },
            id = "COORD_REF_LAT_LON",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    G_S_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "G_S_value",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    POWER_SYSTEM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "POWER_SYSTEM",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    L_AFT_SNSR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_AFT_SNSR_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    MARK_TIME_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "MARK_TIME_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    MISSLE_DET_STATUS_GO = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "MISSLE DET_STATUS_GO",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    SPEED_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "SPEED_units",
            static_text = true,
            x = 7,
            y = 7,
            color = 0,
        },
    },
    branch_ALTN_MGMT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_2",
            },
            id = "branch_ALTN_MGMT",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    F1_FM_FH_MODE_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_MODE_available",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    Satelitte_freq_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_freq_code",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    V3_FM_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    LOAD_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "LOAD_page_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    EGI_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "EGI_field",
            static_text = true,
            x = 21,
            y = 3,
            color = 0,
        },
    },
    pg_title_V3_VHF_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "pg_title_V3_VHF_Presets",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    MAX_MSN_SPD_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "MAX_MSN_SPD_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    MFD3_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD3_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    V3_FM_FH_tuned_freq_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_FH_tuned_freq_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    pg_title_INAV_SELECT_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
            },
            id = "pg_title_INAV_SELECT_2",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    MSN_FUEL_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "MSN_FUEL_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    F1_L4_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L4_value_4",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
    },
    pg_title_COMM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "pg_title_COMM",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
    },
    GPS_2_EPU_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "GPS_2_EPU_value",
            static_text = true,
            x = 10,
            y = 9,
            color = 2,
        },
    },
    H4_INTERCOMM_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_INTERCOMM_NONE",
            static_text = true,
            x = 24,
            y = 8,
            color = 2,
        },
    },
    H4_presets_page_left_bracket_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
            },
            id = "H4_presets_page_left_bracket_2",
            static_text = true,
            x = 3,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_left_bracket_2",
            static_text = true,
            x = 4,
            y = 5,
            color = 0,
        },
    },
    SW_RESET = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "SW_RESET",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    VOR_ILS_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    BUS_1_STATUS_DEG = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BUS_1_STATUS_DEG",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    AMP_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "AMP_left_bracket",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    SAVE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "SAVE_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    ROLL_OFFSET_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "ROLL_OFFSET_value",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    Display_LOAD_MFD1_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD1_STATUS_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    ERASE_FPLN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "ERASE_FPLN_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    H4_tuned_freq_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_tuned_freq_3",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    REPLACE_ALTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "REPLACE_ALTN_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    THRUST_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "THRUST_available",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    CNI_MODE_EMCON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "CNI_MODE_EMCON",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    TTI_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TTI_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    IDM_SILENT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "IDM_SILENT_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    F5_INTERCOMM_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_INTERCOMM_NONE",
            static_text = true,
            x = 24,
            y = 10,
            color = 2,
        },
    },
    CARD_3_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_3_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    GWT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "GWT_value",
            static_text = true,
            x = 20,
            y = 5,
            color = 2,
        },
    },
    FP_DATA_ACCESS_1_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "FP_DATA_ACCESS_1_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    HOLD_SPD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "HOLD_SPD_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    IM_ALIGN_AVAILABLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
            },
            id = "IM_ALIGN_AVAILABLE",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    ANGLE_MODE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "ANGLE_MODE_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    MISC_PARAMETERS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "MISC_PARAMETERS_field",
            static_text = true,
            x = 5,
            y = 4,
            color = 0,
        },
    },
    MFD1_CONFIRM_OFP_LOAD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD1_CONFIRM_OFP_LOAD_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    ADD_ALTN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "ADD_ALTN_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    UPDATE_DIFF_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_DIFF_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    OFFSET_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "OFFSET_right_bracket",
            static_text = true,
            x = 15,
            y = 3,
            color = 0,
        },
    },
    EGI_1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "EGI_1_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "EGI_1_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    GWT_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "GWT_right_bracket",
            static_text = true,
            x = 21,
            y = 5,
            color = 0,
        },
    },
    LOCAL_TIME_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "LOCAL_TIME_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    F1_FM_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    INTERCEPT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "INTERCEPT_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    CSP_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_SECTOR",
            },
            id = "CSP_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    EPU_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "EPU_units",
            static_text = true,
            x = 4,
            y = 7,
            color = 0,
        },
    },
    OEI_SPD_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "OEI_SPD_units",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    U2_INTERCOMM_SIMUL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "U2_INTERCOMM_SIMUL",
            static_text = true,
            x = 24,
            y = 4,
            color = 2,
        },
    },
    STR_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "STR_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 4,
        },
    },
    ETE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "ETE_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    LEG_DIST_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_DIST_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    ETA_UTC_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "ETA_UTC_right_bracket",
            static_text = true,
            x = 9,
            y = 7,
            color = 0,
        },
    },
    FINAL_ALT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_ALT_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "FINAL_ALT_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    CREEP_COURSE_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "CREEP_COURSE_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    TCN_channel_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_channel_value",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    SELECTED_ACP_POSN_ASTERISK = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "SELECTED_ACP_POSN_ASTERISK",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    MFD2_CONFIRM_OFP_LOAD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD2_CONFIRM_OFP_LOAD_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    U2_VHF_AM_MODE_GUARD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_MODE_GUARD",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    EGI_1_POSN_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
            },
            id = "EGI_1_POSN_page_branch",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    VSPEED_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_MSN",
            },
            id = "VSPEED_left_bracket",
            static_text = true,
            x = 15,
            y = 9,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "VSPEED_left_bracket",
            static_text = true,
            x = 15,
            y = 5,
            color = 0,
        },
    },
    DESTINATION_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "DESTINATION_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    DA_MSL_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DA_MSL_left_bracket",
            static_text = true,
            x = 18,
            y = 7,
            color = 0,
        },
    },
    TEST5_COIN_TEST = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST5_COIN_TEST",
            static_text = true,
            x = 20,
            y = 5,
            color = 0,
        },
    },
    T1_MODE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T1_MODE_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    RWR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "RWR_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    CLR_PG_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "CLR_PG_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    PRAIM_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "PRAIM_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    CRZ_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "CRZ_field",
            static_text = true,
            x = 3,
            y = 4,
            color = 0,
        },
    },
    LENGTH_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_LADDER",
            },
            id = "LENGTH_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    INU_1_MODE_GS_ALN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_1_MODE_GS_ALN",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    V3_UHF_tuned_freq_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_tuned_freq_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    Timer_visible = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "Timer_visible",
            static_text = true,
            x = 9,
            y = 5,
            color = 0,
        },
    },
    U2_VHF_AM_POWER_MEDIUM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_POWER_MEDIUM",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    RNP_RNAV_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "RNP_RNAV_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "RNP_RNAV_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    MSN_FUEL_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "MSN_FUEL_right_bracket",
            static_text = true,
            x = 6,
            y = 7,
            color = 0,
        },
    },
    Display_LOAD_MFD4_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD4_STATUS_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    F1_L4_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L4_field_4",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    skip = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
                "CDU_PAGE_FPLN_DATA_2",
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "skip",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    FLARE_TOTAL_disabled = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "FLARE_TOTAL_disabled",
            static_text = true,
            x = 24,
            y = 13,
            color = 2,
        },
    },
    UPDATE_MSLP_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "UPDATE_MSLP_right_bracket",
            static_text = true,
            x = 20,
            y = 7,
            color = 0,
        },
    },
    OFFSET_DIR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "OFFSET_DIR_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    V3_VHF_AM_FM_SQUELCH_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_SQUELCH_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    ETA_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "ETA_left_bracket",
            static_text = true,
            x = 15,
            y = 7,
            color = 0,
        },
    },
    AMP_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "AMP_value",
            static_text = true,
            x = 3,
            y = 3,
            color = 2,
        },
    },
    V3_FM_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    RADIUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "RADIUS_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    APPR_HOV_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "APPR_HOV_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    GPPU1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "GPPU1_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    H4_LINK_PROT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_LINK_PROT_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    F1_FM_FH_SQUELCH_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_SQUELCH_ON",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    ETA_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "ETA_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "ETA_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    H4_SELF_ADRS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_SELF_ADRS_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    FP_DATA_ACCESS_2_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "FP_DATA_ACCESS_2_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    branch_PROGRESS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_PROGRESS",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    SEQ_MODE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
            },
            id = "SEQ_MODE",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    FLARE_STATUS_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "FLARE_STATUS_OFF",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    T3_MODE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T3_MODE_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    MODE_2_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_2_available",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    U2_VHF_AM_SQUELCH_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_SQUELCH_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    MLS_tuned_freq_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_tuned_freq_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    FPP_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "FPP_num",
            static_text = true,
            x = 3,
            y = 5,
            color = 4,
        },
    },
    BRG_DIST_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "BRG_DIST_units",
            static_text = true,
            x = 10,
            y = 9,
            color = 0,
        },
    },
    LADDER_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "LADDER_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    EGI_2_POSN_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
            },
            id = "EGI_2_POSN_page_branch",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    MAX_MSN_SPD_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "MAX_MSN_SPD_value",
            static_text = true,
            x = 19,
            y = 11,
            color = 2,
        },
    },
    RALT_MODE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
                "CDU_PAGE_EMCON",
            },
            id = "RALT_MODE_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    CONST_TYPE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_1",
            },
            id = "CONST_TYPE_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    F1_SCAN_LIST_page_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_value_4",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    TCN_PT_RAD_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_PT_RAD_value",
            static_text = true,
            x = 16,
            y = 11,
            color = 2,
        },
    },
    DTK_skip = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "DTK_skip",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    F1_COMSEC_MODE_CIPHER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "F1_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    U2_VHF_AM_MODE_TR = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_MODE_TR",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    Display_LOAD_ALL_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "Display_LOAD_ALL_STATUS",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    pg_title_POWER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "pg_title_POWER",
            static_text = true,
            x = 10,
            y = 1,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "pg_title_POWER",
            static_text = true,
            x = 6,
            y = 1,
            color = 0,
        },
    },
    ALARM1_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM1_MODE_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    FPP_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "FPP_left_bracket",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    M1_COMSEC_MODE_CIPHER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    SELECT_4_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_4_left_bracket",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    CARGO_HOOK_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_HOOK_left_bracket",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    MS_CODE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_CODE_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    Display_LOAD_MFD3_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD3_STATUS",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    UPDATE_MSLP_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "UPDATE_MSLP_units",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    ALTITUDE_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_MSN",
            },
            id = "ALTITUDE_value",
            static_text = true,
            x = 21,
            y = 7,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "ALTITUDE_value",
            static_text = true,
            x = 21,
            y = 3,
            color = 2,
        },
    },
    ELEV_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "ELEV_right_bracket",
            static_text = true,
            x = 21,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "ELEV_right_bracket",
            static_text = true,
            x = 7,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "ELEV_right_bracket",
            static_text = true,
            x = 22,
            y = 7,
            color = 0,
        },
    },
    DCS2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "DCS2_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    M1_INTERCOMM_SIMUL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_INTERCOMM_SIMUL",
            static_text = true,
            x = 24,
            y = 2,
            color = 2,
        },
    },
    H4_COMSEC_MODE_CIPHER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 13,
            y = 9,
            color = 2,
        },
    },
    MLS_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    M2_WAVEFORM_VHF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_WAVEFORM_VHF",
            static_text = true,
            x = 6,
            y = 4,
            color = 0,
        },
    },
    F1_INTERCOMM_SIMUL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F1_INTERCOMM_SIMUL",
            static_text = true,
            x = 24,
            y = 2,
            color = 2,
        },
    },
    pg_title_DATA = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
                "CDU_PAGE_FPLN_DATA_2",
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "pg_title_DATA",
            static_text = true,
            x = 9,
            y = 2,
            color = 0,
        },
    },
    Satelitte_vehicle_channel_number_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_number_4",
            static_text = true,
            x = 19,
            y = 3,
            color = 2,
        },
    },
    EGI_2_USE_GPS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_2_USE_GPS",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_2_USE_GPS",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    VOR_CRS_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_CRS_value",
            static_text = true,
            x = 2,
            y = 10,
            color = 2,
        },
    },
    V3_COMSEC_MODE_CIPHER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 13,
            y = 7,
            color = 2,
        },
    },
    BINGO_RES_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "BINGO_RES_left_bracket",
            static_text = true,
            x = 19,
            y = 9,
            color = 0,
        },
    },
    RTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_FMT_LOAD_1",
                "CDU_PAGE_COMM_U2_FMT_LOAD_2",
                "CDU_PAGE_COMM_U2_HQll_SETUP",
                "CDU_PAGE_COMM_U2_MWOD_DAY",
                "CDU_PAGE_LOAD_ALTN",
                "CDU_PAGE_SAVE_ALTN",
                "CDU_PAGE_PERF_DEFAULTS",
                "CDU_PAGE_MSN_SELECT_1",
                "CDU_PAGE_MSN_SELECT_2",
                "CDU_PAGE_MSN_SELECT_3",
            },
            id = "RTN_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    EGI_2_POSN_longitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
            },
            id = "EGI_2_POSN_longitude_value_deg",
            static_text = true,
            x = 12,
            y = 5,
            color = 2,
        },
    },
    ICMD_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "ICMD MODE_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    SELECT_6_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "SELECT_6_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_6_field",
            static_text = true,
            x = 2,
            y = 12,
            color = 0,
        },
    },
    PTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "PTN_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    SV_1_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "SV_1_value",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    COURSE_DIRECT_TO_lbl_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "COURSE_DIRECT_TO_lbl_1",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    M1_WAVEFORM_VHF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_WAVEFORM_VHF",
            static_text = true,
            x = 6,
            y = 2,
            color = 0,
        },
    },
    TOTAL_FUEL_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "TOTAL_FUEL_value",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
    },
    WIND_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "WIND_units",
            static_text = true,
            x = 19,
            y = 9,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "WIND_units",
            static_text = true,
            x = 6,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "WIND_units",
            static_text = true,
            x = 6,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "WIND_units",
            static_text = true,
            x = 19,
            y = 5,
            color = 2,
        },
    },
    H4_INTERCOMM_SIMUL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_INTERCOMM_SIMUL",
            static_text = true,
            x = 24,
            y = 8,
            color = 2,
        },
    },
    F1_SCAN_LIST_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    CARD_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_2",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    LEAD_TURN_mode = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "LEAD_TURN_mode",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    branch_MODEL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_2",
            },
            id = "branch_MODEL",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    U2_COMSEC_MODE_CIPHER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 13,
            y = 5,
            color = 2,
        },
    },
    MODE_1_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_1_left_bracket",
            static_text = true,
            x = 6,
            y = 3,
            color = 0,
        },
    },
    V3_VHF_presets_page_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_value_3",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    CMWS_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CMWS_MODE_available",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    H4_SPEECH_PRO_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_SPEECH_PRO_ON",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    PSN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "PSN_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    WIND_slash = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "WIND_slash",
            static_text = true,
            x = 20,
            y = 9,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "WIND_slash",
            static_text = true,
            x = 20,
            y = 5,
            color = 2,
        },
    },
    APPLY_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "APPLY_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    pg_title_PROC_PATT_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT_cmn",
            },
            id = "pg_title_PROC_PATT_NAME",
            static_text = true,
            x = 3,
            y = 1,
            color = 0,
        },
    },
    V3_RADIO_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_RADIO_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 6,
            color = 0,
        },
    },
    INAV_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "INAV_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    TTI_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TTI_value",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    TO_arrow_down_1_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_arrow_down_1_2",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    FINAL_CRS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FINAL_CRS_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    NAV_SRC_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_INAV_SELECT",
            },
            id = "NAV_SRC_page_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    DATA_1_3_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "DATA_1_3_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "DATA_1_3_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    TEST11 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST11",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    BRG_RNG_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "BRG_RNG_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    FMT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "FMT_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    FLT_XFER_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FLT_XFER_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "FLT_XFER_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    IDNT_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "IDNT_value",
            static_text = true,
            x = 3,
            y = 3,
            color = 2,
        },
    },
    H4_RADIO_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_RADIO_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 8,
            color = 0,
        },
    },
    U2_COMSEC_MODE_PLAIN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 13,
            y = 5,
            color = 2,
        },
    },
    U2_VHF_AM_REKEY = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_REKEY",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    MODE_STBY = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "MODE_STBY",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    MFD2_CONFIRM_OFP_LOAD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD2_CONFIRM_OFP_LOAD_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    UPDATE_MLSP_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "UPDATE_MLSP_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    WIDTH_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "WIDTH_right_bracket",
            static_text = true,
            x = 22,
            y = 5,
            color = 0,
        },
    },
    F1_FM_FH_MODE_BYPASS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_MODE_BYPASS",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    GAIN_STATUS_state_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "GAIN_STATUS_state_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    LOAD_ALTN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "LOAD_ALTN_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    MB_SENS_HIGH = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "MB_SENS_HIGH",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    ICS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "ICS_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    ROTATE_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "ROTATE_right_bracket",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    ANGLE_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "ANGLE_MODE_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    U2_VHF_AM_TONE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_TONE_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    MOVING_ACP_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "MOVING_ACP_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    INU_2_MODE_SH_ALN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_2_MODE_SH_ALN",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    FP_DATA_ACCESS_4_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "FP_DATA_ACCESS_4_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    V3_VHF_presets_page_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_value_5",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    ADF_TONE_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_TONE_ON",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    AVAILABLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "AVAILABLE",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    MMR_DME_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "MMR_DME_available",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    EPU_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "EPU_value",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "EPU_value",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    F1_COMSEC_MODE_PLAIN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "F1_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    LEG_TYPE_mode = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "LEG_TYPE_mode",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    ALTN_MGMT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "ALTN_MGMT_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    M1_COMSEC_MODE_PLAIN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    MS_LEVEL_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_LEVEL_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    T2_time_up_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T2_time_up_arrow",
            static_text = true,
            x = 16,
            y = 5,
            color = 2,
        },
    },
    GPS_2_EPU_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "GPS_2_EPU_units",
            static_text = true,
            x = 14,
            y = 9,
            color = 0,
        },
    },
    M5_NO_MC_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_NO_MC_right_bracket",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    CDU1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
                "CDU_PAGE_LOADSETS_3",
            },
            id = "CDU1_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "CDU1_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    WIND_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "WIND_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "WIND_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "WIND_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "WIND_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    AVL_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "AVL_value",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    COURSE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "COURSE_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_SECTOR",
            },
            id = "COURSE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "COURSE_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    CARD_B = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_B",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    MAX_MSN_SPD_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "MAX_MSN_SPD_right_bracket",
            static_text = true,
            x = 20,
            y = 11,
            color = 0,
        },
    },
    CN1_MODE_EMCON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "CN1_MODE_EMCON",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    BUS_1_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BUS_1_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    BINGO_RES_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "BINGO_RES_value",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    MFD2_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD2_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    CLEAR_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
            },
            id = "CLEAR_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STORM_MAINTENANCE",
            },
            id = "CLEAR_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    M1_WAVEFORM_UHF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_WAVEFORM_UHF",
            static_text = true,
            x = 6,
            y = 2,
            color = 0,
        },
    },
    TO_DIST_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TO_DIST_value",
            static_text = true,
            x = 22,
            y = 7,
            color = 2,
        },
    },
    TO_TGT_DIST_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TO_TGT_DIST_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    M1_WAVEFORM_FM_SC = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_WAVEFORM_FM_SC",
            static_text = true,
            x = 6,
            y = 2,
            color = 0,
        },
    },
    F5_RADIO_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_RADIO_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 10,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_RADIO_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 8,
            color = 0,
        },
    },
    SV_1_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "SV_1_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    VOR1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "VOR1_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    ALARM_2_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM_2_value",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    CARD_1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_1_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    pg_title_STORM_MAINTENANCE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STORM_MAINTENANCE",
            },
            id = "pg_title_STORM_MAINTENANCE",
            static_text = true,
            x = 4,
            y = 1,
            color = 0,
        },
    },
    CNI_MODE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "CNI_MODE_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    GPPU2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "GPPU2_field",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    V3_FM_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    H4_LQA_CALL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_LQA_CALL",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    CONST_TYPE_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_2",
            },
            id = "CONST_TYPE_available",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    PITCH_value_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "PITCH_value_CDU",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    V3_VHF_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    V3_VHF_AM_FM_CTRL_REMOTE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_CTRL_REMOTE",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    MODE_1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_1_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    MLS_presets_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MLS_presets_page_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    WXR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "WXR_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
            },
            id = "WXR_field",
            static_text = true,
            x = 10,
            y = 10,
            color = 0,
        },
    },
    END_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "END_1",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    MODE_S_DFLT_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_MAINTENANCE",
            },
            id = "MODE_S_DFLT_right_bracket",
            static_text = true,
            x = 10,
            y = 9,
            color = 0,
        },
    },
    H4_DY_MO_YR_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_DY_MO_YR_value",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    FPLN_MGMT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "FPLN_MGMT_value",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    REJECT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "REJECT_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    TCN_CRS_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_CRS_left_bracket",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    MSN_SKIP = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "MSN_SKIP",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    UTC_TIME_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
            },
            id = "UTC_TIME_right_bracket",
            static_text = true,
            x = 9,
            y = 9,
            color = 0,
        },
    },
    ERASE_ALTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "ERASE_ALTN_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    U2_VHF_AM_SQUELCH_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_SQUELCH_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    CLR_PG_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "CLR_PG_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    DA_MSL_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DA_MSL_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    F1_FM_FH_SCAN_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_SCAN_MODE_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    H4_SOUND_NOW_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_SOUND_NOW_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    M5_LEVEL_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_LEVEL_field",
            static_text = true,
            x = 23,
            y = 12,
            color = 0,
        },
    },
    MS_SQRT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_SQRT_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    V3_VHF_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    AOB_LIMIT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "AOB_LIMIT_value",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    DIFF_EGI_2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_2",
            },
            id = "DIFF_EGI_2_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    H4_SQUELC_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_SQUELC_available",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    DATE_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
            },
            id = "DATE_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    DA_MSL_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DA_MSL_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    pg_title_ALTN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
            },
            id = "pg_title_ALTN",
            static_text = true,
            x = 1,
            y = 1,
            color = 0,
        },
    },
    RALT_LOW_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "RALT_LOW_value",
            static_text = true,
            x = 20,
            y = 3,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "RALT_LOW_value",
            static_text = true,
            x = 21,
            y = 11,
            color = 2,
        },
    },
    pg_title_LOADSETS_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "pg_title_LOADSETS_1",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    MODE_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "MODE_value_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_INAV_SELECT",
            },
            id = "MODE_value_1",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    ECU_STATUS_GO = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "ECU_STATUS_GO",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    CHAF_TYPE_NAME_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "CHAF_TYPE_NAME_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    HDG_REF_TRUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "HDG_REF_TRUE",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    ZEROIZE_ALL_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "ZEROIZE_ALL_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    ALARM2_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM2_MODE_available",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    COURSE_DIRECT_TO_lbl_ACP = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "COURSE_DIRECT_TO_lbl_ACP",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    LEG_TIME_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_TIME_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    ERFS_TANKS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "ERFS_TANKS_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "ERFS_TANKS_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    U2_freq = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_freq",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    FM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "FM",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "FM",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    M2_RADIO_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_RADIO_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 4,
            color = 0,
        },
    },
    F1_SCAN_LIST_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    AMP_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "AMP_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    U2_RADIO_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_RADIO_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 4,
            color = 0,
        },
    },
    PLAN_ALT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "PLAN_ALT_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    -- 09_value = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "09_value",
    --         static_text = true,
    --         x = 23,
    --         y = 9,
    --         color = 2,
    --     },
    -- },
    V3_VHF_AM_FM_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_MODE_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    SLAVE_VAR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "SLAVE_VAR_field",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    FREEZE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "FREEZE_field",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    SELECT_4_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_4_value",
            static_text = true,
            x = 3,
            y = 9,
            color = 2,
        },
    },
    H4_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    EGI2_NOT_AVAILABLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI2_NOT_AVAILABLE",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    V3_freq = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_freq",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    pg_title_INU_1_POSITION_UPDATE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_POSITION_UPDATE",
            },
            id = "pg_title_INU_1_POSITION_UPDATE",
            static_text = true,
            x = 3,
            y = 1,
            color = 0,
        },
    },
    MODEL_AIRCRAFT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "MODEL_AIRCRAFT_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    F1_preset_number = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "F1_preset_number",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    FLT_MODE_APPROACH = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "FLT_MODE_APPROACH",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    WXR_power_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "WXR_power_ON",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    GPS_1_EPU_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "GPS_1_EPU_value",
            static_text = true,
            x = 10,
            y = 7,
            color = 2,
        },
    },
    U2_VHF_AM_MODE_TR_plus_G = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_MODE_TR_plus_G",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    COMM_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "COMM_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "COMM_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    HOV_SPD_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_SPD_right_bracket",
            static_text = true,
            x = 21,
            y = 13,
            color = 0,
        },
    },
    H4_INTERCOMM_RETRANS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_INTERCOMM_RETRANS",
            static_text = true,
            x = 24,
            y = 8,
            color = 2,
        },
    },
    Satelitte_freq_code_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_freq_code_4",
            static_text = true,
            x = 19,
            y = 5,
            color = 2,
        },
    },
    U2_UHF_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    V3_VHF_AM_FM_COMSEC_MODE_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_COMSEC_MODE_NONE",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    STATE_select_SV_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "STATE_select_SV_3",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    LAP_2_NO_AVAILABLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "LAP_2_NO_AVAILABLE",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    HOV_WT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "HOV_WT_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    MODE_S_DFLT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_MAINTENANCE",
            },
            id = "MODE_S_DFLT_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    RWR_power_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "RWR_power_ON",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    OFFSET_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "OFFSET_field",
            static_text = true,
            x = 9,
            y = 2,
            color = 0,
        },
    },
    F1_freq_step = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F1_freq_step",
            static_text = true,
            x = 14,
            y = 2,
            color = 0,
        },
    },
    V3_RADIO_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_RADIO_STATUS_FAIL",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    WXR_GAIN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "WXR_GAIN_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    EXECUTE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MOD_FPLN",
            },
            id = "EXECUTE_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    UPDATE_SOURCE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_SOURCE_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    F1_INTERCOMM_RETRANS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F1_INTERCOMM_RETRANS",
            static_text = true,
            x = 24,
            y = 2,
            color = 2,
        },
    },
    M1_freq = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_freq",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    branch_ALTN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_ALTN",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    pg_title_DATA_2_NAME = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "pg_title_DATA_2_NAME",
            static_text = true,
            x = 24,
            y = 1,
            color = 0,
        },
    },
    pg_title_PREDICIVE_RAIM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "pg_title_PREDICIVE_RAIM",
            static_text = true,
            x = 6,
            y = 1,
            color = 0,
        },
    },
    T1_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T1_MODE_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    MGRS_POSITION_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "MGRS_POSITION_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    pg_title_STORED_ALTN_LIST = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOAD_ALTN",
                "CDU_PAGE_SAVE_ALTN",
            },
            id = "pg_title_STORED_ALTN_LIST",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    BINGO_RES_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "BINGO_RES_right_bracket",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    REPLACE_ALTN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "REPLACE_ALTN_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    M2_WAVEFORM_FM_SC = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_WAVEFORM_FM_SC",
            static_text = true,
            x = 6,
            y = 4,
            color = 0,
        },
    },
    HDG_WPT_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "HDG_WPT_3",
            static_text = true,
            x = 8,
            y = 10,
            color = 2,
        },
    },
    ROC_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "ROC_left_bracket",
            static_text = true,
            x = 16,
            y = 11,
            color = 0,
        },
    },
    EMER_MODE_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "EMER_MODE_value",
            static_text = true,
            x = 23,
            y = 13,
            color = 2,
        },
    },
    TRAIL_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TRAIL_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    GPS_1_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "GPS_1_page_field",
            static_text = true,
            x = 4,
            y = 7,
            color = 2,
        },
    },
    H4_CALL_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_CALL_page_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    CHAF_TOTAL_disabled = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CHAF_TOTAL_disabled",
            static_text = true,
            x = 5,
            y = 13,
            color = 2,
        },
    },
    GWT_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "GWT_left_bracket",
            static_text = true,
            x = 15,
            y = 5,
            color = 0,
        },
    },
    XTK_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "XTK_units",
            static_text = true,
            x = 5,
            y = 5,
            color = 0,
        },
    },
    SAVE_ALTN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "SAVE_ALTN_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    DLU_OPF_LOAD_STATUS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DLU_OFP_LOAD",
            },
            id = "DLU_OPF_LOAD_STATUS_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    MLS_presets_page_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_value_5",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    UPDATE_MLSP_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "UPDATE_MLSP_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    ELEV_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "ELEV_field",
            static_text = true,
            x = 24,
            y = 12,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "ELEV_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "ELEV_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    INU_1_MODE_SH_ALN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_1_MODE_SH_ALN",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    HDG_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "HDG_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "HDG_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    MODE_empty = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
            },
            id = "MODE_empty",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    TO_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TO_field",
            static_text = true,
            x = 2,
            y = 6,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "TO_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TO_field",
            static_text = true,
            x = 2,
            y = 2,
            color = 0,
        },
    },
    H4_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    TO_TGT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TO_TGT_value",
            static_text = true,
            x = 16,
            y = 7,
            color = 2,
        },
    },
    POWER_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "POWER_available",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
                "CDU_PAGE_MSN",
            },
            id = "POWER_available",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    T1_time_up_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T1_time_up_arrow",
            static_text = true,
            x = 16,
            y = 3,
            color = 2,
        },
    },
    MISC_PARAMETERS_CODE_num_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "MISC_PARAMETERS_CODE_num_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    pg_title_DATA_3_NAME = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "pg_title_DATA_3_NAME",
            static_text = true,
            x = 24,
            y = 1,
            color = 0,
        },
    },
    Satelitte_vehicle_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    SV_1_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "SV_1_right_bracket",
            static_text = true,
            x = 4,
            y = 9,
            color = 0,
        },
    },
    EGI2_GPS_OUT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_2",
            },
            id = "EGI2_GPS_OUT",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    CRZ_C3_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "CRZ_C3_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    U2_HQ_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    SEAS_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "SEAS_left_bracket",
            static_text = true,
            x = 19,
            y = 5,
            color = 0,
        },
    },
    pg_title_GPS_1_Satellite = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
            },
            id = "pg_title_GPS_1_Satellite",
            static_text = true,
            x = 2,
            y = 1,
            color = 0,
        },
    },
    XTK_NM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "XTK_NM",
            static_text = true,
            x = 6,
            y = 11,
            color = 0,
        },
    },
    SELECT_5_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_5_right_bracket",
            static_text = true,
            x = 13,
            y = 11,
            color = 0,
        },
    },
    H4_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_MODE_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    TGT_ELEV_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "TGT_ELEV_left_bracket",
            static_text = true,
            x = 16,
            y = 7,
            color = 0,
        },
    },
    pg_title_U2_FMT_LOAD_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_FMT_LOAD_1",
            },
            id = "pg_title_U2_FMT_LOAD_1",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    DIAMETER_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CIRCLE",
            },
            id = "DIAMETER_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    INIT_EGI2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INIT_EGI2",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    H4_freq = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_freq",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    SELECT_5_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_5_left_bracket",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    F5_freq_step = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_freq_step",
            static_text = true,
            x = 14,
            y = 8,
            color = 0,
        },
    },
    ANTENNA_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "ANTENNA_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    ALARM1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM1_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    CARGO_WT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "CARGO_WT_value",
            static_text = true,
            x = 20,
            y = 7,
            color = 2,
        },
    },
    F5_INTERCOMM_RETRANS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_INTERCOMM_RETRANS",
            static_text = true,
            x = 24,
            y = 10,
            color = 2,
        },
    },
    H4_ALE_NETS_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    CARGO_ZONE_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_ZONE_right_bracket",
            static_text = true,
            x = 16,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "CARGO_ZONE_right_bracket",
            static_text = true,
            x = 16,
            y = 13,
            color = 0,
        },
    },
    F1_FM_FH_SQUELCH_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_SQUELCH_OFF",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    ACP_IDENT_BRACKET_LEFT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_IDENT_BRACKET_LEFT",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    MAP_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "MAP_right_bracket",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    TSA_SYMB = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "TSA_SYMB",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    ADF_ident_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_ident_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 2,
        },
    },
    TRACK_SPACE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "TRACK_SPACE_branch",
            static_text = true,
            x = 10,
            y = 11,
            color = 2,
        },
    },
    FE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "FE_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "FE_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    MODE_I_G = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
            },
            id = "MODE_I_G",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    F5_SINCGARS_presets = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "F5_SINCGARS_presets",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    F5_freq = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_freq",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_freq",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    HOVER_FIX_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "HOVER_FIX_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    GPS_KEYS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "GPS_KEYS_field",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    pg_title_LOADSETS_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_3",
            },
            id = "pg_title_LOADSETS_3",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    U2_RADIO_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_RADIO_STATUS_FAIL",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    TANK_WT_MO_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "TANK-WT_MO_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    MSN_FUEL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "MSN_FUEL_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    PITCH_field_EGI = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "PITCH_field_EGI",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    F1_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
                "CDU_PAGE_F1_HOPSETS_2",
            },
            id = "F1_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    WXR_MODE_OPER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "WXR_MODE_OPER",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    UPDATE_SOURCC_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_POSITION_UPDATE",
            },
            id = "UPDATE_SOURCC_available",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    CDU1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "CDU1_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    SATURATION_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "SATURATION_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    M2_SINCGARS_presets = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "M2_SINCGARS_presets",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    CLTR_REDUCT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "CLTR_REDUCT_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    T2_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T2_MODE_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    SELECT_6_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_6_value",
            static_text = true,
            x = 3,
            y = 13,
            color = 2,
        },
    },
    MS_SQRT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_SQRT_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    H4_UTC_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_UTC_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 2,
        },
    },
    LASER_PWR = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "LASER_PWR",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    M1_freq_step = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_freq_step",
            static_text = true,
            x = 14,
            y = 2,
            color = 0,
        },
    },
    AIDING_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "AIDING_field",
            static_text = true,
            x = 9,
            y = 6,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
            },
            id = "AIDING_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    ALARM1_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM1_right_bracket",
            static_text = true,
            x = 9,
            y = 11,
            color = 0,
        },
    },
    pg_title_MISSION_PAGE_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_3",
            },
            id = "pg_title_MISSION_PAGE_3",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    COURSE_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "COURSE_deg",
            static_text = true,
            x = 6,
            y = 3,
            color = 0,
        },
    },
    F1_SCAN_LIST_freq_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_freq_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    TCN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "TCN_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "TCN_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "TCN_field",
            static_text = true,
            x = 2,
            y = 4,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TCN_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "TCN_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "TCN_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    PAGE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "PAGE_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "PAGE_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    TRAIL_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TRAIL_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    START_POSN_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "START_POSN_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    NAME_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "NAME_1",
            static_text = true,
            x = 6,
            y = 7,
            color = 4,
        },
    },
    ADF_presets_page_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_value_5",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    COURSE_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "COURSE_right_bracket",
            static_text = true,
            x = 5,
            y = 3,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_SECTOR",
            },
            id = "COURSE_right_bracket",
            static_text = true,
            x = 5,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "COURSE_right_bracket",
            static_text = true,
            x = 5,
            y = 5,
            color = 0,
        },
    },
    THRUST_AXIS_DISABLED = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "THRUST_AXIS_DISABLED",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    EGI_1_EPU_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "EGI_1_EPU_units",
            static_text = true,
            x = 14,
            y = 3,
            color = 0,
        },
    },
    BRG_DIST_skip_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "BRG_DIST_skip_1",
            static_text = true,
            x = 1,
            y = 9,
            color = 2,
        },
    },
    H4_RADIO_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_RADIO_STATUS_FAIL",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    F1_RADIO_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "F1_RADIO_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 2,
            color = 0,
        },
    },
    MODE_branch_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_INAV_SELECT",
            },
            id = "MODE_branch_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    HOV_ALT_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_ALT_right_bracket",
            static_text = true,
            x = 22,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "HOV_ALT_right_bracket",
            static_text = true,
            x = 7,
            y = 5,
            color = 0,
        },
    },
    DIAMETER_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CIRCLE",
            },
            id = "DIAMETER_right_bracket",
            static_text = true,
            x = 22,
            y = 7,
            color = 0,
        },
    },
    V3_VHF_AM_FM_POWE_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_POWE_available",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    SCAN_LIST_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "SCAN_LIST_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    pg_title_U2_HQ_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "pg_title_U2_HQ_Presets",
            static_text = true,
            x = 6,
            y = 1,
            color = 0,
        },
    },
    SELECT_5_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "SELECT_5_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_5_field",
            static_text = true,
            x = 2,
            y = 10,
            color = 0,
        },
    },
    RWR_AUDIO_terse = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "RWR_AUDIO_terse",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    T2_time = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T2_time",
            static_text = true,
            x = 8,
            y = 5,
            color = 2,
        },
    },
    INU_2_POSN_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "INU_2_POSN_longitude_value_fract",
            static_text = true,
            x = 17,
            y = 5,
            color = 2,
        },
    },
    pg_title_INDEX_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "pg_title_INDEX_1",
            static_text = true,
            x = 10,
            y = 1,
            color = 0,
        },
    },
    -- 06_field = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "06_field",
    --         static_text = true,
    --         x = 24,
    --         y = 2,
    --         color = 0,
    --     },
    -- },
    SPEED = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "SPEED",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    MMR_FREQ_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
            },
            id = "MMR_FREQ_value",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    SELECT_3_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_3_right_bracket",
            static_text = true,
            x = 13,
            y = 7,
            color = 0,
        },
    },
    PTS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "PTS_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    pg_title_LOADSETS_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "pg_title_LOADSETS_2",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    CDU_MSN_PGS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "CDU_MSN_PGS_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    MAP_longitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "MAP_longitude_value_deg",
            static_text = true,
            x = 13,
            y = 5,
            color = 2,
        },
    },
    HUD_power_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "HUD_power_OFF",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    T1_time = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T1_time",
            static_text = true,
            x = 8,
            y = 3,
            color = 2,
        },
    },
    IDM_SILENT_EMCON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "IDM_SILENT_EMCON",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    H4_SELF_ADR_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_SELF_ADR_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    LEG_ALT_ELEV_VALUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "LEG_ALT_ELEV_VALUE",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    VOR_CRS_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_CRS_left_bracket",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    MAP_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "MAP_longitude_value_fract",
            static_text = true,
            x = 18,
            y = 5,
            color = 2,
        },
    },
    LEG_TYPE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "LEG_TYPE_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    -- 09_field = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "09_field",
    --         static_text = true,
    --         x = 24,
    --         y = 8,
    --         color = 0,
    --     },
    -- },
    Display_LOAD_ALL_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "Display_LOAD_ALL_STATUS_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    MS_SQRT_mode = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_SQRT_mode",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    LOCAL_TIME_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "LOCAL_TIME_right_bracket",
            static_text = true,
            x = 9,
            y = 13,
            color = 0,
        },
    },
    ADD_ACP_FPLN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ADD_ACP_FPLN_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    branch_EMCON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_EMCON",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    ILS_CRS_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "ILS_CRS_right_bracket",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    INU_2_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
            },
            id = "INU_2_page_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    MMR_FREQ_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
            },
            id = "MMR_FREQ_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    JVMF_MSGS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "JVMF_MSGS",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    MODE_branch_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "MODE_branch_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    HOVER_FIX_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "HOVER_FIX_latitude_value_deg",
            static_text = true,
            x = 1,
            y = 3,
            color = 2,
        },
    },
    OEI_SPD_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "OEI_SPD_left_bracket",
            static_text = true,
            x = 16,
            y = 13,
            color = 0,
        },
    },
    DIG_MAP_VIDEO_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "DIG_MAP_VIDEO_page_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    CARGO_ZONE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_ZONE_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "CARGO_ZONE_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    WXR_MODE_EMCON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "WXR_MODE_EMCON",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    V3_FM_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    F1_FM_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    CARGO_ZONE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_ZONE_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "CARGO_ZONE_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    IFF_MODE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
                "CDU_PAGE_MSN",
            },
            id = "IFF_MODE",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    H4_SILENT_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_SILENT_OFF",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    CHAF_TYPE_1_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "CHAF_TYPE_1_available",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    ANTENNA_mode = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "ANTENNA_mode",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    CDU2_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
                "CDU_PAGE_LOADSETS_3",
            },
            id = "CDU2_STATUS",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    F1_SCAN_LIST_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
            },
            id = "F1_SCAN_LIST_page_value_1",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    RECEIVE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "RECEIVE_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    U2_freq_step = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_freq_step",
            static_text = true,
            x = 14,
            y = 4,
            color = 0,
        },
    },
    MLS_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    -- 07_field = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "07_field",
    --         static_text = true,
    --         x = 24,
    --         y = 4,
    --         color = 0,
    --     },
    -- },
    ACP_POSN_BRACKET_LEFT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_POSN_BRACKET_LEFT",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    AOB_LIMIT_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "AOB_LIMIT_units",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    H4_presets_page_left_bracket_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
            },
            id = "H4_presets_page_left_bracket_1",
            static_text = true,
            x = 3,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_left_bracket_1",
            static_text = true,
            x = 4,
            y = 3,
            color = 0,
        },
    },
    CREATE_ACP = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "CREATE_ACP",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    OFFSET_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "OFFSET_left_bracket",
            static_text = true,
            x = 9,
            y = 3,
            color = 0,
        },
    },
    LEAD_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "LEAD_right_bracket",
            static_text = true,
            x = 5,
            y = 9,
            color = 0,
        },
    },
    FLT_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "FLT_MODE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    LEG_ALT_ELEV_BRACKET_LEFT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "LEG_ALT_ELEV_BRACKET_LEFT",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    TCN_skip_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TCN_skip_2",
            static_text = true,
            x = 7,
            y = 11,
            color = 2,
        },
    },
    PSM1_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "PSM1_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    F1_FM_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    LEG_TYPE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "LEG_TYPE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    TDZE_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "TDZE_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    ALARM2_MODE_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM2_MODE_OFF",
            static_text = true,
            x = 23,
            y = 13,
            color = 2,
        },
    },
    VOR_ident_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_ident_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    TEST5_REV_CYAN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST5_REV_CYAN",
            static_text = true,
            x = 24,
            y = 5,
            color = 3,
        },
    },
    page_curr = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL_2",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
                "CDU_PAGE_COMM_U2_FMT_LOAD_1",
                "CDU_PAGE_COMM_U2_FMT_LOAD_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
                "CDU_PAGE_F1_HOPSETS_1",
                "CDU_PAGE_F1_HOPSETS_2",
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
                "CDU_PAGE_START_2",
                "CDU_PAGE_START",
                "CDU_PAGE_MSN",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_LOADSETS_1",
                "CDU_PAGE_LOADSETS_2",
                "CDU_PAGE_LOADSETS_3",
                "CDU_PAGE_START_2",
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_INAV_SELECT",
                "CDU_PAGE_START",
                "CDU_PAGE_MSN_2",
                "CDU_PAGE_MSN_SELECT_1",
                "CDU_PAGE_MSN_SELECT_2",
                "CDU_PAGE_MSN_SELECT_3",
                "CDU_PAGE_MSN",
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
                "CDU_PAGE_NAV_2",
                "CDU_PAGE_NAV",
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
                "CDU_PAGE_DIG_MAP_1",
                "CDU_PAGE_DIG_MAP_2",
                "CDU_PAGE_STAT_2",
                "CDU_PAGE_STAT",
            },
            id = "page_curr",
            static_text = true,
            x = 22,
            y = 1,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
                "CDU_PAGE_FPLN_DATA_2",
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "page_curr",
            static_text = true,
            x = 14,
            y = 2,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
                "CDU_PAGE_PROGRESS_PAGE_2",
                "CDU_PAGE_PROGRESS_PAGE_3",
            },
            id = "page_curr",
            static_text = true,
            x = 22,
            y = 1,
            color = 2,
        },
    },
    DATA_LOADER_READY_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD",
            },
            id = "DATA_LOADER_READY_field",
            static_text = true,
            x = 5,
            y = 2,
            color = 2,
        },
    },
    BUS_1_STATUS_GO = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BUS_1_STATUS_GO",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    V3_UHF_tuned_freq_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_tuned_freq_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    EGI1_NOT_AVAILABLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI1_NOT_AVAILABLE",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    POS_WPT_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "POS_WPT_3",
            static_text = true,
            x = 14,
            y = 10,
            color = 2,
        },
    },
    EOS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "EOS_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "EOS_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
            },
            id = "EOS_field",
            static_text = true,
            x = 10,
            y = 4,
            color = 0,
        },
    },
    ROC_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "ROC_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    TOD_DISPLAY_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "TOD_DISPLAY_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    YAW_field_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "YAW_field_CDU",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    POSN_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "POSN_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    BARO_SET_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "BARO_SET_value",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    CHANNEL_presets = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "CHANNEL_presets",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    BACK_AZIMUTH_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "BACK_AZIMUTH_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    MODE_ATTITUDE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "MODE_ATTITUDE",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    REPLACE_FPLN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "REPLACE_FPLN_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    AUTO_TILT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "AUTO_TILT_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    M5_NO_MC_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_NO_MC_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    PRG_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "PRG_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    -- 10_field = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "10_field",
    --         static_text = true,
    --         x = 24,
    --         y = 10,
    --         color = 0,
    --     },
    -- },
    INIT_SYS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INIT_SYS",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    LOAD_MSN_DATA_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD",
            },
            id = "LOAD_MSN_DATA_page_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    IFF_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "IFF_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "IFF_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    MODE_value_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "MODE_value_4",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    pg_title_VOR_ILS_Control = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "pg_title_VOR_ILS_Control",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    UPDATE_MSLP_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "UPDATE_MSLP_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    pg_title_F1_SCAN_LIST = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
            },
            id = "pg_title_F1_SCAN_LIST",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    ROLL_value_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "ROLL_value_CDU",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    H4_EMODE_CW = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_EMODE_CW",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    V3_VHF_tuned_freq_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_tuned_freq_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    EGI_2_POSN_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
            },
            id = "EGI_2_POSN_longitude_value_fract",
            static_text = true,
            x = 17,
            y = 5,
            color = 2,
        },
    },
    SATURATION_asterisk = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "SATURATION_asterisk",
            static_text = true,
            x = 1,
            y = 9,
            color = 2,
        },
    },
    RAIM_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "RAIM_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    RESET_MAP_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "RESET_MAP_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    pg_title_MISSION_PAGE_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "pg_title_MISSION_PAGE_2",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    ADD_ACP_FPLN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ADD_ACP_FPLN_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    H4_EMODE_LSB = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_EMODE_LSB",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    HOV_ALT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_ALT_value",
            static_text = true,
            x = 21,
            y = 11,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "HOV_ALT_value",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    SV_3_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "SV_3_value",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    T3_time = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T3_time",
            static_text = true,
            x = 8,
            y = 7,
            color = 2,
        },
    },
    V3_VHF_AM_FM_MODE_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_MODE_available",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    RETURN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
                "CDU_PAGE_F1_LOCKOUTS",
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
                "CDU_PAGE_F1_SINCGARS",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2_MAINTENANCE",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2_SATELLITE",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2_BORESIGHT",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_PREDICIVE_RAIM",
                "CDU_PAGE_DLU_OFP_LOAD",
                "CDU_PAGE_LOADSETS_1",
                "CDU_PAGE_LOADSETS_2",
                "CDU_PAGE_LOADSETS_3",
                "CDU_PAGE_OFP_LOADSETS",
                "CDU_PAGE_EOS_MAINTENANCE",
                "CDU_PAGE_IFF_MAINTENANCE",
                "CDU_PAGE_STORM_MAINTENANCE",
                "CDU_PAGE_MIS_PAGE_SETUP",
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
                "CDU_PAGE_EOS_CONTROL",
                "CDU_PAGE_EOS_LASER_CONTROL",
                "CDU_PAGE_EOS_POINT_CONTROL",
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "RETURN_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    M2_INTERCOMM_RETRANS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_INTERCOMM_RETRANS",
            static_text = true,
            x = 24,
            y = 4,
            color = 2,
        },
    },
    F1_SCAN_LIST_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
            },
            id = "F1_SCAN_LIST_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    TO_field_0 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_field_0",
            static_text = true,
            x = 2,
            y = 4,
            color = 0,
        },
    },
    WIND_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "WIND_value",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "WIND_value",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
    },
    U2_INTERCOMM_RETRANS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "U2_INTERCOMM_RETRANS",
            static_text = true,
            x = 24,
            y = 4,
            color = 2,
        },
    },
    VOR_ILS_freq_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_ILS_freq_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    CMWS_MODE_sbit = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CMWS_MODE_sbit",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    MOD_FPLN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN",
            },
            id = "MOD_FPLN_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    T3_MODE_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T3_MODE_OFF",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    BYPASS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "BYPASS_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    HOV_H2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "HOV_H2_field",
            static_text = true,
            x = 21,
            y = 7,
            color = 0,
        },
    },
    DA_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "DA_field",
            static_text = true,
            x = 12,
            y = 10,
            color = 0,
        },
    },
    TO_TGT_PTDIV = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TO_TGT_PTDIV",
            static_text = true,
            x = 18,
            y = 7,
            color = 2,
        },
    },
    -- 08_value = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "08_value",
    --         static_text = true,
    --         x = 23,
    --         y = 7,
    --         color = 2,
    --     },
    -- },
    V3_UHF_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    ADD_ALTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "ADD_ALTN_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    MS_LEVEL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_LEVEL_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    MCU_RESET_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "MCU_RESET_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    M5_PIN_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_PIN_left_bracket",
            static_text = true,
            x = 18,
            y = 7,
            color = 0,
        },
    },
    H4_LINK_PROT_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_LINK_PROT_right_bracket",
            static_text = true,
            x = 4,
            y = 5,
            color = 0,
        },
    },
    TIME_REF_UTC = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "TIME_REF_UTC",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    MFD_DCLT_presets = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "MFD_DCLT_presets",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    Satelitte_vehicle_channel_number_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_number_2",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    HOV_SPD_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_SPD_units",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    PRESS_ALT_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "PRESS_ALT_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    -- 07_value = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "07_value",
    --         static_text = true,
    --         x = 23,
    --         y = 5,
    --         color = 2,
    --     },
    -- },
    V3_VHF_AM_FM_DELAY_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_DELAY_MODE_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    SPEED_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "SPEED_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "SPEED_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    LOAD_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "LOAD_page_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    STRM_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "STRM_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    GS_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "GS_left_bracket",
            static_text = true,
            x = 16,
            y = 7,
            color = 0,
        },
    },
    BRIGHTNESS_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "BRIGHTNESS_arrow",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    INAV_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "INAV_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "INAV_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    ROLL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "ROLL_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "ROLL_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    Satelitte_state_code_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_state_code_1",
            static_text = true,
            x = 10,
            y = 7,
            color = 2,
        },
    },
    scratch_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_scratchpad",
            },
            id = "scratch_right_bracket",
            static_text = true,
            x = 24,
            y = 14,
            color = 0,
        },
    },
    scratch_cursor = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_scratchpad",
            },
            id = "scratch_cursor",
            static_text = true,
            x = 3,
            y = 14,
            color = 2,
        },
    },
    annunciation = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_scratchpad",
            },
            id = "annunciation",
            static_text = true,
            x = 3,
            y = 15,
            color = 0,
        },
    },
    page_slash = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL_2",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
                "CDU_PAGE_COMM_U2_FMT_LOAD_1",
                "CDU_PAGE_COMM_U2_FMT_LOAD_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
                "CDU_PAGE_F1_HOPSETS_1",
                "CDU_PAGE_F1_HOPSETS_2",
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
                "CDU_PAGE_START_2",
                "CDU_PAGE_START",
                "CDU_PAGE_MSN",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_LOADSETS_1",
                "CDU_PAGE_LOADSETS_2",
                "CDU_PAGE_LOADSETS_3",
                "CDU_PAGE_START_2",
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_INAV_SELECT",
                "CDU_PAGE_START",
                "CDU_PAGE_MSN_2",
                "CDU_PAGE_MSN_SELECT_1",
                "CDU_PAGE_MSN_SELECT_2",
                "CDU_PAGE_MSN_SELECT_3",
                "CDU_PAGE_MSN",
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
                "CDU_PAGE_NAV_2",
                "CDU_PAGE_NAV",
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
                "CDU_PAGE_DIG_MAP_1",
                "CDU_PAGE_DIG_MAP_2",
                "CDU_PAGE_STAT_2",
                "CDU_PAGE_STAT",
            },
            id = "page_slash",
            static_text = true,
            x = 23,
            y = 1,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
                "CDU_PAGE_FPLN_DATA_2",
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "page_slash",
            static_text = true,
            x = 15,
            y = 2,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
                "CDU_PAGE_PROGRESS_PAGE_2",
                "CDU_PAGE_PROGRESS_PAGE_3",
            },
            id = "page_slash",
            static_text = true,
            x = 23,
            y = 1,
            color = 0,
        },
    },
    EGI_2_NOT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_2_NOT",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    MMR_ident_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MMR_ident_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    ETA_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "ETA_value",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "ETA_value",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    pg_title_EGI_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_1",
            },
            id = "pg_title_EGI_1",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
            },
            id = "pg_title_EGI_1",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    MLS_tuned_freq_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_tuned_freq_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    LEG_DIST_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_DIST_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    -- 06_value = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "06_value",
    --         static_text = true,
    --         x = 23,
    --         y = 3,
    --         color = 2,
    --     },
    -- },
    SPEED_VALUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "SPEED_VALUE",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    -- 04_field = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "04_field",
    --         static_text = true,
    --         x = 1,
    --         y = 8,
    --         color = 0,
    --     },
    -- },
    SELECT_2_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_2_right_bracket",
            static_text = true,
            x = 13,
            y = 5,
            color = 0,
        },
    },
    CRZ_C3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "CRZ_C3",
            static_text = true,
            x = 4,
            y = 9,
            color = 0,
        },
    },
    F1_RADIO_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "F1_RADIO_STATUS_FAIL",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    GLIDEPATH_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "GLIDEPATH_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    COMM_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "COMM_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "COMM_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    VERT_POSN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "VERT_POSN_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    FUEL_TANK_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "FUEL_TANK_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    MOVING_ACP_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "MOVING_ACP_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    START_POSN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "START_POSN_field",
            static_text = true,
            x = 2,
            y = 2,
            color = 0,
        },
    },
    ADF_MODE_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_MODE_available",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    MODE_3_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_3_value",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    pg_title_DATA_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "pg_title_DATA_2",
            static_text = true,
            x = 1,
            y = 1,
            color = 0,
        },
    },
    F1_FM_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    CSP_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_SECTOR",
            },
            id = "CSP_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    MLS_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    -- 05_value = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "05_value",
    --         static_text = true,
    --         x = 2,
    --         y = 11,
    --         color = 2,
    --     },
    -- },
    COUNTDOWN_TIMER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "COUNTDOWN_TIMER",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    pg_title_START_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START",
                "CDU_PAGE_START_2",
                "CDU_PAGE_START",
            },
            id = "pg_title_START_1",
            static_text = true,
            x = 10,
            y = 1,
            color = 0,
        },
    },
    pg_title_SNSR = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "pg_title_SNSR",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    TKE_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TKE_value",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    LEG_TIME_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_TIME_right_bracket",
            static_text = true,
            x = 7,
            y = 9,
            color = 0,
        },
    },
    ZEROIZE_ALL_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "ZEROIZE_ALL_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    U2_HQ_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    TRACK_SPACE_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "TRACK_SPACE_units",
            static_text = true,
            x = 14,
            y = 11,
            color = 0,
        },
    },
    FLPN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "FLPN",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    MFD5_CONFIRM_OFP_LOAD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD5_CONFIRM_OFP_LOAD_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    EGI_1_GPS_OUT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_1_GPS_OUT",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_1_GPS_OUT",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    VOR_ident_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_ident_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    LAP_1_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "LAP_1_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    AGL_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "AGL_right_bracket",
            static_text = true,
            x = 22,
            y = 3,
            color = 0,
        },
    },
    -- 02_field = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "02_field",
    --         static_text = true,
    --         x = 1,
    --         y = 4,
    --         color = 0,
    --     },
    -- },
    CSP_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
            },
            id = "CSP_latitude_value_deg",
            static_text = true,
            x = 1,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "CSP_latitude_value_deg",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    pg_title_FM_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "pg_title_FM_Presets",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "pg_title_FM_Presets",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    MLS_presets_page_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_value_4",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    DH_SET_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DH_SET_value",
            static_text = true,
            x = 21,
            y = 3,
            color = 2,
        },
    },
    pg_title_DIG_MAP = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "pg_title_DIG_MAP",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    SPEED_BRACKET_RIGHT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "SPEED_BRACKET_RIGHT",
            static_text = true,
            x = 7,
            y = 9,
            color = 0,
        },
    },
    RALT_MODE_OPER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
                "CDU_PAGE_EMCON",
            },
            id = "RALT_MODE_OPER",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    ADF_ident = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_ident",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    ERASE_ALTN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "ERASE_ALTN_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    GS_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "GS_value",
            static_text = true,
            x = 20,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "GS_value",
            static_text = true,
            x = 1,
            y = 9,
            color = 2,
        },
    },
    pg_title_EOS_MAINTENANCE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "pg_title_EOS_MAINTENANCE",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    H4_COMSEC_MODE_PLAIN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 13,
            y = 9,
            color = 2,
        },
    },
    CONTRAST_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "CONTRAST_right_bracket",
            static_text = true,
            x = 6,
            y = 7,
            color = 0,
        },
    },
    TRB_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "TRB_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    EOS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "EOS_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "EOS_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    -- 05_field = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "05_field",
    --         static_text = true,
    --         x = 1,
    --         y = 10,
    --         color = 0,
    --     },
    -- },
    ILS_CRS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "ILS_CRS_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    KY_100_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
            },
            id = "KY_100_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    H4_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "H4_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "H4_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    SATS_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "SATS_page_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    V3_COMSEC_MODE_PLAIN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 13,
            y = 7,
            color = 2,
        },
    },
    FPP_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "FPP_right_bracket",
            static_text = true,
            x = 6,
            y = 5,
            color = 0,
        },
    },
    SELECT_1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_1_field",
            static_text = true,
            x = 2,
            y = 2,
            color = 0,
        },
    },
    T1_MODE_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T1_MODE_OFF",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    pg_title_LOAD_ALTN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOAD_ALTN",
            },
            id = "pg_title_LOAD_ALTN",
            static_text = true,
            x = 8,
            y = 2,
            color = 0,
        },
    },
    EL_OFFSET_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "EL_OFFSET_value",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    CARGO_ZONE_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_ZONE_value",
            static_text = true,
            x = 3,
            y = 5,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "CARGO_ZONE_value",
            static_text = true,
            x = 3,
            y = 13,
            color = 2,
        },
    },
    TURN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_LADDER",
                "CDU_PAGE_SECTOR",
            },
            id = "TURN_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "TURN_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    F5_COMSEC_MODE_PLAIN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 13,
            y = 11,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 13,
            y = 9,
            color = 2,
        },
    },
    MODEL_AIRCRAFT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "MODEL_AIRCRAFT_field",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    HOV_WT_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "HOV_WT_units",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    MODE_value_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
            },
            id = "MODE_value_2",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "MODE_value_2",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    -- 08_field = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "08_field",
    --         static_text = true,
    --         x = 24,
    --         y = 6,
    --         color = 0,
    --     },
    -- },
    M5_LEVEL_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_LEVEL_available",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    TCN_MODE_RECEIVE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_MODE_RECEIVE",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    TIMER_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "TIMER_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    FLT_MODE_ENROUTE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "FLT_MODE_ENROUTE",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    F1_L6_value_6 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L6_value_6",
            static_text = true,
            x = 3,
            y = 9,
            color = 2,
        },
    },
    T2_MODE_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T2_MODE_OFF",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    H4_ALE_NETS_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    SEAS_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "SEAS_units",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    SEAS_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "SEAS_right_bracket",
            static_text = true,
            x = 22,
            y = 5,
            color = 0,
        },
    },
    -- 03_field = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "03_field",
    --         static_text = true,
    --         x = 1,
    --         y = 6,
    --         color = 0,
    --     },
    -- },
    AIRSPACE_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "AIRSPACE_units",
            static_text = true,
            x = 7,
            y = 11,
            color = 0,
        },
    },
    T2_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "T2_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    PPSN_HOLD_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "PPSN_HOLD_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    ETA_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "ETA_right_bracket",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    COURSE_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "COURSE_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_SECTOR",
            },
            id = "COURSE_value",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "COURSE_value",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    H4_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    pg_title_LADDER_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "pg_title_LADDER_NAME",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
    },
    M2_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "M2_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "M2_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    GPS1_KEYS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "GPS1_KEYS_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    FINAL_ALT_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_ALT_units",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "FINAL_ALT_units",
            static_text = true,
            x = 6,
            y = 9,
            color = 0,
        },
    },
    DTK_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "DTK_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "DTK_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    CARD_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    CSP_longitude1_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
            },
            id = "CSP_longitude1_value_deg",
            static_text = true,
            x = 12,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "CSP_longitude1_value_deg",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    WX_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "WX_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    ETA_UTC_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "ETA_UTC_value",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    GAIN_STATUS_state_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "GAIN_STATUS_state_1",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    UNITS_IN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "UNITS_IN",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    pg_title_CIRCLE_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CIRCLE",
            },
            id = "pg_title_CIRCLE_NAME",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
    },
    HOLD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "HOLD_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    V3_VHF_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    V3_FM_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    H4_MSG_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_MSG_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    MS_FLT_ID_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF_2",
            },
            id = "MS_FLT_ID_right_bracket",
            static_text = true,
            x = 10,
            y = 9,
            color = 0,
        },
    },
    COORD_REF_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_START",
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_START",
            },
            id = "COORD_REF_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    ANT_TILT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "ANT_TILT_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    L_FWD_SNSR_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_STATUS_NONE",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    AMP_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "AMP_right_bracket",
            static_text = true,
            x = 5,
            y = 3,
            color = 0,
        },
    },
    FQTY_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "FQTY_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    MLS_presets_page_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_value_3",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    R_FWD_SNSR_STATUS_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_FWD_SNSR_STATUS_NONE",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    pg_title_SNSR_TGT_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "pg_title_SNSR_TGT_NAME",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    WIND_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "WIND_right_bracket",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "WIND_right_bracket",
            static_text = true,
            x = 5,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "WIND_right_bracket",
            static_text = true,
            x = 5,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "WIND_right_bracket",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    T1_MODE_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T1_MODE_ON",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    DATA_2_3_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
            },
            id = "DATA_2_3_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "DATA_2_3_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    MFD1_CONFIRM_OFP_LOAD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD1_CONFIRM_OFP_LOAD_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    F1_FM_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    ETA_UTC_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "ETA_UTC_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    MS_DFLT_ADDR_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_DFLT_ADDR_code",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    H4_MODE_ALE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_MODE_ALE",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    H4_SPEECH_PROC_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_SPEECH_PROC_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    CREEP_COURSE_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "CREEP_COURSE_value",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    DEFAULT_MS_CODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "DEFAULT_MS_CODE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    ETE_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "ETE_right_bracket",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    branch_TIMERS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_TIMERS",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    FINAL_SPD_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_SPD_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    HUD_PAGES_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
            },
            id = "HUD_PAGES_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    pg_title_EGI_1_POSITION_UPDATE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
            },
            id = "pg_title_EGI_1_POSITION_UPDATE",
            static_text = true,
            x = 3,
            y = 1,
            color = 0,
        },
    },
    PITCH_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "PITCH_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    COURSE_DIRECT_TO_lbl_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "COURSE_DIRECT_TO_lbl_2",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    ELEV_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "ELEV_left_bracket",
            static_text = true,
            x = 15,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "ELEV_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "ELEV_left_bracket",
            static_text = true,
            x = 16,
            y = 7,
            color = 0,
        },
    },
    CHAF_TOTAL_total = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CHAF_TOTAL_total",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    H4_SOUND_NOW_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_SOUND_NOW_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    F1_SCAN_LIST_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
            },
            id = "F1_SCAN_LIST_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    CARGO_WT_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "CARGO_WT_left_bracket",
            static_text = true,
            x = 14,
            y = 7,
            color = 0,
        },
    },
    EL_OFFSET_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "EL_OFFSET_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    F1_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
            },
            id = "F1_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
            },
            id = "F1_page_branch_5",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    CSP_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
            },
            id = "CSP_longitude_value_fract",
            static_text = true,
            x = 17,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "CSP_longitude_value_fract",
            static_text = true,
            x = 18,
            y = 3,
            color = 2,
        },
    },
    INU_1_USE_GPS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INU_1_USE_GPS",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    POINT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "POINT",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    DATUM = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "DATUM",
            static_text = true,
            x = 22,
            y = 5,
            color = 2,
        },
    },
    V3_FM_FH_tuned_freq_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_FH_tuned_freq_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    U2_VHF_AM_POWE_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_POWE_available",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    TRB_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "TRB_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    U2_UHF_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    SELECT_1_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_1_right_bracket",
            static_text = true,
            x = 13,
            y = 3,
            color = 0,
        },
    },
    BRG_DIST_1_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "BRG_DIST_1_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    TCN_MODE_T_R = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_MODE_T_R",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    H4_EMODE_AM = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_EMODE_AM",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    RALT_MODE_EMCON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
                "CDU_PAGE_EMCON",
            },
            id = "RALT_MODE_EMCON",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    pg_title_PLAN_TYPE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
            },
            id = "pg_title_PLAN_TYPE",
            static_text = true,
            x = 1,
            y = 1,
            color = 0,
        },
    },
    AOB_LIMIT_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "AOB_LIMIT_left_bracket",
            static_text = true,
            x = 20,
            y = 9,
            color = 0,
        },
    },
    RADIUS_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "RADIUS_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    Display_LOAD_PSM2_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "Display_LOAD_PSM2_STATUS",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    ATIRCM_CMWS_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "ATIRCM_CMWS_ON",
            static_text = true,
            x = 23,
            y = 13,
            color = 2,
        },
    },
    CN1_MODE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "CN1_MODE_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    F1_L1_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L1_field_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 2,
        },
    },
    M5_LEVEL_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_LEVEL_value",
            static_text = true,
            x = 23,
            y = 13,
            color = 2,
        },
    },
    MS_ADDR_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_ADDR_right_bracket",
            static_text = true,
            x = 10,
            y = 5,
            color = 0,
        },
    },
    MFD4_CONFIRM_OFP_LOAD_status = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD4_CONFIRM_OFP_LOAD_status",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    DLU_OPF_LOAD_STATUS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DLU_OFP_LOAD",
            },
            id = "DLU_OPF_LOAD_STATUS",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    VHF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "VHF",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "VHF",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    H4_LBT_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_LBT_OFF",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    CNI_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "CNI_MODE_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    FLARE_TYPE_1_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "FLARE_TYPE_1_available",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    GAIN_STATUS_state_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "GAIN_STATUS_state_3",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    TRB = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "TRB",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    pg_title_NAVIGATION = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV_2",
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV",
            },
            id = "pg_title_NAVIGATION",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    TCN_PT_RAD_DIST_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_PT_RAD_DIST_units",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    TIME_REF_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "TIME_REF_available",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    CHAF_TOTAL_enabled = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CHAF_TOTAL_enabled",
            static_text = true,
            x = 5,
            y = 13,
            color = 2,
        },
    },
    AOB_LIMIT_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "AOB_LIMIT_right_bracket",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    DATE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "DATE",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    FLARE_PROG_name = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "FLARE_PROG_name",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    MODE_S_DFLT_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_MAINTENANCE",
            },
            id = "MODE_S_DFLT_code",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    ALTN_NAME_BRACKET_LEFT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN_MGNT_cmn",
            },
            id = "ALTN_NAME_BRACKET_LEFT",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    TACAN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "TACAN_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "TACAN_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    U2_VHF_AM_DELAY_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_DELAY_MODE_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    Satelitte_vehicle_channel_number_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_number_field",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    OFFSET_DIR_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "OFFSET_DIR_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    EGI_1_POSN_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
            },
            id = "EGI_1_POSN_latitude_value_fract",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    NUC_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "NUC_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    INU_1_POSN_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_POSITION_UPDATE",
            },
            id = "INU_1_POSN_longitude_value_fract",
            static_text = true,
            x = 17,
            y = 5,
            color = 2,
        },
    },
    MODE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF_2",
            },
            id = "MODE_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
                "CDU_PAGE_EOS_CONTROL",
                "CDU_PAGE_EOS_LASER_CONTROL",
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "MODE_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    OEI_SPD_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "OEI_SPD_right_bracket",
            static_text = true,
            x = 21,
            y = 13,
            color = 0,
        },
    },
    V3_UHF_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    BRG_RAD_DIST_1_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "BRG_RAD_DIST_1_units",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    SELECT_3_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_3_left_bracket",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    V3_VHF_AM_FM_MODE_TR = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_MODE_TR",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    V3_VHF_AM_FM_CTRL_KY_58 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_CTRL_KY_58",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    KY_100_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
            },
            id = "KY_100_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    DATUM_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "DATUM_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    BOTTOM_SNSR_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BOTTOM_SNSR_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    V3_UHF_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    V3_FM_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    AOB_LIMIT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "AOB_LIMIT_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    MMR_channel_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MMR_channel_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    H4_presets_page_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_value_3",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    OFFSETS_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "OFFSETS_right_bracket",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    SEQ_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
            },
            id = "SEQ_MODE_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    EGI_1_POSN_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
            },
            id = "EGI_1_POSN_longitude_value_fract",
            static_text = true,
            x = 17,
            y = 5,
            color = 2,
        },
    },
    INU_1_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
            },
            id = "INU_1_page_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    pg_title_U2_HQll_SETUP = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "pg_title_U2_HQll_SETUP",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    F5_net_name = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_net_name",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    TCN_BRG_RNG_PAIR_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_BRG_RNG_PAIR_value",
            static_text = true,
            x = 18,
            y = 7,
            color = 2,
        },
    },
    MODE_5_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MODE_5_value",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    EGI_2_EPU_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "EGI_2_EPU_value",
            static_text = true,
            x = 10,
            y = 5,
            color = 2,
        },
    },
    VOR_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "VOR_num",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    TCN_PTW_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "TCN_PTW_num",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
    },
    pg_title_DIG_MAP_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "pg_title_DIG_MAP_2",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    SELECT_4_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "SELECT_4_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_4_field",
            static_text = true,
            x = 2,
            y = 8,
            color = 0,
        },
    },
    IFF_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
                "CDU_PAGE_MSN",
            },
            id = "IFF_MODE_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    CTR_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_LADDER",
            },
            id = "CTR_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    U2_UHF_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    HOV_SPD_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_SPD_left_bracket",
            static_text = true,
            x = 16,
            y = 13,
            color = 0,
        },
    },
    M5_NO_MC_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_NO_MC_left_bracket",
            static_text = true,
            x = 19,
            y = 9,
            color = 0,
        },
    },
    LASER_PWR_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "LASER_PWR_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    SECTOR_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "SECTOR_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    U2_VHF_AM_COMSEC_MODE_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_COMSEC_MODE_NONE",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    DESTINATION_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "DESTINATION_right_bracket",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    AIRSPACE_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "AIRSPACE_right_bracket",
            static_text = true,
            x = 6,
            y = 11,
            color = 0,
        },
    },
    ACP_ELEV_BRACKET_LEFT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_ELEV_BRACKET_LEFT",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    SELECT_3_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_3_value",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
    },
    H4_EMODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_EMODE_available",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    pg_title_EMCON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EMCON",
                "CDU_PAGE_EMCON",
            },
            id = "pg_title_EMCON",
            static_text = true,
            x = 10,
            y = 1,
            color = 0,
        },
    },
    M1_WAVEFORM_FM_FH = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_WAVEFORM_FM_FH",
            static_text = true,
            x = 6,
            y = 2,
            color = 0,
        },
    },
    SELECT_2_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_2_left_bracket",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    V3_VHF_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    R_FWD_SNSR_STATUS_FAIL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_FWD_SNSR_STATUS_FAIL",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    L_FWD_SNSR_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_STATUS_FAIL",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_STATUS_FAIL",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    pg_title_INU_1_BORESIGHT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
            },
            id = "pg_title_INU_1_BORESIGHT",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    RALT_LOW_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "RALT_LOW_units",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "RALT_LOW_units",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    OAT_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "OAT_right_bracket",
            static_text = true,
            x = 22,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "OAT_right_bracket",
            static_text = true,
            x = 5,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "OAT_right_bracket",
            static_text = true,
            x = 22,
            y = 7,
            color = 0,
        },
    },
    V3_VHF_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    BASIC_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "BASIC_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    F1_FM_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    BARO_SET_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "BARO_SET_left_bracket",
            static_text = true,
            x = 17,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "BARO_SET_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    H4_CALL_ADRS_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_CALL_ADRS_page_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    MLS_tuned_freq_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_tuned_freq_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    MODE_C_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_C_value",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    H4_GPS_TIME_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_GPS_TIME_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    M2_WAVEFORM_FM_FH = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_WAVEFORM_FM_FH",
            static_text = true,
            x = 6,
            y = 4,
            color = 0,
        },
    },
    INU_1_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INU_1_MODE_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    INU_2_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
            },
            id = "INU_2_page_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    H4_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    ADF_TONE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_TONE_available",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    YAW_value_EGI = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "YAW_value_EGI",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    MODE_4_CODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_CODE_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_CODE_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    BRG_DIST_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
                "CDU_PAGE_MSN_2",
            },
            id = "BRG_DIST_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "BRG_DIST_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    pg_title_ASE_Expendables = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "pg_title_ASE_Expendables",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    H4_presets_page_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_value_4",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    VISIBILITY_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "VISIBILITY_right_bracket",
            static_text = true,
            x = 4,
            y = 5,
            color = 0,
        },
    },
    FUEL_TANK_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "FUEL_TANK_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    UPDATE_POSN_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_POSN_longitude_value_fract",
            static_text = true,
            x = 17,
            y = 9,
            color = 2,
        },
    },
    ADF_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "ADF_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "ADF_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "ADF_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "ADF_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    EGI_1_NOT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_1_NOT",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    H4_SYNC = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_SYNC",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    INU_1_POSN_longitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_POSITION_UPDATE",
            },
            id = "INU_1_POSN_longitude_value_deg",
            static_text = true,
            x = 12,
            y = 5,
            color = 2,
        },
    },
    MODE_C_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_C_available",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    EMER_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "EMER_MODE_available",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    PTS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "PTS_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    H4_ALE_NETS_presets_page_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_value_3",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    DH_SET_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DH_SET_left_bracket",
            static_text = true,
            x = 18,
            y = 3,
            color = 0,
        },
    },
    F1_L6_field_6 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L6_field_6",
            static_text = true,
            x = 1,
            y = 9,
            color = 2,
        },
    },
    T2_MODE_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T2_MODE_ON",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    UNITS_MB = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "UNITS_MB",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    H4_ALE_NETS_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    U2_VHF_AM_CTRL_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_CTRL_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    TIV_OPACITY = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "TIV_OPACITY",
            static_text = true,
            x = 22,
            y = 7,
            color = 2,
        },
    },
    LENGTH_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_LADDER",
            },
            id = "LENGTH_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    SEQ_ORDER_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "SEQ_ORDER_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    pg_title_H4_CONTROL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL_2",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "pg_title_H4_CONTROL",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    EGI2_power_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "EGI2_power_available",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    H4_ALE_NETS_call_address_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_call_address_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    CHAF_PROG_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CHAF_PROG_available",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    LEG_TIME_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_TIME_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    M5_PIN_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_PIN_right_bracket",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    pg_title_MLS_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "pg_title_MLS_Presets",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    HDG_REF_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "HDG_REF_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    INU_2_POSN_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "INU_2_POSN_page_branch",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    F1_SCAN_LIST_freq_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_freq_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    OAT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "OAT_branch",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    pg_title_GPS_2_Satellite = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "pg_title_GPS_2_Satellite",
            static_text = true,
            x = 2,
            y = 1,
            color = 0,
        },
    },
    USER_ACPS_ranch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "USER_ACPS_ranch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    ACP_IDENT_VALUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_IDENT_VALUE",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    INU_1_HDG_STORED = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_1_HDG_STORED",
            static_text = true,
            x = 10,
            y = 4,
            color = 0,
        },
    },
    LOAD_ALTN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "LOAD_ALTN_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    INU_2_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INU_2_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INU_2_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    SELECT_2_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_2_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    TCN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
                "CDU_PAGE_MSN_2",
            },
            id = "TCN_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "TCN_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "TCN_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    LRF_RTN_status = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "LRF_RTN_status",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    FPLN_NAME_BRACKET_LEFT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT_cmn",
            },
            id = "FPLN_NAME_BRACKET_LEFT",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    TACAN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "TACAN_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "TACAN_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    CONFIRM_OFP_LOAD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "CONFIRM_OFP_LOAD_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    TO_arrow_down_2_0 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_arrow_down_2_0",
            static_text = true,
            x = 4,
            y = 4,
            color = 0,
        },
    },
    FPLN_MGMT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "FPLN_MGMT_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    EXP_SQUARE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "EXP_SQUARE_field",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    ADD_FPLN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "ADD_FPLN_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    YAW_value_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "YAW_value_CDU",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    FINAL_ALT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_ALT_value",
            static_text = true,
            x = 21,
            y = 9,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "FINAL_ALT_value",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    CARD_1_chCheckSgn = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_1_chCheckSgn",
            static_text = true,
            x = 8,
            y = 3,
            color = 0,
        },
    },
    ADF_freq_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_freq_value",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    pg_title_DATA_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "pg_title_DATA_3",
            static_text = true,
            x = 1,
            y = 1,
            color = 0,
        },
    },
    DIAMETER_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CIRCLE",
            },
            id = "DIAMETER_left_bracket",
            static_text = true,
            x = 16,
            y = 7,
            color = 0,
        },
    },
    MODE_G = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
            },
            id = "MODE_G",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    IDNT_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "IDNT_left_bracket",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    GPPU1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "GPPU1_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    H4_ALE_NETS_presets_page_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_value_5",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    H4_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    ADF_SHAP_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "ADF_SHAP_num",
            static_text = true,
            x = 3,
            y = 9,
            color = 2,
        },
    },
    PRESS_ALT_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "PRESS_ALT_right_bracket",
            static_text = true,
            x = 7,
            y = 3,
            color = 0,
        },
    },
    ALERT_AUD_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "ALERT_AUD_available",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "ALERT_AUD_available",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    LOCAL_TIME_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "LOCAL_TIME_left_bracket",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    TRK_SP_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_LADDER",
            },
            id = "TRK_SP_left_bracket",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    MOVING_ACPS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "MOVING_ACPS_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    VOR_CRS_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_CRS_right_bracket",
            static_text = true,
            x = 5,
            y = 10,
            color = 0,
        },
    },
    FUEL_TANK_mode = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "FUEL_TANK_mode",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    EGI_2_EPU_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "EGI_2_EPU_units",
            static_text = true,
            x = 14,
            y = 5,
            color = 0,
        },
    },
    FAF_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FAF_latitude_value_deg",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    LAP_3_NO_AVAILABLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "LAP_3_NO_AVAILABLE",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    V3_VHF_presets_page_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_value_2",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    NAV_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "NAV_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "NAV_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
            },
            id = "NAV_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    TCN_pairing_mode_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_pairing_mode_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    UPDATE_MSLP_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "UPDATE_MSLP_value",
            static_text = true,
            x = 19,
            y = 7,
            color = 2,
        },
    },
    SATURATION_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "SATURATION_left_bracket",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    LRF_RTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "LRF_RTN_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    HDG_REF_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "HDG_REF_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    MARKPOINTS_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "MARKPOINTS_value",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    MAP_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "MAP_value",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    H4_ALE_NETS_presets_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_value_1",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    FAF_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FAF_longitude_value_fract",
            static_text = true,
            x = 18,
            y = 3,
            color = 2,
        },
    },
    FINAL_SPD_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_value",
            static_text = true,
            x = 20,
            y = 7,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_SPD_value",
            static_text = true,
            x = 20,
            y = 11,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_value",
            static_text = true,
            x = 20,
            y = 9,
            color = 2,
        },
    },
    RTN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "RTN_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_FMT_LOAD_1",
                "CDU_PAGE_COMM_U2_FMT_LOAD_2",
                "CDU_PAGE_COMM_U2_HQll_SETUP",
                "CDU_PAGE_COMM_U2_MWOD_DAY",
                "CDU_PAGE_LOAD_ALTN",
                "CDU_PAGE_SAVE_ALTN",
                "CDU_PAGE_PERF_DEFAULTS",
                "CDU_PAGE_MSN_SELECT_1",
                "CDU_PAGE_MSN_SELECT_2",
                "CDU_PAGE_MSN_SELECT_3",
            },
            id = "RTN_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    FLARE_STATUS_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "FLARE_STATUS_ON",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    pg_title_ASE_CONTROL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "pg_title_ASE_CONTROL",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    F1_SCAN_LIST_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    VOR_ILS_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    HAT_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "HAT_value",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    TO_arrow_down_2_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_arrow_down_2_1",
            static_text = true,
            x = 4,
            y = 6,
            color = 0,
        },
    },
    PRAIM_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "PRAIM_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    num_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "num_1",
            static_text = true,
            x = 2,
            y = 7,
            color = 4,
        },
    },
    RALT_LOW_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "RALT_LOW_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "RALT_LOW_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    MMR_DME_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "MMR_DME_OFF",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    TRK_SP_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "TRK_SP_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_LADDER",
            },
            id = "TRK_SP_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    H4_ALE_NETS_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    MODE_SH_ALN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "MODE_SH_ALN",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    INTENSITY_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "INTENSITY_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    COMP_SELECT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "COMP_SELECT_value",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    MLS_mode_MAN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MLS_mode_MAN",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    CDU1_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
                "CDU_PAGE_LOADSETS_3",
            },
            id = "CDU1_STATUS_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    HOV_H4_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "HOV_H4_field",
            static_text = true,
            x = 21,
            y = 11,
            color = 0,
        },
    },
    PSM1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "PSM1_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    DLU_OFP_LOAD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_OFP_LOADSETS",
            },
            id = "DLU_OFP_LOAD_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    WIND_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "WIND_left_bracket",
            static_text = true,
            x = 15,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "WIND_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "WIND_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "WIND_left_bracket",
            static_text = true,
            x = 15,
            y = 5,
            color = 0,
        },
    },
    CSP_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_SECTOR",
            },
            id = "CSP_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    FLARE_PROG_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "FLARE_PROG_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    MS_DFLT_ADDR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_DFLT_ADDR_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    pg_title_ALTN_MGNT_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN_MGNT_cmn",
            },
            id = "pg_title_ALTN_MGNT_NAME",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    WIDTH_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "WIDTH_value",
            static_text = true,
            x = 21,
            y = 5,
            color = 2,
        },
    },
    V3_VHF_AM_FM_REKEY_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_REKEY_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    -- 10_value = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "10_value",
    --         static_text = true,
    --         x = 23,
    --         y = 11,
    --         color = 2,
    --     },
    -- },
    AZ_OFFSET_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "AZ_OFFSET_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    R_FWD_SNSR_STATUS_DEG = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_FWD_SNSR_STATUS_DEG",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    DEFAULT_MS_CODE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "DEFAULT_MS_CODE_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    L_FWD_SNSR_STATUS_DEG = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_STATUS_DEG",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_STATUS_DEG",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    REPLACE_FPLN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "REPLACE_FPLN_field",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    UPDATE_POSN_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_POSN_page_branch",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    CHAF_STATUS_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "CHAF_STATUS_ON",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    FLT_MODE_TERMINAL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "FLT_MODE_TERMINAL",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    F1_L7_value_7 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L7_value_7",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    H4_SQUELCH_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_SQUELCH_right_bracket",
            static_text = true,
            x = 4,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_SQUELCH_right_bracket",
            static_text = true,
            x = 4,
            y = 7,
            color = 2,
        },
    },
    VOR_ident = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_ident",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    CSP_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
            },
            id = "CSP_latitude_value_fract",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "CSP_latitude_value_fract",
            static_text = true,
            x = 6,
            y = 3,
            color = 2,
        },
    },
    HOV_ALT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_ALT_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "HOV_ALT_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    USER_ACPS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "USER_ACPS_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    pg_title_APPROACH_HOVER_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "pg_title_APPROACH_HOVER_NAME",
            static_text = true,
            x = 4,
            y = 1,
            color = 0,
        },
    },
    STRM_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "STRM_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    SELECT_6_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_6_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    M5_ALTR_AUD_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_ALTR_AUD_value",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    HDG_WPT_0 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "HDG_WPT_0",
            static_text = true,
            x = 8,
            y = 4,
            color = 2,
        },
    },
    T3_time_down_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T3_time_down_arrow",
            static_text = true,
            x = 16,
            y = 7,
            color = 2,
        },
    },
    OPERATION_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STORM_MAINTENANCE",
            },
            id = "OPERATION_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    F1_FM_FH_MODE_NORMAL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_MODE_NORMAL",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    CARGO_FUEL_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "CARGO_FUEL_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    INIT_SYS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INIT_SYS_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    H4_SPEECH_PROC_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_SPEECH_PROC_available",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    H4_tuned_freq_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_tuned_freq_1",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    MODE_1_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_1_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    U2_HQ_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    MLS_presets_page_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_value_2",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    TOD_DISPLAY_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "TOD_DISPLAY_available",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    V3_FM_tuned_freq_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
            },
            id = "V3_FM_tuned_freq_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    ECU_STATUS_FAIL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "ECU_STATUS_FAIL",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    TCN_pairing_mode_PAIR = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_pairing_mode_PAIR",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    MB_SENS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "MB_SENS_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    pg_title_PROGRESS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
                "CDU_PAGE_PROGRESS_PAGE_2",
                "CDU_PAGE_PROGRESS_PAGE_3",
            },
            id = "pg_title_PROGRESS",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    AIRSPACE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "AIRSPACE_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    T2_time_down_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T2_time_down_arrow",
            static_text = true,
            x = 16,
            y = 5,
            color = 2,
        },
    },
    INU_1_HDG = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_1_HDG",
            static_text = true,
            x = 10,
            y = 4,
            color = 0,
        },
    },
    CLEAR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
            },
            id = "CLEAR_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STORM_MAINTENANCE",
            },
            id = "CLEAR_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    START_POSN_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "START_POSN_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    H4_ALE_NETS_call_address_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_call_address_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    LEAD_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "LEAD_value",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    V3_UHF_tuned_freq_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_tuned_freq_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    F1_SCAN_LIST_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    F5_preset_number = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_preset_number",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_preset_number",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    INU_1_MODE_GC_ALN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_1_MODE_GC_ALN",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    EOS_CONTROL_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
            },
            id = "EOS_CONTROL_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    FINAL_CRS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FINAL_CRS_branch",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    F1_SCAN_LIST_page_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_value_3",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    F1_FM_FH_SCAN_MODE_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_SCAN_MODE_OFF",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    ACP_DATUM_BRACKET_LEFT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_DATUM_BRACKET_LEFT",
            static_text = true,
            x = 20,
            y = 5,
            color = 0,
        },
    },
    POWER_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "POWER_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
                "CDU_PAGE_MSN",
            },
            id = "POWER_field",
            static_text = true,
            x = 24,
            y = 12,
            color = 0,
        },
    },
    pg_title_V3_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
            },
            id = "pg_title_V3_Presets",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    Display_LOAD_MFD5_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD5_STATUS",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    CARGO_FUEL_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "CARGO_FUEL_right_bracket",
            static_text = true,
            x = 11,
            y = 9,
            color = 0,
        },
    },
    V3_FM_tuned_freq_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
            },
            id = "V3_FM_tuned_freq_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    TURN_MODE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "TURN_MODE",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    IFF_MODE_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
                "CDU_PAGE_MSN",
            },
            id = "IFF_MODE_right_bracket",
            static_text = true,
            x = 6,
            y = 13,
            color = 0,
        },
    },
    TRAIL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TRAIL_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    pg_title_DATA_SEARCH = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA",
            },
            id = "pg_title_DATA_SEARCH",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    FMT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "FMT_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    MMR_ident = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MMR_ident",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    EGI_1_ACTIVE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_1_ACTIVE",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_1_ACTIVE",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    MGRS_POSITION_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "MGRS_POSITION_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    PERF_PROGRESS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "PERF_PROGRESS_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    ROLL_OFFSET_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "ROLL_OFFSET_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    HOVER_FIX_longitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "HOVER_FIX_longitude_value_deg",
            static_text = true,
            x = 12,
            y = 3,
            color = 2,
        },
    },
    WXR_power_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "WXR_power_OFF",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    V3_VHF_AM_FM_COMSEC_MODE_CIPHER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    INIT_EGI1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INIT_EGI1",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    ALTN_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "ALTN_value",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    CDU_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "CDU_page_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    H4_ALE_NETS_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    CRZ_C2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "CRZ_C2",
            static_text = true,
            x = 4,
            y = 7,
            color = 0,
        },
    },
    HOLD_SPD_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "HOLD_SPD_left_bracket",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    EGI_1_USE_GPS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_1_USE_GPS",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_1_USE_GPS",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    pg_title_IFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF",
            },
            id = "pg_title_IFF",
            static_text = true,
            x = 12,
            y = 1,
            color = 0,
        },
    },
    UTC_TIME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "UTC_TIME",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    GLIDEPATH_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "GLIDEPATH_right_bracket",
            static_text = true,
            x = 5,
            y = 13,
            color = 0,
        },
    },
    ALT_REPORT_mode = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "ALT_REPORT_mode",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    RENUMBER_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "RENUMBER_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    RWR_power_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "RWR_power_OFF",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    MODE_I = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
            },
            id = "MODE_I",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    MODE_2_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_2_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    RETURN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
                "CDU_PAGE_F1_LOCKOUTS",
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
                "CDU_PAGE_F1_SINCGARS",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2_MAINTENANCE",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2_SATELLITE",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2_BORESIGHT",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_PREDICIVE_RAIM",
                "CDU_PAGE_DLU_OFP_LOAD",
                "CDU_PAGE_LOADSETS_1",
                "CDU_PAGE_LOADSETS_2",
                "CDU_PAGE_LOADSETS_3",
                "CDU_PAGE_OFP_LOADSETS",
                "CDU_PAGE_EOS_MAINTENANCE",
                "CDU_PAGE_IFF_MAINTENANCE",
                "CDU_PAGE_STORM_MAINTENANCE",
                "CDU_PAGE_MIS_PAGE_SETUP",
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
                "CDU_PAGE_EOS_CONTROL",
                "CDU_PAGE_EOS_LASER_CONTROL",
                "CDU_PAGE_EOS_POINT_CONTROL",
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "RETURN_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    UPDATE_POSN_longitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_POSN_longitude_value_deg",
            static_text = true,
            x = 12,
            y = 9,
            color = 2,
        },
    },
    ALERT_AUD_mode = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "ALERT_AUD_mode",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "ALERT_AUD_mode",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    NAV_RADIOS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "NAV_RADIOS_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    INU_1_POSN_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_POSITION_UPDATE",
            },
            id = "INU_1_POSN_latitude_value_deg",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    CMWS_MODE_operate = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CMWS_MODE_operate",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    pg_title_CMWS_STATUS_DEG = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "pg_title_CMWS STATUS DEG",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    EL_OFFSET_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "EL_OFFSET_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    SV_2_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "SV_2_right_bracket",
            static_text = true,
            x = 4,
            y = 11,
            color = 0,
        },
    },
    MODE_NAV = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "MODE_NAV",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    BARO_RALT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_3",
            },
            id = "BARO_RALT_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    ROLL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "ROLL",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    INU_2_MODE_GS_ALN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_2_MODE_GS_ALN",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    MLS_presets_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MLS_presets_page_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    POWER_SYSTEM_removed = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "POWER_SYSTEM_removed",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    CHAF_STATUS_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "CHAF_STATUS_OFF",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    V3_UHF_tuned_freq_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_tuned_freq_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    V3_VHF_AM_FM_REKEY = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_REKEY",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    V3_VHF_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    EGI2_power_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "EGI2_power_OFF",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    PLAN_ALT_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "PLAN_ALT_right_bracket",
            static_text = true,
            x = 9,
            y = 11,
            color = 0,
        },
    },
    SATS_num = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "SATS_num",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "SATS_num",
            static_text = true,
            x = 22,
            y = 11,
            color = 0,
        },
    },
    REQ_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "REQ_branch",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    RWR_AUDIO_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "RWR_AUDIO_available",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    U2_VHF_AM_COMSEC_BASEBAND = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_COMSEC_BASEBAND",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    HAVEQUICK = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "HAVEQUICK",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "HAVEQUICK",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    TTG_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TTG_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TTG_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    BOTTOM_SNSR_STATUS_DEG = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BOTTOM_SNSR_STATUS_DEG",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    V3_FM_tuned_freq_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
            },
            id = "V3_FM_tuned_freq_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    TAC_APPR_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "TAC_APPR_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    INU_2_USE_GPS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INU_2_USE_GPS",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    ALARM_2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM_2_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    INU_2_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INU_2_MODE_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    pg_title_IMPROMPTU_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "pg_title_IMPROMPTU_NAME",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    pg_title_INDEX_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_2",
            },
            id = "pg_title_INDEX_2",
            static_text = true,
            x = 10,
            y = 1,
            color = 0,
        },
    },
    F5_call_sign = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_call_sign",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    H4_presets_page_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_value_5",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    YAW_left_bracket_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "YAW_left_bracket_CDU",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    MFD3_CONFIRM_OFP_LOAD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD3_CONFIRM_OFP_LOAD_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    TDZE_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "TDZE_units",
            static_text = true,
            x = 8,
            y = 11,
            color = 0,
        },
    },
    UNITS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "UNITS_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    ERASE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "ERASE_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    AUTO_SELECT_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_INAV_SELECT",
            },
            id = "AUTO_SELECT_page_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    U2_call_sign = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_call_sign",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    CTR_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_LADDER",
            },
            id = "CTR_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    EGI_1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "EGI_1_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "EGI_1_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    EGI_1_POSN_longitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
            },
            id = "EGI_1_POSN_longitude_value_deg",
            static_text = true,
            x = 12,
            y = 5,
            color = 2,
        },
    },
    EMER_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "EMER_MODE_field",
            static_text = true,
            x = 23,
            y = 12,
            color = 0,
        },
    },
    TCN_channel_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_channel_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    BRIGHTNESS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "BRIGHTNESS_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    H4_LINK_PROT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_LINK_PROT_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    pg_title_INU_2_POSITION_UPDATE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "pg_title_INU_2_POSITION_UPDATE",
            static_text = true,
            x = 3,
            y = 1,
            color = 0,
        },
    },
    CARD_4_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_4_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    H4_AUTO_SOUND_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_AUTO_SOUND_available",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    H4_presets_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_presets_page_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    TGT_ELEV_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "TGT_ELEV_right_bracket",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    U2_VHF_AM_COMSEC_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_COMSEC_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    PRG_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "PRG_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    V3_call_sign = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_call_sign",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    TEST13_14_PURPLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST13_14_PURPLE",
            static_text = true,
            x = 1,
            y = 13,
            color = 4,
        },
    },
    VERIFY_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "VERIFY_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    H4_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    HOV_SPD_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_SPD_value",
            static_text = true,
            x = 20,
            y = 13,
            color = 2,
        },
    },
    HOV_TORQUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "HOV_TORQUE",
            static_text = true,
            x = 7,
            y = 12,
            color = 0,
        },
    },
    SLAVE_VAR_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "SLAVE_VAR_left_bracket",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    FP_DATA_ACCESS_4_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "FP_DATA_ACCESS_4_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    TO_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_field_2",
            static_text = true,
            x = 2,
            y = 8,
            color = 0,
        },
    },
    PLAN_ALT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "PLAN_ALT",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    V3_VHF_tuned_freq_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_tuned_freq_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    LENGTH_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_LADDER",
            },
            id = "LENGTH_left_bracket",
            static_text = true,
            x = 16,
            y = 7,
            color = 0,
        },
    },
    scratch_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_scratchpad",
            },
            id = "scratch_left_bracket",
            static_text = true,
            x = 2,
            y = 14,
            color = 0,
        },
    },
    scratch_up_dn_arr = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_scratchpad",
            },
            id = "scratch_up_dn_arr",
            static_text = true,
            x = 1,
            y = 14,
            color = 0,
        },
    },
    ERFS_TANKS_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "ERFS_TANKS_value",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "ERFS_TANKS_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    INDIVIDUAL_LRU_LOADS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "INDIVIDUAL_LRU_LOADS",
            static_text = true,
            x = 3,
            y = 7,
            color = 0,
        },
    },
    MFD5_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD5_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "latitude_value_fract",
            static_text = true,
            x = 6,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "latitude_value_fract",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    BUS_1_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BUS_1_STATUS_FAIL",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    MFD5_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD5_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    H4_UTC_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_UTC_right_bracket",
            static_text = true,
            x = 9,
            y = 11,
            color = 2,
        },
    },
    DCS2_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "DCS2_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    U2_VHF_AM_COMSEC_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_COMSEC_MODE_available",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    GPPU2_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "GPPU2_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    NAME_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "NAME_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    MODE_2_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_2_code",
            static_text = true,
            x = 7,
            y = 5,
            color = 2,
        },
    },
    -- 06_branch = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "06_branch",
    --         static_text = true,
    --         x = 24,
    --         y = 3,
    --         color = 0,
    --     },
    -- },
    MFD4_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD4_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    MFD4_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD4_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    MFD3_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD3_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    CDU2_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "CDU2_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    FQTY_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "FQTY_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    MODE_1_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_1_code",
            static_text = true,
            x = 7,
            y = 3,
            color = 2,
        },
    },
    U2_HQ_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    M1_preset_number = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_preset_number",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    MODE_2_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_2_left_bracket",
            static_text = true,
            x = 6,
            y = 5,
            color = 0,
        },
    },
    H4_SILENT_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_SILENT_available",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    H4_presets_page_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_value_2",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    BOTTOM_SNSR_STATUS_FAIL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BOTTOM_SNSR_STATUS_FAIL",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    MFD2_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD2_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    ANT_TILT_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "ANT_TILT_right_bracket",
            static_text = true,
            x = 8,
            y = 9,
            color = 0,
        },
    },
    MFD1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD1_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    branch_START = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_START",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    H4_presets_page_left_bracket_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
            },
            id = "H4_presets_page_left_bracket_4",
            static_text = true,
            x = 3,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_left_bracket_4",
            static_text = true,
            x = 4,
            y = 9,
            color = 0,
        },
    },
    EGI_2_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "EGI_2_page_branch",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    ICS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "ICS_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    EGI1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "EGI1_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    COMMUNICATION_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "COMMUNICATION_field",
            static_text = true,
            x = 6,
            y = 2,
            color = 0,
        },
    },
    pg_title_LRU_STATUS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
                "CDU_PAGE_STAT",
            },
            id = "pg_title_LRU_STATUS",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    SV_2_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "SV_2_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    ROC_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "ROC_value",
            static_text = true,
            x = 21,
            y = 11,
            color = 2,
        },
    },
    -- 03_value = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "03_value",
    --         static_text = true,
    --         x = 2,
    --         y = 7,
    --         color = 2,
    --     },
    -- },
    ROC_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "ROC_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    WXR_GAIN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "WXR_GAIN_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    branch_INAV = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_INAV",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    VISIBILITY_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "VISIBILITY_value",
            static_text = true,
            x = 3,
            y = 5,
            color = 2,
        },
    },
    ACP_DATUM_BRACKET_RIGHT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_DATUM_BRACKET_RIGHT",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    SECTOR_SCAN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "SECTOR_SCAN_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    SECTOR_SCAN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "SECTOR_SCAN_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    -- 05_branch = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "05_branch",
    --         static_text = true,
    --         x = 1,
    --         y = 11,
    --         color = 0,
    --     },
    -- },
    TGT_ALERT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "TGT_ALERT_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    MISSLE_DET_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "MISSLE DET_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    ANGLE_MODE_OPER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "ANGLE_MODE_OPER",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    GPS_1_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "GPS_1_page_branch_1",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    TRK_SP_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_LADDER",
            },
            id = "TRK_SP_right_bracket",
            static_text = true,
            x = 7,
            y = 9,
            color = 0,
        },
    },
    CLTR_REDUCT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "CLTR_REDUCT",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    CLTR_REDUCT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "CLTR_REDUCT_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    MFD1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "MFD1_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    WXR_MODEE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "WXR_MODEE_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    AUTO_TILT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "AUTO_TILT",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    U2_VHF_AM_COMSEC_DIPHASE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_COMSEC_DIPHASE",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    STANDBY_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "STANDBY_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    STANDBY_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "STANDBY_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    pg_title_WXR_CONTROL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "pg_title_WXR_CONTROL",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    EOS_VIDEO_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SNSR",
            },
            id = "EOS_VIDEO_page_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    pg_title_F1_HOPSETS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
                "CDU_PAGE_F1_HOPSETS_2",
            },
            id = "pg_title_F1_HOPSETS",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    pg_title_INU_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_2",
            },
            id = "pg_title_INU_2",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
    },
    RADIUS_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "RADIUS_value",
            static_text = true,
            x = 21,
            y = 7,
            color = 2,
        },
    },
    WXR_CONTROL_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
            },
            id = "WXR_CONTROL_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    DATUM_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "DATUM_right_bracket",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    RENUMBER_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "RENUMBER_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    DESTINATION = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "DESTINATION",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    -- 04_value = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "04_value",
    --         static_text = true,
    --         x = 2,
    --         y = 9,
    --         color = 2,
    --     },
    -- },
    SAVE_ALTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "SAVE_ALTN_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    STATE_select_SV_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "STATE_select_SV_2",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    SATURATION_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "SATURATION_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    CONTRAST_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "CONTRAST_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    pg_title_EOS_VIDEO_CONTROL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "pg_title_EOS_VIDEO_CONTROL",
            static_text = true,
            x = 6,
            y = 1,
            color = 0,
        },
    },
    pg_title_FD_SELECT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "pg_title_FD_SELECT",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    MSL_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "MSL_available",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    R_AFT_SNSR_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_AFT_SNSR_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    DIST_1_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "DIST_1_value",
            static_text = true,
            x = 21,
            y = 5,
            color = 2,
        },
    },
    ALARM2_MODE_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM2_MODE_ON",
            static_text = true,
            x = 23,
            y = 13,
            color = 2,
        },
    },
    BRG_DIST_1_PTDIV = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "BRG_DIST_1_PTDIV",
            static_text = true,
            x = 17,
            y = 5,
            color = 2,
        },
    },
    MLS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "MLS_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    Satelitte_state_code_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_state_code_5",
            static_text = true,
            x = 22,
            y = 7,
            color = 2,
        },
    },
    ACTV_TGT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "ACTV_TGT_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    FPLN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "FPLN",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    MAN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "MAN_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    OFP_LOADSETS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "OFP_LOADSETS_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "NAME",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    POSN_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "POSN_longitude_value_fract",
            static_text = true,
            x = 18,
            y = 3,
            color = 2,
        },
    },
    POSN_longitude1_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "POSN_longitude1_value_deg",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    POSN_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "POSN_latitude_value_fract",
            static_text = true,
            x = 6,
            y = 3,
            color = 2,
        },
    },
    POSN_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "POSN_latitude_value_deg",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    RVS_ALTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "RVS_ALTN_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    POSN_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "POSN_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    pg_title_U2_COMM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "pg_title_U2_COMM",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    MODE_4_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    H4_AUTO_SOUND_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_AUTO_SOUND_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    ROLL_OFFSET_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "ROLL_OFFSET_right_bracket",
            static_text = true,
            x = 7,
            y = 7,
            color = 0,
        },
    },
    POSN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "POSN_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    V3_VHF_AM_FM_SQUELCH_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_SQUELCH_ON",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    -- 01_value = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "01_value",
    --         static_text = true,
    --         x = 2,
    --         y = 3,
    --         color = 2,
    --     },
    -- },
    HOVER_FIX_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "HOVER_FIX_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    pg_title_EOS_POINT_CONTROL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "pg_title_EOS_POINT_CONTROL",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    LRF_RTN_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "LRF_RTN_available",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    LAST_VALID_RANGE_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "LAST_VALID_RANGE_units",
            static_text = true,
            x = 7,
            y = 7,
            color = 0,
        },
    },
    GS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "GS_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "GS_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    Satelitte_freq_code_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_freq_code_5",
            static_text = true,
            x = 22,
            y = 5,
            color = 2,
        },
    },
    pg_title_F1_FM_FH_COMM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "pg_title_F1_FM_FH_COMM",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    LAST_VALID_RANGE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "LAST_VALID_RANGE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    LASER_PWR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "LASER_PWR_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    DEFAULT_MS_CODE_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "DEFAULT_MS_CODE_code",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
    },
    GPS_ALMANAC = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
            },
            id = "GPS_ALMANAC",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    VSPEED_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_MSN",
            },
            id = "VSPEED_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "VSPEED_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    HORIZON_POSN_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "HORIZON_POSN_left_bracket",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    EGI1_USE_GPS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_EGI_1",
            },
            id = "EGI1_USE_GPS",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    NUC_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "NUC_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    FWD_POSN_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "FWD_POSN_right_bracket",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    V3_VHF_presets_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_value_1",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    FWD_POSN_Az_El = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "FWD_POSN_Az_El",
            static_text = true,
            x = 14,
            y = 5,
            color = 0,
        },
    },
    FWD_POSN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "FWD_POSN_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    LEG_TIME_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_TIME_units",
            static_text = true,
            x = 8,
            y = 9,
            color = 0,
        },
    },
    pg_title_SECTOR_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "pg_title_SECTOR_NAME",
            static_text = true,
            x = 9,
            y = 1,
            color = 0,
        },
    },
    DAFIF_LOAD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "DAFIF_LOAD_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    IDNT_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "IDNT_num",
            static_text = true,
            x = 7,
            y = 3,
            color = 0,
        },
    },
    SCAN_LIST_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "SCAN_LIST_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    PARAMETERS_CODE_EGI_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "PARAMETERS_CODE_EGI_right_bracket",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    GPS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "GPS_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    POINT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "POINT_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    MODE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
                "CDU_PAGE_EOS_LASER_CONTROL",
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "MODE",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    TRK_SP_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_LADDER",
            },
            id = "TRK_SP_value",
            static_text = true,
            x = 4,
            y = 9,
            color = 2,
        },
    },
    IMU_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "IMU_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    -- 02_value = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "02_value",
    --         static_text = true,
    --         x = 2,
    --         y = 5,
    --         color = 2,
    --     },
    -- },
    MODE_C_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_C_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    H4_EMODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_EMODE_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    NAV_RADIOS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "NAV_RADIOS_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    TIV_OPACITY_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "TIV_OPACITY_left_bracket",
            static_text = true,
            x = 21,
            y = 7,
            color = 0,
        },
    },
    TIV_OPACITY_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "TIV_OPACITY_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    ADF_SHAP = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "ADF_SHAP",
            static_text = true,
            x = 6,
            y = 9,
            color = 2,
        },
    },
    BAND_OPACITY_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "BAND_OPACITY_right_bracket",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    BAND_OPACITY = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "BAND_OPACITY",
            static_text = true,
            x = 22,
            y = 5,
            color = 2,
        },
    },
    BAND_OPACITY_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "BAND_OPACITY_left_bracket",
            static_text = true,
            x = 21,
            y = 5,
            color = 0,
        },
    },
    SATURATION_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "SATURATION_right_bracket",
            static_text = true,
            x = 6,
            y = 9,
            color = 0,
        },
    },
    pg_title_INU_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_1",
            },
            id = "pg_title_INU_1",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
    },
    CONTRAST = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "CONTRAST",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "CONTRAST",
            static_text = true,
            x = 4,
            y = 7,
            color = 2,
        },
    },
    V3_VHF_AM_FM_DELAY_MODE_OUT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_DELAY_MODE_OUT",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    CONTRAST_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "CONTRAST_left_bracket",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    IDNT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "IDNT_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    CONTRAST_asterisk = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "CONTRAST_asterisk",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    TCN_pairing_mode_UNPAIR = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_pairing_mode_UNPAIR",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    CDU2_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
                "CDU_PAGE_LOADSETS_3",
            },
            id = "CDU2_STATUS_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    MLS_tuned_freq_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_tuned_freq_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    pg_title_DIG_MAP_VIDEO_CONTROL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "pg_title_DIG_MAP_VIDEO_CONTROL",
            static_text = true,
            x = 2,
            y = 1,
            color = 0,
        },
    },
    ROTATE_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "ROTATE_left_bracket",
            static_text = true,
            x = 19,
            y = 7,
            color = 0,
        },
    },
    F1_FM_FH_SCAN_MODE_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_SCAN_MODE_ON",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    PAGE_HUD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "PAGE_HUD",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    M1_INTERCOMM_RETRANS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_INTERCOMM_RETRANS",
            static_text = true,
            x = 24,
            y = 2,
            color = 2,
        },
    },
    NUMBER_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "NUMBER_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    MMR_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "MMR_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "MMR_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    HDG_WPT_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "HDG_WPT_1",
            static_text = true,
            x = 8,
            y = 6,
            color = 2,
        },
    },
    DIG_MAP_CONTROL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "DIG_MAP_CONTROL_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    FRAME_NAME_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "FRAME_NAME_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    ROLL_AXIS_DISABLED = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "ROLL_AXIS_DISABLED",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    M3_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "M3_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "M3_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    FRAME_MODE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "FRAME_MODE_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    CREATE_ACP_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "CREATE_ACP_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    MSL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "MSL",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    H4_ALE_NETS_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    CHANNEL_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "CHANNEL_available",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    XTK_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "XTK_value",
            static_text = true,
            x = 1,
            y = 11,
            color = 2,
        },
    },
    PLAN_ALT_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "PLAN_ALT_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    TTG_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TTG_value",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    CENTER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "CENTER",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    H4_tuned_freq_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_tuned_freq_2",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    CENTER_POSN_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "CENTER_POSN_right_bracket",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    CENTER_POSN_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "CENTER_POSN_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    CENTER_POSN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "CENTER_POSN_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    M1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
                "CDU_PAGE_MSN",
            },
            id = "M1_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "M1_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    HAT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "HAT_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    PRESS_ALT_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "PRESS_ALT_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    RECEIVE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "RECEIVE_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    HORIZON_POSN_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "HORIZON_POSN_right_bracket",
            static_text = true,
            x = 6,
            y = 9,
            color = 0,
        },
    },
    HORIZON_POSN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "HORIZON_POSN",
            static_text = true,
            x = 3,
            y = 9,
            color = 2,
        },
    },
    IDM_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
            },
            id = "IDM_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
            },
            id = "IDM_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    LASER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "LASER",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    HORIZON_POSN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "HORIZON_POSN_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    MAX_MSN_SPD_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "MAX_MSN_SPD_left_bracket",
            static_text = true,
            x = 15,
            y = 11,
            color = 0,
        },
    },
    pg_title_H4_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "pg_title_H4_Presets",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    SW_RESET_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "SW_RESET_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    CRZ_C1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "CRZ_C1_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    HORIZON_POSN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "HORIZON_POSN_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    VERT_POSN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "VERT_POSN",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
    },
    LEAD_TURN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "LEAD_TURN_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    VERT_POSN_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "VERT_POSN_left_bracket",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    REQ_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "REQ_field",
            static_text = true,
            x = 24,
            y = 12,
            color = 0,
        },
    },
    CSP_CTR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "CSP_CTR_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    BRIGHTNESS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "BRIGHTNESS",
            static_text = true,
            x = 4,
            y = 5,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "BRIGHTNESS",
            static_text = true,
            x = 3,
            y = 5,
            color = 2,
        },
    },
    COPY_ACP_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "COPY_ACP_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    BRIGHTNESS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "BRIGHTNESS_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    DEFAULTS_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "DEFAULTS_page_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    DH_SET_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DH_SET_units",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    pg_title_HUD_VIDEO_CONTROL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "pg_title_HUD_VIDEO_CONTROL",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    STR_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "STR_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    DH_SET_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DH_SET_right_bracket",
            static_text = true,
            x = 22,
            y = 3,
            color = 0,
        },
    },
    -- 08_branch = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "08_branch",
    --         static_text = true,
    --         x = 24,
    --         y = 7,
    --         color = 0,
    --     },
    -- },
    HOV_H4_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "HOV_H4_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    HOV_H3_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "HOV_H3_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    pg_title_PLAN_NAME = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
            },
            id = "pg_title_PLAN_NAME",
            static_text = true,
            x = 24,
            y = 1,
            color = 0,
        },
    },
    EGI_1_EPU_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "EGI_1_EPU_value",
            static_text = true,
            x = 10,
            y = 3,
            color = 2,
        },
    },
    V3_UHF_tuned_freq_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_tuned_freq_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    CRZ_C4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "CRZ_C4",
            static_text = true,
            x = 4,
            y = 11,
            color = 0,
        },
    },
    CRZ_C4_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "CRZ_C4_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    MFD4_CONFIRM_OFP_LOAD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD4_CONFIRM_OFP_LOAD_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    INU1_BORE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "INU1_BORE",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    CRZ_C2_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "CRZ_C2_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    GPS_1_EPU_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "GPS_1_EPU_units",
            static_text = true,
            x = 14,
            y = 7,
            color = 0,
        },
    },
    CARGO_FUEL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "CARGO_FUEL_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    CRZ_C1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "CRZ_C1",
            static_text = true,
            x = 4,
            y = 5,
            color = 0,
        },
    },
    HOV_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "HOV_field",
            static_text = true,
            x = 22,
            y = 4,
            color = 0,
        },
    },
    MFD_DCLT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "MFD_DCLT_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    TKE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TKE_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    BRG_DIST_NM = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "BRG_DIST_NM",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    MODE_branch_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "MODE_branch_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    TRAIL_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TRAIL_units",
            static_text = true,
            x = 7,
            y = 11,
            color = 0,
        },
    },
    DA_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "DA_value",
            static_text = true,
            x = 11,
            y = 11,
            color = 2,
        },
    },
    CHANNEL_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "CHANNEL_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    GS_KTS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "GS_KTS",
            static_text = true,
            x = 5,
            y = 9,
            color = 0,
        },
    },
    FPLN_NAME_TITLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT_cmn",
            },
            id = "FPLN_NAME_TITLE",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    UPDATE_POSN_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_POSN_latitude_value_fract",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    DIFF_EGI_2_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_2",
            },
            id = "DIFF_EGI_2_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    TO_FPP_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TO_FPP_num",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    TO_arrow_up = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TO_arrow_up",
            static_text = true,
            x = 4,
            y = 2,
            color = 0,
        },
    },
    FRONT_AZIMUTH_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "FRONT_AZIMUTH_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    TO_arrow_down = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TO_arrow_down",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    INU_1_HDG_MANUAL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_1_HDG_MANUAL",
            static_text = true,
            x = 10,
            y = 4,
            color = 0,
        },
    },
    FILE_ = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "FILE_",
            static_text = true,
            x = 2,
            y = 8,
            color = 2,
        },
    },
    VOR_ILS_tuned_freq_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_tuned_freq_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    -- 07_branch = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "07_branch",
    --         static_text = true,
    --         x = 24,
    --         y = 5,
    --         color = 0,
    --     },
    -- },
    VOR_ILS_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    branch_PROC_PATT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_PROC_PATT",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    TRK_SP_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "TRK_SP_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_LADDER",
            },
            id = "TRK_SP_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    VOR_ILS_tuned_freq_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_tuned_freq_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    H4_ALE_NETS_presets_page_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_value_2",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    TEST15 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST15",
            static_text = true,
            x = 1,
            y = 15,
            color = 0,
        },
    },
    VOR_ILS_tuned_freq_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_tuned_freq_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    branch_MSN_SETUP = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_2",
            },
            id = "branch_MSN_SETUP",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    VOR_ILS_tuned_freq_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_tuned_freq_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    VOR_ILS_presets_page_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_value_5",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    VOR_ILS_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    num_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "num_3",
            static_text = true,
            x = 2,
            y = 11,
            color = 4,
        },
    },
    INU_1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_1_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    VOR_ILS_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    VOR_ILS_presets_page_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_value_3",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    F1_FM_FH_COMSEC_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_COMSEC_MODE_available",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    VOR_ILS_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    LOAD_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
                "CDU_PAGE_LOADSETS_3",
            },
            id = "LOAD_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    VOR_ILS_presets_page_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_value_2",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    ICMD_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "ICMD_MODE_available",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    VOR_ILS_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    Satelitte_vehicle_channel_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_4",
            static_text = true,
            x = 19,
            y = 2,
            color = 0,
        },
    },
    ALTN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_HOLD",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_INTERCEPT",
                "CDU_PAGE_LADDER",
                "CDU_PAGE_SECTOR",
                "CDU_PAGE_TACT_APPR",
            },
            id = "ALTN_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "ALTN_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    VOR_ILS_presets_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_value_1",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    F1_L7_field_7 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L7_field_7",
            static_text = true,
            x = 22,
            y = 3,
            color = 2,
        },
    },
    F5_COMSEC_MODE_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_COMSEC_MODE_NONE",
            static_text = true,
            x = 13,
            y = 11,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_COMSEC_MODE_NONE",
            static_text = true,
            x = 13,
            y = 9,
            color = 2,
        },
    },
    VOR_ILS_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    HOV_OVERRIDE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "HOV_OVERRIDE_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    H4_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    EOS_CONTROL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
            },
            id = "EOS_CONTROL_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    LOCKOUTS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "LOCKOUTS_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    ADF_tuned_freq_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_tuned_freq_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    CDU_MSN_PGS_presets = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "CDU_MSN_PGS_presets",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    ALTN_NAME_BRACKET_RIGHT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN_MGNT_cmn",
            },
            id = "ALTN_NAME_BRACKET_RIGHT",
            static_text = true,
            x = 10,
            y = 3,
            color = 0,
        },
    },
    VOR_TCN_PAIR_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "VOR_TCN_PAIR_value",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    TCN_ident_label = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_ident_label",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    TCN_ident_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_ident_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    ALTN_MGMT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "ALTN_MGMT_value",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    PERF_PROGRESS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "PERF_PROGRESS_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    U2_VHF_AM_CTRL_KY_58 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_CTRL_KY_58",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    UNITS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "UNITS_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    ACP_DATUM_TITLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_DATUM_TITLE",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    PROGRESS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "PROGRESS_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    INAV_ranch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "INAV_ranch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    HDG_TRK = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "HDG_TRK",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    SAVE_FPLN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "SAVE_FPLN_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    MODE_4_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    TKA_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TKA_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TKA_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    pg_title_MISSION_PAGE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
                "CDU_PAGE_MSN",
            },
            id = "pg_title_MISSION_PAGE",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    TCN_PT_RAD_DIST_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_PT_RAD_DIST_right_bracket",
            static_text = true,
            x = 22,
            y = 11,
            color = 0,
        },
    },
    MLS_MHAA = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "MLS_MHAA",
            static_text = true,
            x = 6,
            y = 5,
            color = 2,
        },
    },
    TO_CONFIG_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "TO_CONFIG_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    BRG_DIST_1_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "BRG_DIST_1_left_bracket",
            static_text = true,
            x = 12,
            y = 5,
            color = 0,
        },
    },
    PERF_RESET_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "PERF_RESET_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    MLS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "MLS_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    ACP_CALC_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "ACP_CALC_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    ERFS_TANKS_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "ERFS_TANKS_left_bracket",
            static_text = true,
            x = 18,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "ERFS_TANKS_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    ACP_CALC_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "ACP_CALC_value",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    MARKPOINTS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "MARKPOINTS_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    MOVING_ACPS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "MOVING_ACPS_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    TGT_ACPS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_2",
            },
            id = "TGT_ACPS_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    COMP_SELECT_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "COMP_SELECT_available",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    MLS_mode_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MLS_mode_available",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    INU_2_POSN_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "INU_2_POSN_latitude_value_deg",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    MMR_channel_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MMR_channel_value",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    GLIDEPATH_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "GLIDEPATH_value",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    FRONT_AZIMUTH_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "FRONT_AZIMUTH_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    F1_L8_field_8 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L8_field_8",
            static_text = true,
            x = 22,
            y = 3,
            color = 2,
        },
    },
    BACK_AZIMUTH_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "BACK_AZIMUTH_right_bracket",
            static_text = true,
            x = 5,
            y = 9,
            color = 0,
        },
    },
    BACK_AZIMUTH_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "BACK_AZIMUTH_value",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    BACK_AZIMUTH_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "BACK_AZIMUTH_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    DA_MSL_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DA_MSL_right_bracket",
            static_text = true,
            x = 22,
            y = 7,
            color = 0,
        },
    },
    DA_MSL_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DA_MSL_value",
            static_text = true,
            x = 21,
            y = 7,
            color = 2,
        },
    },
    F1_L5_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L5_field_5",
            static_text = true,
            x = 1,
            y = 9,
            color = 2,
        },
    },
    BRIGHTNESS_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "BRIGHTNESS_left_bracket",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    VOR_ILS_presets_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "VOR_ILS_presets_page_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    AUTO_SELECT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_INAV_SELECT",
            },
            id = "AUTO_SELECT_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    RWR_AUDIO_normal = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "RWR_AUDIO_normal",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    F1_FM_FH_DELAY_MODE_IN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_DELAY_MODE_IN",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    CANCEL_MOD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MOD_FPLN",
            },
            id = "CANCEL_MOD_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    V3_FM_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    LADDER_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "LADDER_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    VOR_ILS_presets_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "VOR_ILS_presets_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    MLS_presets_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MLS_presets_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    MMR_ident_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "MMR_ident_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    pg_title_MMR_Control = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "pg_title_MMR_Control",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    H4_AUTO_SOUND_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_AUTO_SOUND_ON",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    BRIGHTNESS_asterisk = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "BRIGHTNESS_asterisk",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    MLS_tuned_freq_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_tuned_freq_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    MLS_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    MLS_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    FLT_XFER_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FLT_XFER_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "FLT_XFER_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    MLS_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    MLS_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    Display_LOAD_PSM2_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "Display_LOAD_PSM2_STATUS_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    G_S_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "G_S_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    MLS_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    MLS_presets_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_value_1",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    Satelitte_state_code_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_state_code_3",
            static_text = true,
            x = 16,
            y = 7,
            color = 2,
        },
    },
    MLS_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    pg_title_TACTICAL_APPROACH_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "pg_title_TACTICAL_APPROACH_NAME",
            static_text = true,
            x = 4,
            y = 1,
            color = 0,
        },
    },
    branch_FPLN_MGMT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_2",
            },
            id = "branch_FPLN_MGMT",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    ADF_tuned_freq_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_tuned_freq_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    UPDATE_MSLP_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "UPDATE_MSLP_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    ADF_tuned_freq_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_tuned_freq_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    HAVEQUICK_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "HAVEQUICK_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "HAVEQUICK_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    BRG_RNG_PAIR_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "BRG_RNG_PAIR_value",
            static_text = true,
            x = 18,
            y = 7,
            color = 2,
        },
    },
    EGI_2_GPS_OUT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_2_GPS_OUT",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_2_GPS_OUT",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    MODE_3_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_3_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    OAT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "OAT_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "OAT_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    Display_LOAD_MFD4_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD4_STATUS",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    ADF_presets_page_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_value_4",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    ADF_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    DTK_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1",
            },
            id = "DTK_value",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "DTK_value",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    ADF_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    EGI2_power_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "EGI2_power_ON",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    ADF_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    num_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "num_2",
            static_text = true,
            x = 2,
            y = 9,
            color = 4,
        },
    },
    ADF_presets_page_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_value_2",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    MODE_NAV_PVA = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "MODE_NAV_PVA",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    ADF_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    T1_time_down_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T1_time_down_arrow",
            static_text = true,
            x = 16,
            y = 3,
            color = 2,
        },
    },
    FP_DATA_ACCESS_1_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "FP_DATA_ACCESS_1_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    MISSLE_DET_STATUS_DEG = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "MISSLE DET_STATUS_DEG",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    ADF_presets_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_value_1",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    ADF_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    TEST6 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST6",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    TEST3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST3",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    ADF_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    ADF_freq_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_freq_field",
            static_text = true,
            x = 23,
            y = 2,
            color = 0,
        },
    },
    ADF_ident_label = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_ident_label",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    ALTITUDEP_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "ALTITUDEP_right_bracket",
            static_text = true,
            x = 22,
            y = 7,
            color = 0,
        },
    },
    HDG_TRK_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "HDG_TRK_right_bracket",
            static_text = true,
            x = 5,
            y = 9,
            color = 0,
        },
    },
    PTS_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "PTS_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    MLS_channel = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "MLS_channel",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    HDG_TRK_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "HDG_TRK_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    M2_freq = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_freq",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    M2_COMSEC_MODE_CIPHER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 13,
            y = 5,
            color = 2,
        },
    },
    HUD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "HUD_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    M2_COMSEC_MODE_PLAIN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 13,
            y = 5,
            color = 2,
        },
    },
    LOAD_FPLN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "LOAD_FPLN_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    M2_call_sign = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_call_sign",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    SPD_ALT_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_3",
            },
            id = "SPD_ALT_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    INU_1_POSN_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_POSITION_UPDATE",
            },
            id = "INU_1_POSN_page_branch",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    MODE_GC_ALN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "MODE_GC_ALN",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    M2_preset_number = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_preset_number",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    M2_freq_step = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_freq_step",
            static_text = true,
            x = 14,
            y = 4,
            color = 0,
        },
    },
    M2_INTERCOMM_SIMUL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_INTERCOMM_SIMUL",
            static_text = true,
            x = 24,
            y = 4,
            color = 2,
        },
    },
    M2_WAVEFORM_HQ = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_WAVEFORM_HQ",
            static_text = true,
            x = 6,
            y = 4,
            color = 0,
        },
    },
    M2_WAVEFORM_UHF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_WAVEFORM_UHF",
            static_text = true,
            x = 6,
            y = 4,
            color = 0,
        },
    },
    PITCH_field_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "PITCH_field_CDU",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    M2_RADIO_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_RADIO_STATUS_FAIL",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    M1_COMSEC_MODE_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_COMSEC_MODE_NONE",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    U2_VHF_AM_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_MODE_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    pg_title_EGI_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_2",
            },
            id = "pg_title_EGI_2",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "pg_title_EGI_2",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    M1_call_sign = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_call_sign",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    DCS1_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "DCS1_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    ROLL_AXIS_ENABLED = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "ROLL_AXIS_ENABLED",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    H4_CALL_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_CALL_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    NUMBER_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "NUMBER_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    M1_INTERCOMM_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_INTERCOMM_NONE",
            static_text = true,
            x = 24,
            y = 2,
            color = 2,
        },
    },
    M1_WAVEFORM_HQ = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_WAVEFORM_HQ",
            static_text = true,
            x = 6,
            y = 2,
            color = 0,
        },
    },
    M1_RADIO_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_RADIO_STATUS_FAIL",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    MFD5_CONFIRM_OFP_LOAD_status = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD5_CONFIRM_OFP_LOAD_status",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    M1_RADIO_STATUS_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M1_RADIO_STATUS_NONE",
            static_text = true,
            x = 2,
            y = 2,
            color = 0,
        },
    },
    TRAIL_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "TRAIL_right_bracket",
            static_text = true,
            x = 6,
            y = 11,
            color = 0,
        },
    },
    H4_ALE_NETS_presets_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    MODE_4_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_available",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    pg_title_INAV_SELECT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "pg_title_INAV_SELECT",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    DEFAULT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "DEFAULT_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    HDG_TRK_VS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_3",
            },
            id = "HDG_TRK_VS_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    F1_SCAN_LIST_freq_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_freq_3",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    ALIGN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
            },
            id = "ALIGN",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    HDG_TRK_VS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_3",
            },
            id = "HDG_TRK_VS_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    SPD_ALT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_3",
            },
            id = "SPD_ALT_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    STORM_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "STORM_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    BDT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "BDT_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    F1_L3_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L3_field_3",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    BDT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "BDT_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    T3_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "T3_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    pg_title_INU_2_BORESIGHT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "pg_title_INU_2_BORESIGHT",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    T3_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "T3_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    VOR_PTW = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "VOR_PTW",
            static_text = true,
            x = 6,
            y = 3,
            color = 2,
        },
    },
    ADD_ACP_ALTN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ADD_ACP_ALTN_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    H4_SQUELC_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_SQUELC_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    ENABLE_NAV = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "ENABLE_NAV",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    T1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "T1_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    VERIFY_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "VERIFY_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    PSN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "PSN_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    M3_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "M3_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "M3_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    FRAME_MODE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "FRAME_MODE",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    M2_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
                "CDU_PAGE_MSN",
            },
            id = "M2_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "M2_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    CARGO_WT_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "CARGO_WT_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    V3_VHF_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    TGT_TYPE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "TGT_TYPE_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    DEFAULTS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "DEFAULTS_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "DEFAULTS_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    M1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "M1_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "M1_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    L_AFT_SNSR_STATUS_GO = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_AFT_SNSR_STATUS_GO",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    COUNTDOWN_TIMER_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "COUNTDOWN_TIMER_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    Satelitte_vehicle_channel_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_2",
            static_text = true,
            x = 13,
            y = 2,
            color = 0,
        },
    },
    H4_H4_SYNC_exist = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_H4_SYNC_exist",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    TTG_skip = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TTG_skip",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    FLT_MODE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "FLT_MODE_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    ALARM_2_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM_2_right_bracket",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    TKA_skip = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TKA_skip",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    TCN_PTW = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "TCN_PTW",
            static_text = true,
            x = 6,
            y = 7,
            color = 2,
        },
    },
    TCN_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TCN_units",
            static_text = true,
            x = 12,
            y = 11,
            color = 0,
        },
    },
    pg_title_SAVE_ALTN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SAVE_ALTN",
            },
            id = "pg_title_SAVE_ALTN",
            static_text = true,
            x = 8,
            y = 2,
            color = 0,
        },
    },
    HUD_PAGES_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
            },
            id = "HUD_PAGES_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    TCN_slash = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "TCN_slash",
            static_text = true,
            x = 6,
            y = 11,
            color = 2,
        },
    },
    TURN_AID_OPER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "TURN AID_OPER",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    U2_UHF_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    XTK_skip = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "XTK_skip",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    Timer = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "Timer",
            static_text = true,
            x = 9,
            y = 5,
            color = 2,
        },
    },
    F1_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
            },
            id = "F1_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    XTK_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "XTK_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "XTK_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    ALARM2_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM2_MODE_field",
            static_text = true,
            x = 24,
            y = 12,
            color = 0,
        },
    },
    IMPROMPTU_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "IMPROMPTU_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    H4_ALE_NETS_call_address_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_call_address_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    Satelitte_vehicle_channel_number_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_number_5",
            static_text = true,
            x = 22,
            y = 3,
            color = 2,
        },
    },
    V3_FM_FH_tuned_freq_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_FH_tuned_freq_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    ALARM_2_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM_2_left_bracket",
            static_text = true,
            x = 16,
            y = 11,
            color = 0,
        },
    },
    LAP_3_NO_SELECTED = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "LAP_3_NO_SELECTED",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    VERSION_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "VERSION_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    END_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "END_3",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    TO_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "TO_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    MODE_branch_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_INAV_SELECT",
            },
            id = "MODE_branch_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    LAP_2_NO_SELECTED = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "LAP_2_NO_SELECTED",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    ALL_EMITTERS_MODE_OPER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EMCON",
                "CDU_PAGE_EMCON",
            },
            id = "ALL_EMITTERS_MODE_OPER",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    LAP_2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "LAP_2_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    STORM_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "STORM_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    LAP_1_NO_SELECTED = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "LAP_1_NO_SELECTED",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    LAP_1_NO_AVAILABLE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "LAP_1_NO_AVAILABLE",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    DIG_MAP_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "DIG_MAP_field",
            static_text = true,
            x = 9,
            y = 6,
            color = 0,
        },
    },
    ALARM1_MODE_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM1_MODE_ON",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    ALARM1_MODE_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM1_MODE_OFF",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    ALARM1_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM1_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    VISIBILITY_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "VISIBILITY_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    ELEV_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "ELEV_value",
            static_text = true,
            x = 20,
            y = 13,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "ELEV_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "ELEV_value",
            static_text = true,
            x = 21,
            y = 7,
            color = 2,
        },
    },
    ALARM1_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "ALARM1_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    TIME_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "TIME_value",
            static_text = true,
            x = 10,
            y = 9,
            color = 2,
        },
    },
    TIME_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "TIME_field",
            static_text = true,
            x = 11,
            y = 8,
            color = 0,
        },
    },
    T3_time_up_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T3_time_up_arrow",
            static_text = true,
            x = 16,
            y = 7,
            color = 2,
        },
    },
    H4_DY_MO_YR_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_DY_MO_YR_right_bracket",
            static_text = true,
            x = 10,
            y = 9,
            color = 0,
        },
    },
    TOD_DISPLAY_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "TOD_DISPLAY_ON",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    T3_MODE_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T3_MODE_ON",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    T3_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T3_MODE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    T2_MODE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "T2_MODE_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    ADF_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    MODE_4_TIME_code = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_TIME_code",
            static_text = true,
            x = 23,
            y = 13,
            color = 2,
        },
    },
    NAV_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "NAV_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    pg_title_MISSION_PAGE_SETUP = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "pg_title_MISSION_PAGE_SETUP",
            static_text = true,
            x = 4,
            y = 1,
            color = 0,
        },
    },
    LAP_3_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "LAP_3_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    MODE_value_3 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "MODE_value_3",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    U2_VHF_AM_SQUELCH_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_SQUELCH_ON",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    MODE_INIT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "MODE_INIT",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    ADF_tuned_freq_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_tuned_freq_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    H4_ALE_NETS_presets_page_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_value_4",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    F1_FM_FH_DELAY_MODE_OUT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_DELAY_MODE_OUT",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    EGI1_ACTIVE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_EGI_1",
            },
            id = "EGI1_ACTIVE",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    MB_SENS_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "MB_SENS_OFF",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    INIT_EGI2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INIT_EGI2_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    UPDATE_MSLP_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "UPDATE_MSLP_left_bracket",
            static_text = true,
            x = 14,
            y = 7,
            color = 0,
        },
    },
    TCN_PT_DIST_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_PT_DIST_value",
            static_text = true,
            x = 21,
            y = 11,
            color = 2,
        },
    },
    U2_UHF_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    V3_FM_presets_page_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_value_3",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    HDG_REF_MAG = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "HDG_REF_MAG",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    MODE_2_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_2_right_bracket",
            static_text = true,
            x = 11,
            y = 5,
            color = 0,
        },
    },
    EGI2_NOT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_2",
            },
            id = "EGI2_NOT",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    DESTINATION_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "DESTINATION_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    L_AFT_SNSR_STATUS_DEG = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_AFT_SNSR_STATUS_DEG",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    SV_2_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "SV_2_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    U2_VHF_AM_POWER_LOW = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_POWER_LOW",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    DLU_OFP_LOAD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_OFP_LOADSETS",
            },
            id = "DLU_OFP_LOAD",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    pg_title_OFP_LOADSETS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_OFP_LOADSETS",
            },
            id = "pg_title_OFP_LOADSETS",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    ADF_presets_page_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_value_3",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    VOR_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "VOR_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "VOR_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "VOR_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "VOR_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    SAVE_FPLN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "SAVE_FPLN_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    pg_title_V3_FM_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "pg_title_V3_FM_Presets",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    ACP_LIST_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "ACP_LIST_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "ACP_LIST_field",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    EGI_1_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "EGI_1_page_field",
            static_text = true,
            x = 4,
            y = 3,
            color = 2,
        },
    },
    ACP_ELEV_BRACKET_RIGHT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_ELEV_BRACKET_RIGHT",
            static_text = true,
            x = 7,
            y = 7,
            color = 0,
        },
    },
    RWR_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "RWR_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    EGI1_power_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "EGI1_power_ON",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    MS_FLT_ID_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF_2",
            },
            id = "MS_FLT_ID_code",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    LOAD_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
            },
            id = "LOAD_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_3",
            },
            id = "LOAD_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    PROGRESS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV",
            },
            id = "PROGRESS_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    MFD2_CONFIRM_OFP_LOAD_status = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD2_CONFIRM_OFP_LOAD_status",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    INU_2_POSN_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "INU_2_POSN_latitude_value_fract",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    V3_VHF_tuned_freq_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_tuned_freq_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    V3_COMSEC_MODE_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_COMSEC_MODE_NONE",
            static_text = true,
            x = 13,
            y = 7,
            color = 2,
        },
    },
    FPLN_NAME_BRACKET_RIGHT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT_cmn",
            },
            id = "FPLN_NAME_BRACKET_RIGHT",
            static_text = true,
            x = 10,
            y = 3,
            color = 0,
        },
    },
    V3_FM_tuned_freq_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
            },
            id = "V3_FM_tuned_freq_4",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    V3_VHF_presets_page_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_value_4",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    F1_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
                "CDU_PAGE_F1_HOPSETS_2",
            },
            id = "F1_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    NO_CARD_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "NO_CARD_field",
            static_text = true,
            x = 23,
            y = 8,
            color = 2,
        },
    },
    ETA_UTC_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PREDICIVE_RAIM",
            },
            id = "ETA_UTC_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    CMWS_MODE_bit = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CMWS_MODE_bit",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    V3_UHF_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    V3_FM_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    HOV_ALT_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_ALT_units",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "HOV_ALT_units",
            static_text = true,
            x = 8,
            y = 5,
            color = 0,
        },
    },
    PITCH_value_EGI = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "PITCH_value_EGI",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    MAP_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "MAP_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "MAP_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    Display_LOAD_MFD1_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD1_STATUS",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    CONFIRM_OFP_LOAD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "CONFIRM_OFP_LOAD",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    BUS_1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "BUS_1_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    ROLL_field_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "ROLL_field_CDU",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    TGT_ALERT_status = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "TGT_ALERT_status",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    POSN_UPDATE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "POSN_UPDATE",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    CONST_TYPE_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "CONST_TYPE_value",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    branch_MAINT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_2",
            },
            id = "branch_MAINT",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    MS_LEVEL_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_LEVEL_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    TSA_SYMB_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "TSA_SYMB_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    V3_freq_step = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_freq_step",
            static_text = true,
            x = 14,
            y = 6,
            color = 0,
        },
    },
    F1_FM_FH_COMSEC_MODE_CIPHER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    VOR_ILS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "VOR_ILS_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "VOR_ILS_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    FM_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "FM_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "FM_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    CARGO_HOOK_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_HOOK_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    UPDATE_DIFF_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_DIFF_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    UHF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "UHF",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    VERSION_number = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "VERSION_number",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    H4_COMSEC_MODE_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_COMSEC_MODE_NONE",
            static_text = true,
            x = 13,
            y = 9,
            color = 2,
        },
    },
    FAF_longitude1_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FAF_longitude1_value_deg",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    DIFF_EGI_2_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_EGI_2",
            },
            id = "DIFF_EGI_2_value",
            static_text = true,
            x = 22,
            y = 7,
            color = 2,
        },
    },
    TCN_CRS_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_CRS_right_bracket",
            static_text = true,
            x = 5,
            y = 10,
            color = 0,
        },
    },
    IDM_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
            },
            id = "IDM_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ZEROIZE",
            },
            id = "IDM_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    TO_arrow_down_2_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_arrow_down_2_2",
            static_text = true,
            x = 4,
            y = 8,
            color = 0,
        },
    },
    MISSION_date = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "MISSION_date",
            static_text = true,
            x = 10,
            y = 4,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "MISSION_date",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    POSN_UPDATE_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "POSN_UPDATE_page_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    BARO_SET_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "BARO_SET_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "BARO_SET_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    COORD_REF_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_START",
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_START",
            },
            id = "COORD_REF_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    ALTITUDE_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "ALTITUDE_right_bracket",
            static_text = true,
            x = 22,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "ALTITUDE_right_bracket",
            static_text = true,
            x = 22,
            y = 3,
            color = 0,
        },
    },
    POWER_mode = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "POWER_mode",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "MODE_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_HUD_CONTROL",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EOS_CONTROL",
                "CDU_PAGE_EOS_LASER_CONTROL",
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "MODE_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_INAV_SELECT",
            },
            id = "MODE_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "MODE_field",
            static_text = true,
            x = 11,
            y = 4,
            color = 0,
        },
    },
    U2_HQ_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    BARO_RALT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_3",
            },
            id = "BARO_RALT_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    FLARE_TOTAL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "FLARE_TOTAL",
            static_text = true,
            x = 18,
            y = 3,
            color = 2,
        },
    },
    DIG_MAP_VIDEO = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "DIG_MAP_VIDEO",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    EGI2_USE_GPS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_2",
            },
            id = "EGI2_USE_GPS",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    ELEV_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "ELEV_units",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "ELEV_units",
            static_text = true,
            x = 8,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "ELEV_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    U2_HQ_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    pg_title_IFF_MAINTENANCE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_MAINTENANCE",
            },
            id = "pg_title_IFF_MAINTENANCE",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    U2_VHF_AM_MODE_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_MODE_available",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    MODE_1_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_1_right_bracket",
            static_text = true,
            x = 11,
            y = 3,
            color = 0,
        },
    },
    EOS_power_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "EOS_power_ON",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    pg_title_HOLD_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "pg_title_HOLD_NAME",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
    },
    ALL_EMITTERS_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EMCON",
                "CDU_PAGE_EMCON",
            },
            id = "ALL_EMITTERS_MODE_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    BYPASS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "BYPASS_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    UPDATE_SOURCE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_SOURCE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    F1_FM_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    FINAL_ALT_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_ALT_right_bracket",
            static_text = true,
            x = 22,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "FINAL_ALT_right_bracket",
            static_text = true,
            x = 5,
            y = 9,
            color = 0,
        },
    },
    U2_HQ_presets_page_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    SELECT_REPLACED_UNIT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "SELECT_REPLACED_UNIT_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    TSA_ONLY_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "TSA_ONLY_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    CSP_CTR_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "CSP_CTR_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    MB_SENS_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "MB_SENS_available",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    EGI_2_POSN_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
            },
            id = "EGI_2_POSN_latitude_value_deg",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    SELECT_2_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_2_value",
            static_text = true,
            x = 3,
            y = 5,
            color = 2,
        },
    },
    U2_VHF_AM_COMSEC_MODE_CIPHER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    MSN_FUEL_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "MSN_FUEL_value",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    HAT_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "HAT_units",
            static_text = true,
            x = 6,
            y = 9,
            color = 0,
        },
    },
    DH_SET_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "DH_SET_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    INTERCEPT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "INTERCEPT_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    ERASE_FPLN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "ERASE_FPLN_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    SPEED_TITLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "SPEED_TITLE",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    M5_ALTR_AUD_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_ALTR_AUD_available",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    -- 10_branch = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "10_branch",
    --         static_text = true,
    --         x = 24,
    --         y = 11,
    --         color = 0,
    --     },
    -- },
    V3_VHF_AM_FM_COMSEC_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_COMSEC_MODE_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    F1_FM_FH_SQUELCH_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_SQUELCH_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    ETE_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "ETE_left_bracket",
            static_text = true,
            x = 14,
            y = 9,
            color = 0,
        },
    },
    BRG_RAD_DIST_1_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "BRG_RAD_DIST_1_right_bracket",
            static_text = true,
            x = 22,
            y = 5,
            color = 0,
        },
    },
    V3_UHF_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    DATE_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
            },
            id = "DATE_right_bracket",
            static_text = true,
            x = 10,
            y = 11,
            color = 0,
        },
    },
    ANTENNA_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "ANTENNA_available",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    H4_ALE_NETS_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    MS_ADDR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_ADDR_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    V3_VHF_AM_FM_CTRL_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_CTRL_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    V3_VHF_AM_FM_SQUELCH_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_SQUELCH_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    HUD_power_ON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "HUD_power_ON",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    AGL_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "AGL_units",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    M2_COMSEC_MODE_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "M2_COMSEC_MODE_NONE",
            static_text = true,
            x = 13,
            y = 5,
            color = 2,
        },
    },
    F1_FM_FH_MODE_HIGH = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_MODE_HIGH",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    AGL_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "AGL_left_bracket",
            static_text = true,
            x = 17,
            y = 3,
            color = 0,
        },
    },
    ROLL_right_bracket_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "ROLL_right_bracket_CDU",
            static_text = true,
            x = 8,
            y = 7,
            color = 0,
        },
    },
    V3_VHF_AM_FM_POWER_LOW = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_POWER_LOW",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    HQll_SETUP_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "HQll_SETUP_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    MARK_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1",
            },
            id = "MARK_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    prev_FPP_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "prev_FPP_num",
            static_text = true,
            x = 2,
            y = 3,
            color = 4,
        },
    },
    U2_COMSEC_MODE_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_COMSEC_MODE_NONE",
            static_text = true,
            x = 13,
            y = 5,
            color = 2,
        },
    },
    pg_title_TRK_SPACE_CALC_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "pg_title_TRK_SPACE_CALC_NAME",
            static_text = true,
            x = 6,
            y = 1,
            color = 0,
        },
    },
    AGL_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "AGL_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    CIRCLE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "CIRCLE_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    MGRS_POSITION_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "MGRS_POSITION_branch",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    LOAD_MSN_DATA_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD",
            },
            id = "LOAD_MSN_DATA_page_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    HOV_H2_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "HOV_H2_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    OAT_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "OAT_units",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "OAT_units",
            static_text = true,
            x = 7,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "OAT_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    TDZE_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "TDZE_right_bracket",
            static_text = true,
            x = 7,
            y = 11,
            color = 0,
        },
    },
    TO_FPP_name = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
            },
            id = "TO_FPP_name",
            static_text = true,
            x = 4,
            y = 3,
            color = 0,
        },
    },
    V3_FM_presets_page_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_value_5",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    ICMD_MODE_manual = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "ICMD_MODE_manual",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    VOR_ILS_freq_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_ILS_freq_value",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    SELECT_4_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_4_right_bracket",
            static_text = true,
            x = 13,
            y = 9,
            color = 0,
        },
    },
    MARK_TIME_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "MARK_TIME_value",
            static_text = true,
            x = 1,
            y = 11,
            color = 2,
        },
    },
    MLS_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
            },
            id = "MLS_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    F1_COMSEC_MODE_NONE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "F1_COMSEC_MODE_NONE",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    TURN_AID_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "TURN AID_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    branch_ZEROIZE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_ZEROIZE",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    F1_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
            },
            id = "F1_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
            },
            id = "F1_page_field_5",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    FLT_XFER_COPILOT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FLT_XFER_COPILOT",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
            },
            id = "FLT_XFER_COPILOT",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    H4_POWER_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_POWER_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    RALT_LOW_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "RALT_LOW_left_bracket",
            static_text = true,
            x = 16,
            y = 3,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "RALT_LOW_left_bracket",
            static_text = true,
            x = 17,
            y = 11,
            color = 0,
        },
    },
    HOLD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "HOLD_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    SPEED_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "SPEED_right_bracket",
            static_text = true,
            x = 6,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "SPEED_right_bracket",
            static_text = true,
            x = 6,
            y = 7,
            color = 0,
        },
    },
    MODE_3_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_3_code",
            static_text = true,
            x = 7,
            y = 7,
            color = 2,
        },
    },
    RWR_AUDIO_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "RWR_AUDIO_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    V3_FM_presets_page_branch_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_branch_5",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    CNI_MODE_OPER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "CNI_MODE_OPER",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    VSPEED_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_MSN",
            },
            id = "VSPEED_value",
            static_text = true,
            x = 20,
            y = 9,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "VSPEED_value",
            static_text = true,
            x = 20,
            y = 5,
            color = 2,
        },
    },
    ALTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_HOLD",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_INTERCEPT",
                "CDU_PAGE_LADDER",
                "CDU_PAGE_SECTOR",
                "CDU_PAGE_TACT_APPR",
            },
            id = "ALTN_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    FPLN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "FPLN_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_HOLD",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_INTERCEPT",
                "CDU_PAGE_LADDER",
                "CDU_PAGE_SECTOR",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FPLN_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    FINAL_SPD_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_left_bracket",
            static_text = true,
            x = 16,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_SPD_left_bracket",
            static_text = true,
            x = 16,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FINAL_SPD_left_bracket",
            static_text = true,
            x = 17,
            y = 9,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_left_bracket",
            static_text = true,
            x = 16,
            y = 9,
            color = 0,
        },
    },
    LOCAL_TIME_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "LOCAL_TIME_value",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    CARD_A = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_A",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    U2_UHF_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    POSN_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "POSN_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    CDU1_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
                "CDU_PAGE_LOADSETS_3",
            },
            id = "CDU1_STATUS",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    ADF_presets_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_presets_page_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_presets_page_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    GPS_ALMANAC_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
            },
            id = "GPS_ALMANAC_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    V3_VHF_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    ACP_DATUM_ARROW = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_DATUM_ARROW",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    VSPEED_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_MSN",
            },
            id = "VSPEED_units",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "VSPEED_units",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    CARD_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    HDG_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "HDG_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    H4_UTC_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_UTC_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    F1_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
            },
            id = "F1_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    F1_FM_FH_COMSEC_MODE_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_COMSEC_MODE_NONE",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    FLPN_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "FLPN_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    U2_VHF_AM_DELAY_MODE_IN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_DELAY_MODE_IN",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    GWT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "GWT_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    H4_LBT_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_LBT_ON",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    ACP_DATUM_VALUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_DATUM_VALUE",
            static_text = true,
            x = 21,
            y = 5,
            color = 2,
        },
    },
    EGI2_ACTIVE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_2",
            },
            id = "EGI2_ACTIVE",
            static_text = true,
            x = 1,
            y = 13,
            color = 2,
        },
    },
    V3_VHF_tuned_freq_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_tuned_freq_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    pg_title_MISSION_SELECT_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "pg_title_MISSION_SELECT_1",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    H4_GPS_TIME_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_GPS_TIME_page_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    POWER_SYSTEM_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "POWER_SYSTEM_available",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    HOV_OVERRIDE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "HOV_OVERRIDE_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    RESET_MAP_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_1",
            },
            id = "RESET_MAP_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    TCN_power_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "TCN_power_available",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    WIND_value2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "WIND_value2",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "WIND_value2",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    SELECT_6_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_6_left_bracket",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    EXPNDBLS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "EXPNDBLS_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    MS_ADDR_code = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_ADDR_code",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    F1_L5_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L5_value_5",
            static_text = true,
            x = 3,
            y = 9,
            color = 2,
        },
    },
    IFF_MODE_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
                "CDU_PAGE_MSN",
            },
            id = "IFF_MODE_left_bracket",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    TCN_power_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "TCN_power_OFF",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    YAW_field_EG = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "YAW_field_EG",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    V3_INTERCOMM_RETRANS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "V3_INTERCOMM_RETRANS",
            static_text = true,
            x = 24,
            y = 6,
            color = 2,
        },
    },
    ICMD_MODE_auto = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "ICMD_MODE_auto",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    H4_EMODE_USB = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_EMODE_USB",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    FINAL_SPD_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_right_bracket",
            static_text = true,
            x = 21,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_SPD_right_bracket",
            static_text = true,
            x = 21,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "FINAL_SPD_right_bracket",
            static_text = true,
            x = 22,
            y = 9,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TACT_APPR",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "FINAL_SPD_right_bracket",
            static_text = true,
            x = 21,
            y = 9,
            color = 0,
        },
    },
    U2_VHF_AM_DELAY_MODE_OUT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_DELAY_MODE_OUT",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    HOVER_FIX_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "HOVER_FIX_field",
            static_text = true,
            x = 2,
            y = 2,
            color = 0,
        },
    },
    CIRCLE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "CIRCLE_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    V3_UHF_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    U2_UHF_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    V3_UHF_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    ICMD_MODE_bupass = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "ICMD_MODE_bupass",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    CARGO_HOOK_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_HOOK_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    V3_VHF_presets_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    GPS_status = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "GPS_status",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    H4_LBT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_LBT",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    SV_3_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "SV_3_left_bracket",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    DATA_1_3_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "DATA_1_3_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "DATA_1_3_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    H4_SQUELCH_level = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_SQUELCH_level",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
    },
    RADIUS_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SECTOR",
            },
            id = "RADIUS_right_bracket",
            static_text = true,
            x = 22,
            y = 7,
            color = 0,
        },
    },
    IDM_SILENT_OPER = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "IDM_SILENT_OPER",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    DIAMETER_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CIRCLE",
            },
            id = "DIAMETER_value",
            static_text = true,
            x = 21,
            y = 7,
            color = 2,
        },
    },
    DEFAULT_MS_CODE_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "DEFAULT_MS_CODE_right_bracket",
            static_text = true,
            x = 11,
            y = 7,
            color = 0,
        },
    },
    V3_VHF_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    VOR_presets_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_presets_page_field",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_presets_page_field",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    -- 09_branch = {
    --     {
    --         alignment = "RGHT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "09_branch",
    --         static_text = true,
    --         x = 24,
    --         y = 9,
    --         color = 0,
    --     },
    -- },
    REJECT_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "REJECT_page_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    HOV_H3_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "HOV_H3_field",
            static_text = true,
            x = 21,
            y = 9,
            color = 0,
        },
    },
    OEI_SPD_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "OEI_SPD_field",
            static_text = true,
            x = 24,
            y = 12,
            color = 0,
        },
    },
    SEQ_ORDER_mode = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "SEQ_ORDER_mode",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    UTC_TIME_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
            },
            id = "UTC_TIME_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    CARD_A_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_A_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    U2_VHF_AM_SQUELCH_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_SQUELCH_OFF",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    MODE_1_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_1_available",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    pg_title_REF_SELECT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "pg_title_REF_SELECT",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    LEAD_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "LEAD_units",
            static_text = true,
            x = 6,
            y = 9,
            color = 0,
        },
    },
    EXP_SQUARE_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "EXP_SQUARE_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    F1_SCAN_LIST_freq_2 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
            },
            id = "F1_SCAN_LIST_freq_2",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    SINGARS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "SINGARS_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    F1_FM_FH_SCAN_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_SCAN_MODE_available",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    TO_CONFIG_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "TO_CONFIG_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    CTR_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_LADDER",
            },
            id = "CTR_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    R_AFT_SNSR_STATUS_DEG = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_AFT_SNSR_STATUS_DEG",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    TRK_SP_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_LADDER",
            },
            id = "TRK_SP_units",
            static_text = true,
            x = 8,
            y = 9,
            color = 0,
        },
    },
    F1_FM_FH_DELAY_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_DELAY_MODE_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    HOVER_FIX_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "HOVER_FIX_latitude_value_fract",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    CHAF_TOTAL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CHAF_TOTAL_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    V3_UHF_presets_page_value_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_value_5",
            static_text = true,
            x = 5,
            y = 11,
            color = 2,
        },
    },
    FP_DATA_ACCESS_3_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "FP_DATA_ACCESS_3_field",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    EL_OFFSET_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "EL_OFFSET_right_bracket",
            static_text = true,
            x = 7,
            y = 5,
            color = 0,
        },
    },
    H4_presets_page_right_bracket_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_right_bracket_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    ALTITUDE_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_MSN",
            },
            id = "ALTITUDE_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "ALTITUDE_units",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    U2_VHF_AM_COMSEC_MODE_PLAIN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    INU_ALN_MODE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "INU_ALN_MODE",
            static_text = true,
            x = 8,
            y = 2,
            color = 0,
        },
    },
    U2_preset_number = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "U2_preset_number",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    DATUM_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "DATUM_left_bracket",
            static_text = true,
            x = 20,
            y = 5,
            color = 0,
        },
    },
    STATE_select_SV_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "STATE_select_SV_1",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    V3_VHF_AM_FM_TONE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_TONE_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    U2_UHF_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    POS_WPT_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "POS_WPT_1",
            static_text = true,
            x = 14,
            y = 6,
            color = 2,
        },
    },
    TOD_DISPLAY_OFF = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "TOD_DISPLAY_OFF",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    F5_RADIO_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_RADIO_STATUS_FAIL",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_RADIO_STATUS_FAIL",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    OEI_SPD_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "OEI_SPD_value",
            static_text = true,
            x = 20,
            y = 13,
            color = 2,
        },
    },
    ADF_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    TO_arrow_down_1_0 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_arrow_down_1_0",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    TIME_REF_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "TIME_REF_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    F1_call_sign = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "F1_call_sign",
            static_text = true,
            x = 5,
            y = 3,
            color = 2,
        },
    },
    pg_title_TIMERS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TIMERS",
            },
            id = "pg_title_TIMERS",
            static_text = true,
            x = 10,
            y = 1,
            color = 0,
        },
    },
    H4_ABORT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_ABORT_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    INU_2_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_2_available",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    V3_FM_FH_tuned_freq_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_FH_tuned_freq_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    IDM_SILENT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "IDM_SILENT_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    MODE_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "MODE_OFF",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    H4_tuned_freq_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_tuned_freq_5",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    MCU_RESET = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "MCU_RESET",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    H4_ABORT = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_ABORT",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    TO_arrow_down_1_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_arrow_down_1_1",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    R_AFT_SNSR_STATUS_GO = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_AFT_SNSR_STATUS_GO",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    SELECT_4_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_4_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    AZ_OFFSET_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "AZ_OFFSET_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    F1_SCAN_LIST_page_field_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_field_4",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    GAIN_STATUS_state_0 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "GAIN_STATUS_state_0",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    FPLN_NAME_VALUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT_cmn",
            },
            id = "FPLN_NAME_VALUE",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    F1_SCAN_LIST_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_2",
            },
            id = "F1_SCAN_LIST_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    FLARE_TOTAL_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "FLARE_TOTAL_field",
            static_text = true,
            x = 24,
            y = 12,
            color = 0,
        },
    },
    V3_VHF_tuned_freq_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
            },
            id = "V3_VHF_tuned_freq_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    CMWS_MODE_ibit = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CMWS_MODE_ibit",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    F1_FM_FH_COMSEC_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_COMSEC_MODE_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    MODE_4_CODE_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_CODE_value",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_CODE_value",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    ANVIS_HUD_CONTROL_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "ANVIS_HUD_CONTROL_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    leg_brg_dist_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "leg_brg_dist_value",
            static_text = true,
            x = 17,
            y = 4,
            color = 2,
        },
    },
    INU_2_POSN_longitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "INU_2_POSN_longitude_value_deg",
            static_text = true,
            x = 12,
            y = 5,
            color = 2,
        },
    },
    TEST12 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST12",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    F1_FM_FH_presets_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "F1_FM_FH_presets_page_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    F1_page_branch_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
            },
            id = "F1_page_branch_4",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    IDM_CNFG = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "IDM_CNFG",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    FRAME_NAME_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "FRAME_NAME_right_bracket",
            static_text = true,
            x = 19,
            y = 5,
            color = 0,
        },
    },
    H4_SILENT_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_SILENT_ON",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    pg_title_ANVIS_HUD_CONTROL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "pg_title_ANVIS_HUD_CONTROL",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    V3_FM_tuned_freq_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
            },
            id = "V3_FM_tuned_freq_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    V3_FM_FH_tuned_freq_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_FH_tuned_freq_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    SEAS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "SEAS_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    SPEED_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "SPEED_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "SPEED_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    F1_L1_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L1_value_1",
            static_text = true,
            x = 3,
            y = 3,
            color = 2,
        },
    },
    EGI1_AVAILABLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI1_AVAILABLE",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    TCN_PTDIV = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_PTDIV",
            static_text = true,
            x = 17,
            y = 11,
            color = 2,
        },
    },
    FE_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "FE_right_bracket",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "FE_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    ADD_ACP_ALTN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ADD_ACP_ALTN_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    MODE_IM_ALN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "MODE_IM_ALN",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    TCN_PT_RAD_DIST_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_PT_RAD_DIST_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    CVFDR_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "CVFDR_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    GAIN_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "GAIN_STATUS_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    FRONT_AZIMUTH_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "FRONT_AZIMUTH_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    U2_VHF_AM_CTRL_REMOTE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_CTRL_REMOTE",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    ANVIS_HUD_CONTROL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "ANVIS_HUD_CONTROL_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    DATA_3_3_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
            },
            id = "DATA_3_3_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "DATA_3_3_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    VOR_ILS_presets_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    V3_INTERCOMM_SIMUL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "V3_INTERCOMM_SIMUL",
            static_text = true,
            x = 24,
            y = 6,
            color = 2,
        },
    },
    TCN_CRS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_CRS_field",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    TACAN_channel = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "TACAN_channel",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "TACAN_channel",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    VOR_PTW_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "VOR_PTW_num",
            static_text = true,
            x = 3,
            y = 3,
            color = 2,
        },
    },
    F1_page_value_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_2",
            },
            id = "F1_page_value_1",
            static_text = true,
            x = 4,
            y = 3,
            color = 2,
        },
    },
    ADF_MODE_ADF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_MODE_ADF",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    CMWS_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CMWS_MODE_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    MODE_NAV_I = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "MODE_NAV_I",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    EGI1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "EGI1_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    pg_title_ADF_Control = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "pg_title_ADF_Control",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    LEG_ALT_ELEV_BRACKET_RIGHT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "LEG_ALT_ELEV_BRACKET_RIGHT",
            static_text = true,
            x = 13,
            y = 11,
            color = 0,
        },
    },
    CDU = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "CDU",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    RAIM_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "RAIM_value",
            static_text = true,
            x = 1,
            y = 9,
            color = 2,
        },
    },
    SATURATION_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "SATURATION_arrow",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    HOV_SPD_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "HOV_SPD_field",
            static_text = true,
            x = 24,
            y = 12,
            color = 0,
        },
    },
    MODE_ORIENT = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "MODE_ORIENT",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    F1_SCAN_LIST_freq_1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
            },
            id = "F1_SCAN_LIST_freq_1",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    EOS_VIDEO = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SNSR",
            },
            id = "EOS_VIDEO",
            static_text = true,
            x = 23,
            y = 5,
            color = 0,
        },
    },
    FE_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "FE_left_bracket",
            static_text = true,
            x = 18,
            y = 5,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "FE_left_bracket",
            static_text = true,
            x = 18,
            y = 3,
            color = 0,
        },
    },
    pg_title_F1_SINCGARS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SINCGARS",
            },
            id = "pg_title_F1_SINCGARS",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    LOAD_branch_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
                "CDU_PAGE_LOADSETS_3",
            },
            id = "LOAD_branch_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    ADF_presets_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_presets_page_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_presets_page_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    ADF_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_MODE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    R_AFT_SNSR_STATUS_FAIL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_AFT_SNSR_STATUS_FAIL",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    ADF_TONE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ADF_CONTROL",
                "CDU_PAGE_ADF_CONTROL",
            },
            id = "ADF_TONE_field",
            static_text = true,
            x = 23,
            y = 6,
            color = 0,
        },
    },
    L_AFT_SNSR_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_AFT_SNSR_STATUS_FAIL",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    MS_CODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_CODE_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    TGT_ALERT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "TGT_ALERT_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    TCN_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_MODE_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    U2_VHF_AM_COMSEC_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_COMSEC_MODE_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    TCN_CRS_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_CRS_value",
            static_text = true,
            x = 2,
            y = 10,
            color = 2,
        },
    },
    OFFSETS_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "OFFSETS_left_bracket",
            static_text = true,
            x = 21,
            y = 7,
            color = 0,
        },
    },
    TCN_BRG_RNG_bearing_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_BRG_RNG_bearing_value",
            static_text = true,
            x = 17,
            y = 7,
            color = 2,
        },
    },
    U2_VHF_AM_CTRL_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_CTRL_available",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    SLAVE_VAR_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "SLAVE_VAR_value",
            static_text = true,
            x = 4,
            y = 12,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "SLAVE_VAR_value",
            static_text = true,
            x = 2,
            y = 12,
            color = 2,
        },
    },
    H4_MODE_MAN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_MODE_MAN",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    CVFDR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "CVFDR_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    TCN_PT_RAD_DIST_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_PT_RAD_DIST_left_bracket",
            static_text = true,
            x = 12,
            y = 11,
            color = 0,
        },
    },
    MMR_DME_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "MMR_DME_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    HF_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "HF_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "HF_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    V3_preset_number = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "V3_preset_number",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    MARK_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1",
            },
            id = "MARK_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    TO_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_field_1",
            static_text = true,
            x = 2,
            y = 6,
            color = 0,
        },
    },
    DATA_2_3_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
            },
            id = "DATA_2_3_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "DATA_2_3_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    IMPROMPTU_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "IMPROMPTU_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    MAP_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "MAP_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    ETE_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1",
            },
            id = "ETE_value",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    ALL_EMITTERS_MODE_EMCON = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EMCON",
                "CDU_PAGE_EMCON",
            },
            id = "ALL_EMITTERS_MODE_EMCON",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    REJECT_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "REJECT_page_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_MSN_2",
            },
            id = "latitude_value_deg",
            static_text = true,
            x = 1,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "latitude_value_deg",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    F1_SCAN_LIST_page_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
            },
            id = "F1_SCAN_LIST_page_value_2",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    H4_preset_number = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_preset_number",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    ROLL_field_EGI = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "ROLL_field_EGI",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    U2_HQ_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    ACP_LIST = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
            },
            id = "ACP_LIST",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    MODE_HUD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "MODE_HUD",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    H4_MSG_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_MSG_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_MSG_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    INTENSITY_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "INTENSITY_left_bracket",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    G_S_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "G_S_right_bracket",
            static_text = true,
            x = 5,
            y = 7,
            color = 0,
        },
    },
    F1_L3_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L3_value_3",
            static_text = true,
            x = 3,
            y = 5,
            color = 2,
        },
    },
    F1_FM_FH_MODE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_MODE_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    SELECT_1_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_1_value",
            static_text = true,
            x = 3,
            y = 3,
            color = 2,
        },
    },
    M1_SINCGARS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "M1_SINCGARS_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    POSN_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_MSN_2",
            },
            id = "POSN_page_branch",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    ILS_CRS_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "ILS_CRS_value",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    MODE_5_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MODE_5_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    OFFSET_DIR_mode = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "OFFSET_DIR_mode",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    F1_L8_value_8 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L8_value_8",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    F1_FM_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
            },
            id = "F1_FM_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    U2_VHF_AM_POWER_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_POWER_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    FLARE_PROG_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "FLARE_PROG_available",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    page_total = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL_2",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
                "CDU_PAGE_COMM_U2_FMT_LOAD_1",
                "CDU_PAGE_COMM_U2_FMT_LOAD_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_1",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_3",
                "CDU_PAGE_COMM_V3_VHF_PRESETS_4",
                "CDU_PAGE_F1_FM_PRESETS_1",
                "CDU_PAGE_F1_FM_PRESETS_2",
                "CDU_PAGE_F1_FM_PRESETS_3",
                "CDU_PAGE_F1_FM_PRESETS_4",
                "CDU_PAGE_F1_HOPSETS_1",
                "CDU_PAGE_F1_HOPSETS_2",
                "CDU_PAGE_F1_SCAN_LIST_1",
                "CDU_PAGE_F1_SCAN_LIST_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
                "CDU_PAGE_START_2",
                "CDU_PAGE_START",
                "CDU_PAGE_MSN",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
                "CDU_PAGE_IFF_2",
                "CDU_PAGE_IFF",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
                "CDU_PAGE_INAV_SELECT_2",
                "CDU_PAGE_LOADSETS_1",
                "CDU_PAGE_LOADSETS_2",
                "CDU_PAGE_LOADSETS_3",
                "CDU_PAGE_START_2",
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_INAV_SELECT",
                "CDU_PAGE_START",
                "CDU_PAGE_MSN_2",
                "CDU_PAGE_MSN_SELECT_1",
                "CDU_PAGE_MSN_SELECT_2",
                "CDU_PAGE_MSN_SELECT_3",
                "CDU_PAGE_MSN",
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
                "CDU_PAGE_MLS_PRESETS_2",
                "CDU_PAGE_MLS_PRESETS_3",
                "CDU_PAGE_MLS_PRESETS_4",
                "CDU_PAGE_MLS_PRESETS",
                "CDU_PAGE_NAV_2",
                "CDU_PAGE_NAV",
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
                "CDU_PAGE_DIG_MAP_1",
                "CDU_PAGE_DIG_MAP_2",
                "CDU_PAGE_STAT_2",
                "CDU_PAGE_STAT",
            },
            id = "page_total",
            static_text = true,
            x = 24,
            y = 1,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
                "CDU_PAGE_FPLN_DATA_2",
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "page_total",
            static_text = true,
            x = 16,
            y = 2,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1_cmn",
                "CDU_PAGE_PROGRESS_PAGE_2",
                "CDU_PAGE_PROGRESS_PAGE_3",
            },
            id = "page_total",
            static_text = true,
            x = 24,
            y = 1,
            color = 2,
        },
    },
    NAME_0 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "NAME_0",
            static_text = true,
            x = 6,
            y = 5,
            color = 4,
        },
    },
    ACP_POSN_TITLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_POSN_TITLE",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    F1_page_field_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_HOPSETS_1",
            },
            id = "F1_page_field_3",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    F1_SINCGARS_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "F1_SINCGARS_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    ROLL_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "ROLL_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    F1_FM_FH_DELAY_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_DELAY_MODE_available",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    MODE_TEST = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "MODE_TEST",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    MODE_3_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_3_right_bracket",
            static_text = true,
            x = 11,
            y = 7,
            color = 0,
        },
    },
    THRUST_AXIS_ENABLED = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "THRUST_AXIS_ENABLED",
            static_text = true,
            x = 2,
            y = 13,
            color = 2,
        },
    },
    MMR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "MMR_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN_SELECT_1",
            },
            id = "MMR_field",
            static_text = true,
            x = 23,
            y = 11,
            color = 0,
        },
    },
    ALTITUDE_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_MSN",
            },
            id = "ALTITUDE_left_bracket",
            static_text = true,
            x = 16,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "ALTITUDE_left_bracket",
            static_text = true,
            x = 16,
            y = 3,
            color = 0,
        },
    },
    EOS_power_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "EOS_power_OFF",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    COURSE_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "COURSE_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_SECTOR",
            },
            id = "COURSE_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "COURSE_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    F1_L2_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L2_value_2",
            static_text = true,
            x = 3,
            y = 5,
            color = 2,
        },
    },
    num_0 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "num_0",
            static_text = true,
            x = 2,
            y = 5,
            color = 4,
        },
    },
    END_0 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "END_0",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    VOR_presets_page_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_presets_page_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "VOR_presets_page_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    GPS1_KEYS_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "GPS1_KEYS_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    H4_presets_page_field_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_field_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    TCN_MODE_AATR = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_MODE_AATR",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    TDZE_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "TDZE_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    ADF_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ADF_PRESETS_2",
                "CDU_PAGE_ADF_PRESETS_3",
                "CDU_PAGE_ADF_PRESETS_4",
                "CDU_PAGE_ADF_PRESETS",
            },
            id = "ADF_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    SEQ_ORDER_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IMPROMPTU",
            },
            id = "SEQ_ORDER_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
    },
    CARD_4 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_4",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    INU_1_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_1_available",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    pg_title_MAINTENANCE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "pg_title_MAINTENANCE",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    VOR_ILS_presets_page_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_value_4",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    EGI_2_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "EGI_2_page_field",
            static_text = true,
            x = 4,
            y = 5,
            color = 2,
        },
    },
    FP_DATA_ACCESS_2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "FP_DATA_ACCESS_2_field",
            static_text = true,
            x = 23,
            y = 7,
            color = 0,
        },
    },
    COORD_REF_MGRS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_START",
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_START",
            },
            id = "COORD_REF_MGRS",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    WIND_value1 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "WIND_value1",
            static_text = true,
            x = 18,
            y = 9,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "WIND_value1",
            static_text = true,
            x = 18,
            y = 5,
            color = 2,
        },
    },
    START_POSN_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INTERCEPT",
            },
            id = "START_POSN_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    CONTROL_HOLD_POINT_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "CONTROL_HOLD_POINT_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    UPDATE_POSN_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_POSN_latitude_value_deg",
            static_text = true,
            x = 1,
            y = 9,
            color = 2,
        },
    },
    LEAD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "LEAD_field",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    LEAD_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "LEAD_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    LEG_TIME_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_TIME_value",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    AZ_OFFSET_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_MAINTENANCE",
            },
            id = "AZ_OFFSET_right_bracket",
            static_text = true,
            x = 7,
            y = 3,
            color = 0,
        },
    },
    CTR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_LADDER",
            },
            id = "CTR_field",
            static_text = true,
            x = 2,
            y = 2,
            color = 0,
        },
    },
    INU_1_POSN_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_POSITION_UPDATE",
            },
            id = "INU_1_POSN_latitude_value_fract",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    TURN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_LADDER",
                "CDU_PAGE_SECTOR",
            },
            id = "TURN_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "TURN_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    EGI_2_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
            },
            id = "EGI_2_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "EGI_2_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    Satelitte_vehicle_channel_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_5",
            static_text = true,
            x = 22,
            y = 2,
            color = 0,
        },
    },
    H4_SQUELCH_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_SQUELCH_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    pg_title_EGI_2_POSITION_UPDATE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
            },
            id = "pg_title_EGI_2_POSITION_UPDATE",
            static_text = true,
            x = 3,
            y = 1,
            color = 0,
        },
    },
    F1_L2_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_LOCKOUTS",
            },
            id = "F1_L2_field_2",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    FINAL_ALT_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "FINAL_ALT_left_bracket",
            static_text = true,
            x = 17,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "FINAL_ALT_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    pg_title_TACAN_Control = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "pg_title_TACAN_Control",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    ALT_REPOR_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "ALT_REPOR_available",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    longitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_MSN_2",
            },
            id = "longitude_value_deg",
            static_text = true,
            x = 12,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "longitude_value_deg",
            static_text = true,
            x = 13,
            y = 3,
            color = 2,
        },
    },
    ADD_FPLN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "ADD_FPLN_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    AMP_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "AMP_units",
            static_text = true,
            x = 6,
            y = 3,
            color = 0,
        },
    },
    CONTROL_HOLD_POINT_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "CONTROL_HOLD_POINT_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    TOTAL_FUEL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "TOTAL_FUEL_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    pg_title_H4_ALE_NETS_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "pg_title_H4_ALE_NETS_Presets",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    TANK_WT_MO_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "TANK-WT_MO_value",
            static_text = true,
            x = 3,
            y = 11,
            color = 2,
        },
    },
    END_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "END_2",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    DLU_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "DLU_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    PSM2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "PSM2",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    CONTRAST_arrow = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "CONTRAST_arrow",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    INU_2_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START_2",
                "CDU_PAGE_START_2",
            },
            id = "INU_2_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    HOVER_FIX_longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
            },
            id = "HOVER_FIX_longitude_value_fract",
            static_text = true,
            x = 17,
            y = 3,
            color = 2,
        },
    },
    REQ_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "REQ_units",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    MS_CODE_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_CODE_left_bracket",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    INTENSITY_asterisk = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "INTENSITY_asterisk",
            static_text = true,
            x = 1,
            y = 11,
            color = 2,
        },
    },
    CARGO_HOOK_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_HOOK_value",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
    },
    branch_PERF_PROG = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
            },
            id = "branch_PERF_PROG",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    MARK_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PROGRESS_PAGE_1",
            },
            id = "MARK_left_bracket",
            static_text = true,
            x = 21,
            y = 3,
            color = 0,
        },
    },
    TURN_AID_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "TURN AID_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    PTN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "PTN_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    F1_freq = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM",
                "CDU_PAGE_MSN",
            },
            id = "F1_freq",
            static_text = true,
            x = 24,
            y = 3,
            color = 2,
        },
    },
    longitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "longitude_value_fract",
            static_text = true,
            x = 18,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN_2",
            },
            id = "longitude_value_fract",
            static_text = true,
            x = 17,
            y = 3,
            color = 2,
        },
    },
    FE_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "FE_value",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "FE_value",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    CHAF_PROG_name = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "CHAF_PROG_name",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    FAF_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FAF_left_bracket",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    INTENSITY = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
            },
            id = "INTENSITY",
            static_text = true,
            x = 3,
            y = 11,
            color = 2,
        },
    },
    EGI_1_POSN_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
            },
            id = "EGI_1_POSN_latitude_value_deg",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    IFF_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
                "CDU_PAGE_MSN_SELECT_2",
            },
            id = "IFF_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT_2",
            },
            id = "IFF_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    TCN_BRG_RNG_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_BRG_RNG_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    ALTITUDE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_MSN",
            },
            id = "ALTITUDE_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "ALTITUDE_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    TEST4_REV_GREEN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST4_REV_GREEN",
            static_text = true,
            x = 24,
            y = 4,
            color = 2,
        },
    },
    LEG_DIST_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_DIST_right_bracket",
            static_text = true,
            x = 6,
            y = 11,
            color = 0,
        },
    },
    PITCH_AXIS_ENABLED = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD_2",
            },
            id = "PITCH_AXIS_ENABLED",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    HOLD_SPD_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "HOLD_SPD_units",
            static_text = true,
            x = 8,
            y = 13,
            color = 0,
        },
    },
    OPERATION_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STORM_MAINTENANCE",
            },
            id = "OPERATION_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    SEAS_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "SEAS_value",
            static_text = true,
            x = 21,
            y = 5,
            color = 2,
        },
    },
    pg_title_HOV_OVERRIDE_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "pg_title_HOV_OVERRIDE_NAME",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    PRESS_ALT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "PRESS_ALT_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    PRESS_ALT_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "PRESS_ALT_units",
            static_text = true,
            x = 8,
            y = 3,
            color = 0,
        },
    },
    F1_SCAN_LIST_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_F1_SCAN_LIST_1",
            },
            id = "F1_SCAN_LIST_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    U2_VHF_AM_COMSEC_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_COMSEC_available",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    AVL_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "AVL_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    LEG_DIST_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "LEG_DIST_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    TCN_MODE_AAR = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_MODE_AAR",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    CARGO_WT_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "CARGO_WT_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    HOV_WT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "HOV_WT_value",
            static_text = true,
            x = 21,
            y = 9,
            color = 2,
        },
    },
    VERT_POSN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
            },
            id = "VERT_POSN_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    WXR_GAIN_status = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "WXR_GAIN_status",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    H4_LINK_PROT_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_LINK_PROT_left_bracket",
            static_text = true,
            x = 2,
            y = 5,
            color = 0,
        },
    },
    FWD_POSN_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "FWD_POSN_value",
            static_text = true,
            x = 23,
            y = 5,
            color = 2,
        },
    },
    MFD3_CONFIRM_OFP_LOAD_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD3_CONFIRM_OFP_LOAD_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    RALT_LOW_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "RALT_LOW_right_bracket",
            static_text = true,
            x = 21,
            y = 3,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "RALT_LOW_right_bracket",
            static_text = true,
            x = 22,
            y = 11,
            color = 0,
        },
    },
    TIME_REF_MANUAL = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "TIME_REF_MANUAL",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    DATUM_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "DATUM_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    BRIGHTNESS_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HUD_VIDEO_CTRL",
                "CDU_PAGE_DIG_MAP_VIDEO_CTRL",
                "CDU_PAGE_EOS_VIDEO_CTRL",
            },
            id = "BRIGHTNESS_right_bracket",
            static_text = true,
            x = 6,
            y = 5,
            color = 0,
        },
    },
    TO_arrow_down_2_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "TO_arrow_down_2_3",
            static_text = true,
            x = 4,
            y = 10,
            color = 0,
        },
    },
    H4_POWER_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_POWER_available",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    WIDTH_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "WIDTH_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    WIDTH_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "WIDTH_left_bracket",
            static_text = true,
            x = 16,
            y = 5,
            color = 0,
        },
    },
    WIDTH_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LADDER",
            },
            id = "WIDTH_units",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    PITCH_right_bracket_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "PITCH_right_bracket_CDU",
            static_text = true,
            x = 8,
            y = 5,
            color = 0,
        },
    },
    VOR_ILS_presets_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_MMR_MLS_CONTROL",
            },
            id = "VOR_ILS_presets_page_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    V3_UHF_presets_page_value_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_value_2",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    -- 01_field = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "01_field",
    --         static_text = true,
    --         x = 1,
    --         y = 2,
    --         color = 0,
    --     },
    -- },
    -- 01_branch = {
    --     {
    --         alignment = "LFT",
    --         pages = {
    --             "CDU_PAGE_LOAD_ALTN",
    --             "CDU_PAGE_SAVE_ALTN",
    --         },
    --         id = "01_branch",
    --         static_text = true,
    --         x = 1,
    --         y = 3,
    --         color = 0,
    --     },
    -- },
    CONTROL_HOLD_POINT_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "CONTROL_HOLD_POINT_field",
            static_text = true,
            x = 1,
            y = 2,
            color = 0,
        },
    },
    HOLD_SPD_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "HOLD_SPD_right_bracket",
            static_text = true,
            x = 7,
            y = 13,
            color = 0,
        },
    },
    LOAD_FPLN_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT",
            },
            id = "LOAD_FPLN_field",
            static_text = true,
            x = 2,
            y = 13,
            color = 0,
        },
    },
    NAME_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "NAME_2",
            static_text = true,
            x = 6,
            y = 9,
            color = 4,
        },
    },
    H4_CALL_ADRS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_CALL_ADRS",
            static_text = true,
            x = 23,
            y = 3,
            color = 2,
        },
    },
    VOR_ILS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "VOR_ILS_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
            },
            id = "VOR_ILS_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    LAST_VALID_RANGE_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_LASER_CONTROL",
            },
            id = "LAST_VALID_RANGE_value",
            static_text = true,
            x = 1,
            y = 7,
            color = 2,
        },
    },
    BARO_SET_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_REF_SELECT",
                "CDU_PAGE_REF_SELECT",
            },
            id = "BARO_SET_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "BARO_SET_right_bracket",
            static_text = true,
            x = 8,
            y = 11,
            color = 0,
        },
    },
    PAGE_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HUD_CONTROL",
            },
            id = "PAGE_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    DATA_3_3_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_1_cmn",
            },
            id = "DATA_3_3_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "DATA_3_3_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    M5_NO_MC_code = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_NO_MC_code",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    M5_ALTR_AUD_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_ALTR_AUD_field",
            static_text = true,
            x = 24,
            y = 10,
            color = 0,
        },
    },
    LOADSETS_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_OFP_LOADSETS",
            },
            id = "LOADSETS_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    pg_title_VOR_ILS_Presets = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "pg_title_VOR_ILS_Presets",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    V3_FM_presets_page_value_4 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_FM_PRESETS_1",
                "CDU_PAGE_COMM_V3_FM_PRESETS_2",
                "CDU_PAGE_COMM_V3_FM_PRESETS_3",
                "CDU_PAGE_COMM_V3_FM_PRESETS_4",
            },
            id = "V3_FM_presets_page_value_4",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    MAP_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "MAP_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    H4_POWER_MEDIUM = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_POWER_MEDIUM",
            static_text = true,
            x = 2,
            y = 9,
            color = 2,
        },
    },
    APPR_HOV_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "APPR_HOV_field",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
    },
    MAP_latitude_value_deg = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "MAP_latitude_value_deg",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    H4_AUTO_SOUND_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_AUTO_SOUND_OFF",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    MAP_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "MAP_latitude_value_fract",
            static_text = true,
            x = 6,
            y = 5,
            color = 2,
        },
    },
    EGI1_power_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_POWER",
                "CDU_PAGE_POWER",
            },
            id = "EGI1_power_OFF",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    EXECUTE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MOD_FPLN",
            },
            id = "EXECUTE_field",
            static_text = true,
            x = 23,
            y = 13,
            color = 0,
        },
    },
    HAT_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TACT_APPR",
            },
            id = "HAT_right_bracket",
            static_text = true,
            x = 5,
            y = 9,
            color = 0,
        },
    },
    Display_LOAD_MFD2_STATUS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD2_STATUS",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
    },
    HDG_WPT_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "HDG_WPT_2",
            static_text = true,
            x = 8,
            y = 8,
            color = 2,
        },
    },
    CARD_B_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_B_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    CONTROL_HOLD_POINT_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "CONTROL_HOLD_POINT_right_bracket",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    GPS1_KEYS_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "GPS1_KEYS_right_bracket",
            static_text = true,
            x = 5,
            y = 11,
            color = 0,
        },
    },
    CHAF_TOTAL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "CHAF_TOTAL",
            static_text = true,
            x = 7,
            y = 3,
            color = 2,
        },
    },
    FP_DATA_ACCESS_3_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "FP_DATA_ACCESS_3_branch",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    VISIBILITY_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "VISIBILITY_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    pg_title_DATA_LOAD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
                "CDU_PAGE_DATA_LOAD",
            },
            id = "pg_title_DATA_LOAD",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
            },
            id = "pg_title_DATA_LOAD",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_DAFIF",
            },
            id = "pg_title_DATA_LOAD",
            static_text = true,
            x = 3,
            y = 1,
            color = 0,
        },
    },
    ADF_frequency = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_NAV_RADIOS",
                "CDU_PAGE_NAV_RADIOS",
            },
            id = "ADF_frequency",
            static_text = true,
            x = 24,
            y = 9,
            color = 2,
        },
    },
    scratch_text = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_scratchpad",
            },
            id = "scratch_text",
            static_text = true,
            x = 3,
            y = 14,
            color = 0,
        },
    },
    MISSLE_DET_STATUS_FAIL = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "MISSLE DET_STATUS_FAIL",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    AGL_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "AGL_value",
            static_text = true,
            x = 21,
            y = 3,
            color = 2,
        },
    },
    V3_VHF_AM_FM_MODE_TR_plus_G = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_MODE_TR_plus_G",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    CARGO_FUEL_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "CARGO_FUEL_value",
            static_text = true,
            x = 3,
            y = 9,
            color = 2,
        },
    },
    VHF_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "VHF_branch",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "VHF_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    UHF_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "UHF_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    PPSN_HOLD_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOLD",
            },
            id = "PPSN_HOLD_branch",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    FAF_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FAF_value",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    branch_TSA_SYMB = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INDEX_2",
            },
            id = "branch_TSA_SYMB",
            static_text = true,
            x = 24,
            y = 9,
            color = 0,
        },
    },
    ALTN_NAME_VALUE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN_MGNT_cmn",
            },
            id = "ALTN_NAME_VALUE",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
    },
    MS_ADDR_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MS_ADDR_left_bracket",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    G_S_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_TACT_APPR",
            },
            id = "G_S_left_bracket",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    R_FWD_SNSR_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_FWD_SNSR_field",
            static_text = true,
            x = 24,
            y = 4,
            color = 0,
        },
    },
    ANVIS_HUD_VIDEO = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_SNSR",
                "CDU_PAGE_SNSR",
            },
            id = "ANVIS_HUD_VIDEO",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    MODE_5_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "MODE_5_available",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    M5_PIN_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "M5_PIN_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    MISSLE_DET_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "MISSLE DET_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    MODE_4_TIME_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_TIME_right_bracket",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    pg_title_GPS_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_1",
            },
            id = "pg_title_GPS_1",
            static_text = true,
            x = 11,
            y = 1,
            color = 0,
        },
    },
    F5_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    LOAD_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
            },
            id = "LOAD_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_3",
            },
            id = "LOAD_1",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    ENABLE_NAV_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "ENABLE_NAV_field",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    CDU2_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DAFIF_DATA_LOAD",
                "CDU_PAGE_DATA_LOAD_DAFIF",
                "CDU_PAGE_LOADSETS_3",
            },
            id = "CDU2_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "CDU2_field",
            static_text = true,
            x = 23,
            y = 3,
            color = 0,
        },
    },
    MMR_DME_ON = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "MMR_DME_ON",
            static_text = true,
            x = 23,
            y = 9,
            color = 2,
        },
    },
    ILS_CRS_left_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_CONTROL",
                "CDU_PAGE_MMR_ILS_CONTROL",
                "CDU_PAGE_VOR_ILS_CONTROL",
            },
            id = "ILS_CRS_left_bracket",
            static_text = true,
            x = 19,
            y = 11,
            color = 0,
        },
    },
    POS_WPT_0 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ALTN",
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "POS_WPT_0",
            static_text = true,
            x = 14,
            y = 4,
            color = 2,
        },
    },
    V3_UHF_presets_page_value_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_PRESETS_2",
            },
            id = "V3_UHF_presets_page_value_3",
            static_text = true,
            x = 5,
            y = 7,
            color = 2,
        },
    },
    CANCEL_MOD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MOD_FPLN",
            },
            id = "CANCEL_MOD_branch",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
    },
    TCN_BRG_RNG_range_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TCN_CONTROL",
            },
            id = "TCN_BRG_RNG_range_value",
            static_text = true,
            x = 22,
            y = 7,
            color = 2,
        },
    },
    MODE_NOT_AVAILABLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "MODE_NOT_AVAILABLE",
            static_text = true,
            x = 1,
            y = 5,
            color = 2,
        },
    },
    IDNT_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "IDNT_right_bracket",
            static_text = true,
            x = 6,
            y = 3,
            color = 0,
        },
    },
    RVS_ALTN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN_MGNT",
            },
            id = "RVS_ALTN_branch",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    AIRSPACE_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "AIRSPACE_value",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    MFD4_CONFIRM_OFP_LOAD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD4_CONFIRM_OFP_LOAD_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    GWT_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "GWT_units",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    F5_COMSEC_MODE_CIPHER = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "F5_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 13,
            y = 11,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MSN",
            },
            id = "F5_COMSEC_MODE_CIPHER",
            static_text = true,
            x = 13,
            y = 9,
            color = 2,
        },
    },
    UPDATE_DIFF_units = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_DIFF_units",
            static_text = true,
            x = 5,
            y = 11,
            color = 0,
        },
    },
    ACCEPT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "ACCEPT_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    H4_CALL_ADRS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_CALL_ADRS_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    DIAMETER_units = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CIRCLE",
            },
            id = "DIAMETER_units",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    MISC_PARAMETERS_CODE_num = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "MISC_PARAMETERS_CODE_num",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    EGI_2_POSN_latitude_value_fract = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
            },
            id = "EGI_2_POSN_latitude_value_fract",
            static_text = true,
            x = 5,
            y = 5,
            color = 2,
        },
    },
    IMU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_CONTROL",
            },
            id = "IMU",
            static_text = true,
            x = 1,
            y = 3,
            color = 2,
        },
    },
    Satelitte_vehicle_channel_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_1",
            static_text = true,
            x = 10,
            y = 2,
            color = 0,
        },
    },
    ACP_ELEV_TITLE = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_ACP",
            },
            id = "ACP_ELEV_TITLE",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
    },
    Satelitte_vehicle_channel_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_vehicle_channel_3",
            static_text = true,
            x = 16,
            y = 2,
            color = 0,
        },
    },
    DCS1_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_STAT",
            },
            id = "DCS1_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    SELECT_3_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQll_SETUP",
            },
            id = "SELECT_3_field",
            static_text = true,
            x = 1,
            y = 6,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_3_field",
            static_text = true,
            x = 2,
            y = 6,
            color = 0,
        },
    },
    Satelitte_freq_code_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_freq_code_1",
            static_text = true,
            x = 10,
            y = 5,
            color = 2,
        },
    },
    V3_VHF_AM_FM_SQUELCH_OFF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_SQUELCH_OFF",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    Satelitte_freq_code_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_freq_code_3",
            static_text = true,
            x = 16,
            y = 5,
            color = 2,
        },
    },
    pg_title_FPLNNAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_MGMT_cmn",
            },
            id = "pg_title_FPLNNAME",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN",
                "CDU_PAGE_MOD_FPLN",
            },
            id = "pg_title_FPLNNAME",
            static_text = true,
            x = 24,
            y = 1,
            color = 0,
        },
    },
    TAC_APPR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PROC_PATT",
            },
            id = "TAC_APPR_field",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    Satelitte_state_code_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "Satelitte_state_code_2",
            static_text = true,
            x = 13,
            y = 7,
            color = 2,
        },
    },
    MFD5_CONFIRM_OFP_LOAD_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "MFD5_CONFIRM_OFP_LOAD_branch",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    APPLY_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_TRK_SPACE_CALC",
            },
            id = "APPLY_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
    },
    PAGE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "PAGE_available",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
    },
    ROC_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_WXR_CONTROL",
            },
            id = "ROC_right_bracket",
            static_text = true,
            x = 22,
            y = 11,
            color = 0,
        },
    },
    TEST1_2_CYAN = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST1_2_CYAN",
            static_text = true,
            x = 1,
            y = 1,
            color = 3,
        },
    },
    ERFS_TANKS_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_2",
            },
            id = "ERFS_TANKS_right_bracket",
            static_text = true,
            x = 24,
            y = 5,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "ERFS_TANKS_right_bracket",
            static_text = true,
            x = 7,
            y = 3,
            color = 0,
        },
    },
    F1_FM_FH_COMSEC_MODE_PLAIN = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_COMSEC_MODE_PLAIN",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    DEFAULT_MS_CODE_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_2",
            },
            id = "DEFAULT_MS_CODE_left_bracket",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
    },
    SV_3_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "SV_3_right_bracket",
            static_text = true,
            x = 4,
            y = 13,
            color = 0,
        },
    },
    DAFIF_date = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "DAFIF_date",
            static_text = true,
            x = 10,
            y = 10,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
            },
            id = "DAFIF_date",
            static_text = true,
            x = 3,
            y = 7,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "DAFIF_date",
            static_text = true,
            x = 24,
            y = 5,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
            },
            id = "DAFIF_date",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    INU_1_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT_2",
            },
            id = "INU_1_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    DIFF_EGI_1_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "DIFF_EGI_1_value",
            static_text = true,
            x = 22,
            y = 7,
            color = 2,
        },
    },
    V3_VHF_AM_FM_CTRL_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_V3_VHF_AM_FM_CTRL",
            },
            id = "V3_VHF_AM_FM_CTRL_available",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    FLARE_TYPE_NAME_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_EXPENDABLES",
                "CDU_PAGE_ASE_EXPENDABLES",
            },
            id = "FLARE_TYPE_NAME_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 0,
        },
    },
    PITCH_left_bracket_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "PITCH_left_bracket_CDU",
            static_text = true,
            x = 1,
            y = 5,
            color = 0,
        },
    },
    FLARE_TOTAL_enabled = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ASE_CONTROL",
            },
            id = "FLARE_TOTAL_enabled",
            static_text = true,
            x = 24,
            y = 13,
            color = 2,
        },
    },
    H4_SQUELCH_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
            },
            id = "H4_SQUELCH_left_bracket",
            static_text = true,
            x = 2,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_SQUELCH_left_bracket",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    CARGO_HOOK_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "CARGO_HOOK_right_bracket",
            static_text = true,
            x = 18,
            y = 7,
            color = 0,
        },
    },
    H4_presets_page_branch_1 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_branch_1",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    ROLL_left_bracket_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "ROLL_left_bracket_CDU",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    SELECT_6_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "SELECT_6_right_bracket",
            static_text = true,
            x = 13,
            y = 13,
            color = 0,
        },
    },
    U2_UHF_presets_page_branch_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_UHF_PRESETS_1",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_2",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_3",
                "CDU_PAGE_COMM_U2_UHF_PRESETS_4",
            },
            id = "U2_UHF_presets_page_branch_3",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    ATIRCM_CMWS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_POWER",
            },
            id = "ATIRCM_CMWS_field",
            static_text = true,
            x = 24,
            y = 12,
            color = 0,
        },
    },
    BASIC_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_MAINTENANCE",
            },
            id = "BASIC_branch",
            static_text = true,
            x = 1,
            y = 3,
            color = 0,
        },
    },
    YAW_right_bracket_CDU = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "YAW_right_bracket_CDU",
            static_text = true,
            x = 8,
            y = 7,
            color = 0,
        },
    },
    MODE_4_COD_available = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_COD_available",
            static_text = true,
            x = 1,
            y = 13,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_IFF",
            },
            id = "MODE_4_COD_available",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    ROLL_value_EGI = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_INU_1_BORESIGHT",
                "CDU_PAGE_INU_2_BORESIGHT",
            },
            id = "ROLL_value_EGI",
            static_text = true,
            x = 24,
            y = 7,
            color = 2,
        },
    },
    DLU_OPF_LOAD_STATUS_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DLU_OFP_LOAD",
            },
            id = "DLU_OPF_LOAD_STATUS_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    HDG_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FD",
                "CDU_PAGE_FD_2",
                "CDU_PAGE_FD",
            },
            id = "HDG_right_bracket",
            static_text = true,
            x = 5,
            y = 5,
            color = 0,
        },
    },
    TEST8 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INDEX_1",
                "CDU_PAGE_INDEX_2",
            },
            id = "TEST8",
            static_text = true,
            x = 1,
            y = 8,
            color = 0,
        },
    },
    OAT_value = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "OAT_value",
            static_text = true,
            x = 22,
            y = 9,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "OAT_value",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_PERF_DEFAULTS",
            },
            id = "OAT_value",
            static_text = true,
            x = 21,
            y = 7,
            color = 2,
        },
    },
    AIRSPACE_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_FPLN_DATA_3",
            },
            id = "AIRSPACE_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    NUMBER_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DIG_MAP_2",
            },
            id = "NUMBER_right_bracket",
            static_text = true,
            x = 5,
            y = 7,
            color = 0,
        },
    },
    H4_TOD_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_ALE_CTRL",
                "CDU_PAGE_COMM_H4_CTRL",
                "CDU_PAGE_COMM_H4_MAN_CTRL",
            },
            id = "H4_TOD_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    Display_LOAD_PSM1_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_1",
            },
            id = "Display_LOAD_PSM1_STATUS_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    CARGO_WT_right_bracket = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_HOV_OVERRIDE",
            },
            id = "CARGO_WT_right_bracket",
            static_text = true,
            x = 21,
            y = 7,
            color = 0,
        },
    },
    LOADSETS = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_OFP_LOADSETS",
            },
            id = "LOADSETS",
            static_text = true,
            x = 2,
            y = 3,
            color = 0,
        },
    },
    STATE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1_SATELLITE",
                "CDU_PAGE_GPS_2_SATELLITE",
            },
            id = "STATE_field",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    MODE_S_DFLT_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF_MAINTENANCE",
            },
            id = "MODE_S_DFLT_left_bracket",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    VOR_ILS_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    pg_title_DLU_OFP_LOAD = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DLU_OFP_LOAD",
            },
            id = "pg_title_DLU_OFP_LOAD",
            static_text = true,
            x = 7,
            y = 1,
            color = 0,
        },
    },
    Display_LOAD_MFD3_STATUS_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_LOADSETS_2",
            },
            id = "Display_LOAD_MFD3_STATUS_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    U2_HQ_presets_page_field_5 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_HQ_PRESETS_1",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_2",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_3",
                "CDU_PAGE_COMM_U2_HQ_PRESETS_4",
            },
            id = "U2_HQ_presets_page_field_5",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    H4_ALE_NETS_presets_page_field_2 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_ALE_NETS_PRESETS_1",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_2",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_3",
                "CDU_PAGE_H4_ALE_NETS_PRESETS_4",
            },
            id = "H4_ALE_NETS_presets_page_field_2",
            static_text = true,
            x = 2,
            y = 5,
            color = 2,
        },
    },
    DEFAULTS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "DEFAULTS",
            static_text = true,
            x = 23,
            y = 9,
            color = 0,
        },
    },
    MISC_PARAMETERS_CODE_num_right_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "MISC_PARAMETERS_CODE_num_right_bracket",
            static_text = true,
            x = 7,
            y = 5,
            color = 0,
        },
    },
    DATE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_2",
                "CDU_PAGE_DATA_LOAD_3",
                "CDU_PAGE_DATA_LOAD_4",
                "CDU_PAGE_DATA_LOAD_5",
            },
            id = "DATE_field",
            static_text = true,
            x = 24,
            y = 2,
            color = 2,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
                "CDU_PAGE_START",
            },
            id = "DATE_field",
            static_text = true,
            x = 1,
            y = 10,
            color = 0,
        },
    },
    DAFIF_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_START",
            },
            id = "DAFIF_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    INU1_BORE_page_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "INU1_BORE_page_branch",
            static_text = true,
            x = 24,
            y = 11,
            color = 0,
        },
    },
    HF = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "HF",
            static_text = true,
            x = 2,
            y = 9,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD_2",
            },
            id = "HF",
            static_text = true,
            x = 2,
            y = 11,
            color = 0,
        },
    },
    pg_title_ALTNNAME = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ALTN",
            },
            id = "pg_title_ALTNNAME",
            static_text = true,
            x = 24,
            y = 1,
            color = 0,
        },
    },
    MODE_3_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_IFF",
                "CDU_PAGE_IFF",
            },
            id = "MODE_3_left_bracket",
            static_text = true,
            x = 6,
            y = 7,
            color = 0,
        },
    },
    CONST_TYPE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
            },
            id = "CONST_TYPE_field",
            static_text = true,
            x = 1,
            y = 12,
            color = 0,
        },
    },
    H4_net_name = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM",
            },
            id = "H4_net_name",
            static_text = true,
            x = 5,
            y = 9,
            color = 2,
        },
    },
    PITCH = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_MAINTENANCE",
                "CDU_PAGE_EGI_2_MAINTENANCE",
            },
            id = "PITCH",
            static_text = true,
            x = 3,
            y = 3,
            color = 2,
        },
    },
    H4_SELF_ADRS = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_SELF_ADRS",
            static_text = true,
            x = 23,
            y = 11,
            color = 2,
        },
    },
    U2_VHF_AM_TONE_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_TONE_field",
            static_text = true,
            x = 2,
            y = 11,
            color = 2,
        },
    },
    pg_title_EXPANDING_SQUARE_NAME = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EXP_SQUARE",
            },
            id = "pg_title_EXPANDING_SQUARE_NAME",
            static_text = true,
            x = 5,
            y = 1,
            color = 0,
        },
    },
    H4_LINK_PROT_value = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_H4_CTRL_2",
            },
            id = "H4_LINK_PROT_value",
            static_text = true,
            x = 3,
            y = 5,
            color = 2,
        },
    },
    GPS_2_page_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_INAV_SELECT",
            },
            id = "GPS_2_page_field",
            static_text = true,
            x = 4,
            y = 9,
            color = 2,
        },
    },
    H4_presets_page_left_bracket_3 = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_1",
                "CDU_PAGE_H4_PRESETS_2",
            },
            id = "H4_presets_page_left_bracket_3",
            static_text = true,
            x = 3,
            y = 7,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_H4_PRESETS_3",
                "CDU_PAGE_H4_PRESETS_4",
            },
            id = "H4_presets_page_left_bracket_3",
            static_text = true,
            x = 4,
            y = 7,
            color = 0,
        },
    },
    CARD_3_chCheckSgn = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_DATA_LOAD",
            },
            id = "CARD_3_chCheckSgn",
            static_text = true,
            x = 8,
            y = 7,
            color = 0,
        },
    },
    F1_FM_FH_SQUELCH_branch = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_F1_VHF_FM_CTRL",
            },
            id = "F1_FM_FH_SQUELCH_branch",
            static_text = true,
            x = 1,
            y = 7,
            color = 0,
        },
    },
    VOR_ILS_tuned_freq_5 = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_VOR_ILS_PRESETS_2",
                "CDU_PAGE_VOR_ILS_PRESETS_3",
                "CDU_PAGE_VOR_ILS_PRESETS_4",
                "CDU_PAGE_VOR_ILS_PRESETS",
            },
            id = "VOR_ILS_tuned_freq_5",
            static_text = true,
            x = 24,
            y = 11,
            color = 2,
        },
    },
    L_FWD_SNSR_field = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_field",
            static_text = true,
            x = 1,
            y = 4,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "L_FWD_SNSR_field",
            static_text = true,
            x = 24,
            y = 6,
            color = 0,
        },
    },
    U2_VHF_AM_DELAY_MODE_available = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_COMM_U2_VHF_AM_CTRL",
            },
            id = "U2_VHF_AM_DELAY_MODE_available",
            static_text = true,
            x = 24,
            y = 7,
            color = 0,
        },
    },
    pg_title_U2_MWOD_DAY = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_COMM_U2_MWOD_DAY",
            },
            id = "pg_title_U2_MWOD_DAY",
            static_text = true,
            x = 8,
            y = 1,
            color = 0,
        },
    },
    WXR_MODE_field = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_EMCON",
            },
            id = "WXR_MODE_field",
            static_text = true,
            x = 24,
            y = 8,
            color = 0,
        },
    },
    FPLN_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_ZEROIZE",
                "CDU_PAGE_ZEROIZE",
            },
            id = "FPLN_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_APPR_HOV",
                "CDU_PAGE_CIRCLE",
                "CDU_PAGE_EXP_SQUARE",
                "CDU_PAGE_HOLD",
                "CDU_PAGE_IMPROMPTU",
                "CDU_PAGE_INTERCEPT",
                "CDU_PAGE_LADDER",
                "CDU_PAGE_SECTOR",
                "CDU_PAGE_TACT_APPR",
            },
            id = "FPLN_branch",
            static_text = true,
            x = 24,
            y = 13,
            color = 0,
        },
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EOS_POINT_CONTROL",
            },
            id = "FPLN_branch",
            static_text = true,
            x = 1,
            y = 9,
            color = 0,
        },
    },
    R_AFT_SNSR_STATUS_NONE = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_CMWS_STATUS",
            },
            id = "R_AFT_SNSR_STATUS_NONE",
            static_text = true,
            x = 23,
            y = 7,
            color = 2,
        },
    },
    DEFAULT_branch = {
        {
            alignment = "RGHT",
            pages = {
                "CDU_PAGE_MIS_PAGE_SETUP",
            },
            id = "DEFAULT_branch",
            static_text = true,
            x = 24,
            y = 3,
            color = 0,
        },
    },
    COUNTDOWN_TIMER_left_bracket = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
                "CDU_PAGE_EGI_1",
                "CDU_PAGE_EGI_2",
                "CDU_PAGE_GPS_1",
                "CDU_PAGE_GPS_2",
                "CDU_PAGE_INU_1",
                "CDU_PAGE_INU_2",
            },
            id = "COUNTDOWN_TIMER_left_bracket",
            static_text = true,
            x = 1,
            y = 11,
            color = 0,
        },
    },
    UPDATE_SOURCE_type = {
        {
            alignment = "LFT",
            pages = {
                "CDU_PAGE_EGI_1_POSITION_UPDATE",
                "CDU_PAGE_EGI_2_POSITION_UPDATE",
                "CDU_PAGE_INU_1_POSITION_UPDATE",
                "CDU_PAGE_INU_2_POSITION_UPDATE",
            },
            id = "UPDATE_SOURCE_type",
            static_text = true,
            x = 2,
            y = 7,
            color = 2,
        },
    },
    
}

return CH47F_CDU