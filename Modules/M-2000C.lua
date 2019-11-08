-- Mirage M-2000C
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
-- LAMPS / DISPLAYS --------------------------------------
	[185] = "%.1f",	--LIM, MIP, 
	[186] = "%.1f",	--IFF, MIP, Acc
	[187] = "%.1f",	--LED green, ADI
	[188] = "%.1f",	--LED green, ADI
	
-- RWR Lamps
	[229] = "%.1f",	--V
	[230] = "%.1f",	--BR
	[231] = "%.1f",	--DA
	[232] = "%.1f",	--D2M
	[233] = "%.1f",	--LL
	
-- Autopilot Controls/Indicator Lights
	[267] = "%.1f",	--button P light
	[268] = "%.1f",	--button MIS light
	[270] = "%.1f",	--button AUT light
	[271] = "%.1f",	--button MAN light
	[273] = "%.1f",	--button MAG-P light
	[274] = "%.1f",	--button MAG-MAG light
	
	[280] = "%.1f",	--button TOT light
	[281] = "%.1f",	--button PAP light
	
-- Weapon panel
	[236] = "%.1f",	--button1 S 001 light
	[238] = "%.1f",	--button2 S 001 light
	[240] = "%.1f",	--button3 S 001 light
	[242] = "%.1f",	--button4 S 001 light
	[244] = "%.1f",	--button5 S 001 light
	
	[251] = "%.1f",	--button1 S 002 light
	[252] = "%.1f",	--button1 P 002 light
	[254] = "%.1f",	--button2 S 002 light
	[255] = "%.1f",	--button2 P 002 light
	[257] = "%.1f",	--button3 S 002 light
	[258] = "%.1f",	--button3 P 002 light
	[260] = "%.1f",	--button4 S 002 light
	[261] = "%.1f",	--button4 P 002 light
	[263] = "%.1f",	--button5 S 002 light
	[264] = "%.1f",	--button5 P 002 light
	
	[246] = "%.1f",	--button KL1 light
	[247] = "%.1f",	--button KL2 light
	
	[321] = "%.1f",	--ADI ILS light
	[374] = "%.1f", --Fire light 1
	[375] = "%.1f",	--Fire light 2
	
-- AUTOPILOT lights
	[283] = "%.1f",	--P
	[284] = "%.1f",	--A
	[286] = "%.1f",	--Alt 1
	[287] = "%.1f",	--blank Alt
	[289] = "%.1f",	--Alt 2
	[290] = "%.1f",	--AFF
	[292] = "%.1f",	--blank1
	[293] = "%.1f",	--blank2
	[295] = "%.1f", --left
	[296] = "%.1f",	--blank L
	[297] = "%.1f",	--G
	[298] = "%.1f",	--blank G

-- div. lights
 	[373] = "%.1f",	--Afterburner light
	[376] = "%.1f",	--starter light
	[198] = "%.1f",	--tranfere
	[199] = "%.1f",	--master-warning 
	[200] = "%.1f",	--master-caution
-- INSTRUMENTS -------------------------------------------

-- Display Settings
	--[224] = "%.4f",	--Drum X000
	--[225] = "%.4f",	--Drum 0X00
	--[226] = "%.4f",	--Drum 00X0
	--[227] = "%.4f",	--Drum 000X

-- AUTOPILOT ALTITUDE SELECTOR: Adjust autopilot altitude hold value.	
	--[299] = "%.4f",	--Alt Drum X00
	--[300] = "%.4f",	--Alt Drum 0X0
	--[301] = "%.4f",	--Alt Drum 00X

-- BINGO FUEL SELECTOR: Adjust the value for the Bingo Fuel warning	
	[360] = "%.4f",	--Drum X0
	[361] = "%.4f",	--Drum 0X

-- ASI
	[303] = "%.4f",	--asi needle
	[304] = "%.4f",	--mach wheel

-- ALTITUDE INDICATOR: indicates barometric altitude (MSL) in feet 
	[305] = "%.4f",	--Needle
	[306] = "%.4f",	--Alt Drum X00
	[307] = "%.4f",	--Alt Drum 0X0
	[308] = "%.4f",	--Alt Drum 00X
	[310] = "%.4f",	--Pressure Drum X000
	[311] = "%.4f",	--Pressure Drum 0X00
	[312] = "%.4f",	--Pressure Drum 00X0
	[313] = "%.4f",	--Pressure Drum 000X
	
-- ADI
	[316] = "%.4f",	--pitch
	[317] = "%.4f",	--bank
	[318] = "%.4f",	--heading
	[319] = "%.1f",	--off flag
	[320] = "%.4f",	--slip ball
	[322] = "%.4f",	--ILS bar course
	[323] = "%.4f",	--ILS bar alt 
	
-- VVI
	[324] = "%.4f",	--VVI needle

-- ADI Standby	
	[327] = "%.4f",	--pitch
	[326] = "%.4f",	--bank 
	[328] = "%.4f",	--adjust / White Silhouette
	[329] = "%.1f",	--off flag

-- AOA
	[331] = "%.4f",	--needle

-- Flag black/red
	[332] = "%.1f",	--flag

-- HSI
	[333] = "%.4f",	--HDG Indicator
	[334] = "%.4f",	--Needle
	[335] = "%.4f",	--Needle small
	[336] = "%.4f",	--Drum X000
	[337] = "%.4f",	--Drum 0X00
	[338] = "%.4f",	--Drum 00X0 
	[339] = "%.4f",	--Drum 000X
	[342] = "%.4f",	--Compass rose
	[344] = "%.1f",	--HSI Flag 1
	[345] = "%.1f",	--HSI Flag 2
	[346] = "%.1f",	--HSI Flag CAP
	[341] = "%.1f",	--HSI Mode
	[343] = "%.1f",	--DME Off Flag

-- ACC indicator
	[347] = "%.4f",	--needle

-- JAUG fuel
	[349] = "%.4f",	--Drum X00
	[350] = "%.4f",	--Drum 0X0
	[351] = "%.4f",	--Drum 00X

