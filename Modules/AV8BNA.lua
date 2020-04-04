-- AV8BNA
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	-- LAMPS --------------------------------------
	--MIP INNER LEFT SIDE
	[196] = "%.f",	--Master Caution (yellow)
	[326] = "%.f",	--L FUEL
	[327] = "%.f",	--R FUEL
	[328] = "%.f",	--15 Sek
	[329] = "%.f",	--MFS
	[330] = "%.f",	--BINGO
	[331] = "%.f",	--H2O
	
	--MIP RIGHT SIDE
	[197] = "%.f",	--Master Warning (red)
	[334] = "%.f",	--FIRE
	[335] = "%.f",	--LAW
	[336] = "%.f",	--FLAPS
	[337] = "%.f",	--L TANK
	[338] = "%.f",	--R TANK
	[339] = "%.f",	--HHYD
	[340] = "%.f",	--GEAR
	[341] = "%.f",	--OT
	[342] = "%.f",	--JPTL
	[343] = "%.f",	--EFC
	[344] = "%.f",	--GEN

	--EYEBROW LIGHTS RIGHT SIGHT
	-- [276] = "%.f",	--SAM
	-- [277] = "%.f",	--CW
	-- [278] = "%.f",	--AI
	-- [279] = "%.f",	--AAA

	--MIP OUTER LEFT SIDE
	-- [283] = "%.f",	--NAV
	-- [285] = "%.f",	--VSTOL
	-- [281] = "%.f",	--A/G
	-- [451] = "%.f",	--SEL
	-- [452] = "%.f",	--CMBT
	-- [453] = "%.f",	--STO

	--CANOPY FRAME
	-- [750] = "%.f",	--LEFT
	-- [751] = "%.f",	--READY
	-- [752] = "%.f",	--RIGHT

	--GEAR LEVER
	-- [446] = "%.f",	--(red warning light)

	--CAUTION PANEL (from upper left to lower right)
	[560] = "%.f",	--OXY
	[561] = "%.f",	--WSLD
	[562] = "%.f",	--HYD 1
	[563] = "%.f",	--HYD 2
	[564] = "%.f",	--L PUMP
	[565] = "%.f",	--R PUMP
	[566] = "%.f",	--L TRANS
	[567] = "%.f",	--R TRANS
	[568] = "%.f",	--FLAPS 1
	[569] = "%.f",	--FLAPS 2
	[570] = "%.f",	--AUT FLP
	[571] = "%.f",	--PROP
	[572] = "%.f",	--LIDS
	[573] = "%.f",	--OIL
	[574] = "%.f",	--APU GEN
	[575] = "%.f",	--"--"
	[576] = "%.f",	--GPS
	[577] = "%.f",	--DEP RES
	[578] = "%.f",	--DC
	[579] = "%.f",	--STBY TR
	[580] = "%.f",	--CS COOL
	[581] = "%.f",	--LOAD
	[582] = "%.f",	--CANOPY
	[583] = "%.f",	--INS
	[584] = "%.f",	--SKID
	[585] = "%.f",	--EFC
	[586] = "%.f",	--NWS
	[587] = "%.f",	--AFC
	[588] = "%.f",	--C AUT
	[589] = "%.f",	--H2O SEL
	[590] = "%.f",	--APU
	[591] = "%.f",	--PITCH
	[592] = "%.f",	--IFF
	[593] = "%.f",	--SPD BRK
	[594] = "%.f",	--DROOP
	[595] = "%.f",	--ROLL
	[596] = "%.f",	--AFT BAY
	[597] = "%.f",	--AV BIT -----MAYBE NOT WORKING !-----
	[598] = "%.f",	--"--"
	[599] = "%.f",	--YAW
	[600] = "%.f",	--CW NOGO
	[601] = "%.f",	--P JAM
	[602] = "%.f",	--JAM HOT
	[603] = "%.f",	--ENG EXC
	[604] = "%.f",	--P NOGO
	[605] = "%.f",	--CW JAM
	[606] = "%.f",	--REPLY

	--ENGINE DISPLAY
	-- [253] = "%.4f",	--DUCT 1. DRUM
	-- [254] = "%.4f",	--DUCT 2.
	-- [255] = "%.4f",	--DUCT 3.
	-- [256] = "%.4f",	--RPM 1. DRUM
	-- [257] = "%.4f",	--RPM 2.
	-- [258] = "%.4f",	--RPM 3.
	-- [259] = "%.4f",	--RPM 4.
	-- [260] = "%.4f",	--FF 1. DRUM
	-- [261] = "%.4f",	--FF 2.
	-- [262] = "%.4f",	--FF 3.
	-- [263] = "%.4f",	--JPT 1. DRUM
	-- [264] = "%.4f",	--JPT 2.
	-- [265] = "%.4f",	--JPT 3.
	-- [266] = "%.4f",	--STAB(Arrow up/down)
	-- [267] = "%.4f",	--STAB 1. Number, 2.DRUM
	-- [268] = "%.4f",	--STAB 2. Number, 3. DRUM
	-- [269] = "%.4f",	--H2O 1. Number
	-- [270] = "%.4f",	--H2O 2. Number -----3. Number is fix !!----
	-- [177] = "%.f",	--FLOW W LAMP
	-- [271] = "%.4f",	--NOZZLE POINTER

	--FUEL PANEL DISPLAY
	-- [365] = "%.4f",	--ON/OFF FLAG
	-- [366] = "%.4f",	--TOT FUEL 1. DRUM
	-- [367] = "%.4f",	--TOT FUEL 2.
	-- [368] = "%.4f",	--TOT FUEL 3.
	-- [369] = "%.4f",	--TOT FUEL 4.
	-- [370] = "%.4f",	--TOT FUEL 5.
	-- [371] = "%.4f",	--LBS L 1. DRUM
	-- [372] = "%.4f",	--LBS L	2.
	-- [373] = "%.4f",	--LBS L 3.
	-- [374] = "%.4f",	--LBS L 4.
	-- [375] = "%.4f",	--LBS R 1. DRUM 
	-- [376] = "%.4f",	--LBS R	2.
	-- [377] = "%.4f",	--LBS R 3.
	-- [378] = "%.4f",	--LBS R 4.
	-- [381] = "%.4f",	--BINGO 1. DRUM 
	-- [382] = "%.4f",	--BINGO 2.
	-- [383] = "%.4f",	--BINGO 3.
	-- [384] = "%.4f",	--BINGO 4.

	--UPPER AMARMENT PANEL
	-- [385] = "%.4f",	--MODE
	-- [386] = "%.4f",	--FUZ 1. DRUM 
	-- [387] = "%.4f",	--FUR 2.
	-- [392] = "%.4f",	--InVT x 10 1. DRUM 
	-- [393] = "%.4f",	--InVT x 10 2.
	-- [394] = "%.4f",	--InVT x 10 3.
	-- [391] = "%.4f",	--MULT
	-- [389] = "%.4f",	--QTY 1. Drum 
	-- [390] = "%.4f",	--QTY 2.

	--LOWER AMARMENT PANEL
	-- [406] = "%.4f",	--SET FLAG 1
	-- [408] = "%.4f",	--SET FLAG 2
	-- [410] = "%.4f",	--SET FLAG 3
	-- [412] = "%.4f",	--SET FLAG 4
	-- [414] = "%.4f",	--SET FLAG 5
	-- [416] = "%.4f",	--SET FLAG 6
	-- [418] = "%.4f",	--SET FLAG 7

	--GEAR PANEL DISPLAY --STATUS LIGHTS--
	-- [462] = "%.f",	--NOSE GEAR (YELLOW)
	-- [463] = "%.f",	--NOSE GEAR (GREEN)
	-- [464] = "%.f",	--LEFR GEAR (YELLOW)
	-- [465] = "%.f",	--LEFT GEAR (GREEN)
	-- [466] = "%.f",	--RIGHT GEAR (YELLOW)
	-- [467] = "%.f",	--RIGHT GEAR (GREEN)
	-- [469] = "%.f",	--MAIN GEAR (YELLOW)
	-- [468] = "%.f",	--MAIN GEAR (GREEN)

	--BRAKE/ HYD DISPLAY
	-- [550] = "%.4f",	--BRAKE 1. DRUM 
	-- [551] = "%.4f",	--BRAKE	2.
	-- [552] = "%.4f",	--BRAKE 3.
	-- [553] = "%.4f",	--HYD1 1. DRUM 
	-- [554] = "%.4f",	--HYD1 2.
	-- [555] = "%.4f",	--HYD1 3.
	-- [556] = "%.4f",	--HYD2 1. DRUM 
	-- [557] = "%.4f",	--HYD2 2.
	-- [558] = "%.4f",	--HYD2 3.

	--FLAP POSITION DISPLAY
	-- [455] = "%.4f",	--FLAP POS 1. DRUM 
	-- [456] = "%.4f",	--FLAP POS 2. DRUM

	-- INSTRUMENTS ------------------------------------------------
	---STBY MIP

	--ADI
	-- [349] = "%.4f",	--ADI DRUM UO/DWN  CLIMB/DESCEND
	-- [348] = "%.4f",	--ADI DRUM LEFR RIGHT (BANK)
	-- [347] = "%.4f",	--OFF FLAG

	--AIRSPEED
	-- [346] = "%.4f",	--KNT POINTER SHORT
	-- [345] = "%.4f",	--KNT POINTER LONG

	--ALTIMETER
	-- [352] = "%.4f",	--ALT POINTER
	-- [355] = "%.4f",	--ALT DIGITAL 1. NUMBER
	-- [354] = "%.4f",	--ALT DIGITAL 2.
	-- [353] = "%.4f",	--ALT DIGITAL 3.
	-- [356] = "%.4f",	--IN HG 1. NUMBER
	-- [357] = "%.4f",	--IN HG 2. NUMBER
	-- [358] = "%.4f",	--IN HG 3. NUMBER
	-- [359] = "%.4f",	--IN HG 4. NUMBER

	--AOA
	[360] = "%.4f",	--AOA FLAG
	[361] = "%.4f",	--AOA POINTER

	--VVI
	-- [362] = "%.4f",	--VVI POINTER

	--SLIP INDICATOR
	-- [363] = "%.4f",	--BALL

	---SIDE PANELS LEFT
	--AILERON METER
	-- [473] = "%.4f",	--AILERON NEEDLE

	--RUDDER
	-- [474] = "%.4f",	--RUDDER NEEDLE

	---SIDE PANELS RIGHT
	--ACCU METER
	-- [559] = "%.4f",	--ACCU POINTER 

	--CABIN PRESSURE
	-- [607] = "%.4f",	--CABIN PRESS POINTER

	--BATTERY (VOLT METER)
	-- [608] = "%.4f", --VOLT METER POINTER

	---Compass
	-- [753] = "%.4f",	--Compassrose N-> S (rotate)
	-- [754] = "%.4f",	--Compassrose Up / Down
	-- [755] = "%.4f",	--Compassrose bank

	---CLOCK
	-- [759] = "%.4f",	--POINTER HOUR
	-- [760] = "%.4f",	--POINTER MINUTE
	-- [761] = "%.4f",	--POINTER SECOND

	---STOPWATCH
	--NOTHING FOUND YET
	--CABIN LIGHTNING
	-- [180] = "%.f",	--FLOOD
	-- [182] = "%.f",	--MIP BACKLIGHTING
	-- [183] = "%.f",	--LEFT AND RIGHT SIDEPANEL LIGHTING
	-- [184] = "%.f",	--WHISKEY COMPASS BACKLIGHT (LEFT CANOPY FRAME)
}

ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]
	-- Master Modes Panel
	[282] = "%.1f",	--Nav Master Mode selector
	[284] = "%.1f",	--VSTOL Master Mode Selector
	[280] = "%.1f",	--AG Master Mode Selector

	-- Engine Display Panel
	[272] = "%.4f",	--EDP Brightness Control
	[655] = "%1d",	--EDP BIT Button

	-- HUD Control Panel
	[288] = "%.4f",	--HUD
	[289] = "%.4f",	--HUD Off/Brightness Control
	[290] = "%.1f",	--HUD Display Mode Switch
	[291] = "%.4f",	--HUD Video Brightness Control
	[292] = "%.4f",	--HUD Video Contrast Control
	[293] = "%1d",	--HUD Altitude Selector Switch

	-- UFC Panel
	-- [302] = "%1d",	--UFC Button 1
	-- [303] = "%1d",	--UFC Button 2/N
	-- [304] = "%1d",	--UFC Button 3
	-- [306] = "%1d",	--UFC Button 4/W
	-- [307] = "%1d",	--UFC Button 5
	-- [308] = "%1d",	--UFC Button 6/E
	-- [310] = "%1d",	--UFC Button 7
	-- [311] = "%1d",	--UFC Button 8/S
	-- [312] = "%1d",	--UFC Button 9
	-- [315] = "%1d",	--UFC Button 0
	-- [316] = "%1d",	--UFC Button .
	-- [313] = "%1d",	--UFC Button -
	-- [314] = "%1d",	--ENTER Data Button
	-- [305] = "%1d",	--Clear Entry Button
	-- [294] = "%1d",	--Timer Function Selector
	-- [324] = "%1d",	--Altitude Function Selector
	-- [318] = "%1d",	--IFF Function Selector
	-- [319] = "%1d",	--TACAN Function Selector
	-- [320] = "%1d",	--All Weather Landing Function Selector
	-- [317] = "%1d",	--Radalt/TACAN/AWL/IFF ON/OFF Toggle
	-- [325] = "%1d",	--EMCON ON/OFF Toggle
	-- [296] = "%1d",	--Target-Of-Opportunity Selector
	-- [322] = "%1d",	--Waypoint Overfly INS Update Selector
	-- [321] = "%1d",	--Weapons Function Selector
	-- [323] = "%1d",	--Radar Beacon Function Selector
	-- [297] = "%1d",	--I/P Button
	-- [309] = "%1d",	--Save Data Button
	[295] = "%.1f",	--Display Brightness Control
	[298] = "%.1f",	--Comm 1 Volume Control
	[299] = "%.1f",	--Comm 2 Volume Control
	-- [300] = "%.4f",	--Comm 1 Channel Selector
	-- [301] = "%.4f",	--Comm 2 Channel Selector
	-- [178] = "%.4f",	--Comm 1 Channel Show Button
	-- [179] = "%.4f",	--Comm 2 Channel Show Button

	-- ODU Panel
	-- [250] = "%1d",	--ODU Option1
	-- [251] = "%1d",	--ODU Option2
	-- [252] = "%1d",	--ODU Option3
	-- [248] = "%1d",	--ODU Option4
	-- [249] = "%1d",	--ODU Option5

	-- Master Caution/Warning Panel
	-- [198] = "%1d",	--Master Caution
	-- [199] = "%1d",	--Master Warning

	-- Fuel Quantity Indicator
	-- [379] = "%.1f",	--Fuel Totalizer Selector
	-- [380] = "%.4f",	--Bingo Fuel Set Knob

	-- MPCD left
	-- [200] = "%1d",	--MPCD Left Button 1
	-- [201] = "%1d",	--MPCD Left Button 2
	-- [202] = "%1d",	--MPCD Left Button 3
	-- [203] = "%1d",	--MPCD Left Button 4
	-- [204] = "%1d",	--MPCD Left Button 5
	-- [205] = "%1d",	--MPCD Left Button 6
	-- [206] = "%1d",	--MPCD Left Button 7
	-- [207] = "%1d",	--MPCD Left Button 8
	-- [208] = "%1d",	--MPCD Left Button 9
	-- [209] = "%1d",	--MPCD Left Button 10
	-- [210] = "%1d",	--MPCD Left Button 11
	-- [211] = "%1d",	--MPCD Left Button 12
	-- [212] = "%1d",	--MPCD Left Button 13
	-- [213] = "%1d",	--MPCD Left Button 14
	-- [214] = "%1d",	--MPCD Left Button 15
	-- [215] = "%1d",	--MPCD Left Button 16
	-- [216] = "%1d",	--MPCD Left Button 17
	-- [217] = "%1d",	--MPCD Left Button 18
	-- [218] = "%1d",	--MPCD Left Button 19
	-- [219] = "%1d",	--MPCD Left Button 20
	-- [220] = "%1d",	--MPCD Left Display DAY/NIGHT Mode
	-- [221] = "%1d",	--MPCD Left Display Symbology
	-- [222] = "%1d",	--MPCD Left Display Gain
	-- [223] = "%1d",	--MPCD Left Display Contrast
	-- [194] = "%.4f",	--MPCD Left Off/Brightness Control

	-- MPCD Right
	-- [224] = "%1d",	--MPCD Right Button 1
	-- [225] = "%1d",	--MPCD Right Button 2
	-- [226] = "%1d",	--MPCD Right Button 3
	-- [227] = "%1d",	--MPCD Right Button 4
	-- [228] = "%1d",	--MPCD Right Button 5
	-- [229] = "%1d",	--MPCD Right Button 6
	-- [230] = "%1d",	--MPCD Right Button 7
	-- [231] = "%1d",	--MPCD Right Button 8
	-- [232] = "%1d",	--MPCD Right Button 9
	-- [233] = "%1d",	--MPCD Right Button 10
	-- [234] = "%1d",	--MPCD Right Button 11
	-- [235] = "%1d",	--MPCD Right Button 12
	-- [236] = "%1d",	--MPCD Right Button 13
	-- [237] = "%1d",	--MPCD Right Button 14
	-- [238] = "%1d",	--MPCD Right Button 15
	-- [239] = "%1d",	--MPCD Right Button 16
	-- [240] = "%1d",	--MPCD Right Button 17
	-- [241] = "%1d",	--MPCD Right Button 18
	-- [242] = "%1d",	--MPCD Right Button 19
	-- [243] = "%1d",	--MPCD Right Button 20
	-- [244] = "%1d",	--MPCD Right Display DAY/NIGHT Mode
	-- [245] = "%1d",	--MPCD Right Display Symbology
	-- [246] = "%1d",	--MPCD Right Display Gain
	-- [247] = "%1d",	--MPCD Right Display Contrast
	-- [195] = "%.4f",	--MPCD Right Off/Brightness Control

	-- Armament Control Panel ACP
	-- [395] = "%.1f",	--Manual Release Control Knob
	-- [396] = "%1d",	--Armament Mode Control
	-- [397] = "%1d",	--Fuzing Control
	-- [398] = "%1d",	--Quantity Selector (Tens)
	-- [399] = "%1d",	--Quantity Selector (Units)
	-- [400] = "%1d",	--Multiple Release Control
	-- [401] = "%1d",	--Release Interval Control (Hundreds)
	-- [402] = "%1d",	--Release Interval Control (Tens)
	-- [403] = "%1d",	--Release Interval Control (Units)
	-- [404] = "%1d",	--Jettison Mode Selector
	-- [405] = "%1d",	--Jettison Stores
	-- [407] = "%1d",	--Select Station 1 Toggle
	-- [409] = "%1d",	--Select Station 2 Toggle
	-- [411] = "%1d",	--Select Station 3 Toggle
	-- [413] = "%1d",	--Select Station 4 Toggle
	-- [415] = "%1d",	--Select Station 5 Toggle
	-- [417] = "%1d",	--Select Station 6 Toggle
	-- [419] = "%1d",	--Select Station 7 Toggle
	-- [420] = "%1d",	--Ground IR Cool Switch

	-- Master Armament Panel
	[286] = "%1d",	--Launch Flare Salvo
	[287] = "%1d",	--Master Arm Switch

	-- ECM Control Panel
	-- [273] = "%.2f",	--RWR Power/Volume Button
	-- [274] = "%.1f",	--Decoy Dispenser Control
	-- [275] = "%.1f",	--Jammer Control

	-- Landing Gear/Flaps Control Panel
	-- [447] = "%1d",	--Emergency Landing Gear Lever
	-- [448] = "%1d",	--Gear Down Lock Override Button
	-- [454] = "%.1f",	--Flaps Mode Switch
	-- [457] = "%.1f",	--Flaps Power Switch
	-- [458] = "%1d",	--Emergency Jettison Button
	-- [459] = "%.1f",	--Anti-Skid Switch
	-- [460] = "%1d",	--Flaps BIT Button
	-- [461] = "%1d",	--Landing Gear Lever
	-- [470] = "%1d",	--Landing Gear Emergency Battery Lever

	-- Combat/Water Panel
	-- [449] = "%.1f",	--H2O Mode Switch
	-- [450] = "%1d",	--CMBT Thrust Button

	-- Bulkhead Switches
	-- [501] = "%1d",	--MFS Emergency Lever
	-- [1121] = "%1d",	--Stopwatch Start/Stop
	-- [1122] = "%1d",	--Stopwatch Lap/Reset

	-- Seat
	-- [800] = "%1d",	--Seat Ground Safety Lever

	-------------------------------------------------------------------
	-- CENTER CONSOLE:
	-------------------------------------------------------------------
