-- AJS37 Viggen

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Navigation Panel
    [200] = "%.1f",	-- Datapanel Selector
    [201] = "%d",	-- In/Out switch
    [282] = "%.1f",	-- TILS Channel Selection
    [283] = "%d",	-- RHM Till - Radar Altimeter Power
    [300] = "%d",	-- Rensa Button Cover

    [209] = "%.1f",	-- Master Mode Selector
    [264] = "%.1f",	-- Weapon Selector Knob
    [265] = "%.1f",	-- Weapon Interval Selector Mode Knob

    -- left warnings
    [406] = "%d", -- Engine Fire 1
    [407] = "%d", -- Engine Fire 2
    [408] = "%d", -- Fuel Distribution Low Pressure
    [409] = "%d", -- External Fuel Tank Feed System
    [410] = "%d", -- Fuel Pump
    [411] = "%d", -- Landing Gear
    [412] = "%d", -- Thrust Reverser Warning
    [413] = "%d", -- Nose Gear
    [414] = "%d", -- Left Gear
    [415] = "%d", -- Right Gear
    [416] = "%d", -- Pitch Gearing
    [417] = "%d", -- Electrical System
    [418] = "%d", -- Backup Hydraulic
    [419] = "%d", -- Hydraulic System 2 Pressure
    [420] = "%d", -- Hydraulic System 1 Pressure
    [421] = "%d", -- Autothrottle
    [422] = "%d", -- Thrust Reverser Inoperable
    [423] = "%d", -- Oil Pressure

    -- right warnings
    [424] = "%d", -- SPAK Error
    [425] = "%d", -- Autopilot Hold
    [426] = "%d", -- Radar Altimeter
    [427] = "%d", -- Roll Gearing
    [428] = "%d", -- Computer
    [429] = "%d", -- Cabin Pressure
    [430] = "%d", -- Ejection Seat/Canopy
    [431] = "%d", -- Ignition System
    [432] = "%d", -- Starter System
    [433] = "%d", -- Manual Fuel Regulator
    [434] = "%d", -- Oxygen
    [435] = "%d", -- Low Fuel
    [436] = "%d", -- Turbine Starter Fire
    [437] = "%d", -- TILS
    [438] = "%d", -- Navigation System
    [439] = "%d", -- Left Countermeasures Pod Empty
    [440] = "%d", -- Right Countermeasures Pod Empty/ECM Failure
    [441] = "%d", -- Flares Empty
    [442] = "%d", -- Countermeasures/RWR
    [443] = "%d", -- Airbrakes

    -- Radio
    [372] = "%d", -- Flight 0
    [373] = "%d", -- Flight 1
    [374] = "%d", -- Flight 2
    [375] = "%d", -- Flight 3
    [376] = "%d", -- Flight 4
    [377] = "%d", -- Flight 5
    [378] = "%d", -- Flight 6
    [379] = "%d", -- Flight 7
    [380] = "%d", -- Flight 8
    [381] = "%d", -- Flight 9
    [362] = "%d", -- Channel H
    [363] = "%d", -- Special 1
    [364] = "%d", -- Special 2
    [365] = "%d", -- Special 3
    [366] = "%d", -- Minus
    [367] = "%d", -- Channel A/G
    [368] = "%d", -- Channel B
    [369] = "%d", -- Channel C/F
    [370] = "%d", -- Channel C2
    [371] = "%d", -- Channel D/E
    [360] = "%.2f", -- FR22 Group Selector
    -- [490] = "%.2f", -- FR22 ind 1
    -- [491] = "%.2f", -- FR22 ind 2
    [492] = "%.2f", -- FR22 Base Selector

    -- Lights
    [250] = "%d", -- Anti Collision Lights
    [251] = "%d", -- Navigation Lights
    [252] = "%d", -- Formation Lights
    [253] = "%d", -- Position Lights
    [3554] = "%d", -- Taxi/Landing Lights
    [3555] = "%d", -- Emergency Lights
    [254] = "%.1f", -- Position Lights Brightness
    [391] = "%.1f", -- Radar Brightness
    [392] = "%.1f", -- Panel Lights
    [393] = "%.1f", -- Flood Lights
    [394] = "%.1f", -- Instrument Lights

    -- waypoints
    [1206] = "%d", -- DME Selector
}

PWDEV.ConfigArguments =
{
}