-- DETOT fuel
	[352] = "%.4f",	--Drum X00
	[353] = "%.4f",	--Drum 0X0
	[354] = "%.4f",	--Drum 00X

-- Fuel indicator
	[358] = "%.4f",	--v-needle left
	[359] = "%.4f",	--v-needle right
	[362] = "%.1f",	--light L RL
	[363] = "%.1f",	--light C RL
	[364] = "%.1f",	--light R RL
	[365] = "%.1f",	--light L AV
	[366] = "%.1f",	--light R AV
	[367] = "%.1f",	--light L V
	[368] = "%.1f",	--light R V
	
-- ENGINE INSTRUMENTS: Indicates engine RPM and Temperature.
	[369] = "%.4f",	--N needle
	[370] = "%.4f",	--Tt7 needle
	[371] = "%.4f",	--Drum XX0
	[372] = "%.4f",	--Drum 00X

-- Center console IFF
	[377] = "%.4f",	-- X0 MODE
	[378] = "%.4f",	-- 0X

	[379] = "%.4f",	--	X000 MODE 3A
	[380] = "%.4f",	--	0X00
	[381] = "%.4f",	--	00X0
	[382] = "%.4f",	--	000X
	
	[388] = "%.1f",	--	Rote Kontrollampe MODE-4 Panel
	[394] = "%.1f",	--	gelbe „FAULT“ Anzeige

-- Pressuge
	[397] = "%.4f",	--Needle left
	[398] = "%.4f",	--Needle right
	
-- Cabin climb (x 1000 ft)
	[399] = "%.4f",	--Needle
	
-- Clock
	[401] = "%.4f",	--hours
	[402] = "%.4f",	--minutes
	[403] = "%.4f",	--seconds

-- GEARPANEL
	[405] = "%.1f",	-- 	Gearhandle Innenleuchte, rot
	[410] = "%.1f",	-- 	„A“ Warnlamp
	[411] = "%.1f",	-- 	„F“ Warnlamp
	[412] = "%.1f",	--  „DIRA“ Warnlamp, blau
	[413] = "%.1f",	-- 	„FREIN“
	[414] = "%.1f",	-- 	„Cross“
	[415] = "%.1f",	-- 	„SPAD“
	[416] = "%.1f",	-- 	Rote Warnlamp unter „BIP“
	[417] = "%.1f",	-- 	Left Gear ?, grüne Warnlampen
	[418] = "%.1f",	-- 	Nose Gear ?
	[419] = "%.1f",	-- 	Right Gear ?

-- CS indicator
	[424] = "%.4f",	-- 		1. waagerechte Balkenanzeige
	[425] = "%.4f",	-- 		2.
	[426] = "%.4f",	-- 		1. senkrechte Balkenanzeige
	[427] = "%.4f",	-- 		3. waagerechte BA
	[428] = "%.4f",	-- 		4.

-- Com
	--[436] = "%.4f",	-- 	Preset display (1-20)
	--[440] = "%.4f",	--	Drum X000 (0-9-0)  COM Panel
	--[441] = "%.4f",	--	Drum 0X00.00
	--[442] = "%.4f",	--	Drum 00X0.00
	--[443] = "%.4f",	--	Drum 000X.00
	--[444] = "%.4f",	--	Drum 0000.XX  (00-25-50-75-00)
	--[190] = "%.4f",	--	Drum X0 Preset  (0-1-2)
	--[189] = "%.4f",	--	Drum 0X Preset (0-9-0)
	[675] = "%.1f",	--	TEST Button COM Panel, red		
	[676] = "%.1f",	--	Test Button Panel over COM Panel, red
	[677] = "%.1f",	--	Left green lamp

-- Compass
	[906] = "%.4f",	--Rose
	
-- Oxygen
	[518] = "%.4f",	--Needle
	[519] = "%.1f",	--Oxy flow lamp (blue)
	
	
-- Left consule Lamps
	[490] = "%.1f",	-- „VAL”
	[492] = "%.1f",	-- „A“ Kontrolllampe  mittleres Panel
	[494] = "%.1f",	-- „DEC“ Kontrollampe
	[496] = "%.1f",	-- „VISU“
	[505] = "%.1f",	-- „PSIC“
	[510] = "%.1f",	-- „ELEC“
	[511] = "%.1f",	-- „HYD“
	[512] = "%.1f",	-- Red
	[513] = "%.1f",	-- GREEN

-- LOX
	[518] = "%.4f",	--	needle
	--[519] = "%.4f",	--	LOX flow blinker

-- WARNING PANEL
	[525] = "%.1f",	--  BATT	
	[526] = "%.1f",	--  TR	
	[527] = "%.1f",	--  ALT 1	
	[528] = "%.1f",	--  ALT2
	[529] = "%.1f",	--  HUILLE	
	[530] = "%.1f",	--  T7	
	[531] = "%.1f",	--  CALC C	
	[532] = "%.1f",	--  SOURIS	
	[533] = "%.1f",	--  PELLE
	[534] = "%.1f",	--  B.P	
	[535] = "%.1f",	--  BP.G	
	[536] = "%.1f",	--  BP.D	
	[537] = "%.1f",	--  TRANSF	
	[538] = "%.1f",	--  NIVEAU
	[539] = "%.1f",	--  HYD 1	
	[540] = "%.1f",	--  HYD 2	
	[541] = "%.1f",	--  HYD 3	
	[542] = "%.1f",	--  EP	
	[543] = "%.1f",	--  BINGO
	[544] = "%.1f",	--  P.CAB	
	[545] = "%.1f",	--  TEMP	
	[546] = "%.1f",	--  REG O2	
	[547] = "%.1f",	--  5nm O2	
	[548] = "%.1f",	--  O2 HA
	[549] = "%.1f",	--  ANEMO	
	[550] = "%.1f",	--  CC	
	[551] = "%.1f",	--  DSV	
	[552] = "%.1f",	--  CONDIT	
	[553] = "%.1f",	--  CONF
	[554] = "%.1f",	--  PA	
	[555] = "%.1f",	--  MAN	
	[556] = "%.1f",	--  DOM	
	[557] = "%.1f",	--  BECS	
	[558] = "%.1f",	--  U.S.EL
	[559] = "%.1f",	--  ZEICHEN	
	[560] = "%.1f",	--  GAIN	
	[561] = "%.1f",	--  RPM	
	[562] = "%.1f",	--  DECOL	
	[563] = "%.1f",	--  PARK.
	
