
local C130J_AMU = {
	["ACAWS"] = {
		[1] = "<OVERFLOW",
		[2] = "<FAULT LOG",
		[3] = "<STORE",
		[4] = "<RECALL",
		[5] = "OVERLOW HDD POS>",
		[6] = "FAULT LOG HDD POS>",
		[7] = "ACAWS HDD POS>",
		[8] = "MAIN MENU>"
	},
	["OVERFLOW"] = {
		[7] = "PREV PAGE",
		[8] = "NEXT PAGE"
	},
	["STORE"] = {
		[1] = "ONE CAUTION",
		[2] = "ONE ADVISORY",
		[3] = "ALL CAUTIONS",
		[4] = "ALL ADVISORIES",
		[5] = "LINE UP",
		[6] = "LINE DOWN",
		[8] = "STORE MESSAGE"
	},
	["CAPS DISPLAY"] = {
		[1] = "<PFD SYMBOLOGY",
		[2] = "CENTER/UP/DOWN",
		[3] = "MAG/TRUE/GRID",
		[5] = "RANGE MARKS",
		[6] = "OVERLAYS>",
		[7] = "HDD POS>",
		[8] = "MAIN MENU>"
	},
	["PFD SYMBOLOGY"] = {
		[1] = "P PFD",
		[2] = "CP PFD"
	},
	["RANGE MARKS"] = {
		[1] = "1000 FT",
		[2] = "2000 FT",
		[3] = "4000 FT",
		[4] = "8000 FT",
		[5] = "2 NM",
		[6] = "4 NM",
		[7] = "8 NM"
	},
	["COMM"] = {
		[1] = "U1",
		[2] = "U2",
		[3] = "V1",
		[4] = "V2",
		[6] = "H1",
		[7] = "H2",
	},
	["ECB"] = {
		[1] = "HDD 3/OFF",
		[2] = "SYS/BUS/OPEN",
		[4] = "SELECT",
		[6] = "RESET",
		[7] = "PULL",
		[8] = "PREV PG",
		[9] = "NEXT PG"
	},
	["NAV"] = {
		[1] = "V1",
		[2] = "V2",
		[3] = "T1",
		[4] = "T2",
		[5] = "A1",
		[6] = "A2",
	},
	["DEFAULTS"] = {
		[1] = "<START",
		[2] = "<TAKEOFF  /  APPROACH",
		[3] = "<TACTICAL",
		[8] = "MAIN MENU>"
	},
	["DIAGNOSTICS"] = {
		[2] = "<BUS/RT STATUS",
		[3] = "<MAINTENANCE",
		[4] = "TIME / SYSTEM ORDER",
		[5] = "SW QUERY ID HDD POS>",
		[6] = "BUS/RT STATUS HDD POS>",
		[7] = "MAINTENANCE HDD POS>",
		[8] = "MAIN MENU>"
	},
	["DIG MAP DISPLAY"] = {
		[1] = "<MAP COVERAGE",
		[2] = "CENTER/OFFSET",
		[3] = "MAG/TRUE/GRID",
		[4] = "HDG/NORTH UP",
		[5] = "BLK/MGN/YEL/WHT",
		[6] = "OVERLAYS>",
		[7] = "HDD POS>",
		[8] = "MAIN MENU>"
	},
	["EGI POWER"] = {
		[2] = "EGI 1 RECYCLE",
		[6] = "EGI 2 RECYCLE"
	},
	["ENGINE DATA"] = {
		[1] = "ENG   PLA    BETA  FIC",
		[5] = " 1   ",
		[6] = " 2   ",
		[7] = " 3   ",
		[8] = " 4   "
	},
	["ENGINE DIAGNOSTICS"] = {
		[1] = "<ENGINE DATA",
		[2] = "<FADEC CAL",
		[4] = "<NIU RESET",
		[7] = "ENGINE MENU>",
		[8] = "MAIN MENU>"
	},
	["ENGINE"] = {
		[1] = "<ENG DIAGNOSTICS",
		[2] = "<PROP SYNC",
		[3] = "EMS DATA DOWNLOAD",
		[4] = "EMS EVENT RECORD",
		[7] = "HDD POS>",
		[8] = "MAIN MENU>"
	},
	["EO-IR DISPLAY"] = {
		[7] = "HDD POS>",
		[8] = "MAIN MENU>"
	},
	["FADEC CALIBRATION"] = {
		[1] = "ENG",
		[2] = "BETA CAL",
		[6] = "FADEC CAL",
		[7] = "INCR",
		[8] = "DECR"
	},
	["FAULT LOG"] = {
		[7] = "PREV PAGE",
		[8] = "NEXT PAGE"
	},
	["GCAS/TAWS"] = {
		[1] = "NORMAL/TACTICAL",
		[2] = "GS INHIBIT",
		[3] = "FLAP INHIBIT",
		[4] = "GCAS",
		[5] = "POPUP INHIBIT",
		[6] = "TERR INHIBIT",
		[7] = "ON/OFF",
		[8] = "MAIN MENU>"
	},
	["HDD POS"] = {
		{
			[1] = "HDD 1",
			[2] = "HDD 2",
			[3] = "HDD 3",
			[4] = "HDD 4",
			[5] = "DEFAULTS>"
		},
		{
			[2] = "HDD 2",
			[3] = "HDD 3",
			[4] = "HDD 4",
			[5] = "DEFAULTS>"
		}
	},
	["HUD TEST"] = {
		[1] = "MENU",
		[2] = "SELECT",
		[3] = "PREV HUD MENU",
		[5] = "LINE UP",
		[6] = "LINE DOWN",
		[8] = "EXIT HUD TEST"
	},
	["LIGHTING"] = {
		[1] = "<CVRT WNGTP/FSLG",
		[2] = "<CVRT TAIL",
		[3] = "<CVRT ANTI-COLLISION",
		[4] = "<INTERIOR LTG TRM",
		[5] = "CVRT FORM>",
		[6] = "CVRT FLASH RATE >",
		[8] = "MAIN MENU>",
		[9] = "COVERT EXT LTG BRT-"
	},
	["COVERT ANTI-COLLISION"] = {
		[1] = "INCREASE",
		[3] = "DECREASE",
		[4] = "RESET",
		[5] = "DIM/LO/HI"
	},
	["COVERT FLASH RATE"] = {
		[1] = "0 (STEADY)",
		[2] = "30",
		[3] = "60",
		[4] = "90 (NORMAL)",
		[5] = "120",
		[6] = "150"
	},
	["MAIN MENU"] = {
		{
			[1] = "<PFD",
			[2] = "<ENGINE",
			[3] = "<CAPS",
			[5] = "NAV-RADAR>",
			[6] = "SYS STATUS>",
			[7] = "DIG MAP>",
			[8] = "TAWS>"
		},
		{
			[1] = "<NAV SELECT",
			[2] = "<ACAWS",
			[3] = "<DIAGNOSTICS",
			[4] = "<PREFLIGHT",
			[5] = "DEFAULTS>",
			[7] = "LIGHTING>",
			[8] = "GCAS/TAWS AND STALL>"
		}
	},
	["MAINTENANCE HDD POS"] = {
		[1] = "HDD 1",
		[2] = "HDD 2",
		[3] = "HDD 3",
		[4] = "HDD 4",
		[5] = "DEFAULTS>"
	},
	["MAP COVERAGE"] = {
		[1] = "EMMU SLOT 0",
		[2] = "EMMU SLOT 1"
	},
	["NAV-RADAR DISPLAY"] = {
		[1] = "FULL/PART",
		[2] = "CENTER / OFFSET",
		[3] = "MAG/TRUE/GRID",
		[4] = "HDG/TK/N",
		[6] = "OVERLAYS>",
		[7] = "HDD POS>",
		[8] = "MAIN MENU>"
	},
	["CDI"] = {
		[1] = "VOR 1",
		[2] = "TACAN 1",
		[3] = "INAV",
		[4] = "IPRA",
		[5] = "VOR 2",
		[6] = "TACAN 2",
		[7] = "INAV 2"
	},
	["POINTER 1"] = {
		[1] = "VOR 1",
		[2] = "TACAN 1",
		[3] = "INAV",
		[4] = "ADF 1",
		[5] = "VOR 2",
		[6] = "TACAN 2",
		[7] = "INAV",
		[8] = "ADF 2"
	},
	["POINTER 2"] = {
		[1] = "VOR 1",
		[2] = "TACAN 1",
		[3] = "INAV",
		[4] = "ADF 1",
		[5] = "VOR 2",
		[6] = "TACAN 2",
		[7] = "INAV",
		[8] = "ADF 2"
	},
	["NAV SELECT"] = {
		[1] = "PILOT/COPILOT",
		[2] = "<PNTR 1",
		[3] = "<PNTR 2",
		[4] = "SHIP SOLN INAV",
		[7] = "EGI POWER>",
		[8] = "MAIN MENU>"
	},
	["NIU RESET"] = {
		[1] = "ENG"
	},
	["OVERLAYS"] = {
		{
			[1] = "NAV AIDS",
			[2] = "TACTICAL",
			[3] = "FLT PLN",
			[4] = "WPT IDS & CRS",
			[5] = "AIRPORTS",
			[8] = "CLEAR ALL"
		},
		{
			[1] = "NAV INFO",
			[2] = "TACTICAL",
			[3] = "FLT PLN",
			[8] = "CLEAR ALL"
		},
		{
			[1] = "NAV AIDS",
			[2] = "TACTICAL",
			[3] = "FLT PLN",
			[4] = "WPT IDS & CRS",
			[5] = "AIRPORTS",
			[6] = "RWR",
			[8] = "CLEAR ALL"
		},
		{
			[1] = "NAV AIDS",
			[2] = "TACTICAL",
			[3] = "FLT PLN",
			[4] = "WPT IDS & CRS",
			[5] = "AIRPORTS",
			[6] = "RWR",
			[8] = "CLEAR ALL"
		}
	},
	["PFD"] = {
		[1] = "PILOT/COPILOT",
		[2] = "BARO",
		[3] = "MAG / TRUE / GRID",
		[4] = "FD SOURCE",
		[5] = "ATT REF INU",
		[6] = "CADC",
		[7] = "RAD ALT",
		[8] = "MAIN MENU>"
	},
	["PREFLIGHT"] = {
		[1] = "SMOKE DETECTOR",
		[2] = "<PROP OVRSPD GVNR",
		[4] = "<HUD TEST",
		[5] = "FIRE DETECTION TEST",
		[6] = "SENSOR DATA>",
		[7] = "OFF/ON",
		[8] = "MAIN MENU>"
	},
	["PROP OVRSPD GVNR"] = {
		[1] = "ENGINE 1",
		[2] = "ENGINE 2",
		[3] = "ENGINE 3",
		[4] = "ENGINE 4"
	},
	["RANGE"] = {
		[1] = "1.5(.3)",
		[2] = "3(.6)",
		[3] = "5(1)",
		[4] = "10(2)",
		[5] = "20(4)",
		[6] = "40(8)",
		[7] = "80(16)",
		[8] = "320(64)/160(32)"
	},
	["SENSOR DATA"] = {
		[1] = "FLAP POSN",
		[2] = "AIL UTIL PRESS",
		[3] = "AIL BOOST PRESS"
	},
	["STALL AND SIDESLIP"] = {
		[1] = "STALL WARN",
		[2] = "PUSHER",
		[3] = "PUSHER TEST",
		[6] = "VERIFY ON",
		[8] = "ON/OFF"
	},
	["SYS STATUS DISPLAY"] = {
		[7] = "HDD POS>",
		[8] = "MAIN MENU>"
	},
	["TAWS DISPLAY"] = {
		[1] = "PILOT / COPILOT",
		[2] = "CENTER / OFFSET",
		[3] = "MAG/TRUE/GRID",
		[4] = "HDG/TK",
		[6] = "OVERLAYS>",
		[7] = "HDD POS>",
		[8] = "MAIN MENU>"
	},
}
return C130J_AMU