-- Flights Instruments Panel
	-- [364] = "%.4f",	--NAV Course Setting
	-- [653] = "%.4f",	--Barometric Pressure Calibration
	-- [350] = "%1d",	--Backup ADI Cage
	-- [351] = "%.4f",	--Backup ADI Pitch Adjust Knob

-- Miscelaneous Switch Panel
	-- [422] = "%1d",	--Video Recorder System Mode Switch
	-- [423] = "%1d",	--Video Recorder System Display Selector Switch
	-- [424] = "%1d",	--DMT Toggle On/Off
	-- [425] = "%.1f",	--Dual Processor Mode Selector Switch
	-- [426] = "%1d",	--Probe Heat Mode Switch
	-- [427] = "%.1f",	--Mission Computer Mode Switch
	-- [429] = "%1d",	--FLIR Power Switch

	-- INS Panel
	-- [421] = "%.1f",	--INS Mode Knob
	-------------------------------------------------------------------
-- LEFT CONSOLE:
-------------------------------------------------------------------
-- Trim Panel
	-- [471] = "%.1f",	--RPS/YAW Trim Switch
	-- [472] = "%.1f",	--Trim Mode Switch

-- SAAHS Panel
	-- [476] = "%1d",	--Alt Hold Switch
	-- [475] = "%1d",	--Q Feel Switch
	-- [477] = "%.1f",	--AFC Switch
	-- [478] = "%1d",	--SAS Yaw Switch"
	-- [479] = "%1d",	--SAS Roll Switch
	-- [480] = "%1d",	--SAS Pitch Switch