-- Lamps Right Console
	[564] = "%.1f",	--	“PRET”  grüne Doppelanzeige, unten
	[565] = "%.1f",	--	„ALN“
	[566] = "%.1f",	--	„MIP“
	[567] = "%.1f",	--	„N.DEG“
	[568] = "%.1f",	--	„SEC“
	[569] = "%.1f",	--	„UNI“
	[669] = "%.1f",	--  „M01” 	 
	[670] = "%.1f",	--	„M02“
	[671] = "%.1f",	--	„M03“

	[571] = "%.1f",	--	“PREP” WL, gelb
	[573] = "%.1f",	--	“DEST” WL, gelb
	[577] = "%.1f",	--	“BAD” WL gelb/grün
	[579] = "%.1f",	--	“REC”
	[581] = "%.1f",	--	“VAL”
	[583] = "%.1f",	--	“MRC”
	[595] = "%.1f",	--	“EFF” runde Warnlampe
	[597] = "%.1f",	--	“INS” runde WL
	[668] = "%.1f",	--  “ENC” WL gelb/grün

-- VIERER ANZEIGE
	[601] = "%.4f",	--	1. Drum
	[602] = "%.4f",	--	2.
	[603] = "%.4f",	--	3.
	[604] = "%.4f",	--	4.

-- VOR ILS 
	[611] = "%.4f",	--	1. Drum
	[612] = "%.4f",	--	2.
	[613] = "%.4f",	--	3.
	[614] = "%.4f",	--	4.
	[615] = "%.4f",	--	5.

-- TACAN
	[620] = "%.1f",	--	X/Y
	[621] = "%.4f",	--	Drum XX0 left (--;1-12;--)
	[622] = "%.4f",	--	Drum 00X right	(0;1-9;0)


	[632] = "%.1f",	--	Taster mit Warnlampe “C”
	[634] = "%.1f",	--	Taster mit Warnlampe “F”

-- Panel lights
	[720] = "%.4f",	--	MIP Aufleuchte, red
	[721] = "%.4f",	--	MIP Hintergrundbeleuchtung, red
	[722] = "%.4f",	-- 	MIP Aufleuchte, weiß
	[723] = "%.4f",	--	Linke und rechte Seitenpanels Hintergrundbeleuchtung, red
	[724] = "%.4f",	--	Seitenpanels Aufleuchten, red (links, rechts)
	[726] = "%.4f",	--	Warnlampen Dimmer
	[727] = "%.4f",	--	Warnlampen Dimmer (Seitenpanels?)

}

