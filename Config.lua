-- INFO
-- file version: 2023.01.20

--[[ IMPORTANT
    - Do not enter the same IP address multiple times
    - If you use, for ex. one device, you can leave others IP by default (there is no need to change them)
]]

-- properties
ExportScript.Config = {}

ExportScript.Config.MultiAppDevice = false;      -- true: if you want to use several apps on the same device at the same time

-- device 1
ExportScript.Config.Export  = true;             -- sending data
ExportScript.Config.Host    = "192.168.0.11"    -- IP for 1st app
ExportScript.Config.Port    = 5160;             -- port for sending data for all connected devices

-- device 2
ExportScript.Config.Export2 = true;             -- sending data
ExportScript.Config.Host2   = "192.168.0.12"    -- IP for 2nd app

-- device 3
ExportScript.Config.Export3 = false;             -- sending data
ExportScript.Config.Host3   = "192.168.0.13"    -- IP for 3rd app

-- device 4
ExportScript.Config.Export4 = false;             -- sending data
ExportScript.Config.Host4   = "192.168.0.14"    -- IP for 4th app

-- device 5
ExportScript.Config.Export5 = false;             -- sending data
ExportScript.Config.Host5   = "192.168.0.15"    -- IP for 5th app

-- device 6
ExportScript.Config.Export6 = false;             -- sending data
ExportScript.Config.Host6   = "192.168.0.16"    -- IP for 6th app

-- device 7
ExportScript.Config.Export7 = false;             -- sending data
ExportScript.Config.Host7   = "192.168.0.17"    -- IP for 7th app

-- device 8
ExportScript.Config.Export8 = false;             -- sending data
ExportScript.Config.Host8   = "192.168.0.18"    -- IP for 8th app

-- StreamDeck
ExportScript.Config.StreamDeckExport = false;       -- sending data to StreamDeck
ExportScript.Config.StreamDeckHost = "127.0.0.1"    -- local IP (default: 127.0.0.1)
ExportScript.Config.StreamDeckPort = 1725;
ExportScript.Config.StreamDeckSeparator = ":"

-- receive commands from external apps
ExportScript.Config.Listener     = true;        -- listen commands from apps
ExportScript.Config.ListenerPort = 25070;       -- Listener Port receiving commands

ExportScript.Config.WriteNavFile = false;       -- saving flight telemetry to CSV and KML files (Logs folder)

-- data separator (do not change)
ExportScript.Config.Separator = ";"

-- for DCS Nav
ExportScript.Config.MapPlayerDiv        = 1.0      -- refreshing the user's position on the map (less = more often) range: 0.1 - 1.0
ExportScript.Config.MapMissileDiv       = 1.0      -- refreshing the missile position on the map (less = more often) range: 0.1 - 1.0
ExportScript.Config.MapMapPlanesDiv     = 1.0      -- refreshing the planes/heli's position on the map (less = more often) range: 0.1 - 1.0

-- Other
ExportScript.Config.ExportInterval          = 0.05;	-- export every 0.xx seconds (def: 0.05)
ExportScript.Config.ExportLowTickInterval   = 0.1;	-- export every 0.x seconds (def: 0.1)
ExportScript.Config.ExportModulePath        = lfs.writedir()..[[Scripts\pw-dev_script\Modules\]]
ExportScript.Config.FirstNewDataSend        = true;
ExportScript.Config.FirstNewDataSendCount   = 100;

-- Navigation data
ExportScript.Config.ExportNavData           = true;      -- true if you want to export navigation data to show position on map
ExportScript.Config.ExportNavAllData        = true;      -- true if you want to show other objects on map

-- if your device is fast enough, you can lower this value to get smoother map performance
ExportScript.Config.ExportNavLow            = 5;         -- ExportLowTickInterval multiplier
ExportScript.Config.ExportNavAllLow         = 20;        --