-- Throttle Quadrant
	-- [481] = "%1d",	--JPTL Switch
	-- [483] = "%1d",	--Rudder Trim Switch
	-- [482] = "%1d",	--EMS Button
	-- [484] = "%1d",	--Manual Fuel Switch
	-- [485] = "%.4f",	--Throttle Lever Friction Knob
	-- [486] = "%.4f",	--Nozzle Lever Friction Knob
	-- [490] = "%1d",	--Throttle Cutoff Lever
	-- [489] = "%1d",	--Parking Brake Lever
	-- [487] = "%.4f",	--Nozzle Control Lever
	-- [488] = "%.4f",	--STO Stop Lever
	--[491] = "%1d",	--Air Brake Switch

-- Fuel Panel
	-- [504] = "%1d",	--Fuel Proportioner
	-- [505] = "%.1f",	--Fuel Pump L Switch
	-- [506] = "%.1f",	--Fuel Pump R Switch
	-- [507] = "%.1f",	--Air Refueling Probe Switch
	-- [508] = "%1d",	--Fuel Dump L Switch
	-- [509] = "%1d",	--Fuel Dump R Switch"

-- External Lights Panel
	-- [472] = "%.1f",	--Landing/Taxi Lights Switch
	-- [503] = "%.1f",	--External Lights Mode Switch"
	-- [510] = "%.4f",	--Formation Lights Knob
	-- [511] = "%1d",	--Position Lights Switch
	-- [512] = "%1d",	--Anti-Collision Lights Switch
	-- [513] = "%1d",	--External Auxiliary Lights Switch

