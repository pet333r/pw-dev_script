-- AJS37 Viggen

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Navigation Panel
    [200] = "%.1f",	-- Datapanel Selector
    [201] = "%1d",	-- In/Out switch
    [282] = "%.1f",	-- TILS Channel Selection
    [283] = "%1d",	-- RHM Till - Radar Altimeter Power
    [300] = "%1d",	-- Rensa Button Cover

    [209] = "%.1f",	-- Master Mode Selector
    [264] = "%.1f",	-- Weapon Selector Knob
    [265] = "%.1f",	-- Weapon Interval Selector Mode Knob

    -- left warnings
    [406] = "%1d", -- Engine Fire 1
    [407] = "%1d", -- Engine Fire 2
    [408] = "%1d", -- Fuel Distribution Low Pressure
    [409] = "%1d", -- External Fuel Tank Feed System
    [410] = "%1d", -- Fuel Pump
    [411] = "%1d", -- Landing Gear
    [412] = "%1d", -- Thrust Reverser Warning
    [413] = "%1d", -- Nose Gear
    [414] = "%1d", -- Left Gear
    [415] = "%1d", -- Right Gear
    [416] = "%1d", -- Pitch Gearing
    [417] = "%1d", -- Electrical System
    [418] = "%1d", -- Backup Hydraulic
    [419] = "%1d", -- Hydraulic System 2 Pressure
    [420] = "%1d", -- Hydraulic System 1 Pressure
    [421] = "%1d", -- Autothrottle
    [422] = "%1d", -- Thrust Reverser Inoperable
    [423] = "%1d", -- Oil Pressure

    -- right warnings
    [424] = "%1d", -- SPAK Error
    [425] = "%1d", -- Autopilot Hold
    [426] = "%1d", -- Radar Altimeter
    [427] = "%1d", -- Roll Gearing
    [428] = "%1d", -- Computer
    [429] = "%1d", -- Cabin Pressure
    [430] = "%1d", -- Ejection Seat/Canopy
    [431] = "%1d", -- Ignition System
    [432] = "%1d", -- Starter System
    [433] = "%1d", -- Manual Fuel Regulator
    [434] = "%1d", -- Oxygen
    [435] = "%1d", -- Low Fuel
    [436] = "%1d", -- Turbine Starter Fire
    [437] = "%1d", -- TILS
    [438] = "%1d", -- Navigation System
    [439] = "%1d", -- Left Countermeasures Pod Empty
    [440] = "%1d", -- Right Countermeasures Pod Empty/ECM Failure
    [441] = "%1d", -- Flares Empty
    [442] = "%1d", -- Countermeasures/RWR
    [443] = "%1d", -- Airbrakes

    -- waypoints
    [1206] = "%1d", -- DME Selector
}

PWDEV.ConfigArguments =
{
}

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    local nav = PWDEV.Tools.getListIndicatorValue(2)
    if not nav then
        return
    end
    send(2001, PWDEV.Tools.DisplayFormat(nav.data1 .. nav.data2 .. nav.data3 .. nav.data4 .. nav.data5 .. nav.data6, 6))

end
