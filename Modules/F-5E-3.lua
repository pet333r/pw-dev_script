-- F-5E-3

-- init arg 815

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	[48] = "%d",	-- AOA Indexer red
	[49] = "%d",	-- AOA Indexer green
	[50] = "%d",	-- AOA Indexer yellow

	-- IFF
	[199] = "%.1f",	-- IFF MODE 4 CODE Selector
	[200] = "%.1f",	-- IFF MASTER Control Selector
	[201] = "%d",	-- IFF MODE 4 Monitor Control Switch
	[202] = "%d",	-- M-1 /ON/OUT
	[203] = "%d",	-- M-2 /ON/OUT
	[204] = "%d",	-- M-3/A /ON/OUT
	[205] = "%d",	-- M-C /ON/OUT
	[206] = "%d",	-- IFF RAD TEST/MON Switch
	[207] = "%d",	-- IFF Identification of Position (IP) Switch
	[208] = "%d",	-- IFF MODE 4 Control Switch
	[209] = "%.1f",	-- IFF MODE 1 Code Selector Wheel 1
	[210] = "%.1f",	-- IFF MODE 1 Code Selector Wheel 2
	[211] = "%.1f",	-- IFF MODE 3/A Code Selector Wheel 1
	[212] = "%.1f",	-- IFF MODE 3/A Code Selector Wheel 2
	[213] = "%.1f",	-- IFF MODE 3/A Code Selector Wheel 3
	[214] = "%.1f",	-- IFF MODE 3/A Code Selector Wheel 4
	[216] = "%d",	-- Radiation TEST and Monitor Light
	[218] = "%d",	-- MODE 4 REPLY Light

	-- Lighting
	[225] = "%d", 	-- Bright/Dim Switch, BRT/NEUT/DIM
	[226] = "%.1f", -- Warning Test Switch
	[229] = "%.1f",	-- Beacon Light Switch

	[353] = "%d",	-- Landing & Taxi Light Switch, ON/OFF

	-- TACAN
	[256] = "%.1f",	-- TACAN Channel Selector (Tens)
	[257] = "%.1f",	-- TACAN Channel Selector (Ones)
	[261] = "%.1f",	-- TACAN Signal Volume Knob
	[262] = "%.1f",	-- TACAN Mode Selector Switch

	-- NAV
	[273] = "%.1",	-- Nav Mode Selector Switch

	-- AN/ARC-164 UHF
	[300] = "%.2f",	-- UHF Radio Preset Channel Selector Knob
	[307] = "%.1f",	-- UHF Radio Frequency Mode Selector Switch, MANUAL/PRESET/GUARD
	[308] = "%d",	-- UHF Radio Squelch Switch, ON/OFF
	[309] = "%.1f",	-- UHF Radio Volume Knob
	[311] = "%.1f",	-- UHF Radio Function Selector Switch, OFF/MAIN/BOTH/ADF
	[327] = "%.1f",	-- UHF Radio 100 MHz Frequency Selector Knob
	[328] = "%.1f",	-- UHF Radio 10 MHz Frequency Selector Knob
	[329] = "%.1f",	-- UHF Radio 1 MHz Frequency Selector Knob
	[330] = "%.1f",	-- UHF Radio 0.1 MHz Frequency Selector Knob
	[331] = "%.2f",	-- UHF Radio 0.025 MHz Frequency Selector Knob
	[336] = "%.1f",	-- UHF Radio Antenna Selector Switch, UPPER/AUTO/LOWER

	[340] = "%d",	-- Interval Switch [sec], .06/.10/.14 {-1.0, 0.0, 1.0}
	[341] = "%.1f",	-- Bombs Arm Switch, SAFE/TAIL/NOSE & TAIL/NOSE {0.0, 0.1, 0.2, 0.3}
	[342] = "%d",	-- GUNS MSL Cover 0/1
	[343] = "%d",	-- GUNS MSL CAMR / OFF / CAMR ONLY 1/0/-1
	[344] = "%.1f",	-- External Stores Selector, RIPL/BOMB/SAFE/RKT DISP {0.0,0.1,0.2,0.3}
	[346] = "%d",	-- Armament Position Selector Switch - LEFT WINGTIP, ON/OFF
	[347] = "%d",	-- Armament Position Selector Switch - LEFT OUTBD, ON/OFF
	[348] = "%d",	-- Armament Position Selector Switch - LEFT INBD, ON/OFF
	[349] = "%d",	-- Armament Position Selector Switch - CENTERLINE, ON/OFF
	[350] = "%d",	-- Armament Position Selector Switch - RIGHT INBD, ON/OFF
	[351] = "%d",	-- Armament Position Selector Switch - RIGHT OUTBD, ON/OFF
	[352] = "%d",	-- Armament Position Selector Switch - RIGHT WINGTIP, ON/OFF

	[370] = "%d", -- Cabin Press Switch Cover
	[371] = "%.1f", -- Cabin Press Switch, DEFOG ONLY/NORMAL/RAM DUMP
	[372] = "%.1f", -- Cabin Temp Switch
	[373] = "%.1f", -- Cabin Temperature Knob
	[374] = "%.1f", -- Canopy Defog Knob
	[375] = "%d", -- Pitot Anti-Ice Switch, PITOT/OFF
	[376] = "%d", -- Engine Anti-Ice Switch, ENGINE/OFF
	[377] = "%d", -- Ext Fuel Cl Switch, ON/OFF
	[378] = "%d", -- Ext Fuel Pylons Switch, ON/OFF
	[380] = "%d", -- Left Boost Pump Switch, ON/OFF
	[381] = "%d", -- Crossfeed Switch, OPEN/CLOSED
	[382] = "%d", -- Right Boost Pump Switch, ON/OFF
	[383] = "%d", -- Autobalance Switch, LEFT/NEUT/RIGHT -1 1 temp gdy crossfeed jest ustawiony

	[530] = "%d", -- L Generator Lamp
	[531] = "%d", -- Canopy Open
	[532] = "%d", -- R Generator Lamp
	[533] = "%d", -- Utility Hydr
	[534] = "%d", -- Spare 1
	[535] = "%d", -- Flight Hydr
	[536] = "%d", -- External Tanks Empty
	[537] = "%d", -- IFF
	[538] = "%d", -- Oxygen
	[539] = "%d", -- Left Flow Indicator
	[540] = "%d", -- Anti Ice
	[541] = "%d", -- Right Flow Indicator
	[542] = "%d", -- L Fuel Press
	[543] = "%d", -- Inertial Navigation System
	[544] = "%d", -- R Fuel Press
	[545] = "%d", -- AoA Flaps
	[546] = "%d", -- Air Data Computer
	[547] = "%d", -- Directional Gyroscope
	[548] = "%d", -- Spare 2
	[549] = "%d", -- DC Overload
	[550] = "%d", -- Spare 3

	-- RWS
	[552] = "%d", -- Priority
	[553] = "%d", -- Open
	[555] = "%d", -- S
	[557] = "%d", -- <>
	[558] = "%d", -- H
	[560] = "%d", -- Missile Launch (red)
	[562] = "%d", -- Low
	[563] = "%d", -- Alt
	[565] = "%d", -- Tgt Sep
	[566] = "%d", -- Tgt Sep
	[568] = "%d", -- On
	[569] = "%d", -- Sys Test
	[571] = "%d", -- U
	[572] = "%d", -- Unknown
	[574] = "%d", -- Activity Power
	[575] = "%d", -- System Power Button
	[576] = "%d", -- System Power
}
PWDEV.ConfigArguments =
{
	-- Lighting
	[221] = "%.1f", -- Flood Lights Knob
	[222] = "%.1f", -- Flight Instruments Lights Knob
	[223] = "%.1f", -- Engine Instruments Lights Knob
	[224] = "%.1f", -- Console Lights Knob
	[227] = "%.1f",	-- Nav Lights Knob
	[228] = "%.1f",	-- Formation Lights Knob

	[345] = "%.2f",	-- Missile Volume Knob - Rotate to adjust volume (Axis) {0.0, 1.0} in 0.15 Steps

	[363] = "%.1f",	-- Armament Panel Lights Knob
}