-- Pilot Service Panel
	-- [514] = "%1d",	--"Oxygen Switch
	-- [515] = "%1d",	--H2O Dump Switch
	-- [516] = "%1d",	--LIDS Switch
	-- [517] = "%1d",	--ENG RPM Switch
	-- [518] = "%1d",	--EFC Switch

-- Bulkhead Switches
	-- [502] = "%1d",	--Seat Adjustment Switch
	-- [519] = "%1d",	--Fuel Shutoff Lever
	-- [520] = "%1d",	--DECS Switch
-------------------------------------------------------------------
-- RIGHT CONSOLE:
-------------------------------------------------------------------
-- Electrical Panel
	-- [609] = "%.1f",	--DC Test Switch
	-- [610] = "%.1f",	--APU Generator Switch
	-- [611] = "%1d",	--Engine Start Switch
	-- [612] = "%.1f",	--Generator Switch
	-- [613] = "%.1f",	--Battery Switch

-- V/UHF Radio Panel
	-- [614] = "%.4f",	--V/UHF RSC Volume Knob
	-- [615] = "%.3f",	--V/UHF RSC Chan/Freq Knob
	-- [616] = "%.1f",	--V/UHF RSC Operational Mode Switch
	-- [617] = "%1d",	--V/UHF RSC Ancillary Mode Pointer
	-- [618] = "%1d",	--V/UHF RSC Ancillary Mode Switch
	-- [619] = "%.1f",	--V/UHF RSC Frequency Mode Switch
	-- [620] = "%1d",	--V/UHF RSC LOAD/OFST Switch