ExportScript.ConfigArguments = 
{
	--[[
	arguments for export in low tick interval
	based on "clickabledata.lua"
	]]

-- Fuel
	[193] = "%.1f",	--Refuel Transfer Switch

-- Landing Gear
	[404] = "%.1f",	--Landing Gear Lever

-- HUD/VTB	
	[201] = "%.1f",	--HUD Power Switch
	[203] = "%.1f",	--HUD Decluter Switch
	[204] = "%.1f",	--HUD Altimeter Selector Switch
	[205] = "%.1f",	--Radar Altimeter Power Switch
	[208] = "%.1f",	--Gun AG Reticle Selector
	[209] = "%.1f",	--Gun Target Wingspan Selector
	[210] = "%.1f",	--HUD Clear Switch
	[192] = "%.4f",	--Radar Altimeter Minimum Altitude Selector
	[213] = "%.1f",	--Radar Interception Switch
	[214] = "%.1f",	--Radar N Parameter Switch
	[215] = "%.1f",	--Radar P Parameter Switch
	[216] = "%.1f",	--Radar B Parameter Switch
	[217] = "%.1f",	--Radar C Parameter Switch
	[218] = "%.1f",	--Radar Z Parameter Switch
	[219] = "%.1f",	--Radar M Parameter Switch
	[220] = "%.1f",	--Radar T Parameter Switch
	[221] = "%.1f",	--VTB Power Switch
	[222] = "%.1f",	--VTB Switch
	[223] = "%.1f",	--VTB Switch
	
-- PCA/PPA +++++++++++ HJP HBook Side 129
	[463] = "%.1f",	--Gun Arm/Safe Switch
	[234] = "%.1f",	--Master Arm Switch
	[248] = "%.1f",	--Jett Switch Cover
	[249] = "%.1f",	--Selective Jettison Switch
	[235] = "%.1f",	--PCA Button 1
	[237] = "%.1f",	--PCA Button 2
	[239] = "%.1f",	--PCA Button 3
	[241] = "%.1f",	--PCA Button 4
	[243] = "%.1f",	--PCA Button 5
	[245] = "%.1f",	--Gun Mode Selector
	[250] = "%.1f",	--Weapons Selector Button 1
	[253] = "%.1f",	--Weapons Selector Button 2
	[256] = "%.1f",	--Weapons Selector Button 3
	[259] = "%.1f",	--Weapons Selector Button 4
	[262] = "%.1f",	--Weapons Selector Button 5
	[266] = "%.1f",	--S530 Standby
	[269] = "%.1f",	--AUTO/MAN Button
	[272] = "%.1f",	--MAGIC Standby
	[279] = "%.1f",	--Cannon Fire rate/Rockets Simul Launch
	[265] = "%.1f",	--Missile Selector Switch
	[275] = "%.1f",	--PPA Test Switch
	[276] = "%.1f",	--Bomb Fuze Selector Switch
	[277] = "%.1f",	--Bomb Release Quantity Selector Switch
	[278] = "%.1f",	--Bomb Release Interval Selector Switch
	[409] = "%.1f",	--Emergency Jettison

--AFCS
	[282] = "%.1f",	--Autopilot Master
	[285] = "%.1f",	--Autopilot - Altitude Hold
	[288] = "%.1f",	--Autopilot - Selected Altitude Hold
	[294] = "%.1f",	--Autopilot - Approach Hold
	[302] = "%.1f",	--Autopilot - Lights Test
	[299] = "%.1f",	--Autopilot - Altitude Selector 10K
	[300] = "%.1f",	--Autopilot - Altitude Selector 1K
	[301] = "%.1f",	--Autopilot - Altitude Selector 1C
	[514] = "%.1f",	--Autopilot Test Cover
	[515] = "%.1f",	--Autopilot Test Switch
	[516] = "%.1f",	--FBW Test Cover
	[517] = "%.1f",	--FBW Test Switch
	
--FBW
	[330] = "%.1f",	--FBW Spin Switch
	[420] = "%.1f",	--FBW Disconnect Cover
	[421] = "%.1f",	--FBW Disconnect Switch
	[422] = "%.1f",	--FBW G Limiter Switch
	[460] = "%.1f",	--Intake slats Operation Switch
	[461] = "%.1f",	--Intake cones Operation Switch
	
-- HSI
	[340] = "%.4f",	--HSI Heading Selector
	[341] = "%.1f",	--HSI Mode Selector Switch
	
-- PELLES, SOURIES AND BECS
	[462] = "%.1f",	--Slats Operation Switch
	[395] = "%.1f",	--Hydraulic System Selector
	[396] = "%.1f",	--Pedal Adjust Lever
	
-- RADAR
	[481] = "%.1f",	--Radar Illumination Switch
	[482] = "%.1f",	--Radar Test Switch
	[483] = "%.1f",	--Radar Rearm Switch
	[484] = "%.1f",	--Radar Doppler Reject Selector
	[486] = "%.1f",	--Radar Power Switch
	[488] = "%.4f",	--Radar Gain Dial
	[491] = "%.1f",	--A/G Radar A Mode
	[493] = "%.1f",	--A/G Radar DEC Mode
	[495] = "%.1f",	--A/G Radar VISU Mode
	[499] = "%.1f",	--Radar Grid Selector
	[500] = "%.1f",	--Target Memory Time Selector
	[502] = "%.1f",	--Radar Scan Lines Selector
	[503] = "%.1f",	--Radar Range Selector
	[504] = "%.1f",	--AA Radar STT Selector
	[506] = "%.1f",	--Radar Azimuth Aperture Selector
	[598] = "%.1f",	--Radar IFF Mode Switch
	[599] = "%.1f",	--Radar IFF L/R Selector
	[600] = "%.1f",	--Radar IFF Power Switch
	[601] = "%.1f",	--Radar IFF Code-4 Selector
	[602] = "%.1f",	--Radar IFF Code-3 Selector
	[603] = "%.1f",	--Radar IFF Code-2 Selector
	[604] = "%.1f",	--Radar IFF Code-1 Selector
	[709] = "%.1f",	--Radar PRF Selector
	[710] = "%.1f",	--TDC Mode

-- ELECTRICAL PANEL
	[520] = "%.1f",	--Main Battery Switch
	[521] = "%.1f",	--Electric Power Transfer Switch
	[522] = "%.1f",	--Alternator 1 Switch
	[523] = "%.1f",	--Alternator 2 Switch
	[524] = "%.1f",	--Lights Test Switch
	[654] = "%.1f",	--Alert Network (QRA) Switch

-- PCN
	[570] = "%.1f",	--INS PREP Switch
	[572] = "%.1f",	--INS DEST Switch
	[574] = "%.1f",	--INS Parameter Selector
	[575] = "%.4f",	--Light Brightnes Control/Test
	[576] = "%.1f",	--Offset Waypoint/Target
	[578] = "%.1f",	--INS Update
	[580] = "%.1f",	--Validate Data Entry
	[582] = "%.1f",	--Mark Position
	[584] = "%.1f",	--INS Button 1
	[585] = "%.1f",	--INS Button 2
	[586] = "%.1f",	--INS Button 3
	[587] = "%.1f",	--INS Button 4
	[588] = "%.1f",	--INS Button 5
	[589] = "%.1f",	--INS Button 6
	[590] = "%.1f",	--INS Button 7
	[591] = "%.1f",	--INS Button 8
	[592] = "%.1f",	--INS Button 9
	[593] = "%.1f",	--INS Button 0
	[594] = "%.1f",	--INS Clear Button
	[596] = "%.1f",	--INS ENTER Button
	[667] = "%.1f",	--AUTO Navigation

-- PSM
	[627] = "%.1f",	--INS Mode Selector
	[629] = "%.1f",	--INS Operational Mode
	[665] = "%.1f",	--INS Auxiliary Heading/Horizon
	
-- EW PANEL
	[228] = "%.4f",	--RWR Light Brightnes Control
	[605] = "%.1f",	--EW Mode Selector Switch
	[606] = "%.1f",	--BR Switch
	[607] = "%.1f",	--RWR Switch
	[608] = "%.1f",	--D2M Switch
	[609] = "%.1f",	--LL (Jammer) Switch
	[610] = "%.1f",	--Jammer Strength
	
-- ECM BOX
	[194] = "%.1f",	--ECM Box Mode Switch
	[195] = "%.1f",	--ECM Box Switch
	[196] = "%.1f",	--ECM Box Lighs Switch
	[197] = "%.1f",	--ECM Box LCD Display Brightness

-- Panel Lights
	[449] = "%.1f",	--Police Lights
	[450] = "%.1f",	--Landing Lights
	[452] = "%.1f",	--Refuel Lights
	[453] = "%.1f",	--Anti-Collision Lights
	[454] = "%.1f",	--Navigation Lights
	[455] = "%.1f",	--Formation Lights
	[639] = "%.4f",	--Dashboard Flood Lights
	[640] = "%.4f",	--Dashboard Panel Lights
	[641] = "%.4f",	--Console Flood Lights
	[642] = "%.4f",	--Console Panel Lights
	[643] = "%.4f",	--Casution/Advisory Lights Rheostat
	[644] = "%.4f",	--White Flood Lights Knob
	[920] = "%.4f",	--Refuel Lights Brightness Knob
	
-- Engine Start Panel
	[468] = "%.1f",	--Engine In-Flight Start Switch
	[467] = "%.1f",	--Engine Shutdown Button
	[645] = "%.1f",	--Engine Start Switch Cover
	[646] = "%.1f",	--Starter Fuel Pump Switch
	[647] = "%.1f",	--Engine Fuel Left Boost Pump Switch
	[648] = "%.1f",	--Engine Fuel Right Boost Pump Switch
	[649] = "%.1f",	--Engine Start Switch
	[650] = "%.1f",	--Ventilation Selector Switch
	[651] = "%.1f",	--Fuel Cutoff Switch Cover
	[652] = "%.1f",	--Fuel Cutoff Switch
	[477] = "%.1f",	--Fuel Dump Switch Cover
	[478] = "%.1f",	--Fuel Dump Switch
	[471] = "%.1f",	--A/B Emergency Cutoff Switch Cover
	[472] = "%.1f",	--A/B Emergency Cutoff Switch
	[464] = "%.1f",	--Emergency Throttle Cover
	[465] = "%.1f",	--Emergency Throttle Handle
	[473] = "%.1f",	--Secondary Oil Control Cover
	[474] = "%.1f",	--Secondary Oil Control Switch
	[475] = "%.1f",	--Engine Emergency Control Cover
	[476] = "%.1f",	--Engine Emergency Control Switch
	
	-- Radio Panel
	[429] = "%.1f",	--UHF Power 5W/25W Switch
	[430] = "%.1f",	--UHF SIL Switch
	[431] = "%.1f",	--UHF E-A2 Switch
	[432] = "%.1f",	--UHF CDE Switch
	[433] = "%.1f",	--UHF Mode Switch
	[434] = "%.1f",	--UHF TEST Switch
	[435] = "%.1f",	--UHF Knob
	[437] = "%.1f",	--U/VHF TEST Switch
	[438] = "%.1f",	--U/VHF E+A2 Switch
	[439] = "%.1f",	--U/VHF SIL Switch
	[440] = "%.1f",	--U/VHF Select 100 MHz
	[441] = "%.1f",	--U/VHF Select 10 MHz
	[442] = "%.1f",	--U/VHF Select 1 MHz
	[443] = "%.1f",	--U/VHF Select 100 KHz
	[444] = "%.1f",	--U/VHF Select 25 KHz
	[445] = "%.1f",	--U/VHF Knob
	[446] = "%.1f",	--U/VHF Mode Switch 1
	[447] = "%.1f",	--U/VHF Power 5W/25W Switch
	[448] = "%.1f",	--U/VHF Manual/Preset

-- Navigational Antennas
	[616] = "%.1f",	--VOR/ILS Frequency Change Whole
	[617] = "%.1f",	--VOR/ILS Power Dial
	[618] = "%.1f",	--VOR/ILS Frequency Change Decimal
	[619] = "%.1f",	--VOR/ILS Test Dial
	
-- TACAN
	[623] = "%.1f",	--TACAN Channel Change Tens
	[624] = "%.1f",	--TACAN X/Y Select
	[625] = "%.1f",	--TACAN Channel Change Ones
	[626] = "%.1f",	--TACAN Mode Select
	
-- Miscelaneous Right Panel
	[657] = "%.1f",	-- Hydraulic Emergency Pump Switch

-- Miscelaneous Left Panel
	[191] = "%.1f",	--Audio Warning Reset
	
-- Miscelaneous Seat
	[900] = "%.1f",	--Seat adjustment switch
	[458] = "%.1f",	--Anti-Skid Cover
	[459] = "%.1f",	--Anti-Skid Switch
	[666] = "%.1f",	--Parking Brake Lever
	[807] = "%.1f",	--Nose Wheel Steering / IFF
	
-- Sound Panel
	[700] = "%.1f",	--AMPLIS Selector
	[701] = "%.1f",	--VOR/ILS Volume {0.0,1.0} in 0.1 steps
	[702] = "%.1f",	--TACAN Volume {0.0,1.0} in 0.1 steps
	[703] = "%.1f",	--MAGIC Tone Volume {0.0,1.0} in 0.1 steps
	[704] = "%.1f",	--TB APP Volume {0.0,1.0} in 0.1 steps
	[705] = "%.1f",	--Marker Signal Volume {0.0,1.0} in 0.1 steps
	[706] = "%.1f",	--V/UHF Radio Volume {0.0,1.0} in 0.1 steps
	[707] = "%.1f",	--VHF Radio Volume {0.0,1.0} in 0.1 steps

-- ALT
	[309] = "%.1f",	--Barometric Pressure Calibration
	[314] = "%.1f",	--ADI Cage Lever
	[315] = "%.1f",	--ADI Backlight Switch
	[325] = "%.1f",	--Backup ADI Cage
	--[328] = "%.4f",	--Backup ADI Pitch Adjust Knob {-1.0,1.0} in 0.1 steps
-- Center console IFF
	[383] = "%.1f",	--Ident Power Switch {-1.0,0.0,1.0}
	[384] = "%.1f",	--Mode-1 Switch
	[385] = "%.1f",	--Mode-2 Switch
	[386] = "%.1f",	--Mode-3A Switch
	[387] = "%.1f",	--Mode-C Switch
-- Miscelaneous Seat
	[900] = "%.1f",	--Seat Adjustment Switch
	[910] = "%.1f",	--LOX Dilution Lever
	[912] = "%.1f",	--LOX Emergency Supply
	[911] = "%.1f",	--LOX Test Switch
-- ECS Panel
	[630] = "%.1f",	--ECS Main Mode Switch
	[631] = "%.1f",	--ECS C Button
	[633] = "%.1f",	--ECS F Button
	[635] = "%.1f",	--ECS Cond Switch
	[636] = "%.1f",	--ECS Air Exchange Switch
	[637] = "%.1f",	--ECS Temperature Select Knob {-1.0,1.0} in 0.1 steps
	[638] = "%.1f",	--ECS Defog Switch
}

