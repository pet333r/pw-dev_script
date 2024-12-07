-- F-5E-3

-- init arg 815

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
	[48] = "%1d",	-- AOA Indexer red
	[49] = "%1d",	-- AOA Indexer green
	[50] = "%1d",	-- AOA Indexer yellow

	-- Lighting
	[225] = "%d", 	-- Bright/Dim Switch, BRT/NEUT/DIM
	[226] = "%.1f", -- Warning Test Switch
	[229] = "%.1f",	-- Beacon Light Switch
	[353] = "%.1f",	-- Landing & Taxi Light Switch, ON/OFF

	[340] = "%1d",	-- Interval Switch [sec], .06/.10/.14 {-1.0, 0.0, 1.0}
	[341] = "%.1f",	-- Bombs Arm Switch, SAFE/TAIL/NOSE & TAIL/NOSE {0.0, 0.1, 0.2, 0.3}
	[342] = "%1d",	-- GUNS MSL Cover 0/1
	[343] = "%1d",	-- GUNS MSL CAMR / OFF / CAMR ONLY 1/0/-1
	[344] = "%.1f",	-- External Stores Selector, RIPL/BOMB/SAFE/RKT DISP {0.0,0.1,0.2,0.3}
	[346] = "%1d",	-- Armament Position Selector Switch - LEFT WINGTIP, ON/OFF
	[347] = "%1d",	-- Armament Position Selector Switch - LEFT OUTBD, ON/OFF
	[348] = "%1d",	-- Armament Position Selector Switch - LEFT INBD, ON/OFF
	[349] = "%1d",	-- Armament Position Selector Switch - CENTERLINE, ON/OFF
	[350] = "%1d",	-- Armament Position Selector Switch - RIGHT INBD, ON/OFF
	[351] = "%1d",	-- Armament Position Selector Switch - RIGHT OUTBD, ON/OFF
	[352] = "%1d",	-- Armament Position Selector Switch - RIGHT WINGTIP, ON/OFF

	[530] = "%1d", -- L Generator Lamp
	[531] = "%1d", -- Canopy Open
	[532] = "%1d", -- R Generator Lamp
	[533] = "%1d", -- Utility Hydr
	[534] = "%1d", -- Spare 1
	[535] = "%1d", -- Flight Hydr
	[536] = "%1d", -- External Tanks Empty
	[537] = "%1d", -- IFF
	[538] = "%1d", -- Oxygen
	[539] = "%1d", -- Left Flow Indicator
	[540] = "%1d", -- Anti Ice
	[541] = "%1d", -- Right Flow Indicator
	[542] = "%1d", -- L Fuel Press
	[543] = "%1d", -- Inertial Navigation System
	[544] = "%1d", -- R Fuel Press
	[545] = "%1d", -- AoA Flaps
	[546] = "%1d", -- Air Data Computer
	[547] = "%1d", -- Directional Gyroscope
	[548] = "%1d", -- Spare 2
	[549] = "%1d", -- DC Overload
	[550] = "%1d", -- Spare 3

	-- RWS
	[552] = "%1d", -- Priority
	[553] = "%1d", -- Open
	[555] = "%1d", -- S
	[557] = "%1d", -- <>
	[558] = "%1d", -- H
	[560] = "%1d", -- Missile Launch (red)
	[562] = "%1d", -- Low
	[563] = "%1d", -- Alt
	[565] = "%1d", -- Tgt Sep
	[566] = "%1d", -- Tgt Sep
	[568] = "%1d", -- On
	[569] = "%1d", -- Sys Test
	[571] = "%1d", -- U
	[572] = "%1d", -- Unknown
	[574] = "%1d", -- Activity Power
	[575] = "%1d", -- System Power Button
	[576] = "%1d", -- System Power
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
}

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
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
end