local function getTacanChannel(dev0)
	local tcn_2 = dev0:get_argument_value(263) == 0 and "0" or "1"
	local tcn_1 = string.format("%.1f", dev0:get_argument_value(264)):sub(3)
	local tcn_0 = string.format("%.1f", dev0:get_argument_value(265)):sub(3)
	local tcn_xy = dev0:get_argument_value(266) == 0 and "X" or "Y"

	return tcn_2 .. tcn_1 .. tcn_0 .. tcn_xy
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
	-- flares
	local flares = {}
	flares[1] = string.format("%.0f", mainPanelDevice:get_argument_value(405)*10)
    flares[2] = string.format("%.0f", mainPanelDevice:get_argument_value(406)*10)
	send(2011, flares[1]..flares[2])
	-- chaffs
	local chaffs = {}
	chaffs[1] = string.format("%.0f", mainPanelDevice:get_argument_value(401)*10)
	chaffs[2] = string.format("%.0f", mainPanelDevice:get_argument_value(402)*10)
	send(2012, chaffs[1]..chaffs[2])

	send(2003, getTacanChannel(mainPanelDevice))

	-- COMMS
	local comm = PWDEV.Tools.getListIndicatorValue(4) or {}

	send(2801, comm.SheetTable_Channel1)
	send(2802, comm.SheetTable_Channel2)
	send(2803, comm.SheetTable_Channel3)
	send(2804, comm.SheetTable_Channel4)
	send(2805, comm.SheetTable_Channel5)
	send(2806, comm.SheetTable_Channel6)
	send(2807, comm.SheetTable_Channel7)
	send(2808, comm.SheetTable_Channel8)
	send(2809, comm.SheetTable_Channel9)
	send(2810, comm.SheetTable_Channel10)
	send(2811, comm.SheetTable_Channel11)
	send(2812, comm.SheetTable_Channel12)
	send(2813, comm.SheetTable_Channel13)
	send(2814, comm.SheetTable_Channel14)
	send(2815, comm.SheetTable_Channel15)
	send(2816, comm.SheetTable_Channel16)
	send(2817, comm.SheetTable_Channel17)
	send(2818, comm.SheetTable_Channel18)
	send(2819, comm.SheetTable_Channel19)
	send(2820, comm.SheetTable_Channel20)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end