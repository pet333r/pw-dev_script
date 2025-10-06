-- MiG-29A Fulcrum
local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	[6] = "%.2f",	-- G arrow
	[7] = "%.2f",	-- Aoa arrow
	[9] = "%.2f",	-- Radio alt
	[12] = "%.2f",	-- Temp left
	[14] = "%.2f",	-- Temp right
	[16] = "%.2f",	-- RPM 1
	[17] = "%.2f",	-- RPM 2
	[22] = "%.2f",	-- Fuel progress

	[38] = "%.1f",	-- Chaffs remaining

	-- 32 / 36 compass
	[39] = "%d",	-- ldg l
	[40] = "%d",	-- ldg n
	[41] = "%d",	-- ldg r
	[42] = "%d",	-- l flap 1
	[43] = "%d",	-- r flap 1
	[44] = "%d",	-- 
	[45] = "%d",	-- spd
	[46] = "%d",	-- red center
	[56] = "%d",	-- l flap 2
	[57] = "%d",	-- r flap 2


	[59] = "%d",	-- BIT RESET yellow light
	[60] = "%d",	-- FAILURE BIT yellow light
	[61] = "%d",	-- READY green light
	[62] = "%d",	-- FUEL TAC yellow light
	[63] = "%d",	-- FUEL T green light
	[64] = "%d",	-- FUEL P green light
	[66] = "%d",	-- FUEL Tanks light

	[72] = "%.2f",	-- RAMPS L
	[73] = "%.2f",	-- RAMPS R

	[82] = "%.1f",	-- DAMPER btn
	[83] = "%d",	-- DAMPER btn lt
	[84] = "%.1f",	-- AUTO RECOVER btn
	[85] = "%d",	-- AUTO RECOVER btn lt
	[86] = "%.1f",	-- ALT HOLD btn
	[87] = "%d",	-- ALT HOLD btn lt
	[88] = "%.1f",	-- ATT HOLD btn
	[89] = "%d",	-- ATT HOLD btn lt
	[90] = "%.1f",	-- APPROACH HOLD btn
	[91] = "%d",	-- APPROACH HOLD btn lt
	[92] = "%.1f",	-- MISSED APPROACH btn
	[93] = "%d",	-- MISSED APPROACH btn lt

	[99] = "%d",	-- Rudder trim switch

	-- Nav panel
	[133] = "%.1f",	-- knob 1
	[134] = "%.1f",	-- knob 2
	[135] = "%.1f",	-- knob 3

	[139] = "%d",	-- ADF Inner/Outer Switch
	[140] = "%d",	-- FLAREs Program Switch

	[150] = "%.1f",	-- 
	[151] = "%.1f",	-- 
	[152] = "%.1f",	-- 
	[153] = "%.1f",	-- 
	[154] = "%.1f",	-- 
	[155] = "%.1f",	-- 
	[156] = "%.1f",	-- 
	[157] = "%.1f",	-- 
	[158] = "%.1f",	-- 
	[159] = "%.1f",	-- 
	[160] = "%.1f",	-- 
	[161] = "%.1f",	-- 
	[162] = "%.1f",	-- 
	[163] = "%.1f",	-- 
	[164] = "%.1f",	-- 
	[165] = "%.1f",	-- 
	[166] = "%.1f",	-- 
	[167] = "%.1f",	-- 
	[168] = "%.1f",	-- 
	[169] = "%.1f",	-- 
	[171] = "%.1f",	-- 
	[172] = "%.1f",	-- 
	[173] = "%.1f",	-- 
	[174] = "%.1f",	-- 
	[175] = "%.1f",	-- 
	[176] = "%.1f",	-- 
	[177] = "%.1f",	-- 
	[185] = "%.1f",	-- 
	[186] = "%.1f",	-- 
	[191] = "%.1f",	-- 
	[192] = "%.1f",	-- 
	[193] = "%.1f",	-- 
	[194] = "%.1f",	-- 
	[195] = "%.1f",	-- 
	[196] = "%.1f",	-- 
	[197] = "%.1f",	-- 
	[198] = "%.1f",	-- 
	[199] = "%.1f",	-- 
	[200] = "%.1f",	-- 
	[201] = "%.1f",	-- 
	[202] = "%.1f",	-- 
	[203] = "%.1f",	-- 
	[204] = "%.1f",	-- 
	[205] = "%.1f",	-- 
	[206] = "%.1f",	-- 
	[207] = "%.1f",	-- 
	[208] = "%.1f",	-- 
	[209] = "%.1f",	-- 
	[210] = "%.1f",	-- 
	[211] = "%.1f",	-- 
	[212] = "%.1f",	-- 
	[213] = "%.1f",	-- 
	[214] = "%.1f",	-- 
	[215] = "%.1f",	-- 
	[216] = "%.1f",	-- 

	[178] = "%d",	-- LAND LIGHT / TAXI Switch

	-- Fuel
	[217] = "%d",	--  lt
	[218] = "%d",	-- 3 lt
	[220] = "%d",	-- 1 lt
	[221] = "%d",	-- CL lt

	[231] = "%d",	-- FAIL lt
	[232] = "%d",	-- TURN lt
	[233] = "%d",	-- MEMORY lt

	[256] = "%d",	-- system transparent cover

	[294] = "%.1f",	-- Target Elevation Select Knob
	[295] = "%.1f",	-- Radar Mode Select Knob
	[296] = "%d",	-- Radar Illumination Switch
	[297] = "%d",	-- Radar Compensation Switch
	[298] = "%d",	-- Radar TWF Switch
	[299] = "%d",	-- Radar ECCM Switch

	-- NAV
	[311] = "%d",	-- 2 lt
	[312] = "%d",	-- 3 lt
	[313] = "%d",	-- 1 lt
	[314] = "%d",	-- 2 lt
	[315] = "%d",	-- 3 lt
	[316] = "%d",	-- RESET lt
	[317] = "%d",	-- COURSE lt
	[318] = "%d",	-- RETURN lt

	[320] = "%d",	-- left wing toe lt
	[321] = "%d",	-- right wing toe lt

	[340] = "%.1f",	-- GBX FIRE
	[341] = "%.1f",	-- LH ENG FIRE
	[342] = "%.1f",	-- RH ENG FIRE
	[343] = "%.1f",	-- REDUCED RPM LH ENG
	[344] = "%.1f",	-- REDUCED RPM RH ENG
	[345] = "%.1f",	-- OIL PRESS LEFT
	[346] = "%.1f",	-- OIL PRESS RIGHT
	[347] = "%.1f",	-- OIL GBX
	[348] = "%.1f",	-- 550 KG REMAIN
	[349] = "%.1f",	-- DOUBLE HYD SYS
	[350] = "%.1f",	-- COC FAIL
	[352] = "%.1f",	-- DAMPER OFF
	[355] = "%.1f",	-- LH ENG AB
	[356] = "%.1f",	-- RH ENG AB
	[357] = "%.1f",	-- RUD TRIM NEUTRAL
	[358] = "%.1f",	-- STAB TRIM NEUTRAL
	[359] = "%.1f",	-- FEEL UNIT TO/LD
	[360] = "%.1f",	-- AIL TRIM NEUTRAL
	[362] = "%.1f",	-- EMERG HYD PUMP ON
	[363] = "%.1f",	-- MODE 1
	[364] = "%.1f",	-- BEACON INNER
	[365] = "%.1f",	-- RADAR READY
	[366] = "%.1f",	-- FLARE DISPENSING
	[367] = "%.1f",	-- MARKER BEACON

	[378] = "%.1f",	-- ARMED
	[379] = "%.1f",	-- LH ENG START
	[380] = "%.1f",	-- RH ENG START

	[381] = "%d",	-- FEEL UNIT OK
	[383] = "%d",	-- LOCK CANOPY
	[384] = "%d",	-- IFF FAIL
	[385] = "%d",	-- FLARE READY
	[386] = "%d",	-- SPARE ON
	[387] = "%d",	-- NAV READY
	[388] = "%d",	-- FAST PREP
	[389] = "%d",	-- TRANSFM FAIL
	[397] = "%d",	-- LH INLET CHECK
	[398] = "%d",	-- RH INLET CHECK
	[399] = "%d",	-- NO COC RESERVE

	-- NAV
	[410] = "%d",	-- GYRO Switch
	[411] = "%d",	-- CHANNELS Switch
	[412] = "%d",	-- WP-A/D Switch
	[413] = "%d",	-- REL BEARING Switch
	[414] = "%d",	-- COURSE Switch
	[415] = "%d",	-- CIRCLE Switch
	[416] = "%d",	-- LANDING Switch
	[433] = "%d",	-- D<21 lt
	[434] = "%d",	-- CORR lt

	[435] = "%.1f",	-- RU1
	[436] = "%.1f",	-- RU2
	[437] = "%.1f",	-- RU3
	[438] = "%.1f",	-- RU4
	[439] = "%.1f",	-- RU5

	[445] = "%d",	-- MASTER CAUTION lt

	[500] = "%d",	-- Navigation Supply Switch
	[501] = "%d",	-- GYRO Stby Supply Switch
	[502] = "%d",	-- GYRO Main Supply Switch
	[503] = "%d",	-- Aircraft Systems Supply Switch
	[504] = "%d",	-- Radio Supply Switch
	[505] = "%d",	-- ACS Supply Switch
	[506] = "%d",	-- Weapon Supply Switch
	[507] = "%d",	-- RECORD Supply Switch
	[508] = "%d",	-- TRANSPONDER Supply Switch
	[509] = "%d",	-- AFCS Supply Switch
	[510] = "%d",	-- BAT/GROUND Supply Switch
	[511] = "%d",	-- DC Generator Switch
	[512] = "%d",	-- AC Generator Switch
	[513] = "%d",	-- DC/AC Converter Switch
	[514] = "%d",	-- Engine System Switch
	[515] = "%d",	-- Fuel Pump Switch
	[516] = "%d",	-- Anti Surge Switch
	[517] = "%d",	-- All Electric Power Switches ON
	[518] = "%d",	-- All System Power Switches ON

	-- weapon
	[520] = "%.1f",	-- SPAN Knob
	[521] = "%d",	-- Burst Mode Switch
	[523] = "%.1f",	-- WCS Modes Selector Knob
	[524] = "%.1f",	-- IR GAIN/HELM BRIGHT Control Knob
	[525] = "%d",	-- Zone Switch
	[526] = "%d",	-- MASTER ARM Switch
	[527] = "%d",	-- Preparation Switch

	[535] = "%d",	-- HUD Selector Knob
	[536] = "%.1f",	-- HUD Brightness Control Knob

	[540] = "%.1f",	-- PANEL Control Knob
	[541] = "%.1f",	-- MAP ILLUM Control Knob
	[542] = "%.1f",	-- CONSOLE Control Knob
	[543] = "%.1f",	-- INSTRUMENT Control Knob
	[545] = "%.1f",	-- LTS ILLUM BRIGHT Control Knob
	[549] = "%.1f",	-- FLOODLIGHT Control Knob

	[607] = "%d",	-- NAV WP 1 lt
}