-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
	
	-- ECM Mode Switch
	-- [194] = "%.1f",	--ECM Box Mode Switch
	local lECM_On = (mainPanelDevice:get_argument_value(194) > 0.0 and true or false)

	-- ECM_CHF
	local lECM_CHF = ExportScript.Tools.getListIndicatorValue(3)
	if lECM_On and lECM_CHF ~= nil and lECM_CHF.text_ECM_CHF ~= nil then
		-- string with max 3 charachters
		ExportScript.Tools.SendData(2001, string.format("%s", lECM_CHF.text_ECM_CHF))
	else
		ExportScript.Tools.SendData(2001, " ")
	end

	-- ECM_FLR
	local lECM_FLR = ExportScript.Tools.getListIndicatorValue(4)
	if lECM_On and lECM_FLR ~= nil and lECM_FLR.text_ECM_FLR ~= nil then
		-- string with max 2 charachters
		ExportScript.Tools.SendData(2002, string.format("%s", lECM_FLR.text_ECM_FLR))
	else
		ExportScript.Tools.SendData(2002, " ")
	end

	-- FUEL
	local lFUEL = ExportScript.Tools.getListIndicatorValue(5)

	if lFUEL ~= nil and lFUEL.txt_fuel_g ~= nil then
		-- string with max 3 charachters
		ExportScript.Tools.SendData(2003, string.format("%s", lFUEL.txt_fuel_g))
	else
		ExportScript.Tools.SendData(2003, " ")
	end

	-- PCA_UR (Weappon Panel top line)
	local lPCAUR = list_indication(6)

	local to1, to2, from1, from2 = nil, nil, nil, nil
	local lPCA_UR = {"", "", "", "", ""}
	to1, to2 = lPCAUR:find("PCA_UR")
	if (to1 ~= nil) then
		for lIndex = 1, 5, 1 do
			from1, from2 = lPCAUR:find("text_PCA_UR"..lIndex.."%c")
			if (from2 ~= nill) then
				to1, to2 = lPCAUR:find("%c", from2+2)
				if (to1 ~= nil) then
					lPCA_UR[lIndex] = lPCAUR:sub(from2+1, to1-1)
				end
			end
		end -- for
	end

	ExportScript.Tools.SendData(2010, string.format("%s", lPCA_UR[1]))
	ExportScript.Tools.SendData(2011, string.format("%s", lPCA_UR[2]))
	ExportScript.Tools.SendData(2012, string.format("%s", lPCA_UR[3]))
	ExportScript.Tools.SendData(2013, string.format("%s", lPCA_UR[4]))
	ExportScript.Tools.SendData(2014, string.format("%s", lPCA_UR[5]))

	-- PCA_BR (Weappon Panel bottom line)
	local lPCABR = list_indication(7)

	local to1, to2, from1, from2 = nil, nil, nil, nil
	local lPCA_BR = {"", "", "", "", ""}
	to1, to2 = lPCABR:find("PCA_BR")
	if (to1 ~= nil) then
		for lIndex = 1, 5, 1 do
			from1, from2 = lPCABR:find("text_PCA_BR"..lIndex.."%c")
			if (from2 ~= nill) then
				to1, to2 = lPCABR:find("%c", from2+2)
				if (to1 ~= nil) then
					lPCA_BR[lIndex] = lPCABR:sub(from2+1, to1-1)
				end
			end
		end-- for
	end

	ExportScript.Tools.SendData(2015, string.format("%s", lPCA_BR[1]))
	ExportScript.Tools.SendData(2016, string.format("%s", lPCA_BR[2]))
	ExportScript.Tools.SendData(2017, string.format("%s", lPCA_BR[3]))
	ExportScript.Tools.SendData(2018, string.format("%s", lPCA_BR[4]))
	ExportScript.Tools.SendData(2019, string.format("%s", lPCA_BR[5]))

	-- COM
	local lCOM = list_indication(9)

	local to1, to2, from1, from2, lCOM1, lCOM2 = nil, nil, nil, nil, "", ""
	to1, to2 = lCOM:find("COM")
	if (to1 ~= nil) then
		from1, from2 = lCOM:find("text_COM_UHF1%c")
		if (from2 ~= nil) then
			to1, to2 = lCOM:find("%c", from2+2)
			if (to1 ~= nil) then
				lCOM1 = lCOM:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lCOM:find("text_COM_UHF2%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lCOM:find("%c", from2+2)
			if (to1 ~= nil) then
				lCOM2 = lCOM:sub(from2+1, to1-1)
			end
		end
	end

	ExportScript.Tools.SendData(2020, string.format("%s", lCOM1))
	ExportScript.Tools.SendData(2021, string.format("%s", lCOM2))
	
	-- PPA Bomb Display
	local lPPA = list_indication(8)

	local to1, to2, from1, from2, lPPA1, lPPA2 = nil, nil, nil, nil, "", ""
	to1, to2 = lPPA:find("PPA")
	if (to1 ~= nil) then
		from1, from2 = lPPA:find("text_PPA_QTY%c")
		if (from2 ~= nil) then
			to1, to2 = lPPA:find("%c", from2+2)
			if (to1 ~= nil) then
				lPPA1 = lPPA:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lPPA:find("text_PPA_INT%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lPPA:find("%c", from2+2)
			if (to1 ~= nil) then
				lPPA2 = lPPA:sub(from2+1, to1-1)
			end
		end
	end

	ExportScript.Tools.SendData(2022, string.format("%s", lPPA1))
	ExportScript.Tools.SendData(2023, string.format("%s", lPPA2))

	--    SubLeftTop    SubRightTop   SubLeftBottom SubRightBottom MainLeft     MainRight
	local lPCN_sub_L_T, lPCN_sub_R_T, lPCN_sub_L_B, lPCN_sub_R_B,  lPCN_main_L, lPCN_main_R = "", "", "", "", "", ""
	local lPCNUR = ExportScript.Tools.getListIndicatorValue(10)
	-- das untere durch solche aufrufe ersetzen
	if lPCNUR.text_PCN_R_INT ~= nil then
		lPCN_main_R = lPCNUR.text_PCN_R_INT
	end
	if lPCNUR.text_PCN_L_INT ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_L_INT
	end
	if lPCNUR.text_PCN_L_TR ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_L_TR
	end
	if lPCNUR.text_PCN_NORD ~= nil then
		lPCN_sub_L_T = lPCNUR.text_PCN_NORD
	end
	if lPCNUR.text_PCN_EST ~= nil then
		lPCN_sub_R_T = lPCNUR.text_PCN_EST
	end
	if lPCNUR.text_PCN_SUD ~= nil then
		lPCN_sub_L_B = lPCNUR.text_PCN_SUD
	end
	if lPCNUR.text_PCN_OUEST ~= nil then
		lPCN_sub_R_B = lPCNUR.text_PCN_OUEST
	end
	if lPCNUR.text_PCN_L_MRQ_LAT ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_L_MRQ_LAT
	end
	if lPCNUR.text_PCN_R_MRQ_LON ~= nil then
		lPCN_main_R = lPCNUR.text_PCN_R_MRQ_LON
	end
	if lPCNUR.text_PCN_PLUS_R ~= nil then
		lPCN_sub_R_T = lPCN_sub_R_T..lPCNUR.text_PCN_PLUS_R
	end
	if lPCNUR.text_PCN_PLUS_L ~= nil then
		lPCN_sub_L_T = lPCN_sub_L_T..lPCNUR.text_PCN_PLUS_L
	end
	if lPCNUR.text_PCN_MOINS_L ~= nil then
		lPCN_sub_L_B = lPCN_sub_L_B..lPCNUR.text_PCN_MOINS_L
	end
	if lPCNUR.text_PCN_MOINS_R ~= nil then
		lPCN_sub_R_B = lPCN_sub_R_B..lPCNUR.text_PCN_MOINS_R
	end
	if lPCNUR.text_PCN_L_DR ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_L_DR
	end
	if lPCNUR.text_PCN_R_DEG ~= nil then
		lPCN_main_R = lPCNUR.text_PCN_R_DEG
	end
	if lPCNUR.text_PCN_L_DEG ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_L_DEG
	end
	if lPCNUR.text_PCN_RDE ~= nil then
		lPCN_main_R = lPCNUR.text_PCN_RDE
	end
	if lPCNUR.text_PCN_LDE ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_LDE
	end
	if lPCNUR.text_PCN_L_LG ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_L_LG
	end
	if lPCNUR.text_PCN_R_LG ~= nil then
		lPCN_main_R = lPCNUR.text_PCN_R_LG
	end
	if lPCNUR.text_PCN_R_TD ~= nil then
		lPCN_main_R = lPCNUR.text_PCN_R_TD
	end
	if lPCNUR.text_PCN_L_TD ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_L_TD
	end
	if lPCNUR.text_PCN_R_ASTS ~= nil then
		lPCN_main_R = lPCNUR.text_PCN_R_ASTS
	end
	if lPCNUR.text_PCN_L_ACLASS ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_L_ACLASS
	end
	if lPCNUR.text_PCN_L_ACTMR ~= nil then
		lPCN_main_L = lPCN_main_L.."   "..lPCNUR.text_PCN_L_ACTMR
	end
	if lPCNUR.text_PCN_MSG ~= nil then
		lPCN_main_L = lPCNUR.text_PCN_MSG
	end
	
	lPCN_main_L = lPCN_main_L:gsub(":", "¦")
	lPCN_main_R = lPCN_main_R:gsub(":", "¦")
	lPCN_main_L = lPCN_main_L:sub(0, 10)
	lPCN_main_R = lPCN_main_R:sub(0, 10)
	lPCN_sub_L_T = lPCN_sub_L_T:sub(0, 2)
	lPCN_sub_R_T = lPCN_sub_R_T:sub(0, 2)
	lPCN_sub_L_B = lPCN_sub_L_B:sub(0, 2)
	lPCN_sub_R_B = lPCN_sub_R_B:sub(0, 2)

	ExportScript.Tools.SendData(2024, string.format("%s", lPCN_sub_L_T))
	ExportScript.Tools.SendData(2025, string.format("%s", lPCN_sub_R_T))
	ExportScript.Tools.SendData(2026, string.format("%s", lPCN_sub_L_B))
	ExportScript.Tools.SendData(2027, string.format("%s", lPCN_sub_R_B))
	ExportScript.Tools.SendData(2028, string.format("%s", lPCN_main_L))
	ExportScript.Tools.SendData(2029, string.format("%s", lPCN_main_R))

	-- PCN_BR (Naviagation, wahrscheinlich die Wegpunktanzeige)
	local lPCNBR = list_indication(11)

	local to1, to2, from1, from2, lPCN_BR1, lPCN_BR2 = nil, nil, nil, nil, "", ""
	to1, to2 = lPCNBR:find("PCN_BR")
	if (to1 ~= nil) then
		from1, from2 = lPCNBR:find("text_PCN_BR1%c")
		if (from2 ~= nil) then
			to1, to2 = lPCNBR:find("%c", from2+2)
			if (to1 ~= nil) then
				lPCN_BR1 = lPCNBR:sub(from2+1, to1-1)
			end
		end

		from1, from2 = lPCNBR:find("text_PCN_BR2%c", to2)
		if (from2 ~= nil) then
			to1, to2 = lPCNBR:find("%c", from2+2)
			if (to1 ~= nil) then
				lPCN_BR2 = lPCNBR:sub(from2+1, to1-1)
			end
		end
	end

	ExportScript.Tools.SendData(2030, string.format("%s", lPCN_BR1))
	ExportScript.Tools.SendData(2031, string.format("%s", lPCN_BR2))

-- Radar IFF Mode
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(601) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(602) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(603) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(604) * 10)
	
	ExportScript.Tools.SendData(2032, digits[1])
	ExportScript.Tools.SendData(2033, digits[2])
	ExportScript.Tools.SendData(2034, digits[3])
	ExportScript.Tools.SendData(2035, digits[4])

-- VOR ILS 
	digits = {}
	digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(611) * 10)
	digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(612) * 10)
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(613) * 10)
	digits[4] = string.format("%1.0f",mainPanelDevice:get_argument_value(614) * 10)
	digits[5] = string.format("%1.0f",mainPanelDevice:get_argument_value(615) * 10)

	ExportScript.Tools.SendData(2036, digits[1]..digits[2]..digits[3].."."..digits[4]..digits[5])