-- ACNIP
	-- [621] = "%1d",	--ACNIP Mode Switch
	-- [622] = "%1d",	--KY-1 Cipher Type Selector Switch
	-- [623] = "%1d",	--KY-2 Cipher Type Selector Switch
	-- [624] = "%1d",	--KY-1 Code/Mode Switch
	-- [625] = "%1d",	--KY-2 Code/Mode Switch
	-- [626] = "%1d",	--ACNIP Radio Selector Switch
	-- [627] = "%1d",	--KY-58 Codes Clear Switch
	-- [628] = "%1d",	--KY-58 Remote Codes Load Switch

-- ICS
	-- [629] = "%.4f",	--ICS Aux Volume Knob
	-- [630] = "%.4f",	--ICS Ground Volume Knob
	-- [631] = "%.1f",	--ICS Mic Operational Mode Switch

-- IFF
	-- [632] = "%1d",	--IFF Operational Mode Switch
	-- [633] = "%1d",	--IFF Crypto Mode Switch

-- Interior Lights Panel
	-- [634] = "%1d",	--Compass Light/Test Lights
	-- [635] = "%.4f",	--Instruments Lights
	-- [636] = "%.4f",	--Console Lights
	-- [637] = "%.4f",	--Flood Lights
	-- [638] = "%.4f",	--Annunciator Lights
}