PWDEV.ConfigArguments =
{
}

local indEKRAN = nil
local function getEKRAN_txt1_line(value)
	if indEKRAN == nil or indEKRAN.txt_1 == nil then return "          " end
	return indEKRAN.txt_1[value] or "          "
end

local function getEKRAN_txt2_line(value)
	if indEKRAN == nil or indEKRAN.txt_2 == nil then return "          " end
	return indEKRAN.txt_2[value] or "          "
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
	send(2001, PWDEV.Tools.GetArgumentsString({830,831,832,833}))
	send(2002, PWDEV.Tools.GetArgumentsString({834,835,836,837}))
	send(2003, PWDEV.Tools.GetArgumentsString({111,112,113}))
	send(2004, PWDEV.Tools.GetArgumentsString({400,401}))
	send(2006, PWDEV.Tools.GetArgumentsString({418,419,420,421}))
	send(2007, PWDEV.Tools.GetArgumentsString({422,423}))

    indEKRAN = PWDEV.Tools.parseListIndicatorList(4)
	send(2008, getEKRAN_txt1_line(1) .. getEKRAN_txt1_line(2) .. getEKRAN_txt1_line(3) .. getEKRAN_txt1_line(4))
	send(2009, getEKRAN_txt2_line(1) .. getEKRAN_txt2_line(2) .. getEKRAN_txt2_line(3) .. getEKRAN_txt2_line(4))
end