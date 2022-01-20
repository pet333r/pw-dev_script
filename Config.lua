-- #INFO
-- file version: 2021.01.20

-- properties
ExportScript.Config = {}

-- device 1
ExportScript.Config.Export  = true;              -- sending data
ExportScript.Config.Host    = "192.168.0.12"     -- IP for 1st app
ExportScript.Config.Port    = 5160;              -- port for sending data for all connected devices

-- device 2
ExportScript.Config.Export2 = true;             -- sending data
ExportScript.Config.Host2   = "192.168.0.14"    -- IP for 2nd app

-- device 3
ExportScript.Config.Export3 = false;            -- sending data
ExportScript.Config.Host3   = "192.168.0.16"    -- IP for 3rd app

-- device 4
ExportScript.Config.Export4 = false;            -- sending data
ExportScript.Config.Host4   = "192.168.0.18"    -- IP for 4rd app

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

-- export Displays data
ExportScript.Config.ExportDisplaysA10C      = true;      -- A-10C
ExportScript.Config.ExportDisplaysAV8BNA    = true;      -- AV8BNA (UFC, ODU, UVHF)
ExportScript.Config.ExportDisplaysF14B      = true;      -- F-14B
ExportScript.Config.ExportDisplaysF16       = true;      -- F-16C Viper (DED, CMDS, UHF)
ExportScript.Config.ExportDisplaysFA18      = true;      -- F/A-18C (UFC)
ExportScript.Config.ExportDisplaysFA18Ifei  = true;      -- F/A-18C (IFEI)
ExportScript.Config.ExportDisplaysJF17      = true;      -- JF-17 (UFC)
ExportScript.Config.ExportDisplaysM2000     = true;      -- Mirage 2000C
ExportScript.Config.ExportDisplaysKA50      = true;      -- Ka-50

-- if you don't use CDU in A-10C and you want better performance on older devices, change to false
ExportScript.Config.ExportA10C_CDU          = true;