-- TACAN
	local lTACAN_FREQUENCE1 = {[-0.3]=" ",[-0.2]="1",[-0.1]="2",[0.0]="3",[0.1]="4",[0.2]="5",[0.3]="6",[0.4]="7",[0.5]="8",[0.6]="9",[0.7]="10",[0.8]="11",[0.9]="12",[1.0]=" "}
	digits = {}
	--digits[1] = string.format("%1.0f",mainPanelDevice:get_argument_value(620) * 10)
	--digits[2] = string.format("%1.0f",mainPanelDevice:get_argument_value(621) * 10)
	digits[1] = (mainPanelDevice:get_argument_value(620) == 0 and "X" or "Y")
	digits[2] = lTACAN_FREQUENCE1[tonumber(string.format("%0.1f",mainPanelDevice:get_argument_value(621)))]
	digits[3] = string.format("%1.0f",mainPanelDevice:get_argument_value(622) * 10)
	digits[3] = (digits[3] == "10" and "0" or digits[3])

	ExportScript.Tools.SendData(2037, digits[1]..digits[2]..digits[3])
	
-- U/VHF Com 
	ExportScript.Tools.SendData(2038, ExportScript.Tools.DisplayFormat(string.format("%1.0f",mainPanelDevice:get_argument_value(440) * 10), 1))
	ExportScript.Tools.SendData(2039, ExportScript.Tools.DisplayFormat(string.format("%1.0f",mainPanelDevice:get_argument_value(441) * 10), 1))
	ExportScript.Tools.SendData(2040, ExportScript.Tools.DisplayFormat(string.format("%1.0f",mainPanelDevice:get_argument_value(442) * 10), 1))
	ExportScript.Tools.SendData(2041, ExportScript.Tools.DisplayFormat(string.format("%1.0f",mainPanelDevice:get_argument_value(443) * 10), 1))
	local lTmpNumber = tonumber(string.format("%1.0f",mainPanelDevice:get_argument_value(444) * 100))
	if lTmpNumber == 0 then
		lTmpNumber = "00"
	end
	ExportScript.Tools.SendData(2042, ExportScript.Tools.DisplayFormat(tostring(lTmpNumber), 2))