local radio_ind1 = {
    ["0.00"] = "-",
    ["0.01"] = "10",
    ["0.02"] = "11",
    ["0.03"] = "12",
    ["0.04"] = "13",
    ["0.05"] = "14",
    ["0.06"] = "15",
    ["0.07"] = "20",
    ["0.08"] = "21",
    ["0.09"] = "22",
    ["0.10"] = "23",
    ["0.11"] = "24",
    ["0.12"] = "25",
    ["0.13"] = "30",
    ["0.14"] = "31",
    ["0.15"] = "32",
    ["0.16"] = "33",
    ["0.17"] = "40",
    ["0.18"] = "41",
    ["0.19"] = "42",
    ["0.20"] = "43",
    ["0.21"] = "44",
    ["0.22"] = "45",
    ["0.23"] = "50",
    ["0.24"] = "51",
    ["0.25"] = "52",
    ["0.26"] = "53",
    ["0.27"] = "54",
    ["0.28"] = "55",
    ["0.29"] = "60",
    ["0.30"] = "61",
    ["0.31"] = "62",
    ["0.32"] = "63",
    ["0.33"] = "64",
    ["0.34"] = "70",
    ["0.35"] = "71",
    ["0.36"] = "72",
    ["0.37"] = "73",
    ["0.38"] = "74",
    ["0.39"] = "80",
    ["0.40"] = "81",
    ["0.41"] = "82",
    ["0.42"] = "T3",
    ["0.43"] = "-",
}

local radio_ind2 = {
    ["0.00"] = "-",
    ["0.01"] = "01",
    ["0.02"] = "02",
    ["0.03"] = "03",
    ["0.04"] = "04",
    ["0.05"] = "05",
    ["0.06"] = "ALLM",
    ["0.07"] = "06",
    ["0.08"] = "07",
    ["0.09"] = "08",
    ["0.10"] = "09",
    ["0.11"] = "10",
    ["0.12"] = "ALLM",
    ["0.13"] = "11",
    ["0.14"] = "12",
    ["0.15"] = "13",
    ["0.16"] = "14",
    ["0.17"] = "15",
    ["0.18"] = "ALLM",
    ["0.19"] = "16",
    ["0.20"] = "17",
    ["0.21"] = "18",
    ["0.22"] = "19",
    ["0.23"] = "20",
    ["0.24"] = "ALLM",
    ["0.25"] = "21",
    ["0.26"] = "22",
    ["0.27"] = "23",
    ["0.28"] = "24",
    ["0.29"] = "25",
    ["0.30"] = "ALLM",
    ["0.31"] = "26",
    ["0.32"] = "26",
    ["0.33"] = "28",
    ["0.34"] = "29",
    ["0.35"] = "30",
    ["0.36"] = "ALLM",
    ["0.37"] = "31",
    ["0.38"] = "32",
    ["0.39"] = "33",
    ["0.40"] = "34",
    ["0.41"] = "35",
    ["0.42"] = "ALLM",
    ["0.43"] = "36",
    ["0.44"] = "37",
    ["0.45"] = "38",
    ["0.46"] = "39",
    ["0.47"] = "40",
    ["0.48"] = "ALLM",
    ["0.49"] = "41",
    ["0.50"] = "42",
    ["0.51"] = "43",
    ["0.52"] = "44",
    ["0.53"] = "45",
    ["0.54"] = "ALLM",
    ["0.55"] = "46",
    ["0.56"] = "47",
    ["0.57"] = "48",
    ["0.58"] = "49",
    ["0.59"] = "50",
    ["0.60"] = "ALLM",
    ["0.61"] = "51",
    ["0.62"] = "52",
    ["0.63"] = "53",
    ["0.64"] = "54",
    ["0.65"] = "55",
    ["0.66"] = "ALLM",
    ["0.67"] = "56",
    ["0.68"] = "57",
    ["0.69"] = "58",
    ["0.70"] = "59",
    ["0.71"] = "60",
    ["0.72"] = "ALLM",
    ["0.73"] = "61",
    ["0.74"] = "62",
    ["0.75"] = "63",
    ["0.76"] = "64",
    ["0.77"] = "65",
    ["0.78"] = "ALLM",
    ["0.79"] = "66",
    ["0.80"] = "67",
    ["0.81"] = "68",
    ["0.82"] = "69",
    ["0.83"] = "T1",
    ["0.84"] = "T2",
    ["0.85"] = "-",
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    local nav = PWDEV.Tools.getListIndicatorValue(2)
    if not nav then
        return
    end
    send(2001, PWDEV.Tools.DisplayFormat(nav.data1 .. nav.data2 .. nav.data3 .. nav.data4 .. nav.data5 .. nav.data6, 6))

    local ind1 = radio_ind1[string.format("%.2f", mainPanelDevice:get_argument_value(490))]
	send(2002, ind1)
    local ind2 = radio_ind2[string.format("%.2f", mainPanelDevice:get_argument_value(491))]
	send(2003, ind2)
end