-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)

end

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
	if ExportScript.Config.ExportDisplaysAV8BNA == true then
		--ENGINE DISPLAY
		
		--[253] = "%.4f",	--DUCT 1. DRUM
		--[254] = "%.4f",	--DUCT 2.
		--[255] = "%.4f",	--DUCT 3.
		
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(253) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(254) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(255) * 10)
		
		-- ExportScript.Tools.SendData(2001, digits[1]..digits[2]..digits[3])
		
		--[256] = "%.4f",	--RPM 1. DRUM
		--[257] = "%.4f",	--RPM 2.
		--[258] = "%.4f",	--RPM 3.
		--[259] = "%.4f",	--RPM 4.
		
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(256) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(257) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(258) * 10)
		-- digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(259) * 10)
		
		-- ExportScript.Tools.SendData(2002, digits[1]..digits[2]..digits[3]..digits[4])
		
		--[260] = "%.4f",	--FF 1. DRUM
		--[261] = "%.4f",	--FF 2.
		--[262] = "%.4f",	--FF 3.
		
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(260) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(261) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(262) * 10)
		
		-- ExportScript.Tools.SendData(2003, digits[1]..digits[2]..digits[3])
		
		--[263] = "%.4f",	--JPT 1. DRUM
		--[264] = "%.4f",	--JPT 2.
		--[265] = "%.4f",	--JPT 3.
		--[266] = "%.4f",	--STAB(Arrow up/down)
		
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(263) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(264) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(265) * 10)
		
		-- ExportScript.Tools.SendData(2004, digits[1]..digits[2]..digits[3])
		
		--[267] = "%.4f",	--STAB 1. Number, 2. DRUM
		--[268] = "%.4f",	--STAB 2. Number, 3. DRUM

		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(267) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(268) * 10)
		
		-- ExportScript.Tools.SendData(2005, digits[1]..digits[2])

		--[269] = "%.4f",	--H2O 1. Number
		--[270] = "%.4f",	--H2O 2. Number -----3. Number is fix !!----
		
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(269) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(270) * 10)
		
		-- ExportScript.Tools.SendData(2006, digits[1]..digits[2])

		-- Fuel Total
		-------------------------------------------------
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(366) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(367) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(368) * 10)
		-- digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(369) * 10)
		-- digits[5] = string.format("%1.0f",mainPanelDevice:get_argument_value(370) * 10)
		
		-- ExportScript.Tools.SendData(2010, digits[1]..digits[2]..digits[3]..digits[4]..digits[5])

		--[371] = "%.4f",	--LBS L 1. DRUM
		--[372] = "%.4f",	--LBS L	2.
		--[373] = "%.4f",	--LBS L 3.
		--[374] = "%.4f",	--LBS L 4.

		-- Fuel Left
		-------------------------------------------------
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(371) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(372) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(373) * 10)
		-- digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(374) * 10)
		
		-- ExportScript.Tools.SendData(2011, digits[1]..digits[2]..digits[3]..digits[4])

		--[375] = "%.4f",	--LBS R 1. DRUM 
		--[376] = "%.4f",	--LBS R	2.
		--[377] = "%.4f",	--LBS R 3.
		--[378] = "%.4f",	--LBS R 4.

		-- Fuel Right
		-------------------------------------------------
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(375) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(376) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(377) * 10)
		-- digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(378) * 10)
		
		-- ExportScript.Tools.SendData(2012, digits[1]..digits[2]..digits[3]..digits[4])

		--[381] = "%.4f",	--BINGO 1. DRUM 
		--[382] = "%.4f",	--BINGO 2.
		--[383] = "%.4f",	--BINGO 3.
		--[384] = "%.4f",	--BINGO 4.

		-- Fuel Bingo
		-------------------------------------------------
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(381) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(382) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(383) * 10)
		-- digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(384) * 10)
		
		-- ExportScript.Tools.SendData(2013, digits[1]..digits[2]..digits[3]..digits[4])
		
		--FLAP POSITION DISPLAY
		--[455] = "%.4f",	--FLAP POS 1. DRUM 
		--[456] = "%.4f",	--FLAP POS 2. DRUM
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(455) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(456) * 10)
		
		-- ExportScript.Tools.SendData(2014, digits[1]..digits[2])

		--BRAKE/HYD DISPLAY
		--[550] = "%.4f",	--BRAKE 1. DRUM 
		--[551] = "%.4f",	--BRAKE	2.
		--[552] = "%.4f",	--BRAKE 3.
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(550) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(551) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(552) * 10)
		
		-- ExportScript.Tools.SendData(2015, digits[1]..digits[2]..digits[3])
		
		--[553] = "%.4f",	--HYD1 1. DRUM 
		--[554] = "%.4f",	--HYD1 2.
		--[555] = "%.4f",	--HYD1 3.
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(553) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(554) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(555) * 10)
		
		-- ExportScript.Tools.SendData(2016, digits[1]..digits[2]..digits[3])
		
		--[556] = "%.4f",	--HYD2 1. DRUM 
		--[557] = "%.4f",	--HYD2 2.
		--[558] = "%.4f",	--HYD2 3.
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(556) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(557) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(558) * 10)
		
		-- ExportScript.Tools.SendData(2017, digits[1]..digits[2]..digits[3])

		--UPPER AMARMENT PANEL
		--[385] = "%.4f",	--MODE
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(385) * 10)

		-- if digits[1] == "0" then 
		-- 	ExportScript.Tools.SendData(2018, " - ")
		-- elseif digits[1] == "2" then 
		-- 	ExportScript.Tools.SendData(2018, "AUT")
		-- elseif digits[1] == "4" then 
		-- 	ExportScript.Tools.SendData(2018, "CP ")
		-- elseif digits[1] == "6" then 
		-- 	ExportScript.Tools.SendData(2018, "DSL")
		-- elseif digits[1] == "8" then 
		-- 	ExportScript.Tools.SendData(2018, "DR ")
		-- elseif digits[1] == "10" then 
		-- 	ExportScript.Tools.SendData(2018, "AGM") 
		-- end

		--[386] = "%.4f",	--FUZ 1. DRUM 
		--[387] = "%.4f",	--FUR 2.
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(386) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(387) * 10)
		
		-- ExportScript.Tools.SendData(2019, digits[1]..digits[2])
		
		--[392] = "%.4f",	--InVT x 10 1. DRUM 
		--[393] = "%.4f",	--InVT x 10 2.
		--[394] = "%.4f",	--InVT x 10 3.
		-- 	digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(392) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(393) * 10)
		-- digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(394) * 10)
		
		-- ExportScript.Tools.SendData(2020, digits[1]..digits[2]..digits[3])
		
		--[391] = "%.4f",	--MULT
		-- digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(391) * 10)
		
		-- ExportScript.Tools.SendData(2021, digits[1])
		
		--[389] = "%.4f",	--QTY 1. Drum 
		--[390] = "%.4f",	--QTY 2.
		-- 	digits = {}
		-- digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(389) * 10)
		-- digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(390) * 10)
		
		-- ExportScript.Tools.SendData(2022, digits[1]..digits[2])
		
		--> McMicha
		
		-- UFC Displays
		local lUfcDisplays = list_indication(5)

		local to1, to2, from1, from2, lUFC_Chnl1, lUFC_Chnl2, lUFC_Left_Position, lUFC_Right_Position, lUFC_Display = nil, nil, nil, nil, "", "", "", "", ""
		to1, to2 = lUfcDisplays:find("UFC_DISPLAY")
		if (to1 ~= nil) then
			from1, from2 = lUfcDisplays:find("ufc_chnl_1_.%c")
			if (from2 ~= nill) then
				to1, to2 = lUfcDisplays:find("%c", from2+2)
				if (to1 ~= nil) then
					lUFC_Chnl1 = lUfcDisplays:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUfcDisplays:find("ufc_chnl_2_.%c", to2)
			if (from2 ~= nill) then
				to1, to2 = lUfcDisplays:find("%c", from2+2)
				if (to1 ~= nil) then
					lUFC_Chnl2 = lUfcDisplays:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUfcDisplays:find("ufc_left_position%c", to2)
			if (from2 ~= nill) then
				to1, to2 = lUfcDisplays:find("%c", from2+2)
				if (to1 ~= nil) then
					lUFC_Left_Position = lUfcDisplays:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUfcDisplays:find("ufc_right_position%c", to2)
			if (from2 ~= nill) then
				if (from2 ~= nil) then
					lUFC_Right_Position = lUfcDisplays:sub(from2+1)
					lUFC_Right_Position = lUFC_Right_Position:gsub("%c", "")
				end
			end
		end

		local lRep = 8 - lUFC_Left_Position:len() - lUFC_Right_Position:len()

		lUFC_Display = lUFC_Left_Position..string.rep(" ", lRep)..lUFC_Right_Position

		ExportScript.Tools.SendData(2023, string.format("%s", lUFC_Chnl1)) -- string with max 2 charachters
		ExportScript.Tools.SendData(2024, string.format("%s", lUFC_Chnl2)) -- string with max 2 charachters
		ExportScript.Tools.SendData(2025, string.format("%s", lUFC_Display)) -- string with max 8 charachters

		-- ODU Display
		local lODUDisplays = list_indication(6)

		local to1, to2, from1, from2 = nil, nil, nil, nil
		local lODU_Text = {"","","","",""}
		local lODU_select = " "

		to1, to2 = lODUDisplays:find("ODU_DISPLAY")
		if (to1 ~= nil) then
			for lIndex = 1, 5, 1 do
				lODU_select = " "

				from1, from2 = lODUDisplays:find("ODU_Option_"..lIndex.."_Slc%c")
				if (from2 ~= nill) then
					to1, to2 = lODUDisplays:find("%c", from2+2)
					if (to1 ~= nil) then
						lODU_select = lODUDisplays:sub(from2+1, to1-1)
						--lODU_select = lODU_select:gsub(":", "¦")
					end
				end

				from1, from2 = lODUDisplays:find("ODU_Option_"..lIndex.."_Text%c")
				if (from2 ~= nill) then
					to1, to2 = lODUDisplays:find("%c", from2+2)
					if (to1 ~= nil) then
						lODU_Text[lIndex] = lODUDisplays:sub(from2+1, to1-1)
					end
				end

				lODU_Text[lIndex] = lODU_select..lODU_Text[lIndex]
			end -- for
		end

		ExportScript.Tools.SendData(2026, string.format("%s", lODU_Text[1]))
		ExportScript.Tools.SendData(2027, string.format("%s", lODU_Text[2]))
		ExportScript.Tools.SendData(2028, string.format("%s", lODU_Text[3]))
		ExportScript.Tools.SendData(2029, string.format("%s", lODU_Text[4]))
		ExportScript.Tools.SendData(2030, string.format("%s", lODU_Text[5]))

		-- UVHF Display
		local lUVHFDisplay = list_indication(7)

		local to1, to2, from1, from2, lUVHF_Channel, lUHF_Freq_Left, lacnip_1_label_mode, lacnip_1_mode, lacnip_1_label_code, lacnip_1_code, lacnip_2_label_mode, lacnip_2_mode, lacnip_2_label_code, lacnip_2_code = nil, nil, nil, nil, "", "", "", "", "", "", "", "", "", ""
		local lacnip_line = {"", "", "", ""}

		to1, to2 = lUVHFDisplay:find("UVHF_DISPLAY")
		if (to1 ~= nil) then
			from1, from2 = lUVHFDisplay:find("uvhf_channel%c")
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lUVHF_Channel = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUVHFDisplay:find("uvhf_freq_left%c", to2)
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lUHF_Freq_Left = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUVHFDisplay:find("acnip_1_label_mode%c", to2)
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lacnip_1_label_mode = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUVHFDisplay:find("acnip_1_mode%c", to2)
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lacnip_1_mode = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUVHFDisplay:find("acnip_1_label_code%c", to2)
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lacnip_1_label_code = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUVHFDisplay:find("acnip_1_code%c", to2)
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lacnip_1_code = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUVHFDisplay:find("acnip_2_label_mode%c", to2)
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lacnip_2_label_mode = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUVHFDisplay:find("acnip_2_mode%c", to2)
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lacnip_2_mode = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUVHFDisplay:find("acnip_2_label_code%c", to2)
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lacnip_2_label_code = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end

			from1, from2 = lUVHFDisplay:find("acnip_2_code%c", to2)
			if (from2 ~= nil) then
				to1, to2 = lUVHFDisplay:find("%c", from2+2)
				if (to1 ~= nil) then
					lacnip_2_code = lUVHFDisplay:sub(from2+1, to1-1)
				end
			end
		end

		lacnip_line[1] = lacnip_1_label_mode.."  "..lacnip_2_label_mode
		local lRep1 = 4 - lacnip_1_mode:len()
		local lRep2 = 4 - lacnip_2_mode:len()
		lacnip_line[2] = string.rep(" ", lRep1)..lacnip_1_mode.."  "..lacnip_2_mode..string.rep(" ", lRep2)
		lacnip_line[3] = lacnip_1_label_code.."  "..lacnip_2_label_code
		lRep1 = 4 - lacnip_1_code:len()
		lRep2 = 4 - lacnip_2_code:len()
		lacnip_line[4] = string.rep(" ", lRep1)..lacnip_1_code.."  "..lacnip_2_code..string.rep(" ", lRep2)

		-- string with max 2 charachters
		ExportScript.Tools.SendData(2031, string.format("%s", lUVHF_Channel))
		-- string with max 7 charachters
		ExportScript.Tools.SendData(2032, string.format("%s", lUHF_Freq_Left))
		-- string with max 10 charachters
		ExportScript.Tools.SendData(2033, string.format("%s", lacnip_line[1]))
		ExportScript.Tools.SendData(2034, string.format("%s", lacnip_line[2]))
		ExportScript.Tools.SendData(2035, string.format("%s", lacnip_line[3]))
		ExportScript.Tools.SendData(2036, string.format("%s", lacnip_line[4]))
	end
end