-- U/VHF Com Preset
	--[436] = "%.4f",	-- 	Preset display (1-20)
	local lUVHF_RADIO_PRESET = {[0.00]="1",[0.10]="2",[0.15]="3",[0.20]="4",[0.25]="5",[0.30]="6",[0.35]="7",[0.40]="8",[0.45]="9",[0.50]="10",[0.55]="11",[0.60]="12",[0.65]="13",[0.70]="14",[0.75]="15",[0.80]="16",[0.85]="17",[0.90]="18",[0.95]="19",[1.00]="20"}
	ExportScript.Tools.SendData(436, ExportScript.Tools.DisplayFormat(lUVHF_RADIO_PRESET[tonumber(string.format("%1.2f",mainPanelDevice:get_argument_value(436)))], 2))
	
	local lVHF_RADIO_PRESET = {[0.0]="0",[0.1]="1",[0.2]="2",[0.3]="3",[0.4]="4",[0.5]="5",[0.6]="6",[0.7]="7",[0.8]="8",[0.9]="9",[1.0]="0"}
	local lTmpNumber = mainPanelDevice:get_argument_value(190)
	if lTmpNumber > 0.2 then
		lTmpNumber = 0.2
	end
	ExportScript.Tools.SendData(189, ExportScript.Tools.DisplayFormat(lVHF_RADIO_PRESET[tonumber(string.format("%1.1f",lTmpNumber))]..lVHF_RADIO_PRESET[tonumber(string.format("%1.1f",mainPanelDevice:get_argument_value(189)))], 2))
	
	digits = {}
	digits[1] = mainPanelDevice:get_argument_value(224) * 10
	digits[2] = mainPanelDevice:get_argument_value(225) * 10
	digits[3] = mainPanelDevice:get_argument_value(226) * 10
	digits[4] = mainPanelDevice:get_argument_value(227) * 10
	digits[1] = (digits[1] > 7 and 7 or digits[1])
	digits[2] = (digits[2] > 7 and 7 or digits[2])
	digits[3] = (digits[3] > 7 and 7 or digits[3])
	digits[4] = (digits[4] > 7 and 7 or digits[4])
	ExportScript.Tools.SendData(224, string.format("%1.0f",digits[1]))
	ExportScript.Tools.SendData(225, string.format("%1.0f",digits[2]))
	ExportScript.Tools.SendData(226, string.format("%1.0f",digits[3]))
	ExportScript.Tools.SendData(227, string.format("%1.0f",digits[4]))
	
	ExportScript.Tools.FlushData()
end