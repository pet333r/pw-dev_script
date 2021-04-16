-- properties
ExportScript.Config = {}

-- device 1
ExportScript.Config.Export      = true              -- sending data
ExportScript.Config.Export1SD   = false             -- sendind data from SD
ExportScript.Config.Export1Nav  = true              -- true if you want to show position on map on this device
ExportScript.Config.Host        = "192.168.0.12"    -- IP for 1st app
ExportScript.Config.Port        = 5160              -- port for sending data

-- device 2
ExportScript.Config.Export2     = true              -- sending data
ExportScript.Config.Export2SD   = false             -- sendind data from SD
ExportScript.Config.Export2Nav  = true              -- true if you want to show position on map on this device
ExportScript.Config.Host2       = "192.168.0.14"    -- IP for 2nd app
ExportScript.Config.Port2       = 5160              -- port for sending data

-- device 3
ExportScript.Config.Export3     = true              -- sending data
ExportScript.Config.Export3SD   = false             -- sendind data from SD
ExportScript.Config.Export3Nav  = true              -- true if you want to show position on map on this device
ExportScript.Config.Host3       = "192.168.0.16"    -- IP for 3rd app
ExportScript.Config.Port3       = 5160              -- port for sending data

-- device 4
ExportScript.Config.Export4     = true              -- sending data
ExportScript.Config.Export4SD   = false             -- sendind data from SD
ExportScript.Config.Export4Nav  = true              -- true if you want to show position on map on this device
ExportScript.Config.Host4       = "127.0.0.1"       -- IP for 4rd app
ExportScript.Config.Port4       = 5160              -- port for sending data

-- receive commands from external apps
ExportScript.Config.Listener         = true         -- listen commands from apps
ExportScript.Config.ListenerPort     = 25070        -- Listener Port receiving commands

-- data separator (do not change)
ExportScript.Config.Separator = ";"

-- Other
ExportScript.Config.ExportInterval          = 0.05	-- export every 0.05 seconds
ExportScript.Config.ExportLowTickInterval   = 0.1	-- export every 0.x seconds
ExportScript.Config.ExportModulePath        = lfs.writedir()..[[Scripts\pw-dev_script\Modules\]]
ExportScript.Config.FirstNewDataSend        = true
ExportScript.Config.FirstNewDataSendCount   = 100

-- Navigation data
ExportScript.Config.ExportNavData           = true      -- true if you want to export navigation data to show position on map
-- default: 5 (ex. 0 = 10fps / 5 = 2fps / 10 = 1fps)
-- if your device is fast enough, you can lower this value to get smoother map performance
ExportScript.Config.ExportNavLow            = 5         -- ExportLowTickInterval multiplier
ExportScript.Config.ExportNavAllLow         = 10        -- don't change this (10)

-- data export ( change to true if You are using DCS AoA Indexer )
ExportScript.Config.ExportSelfData          = false     -- export SelfData (Lat, Lon, Alt etc.) every LowTickInterval
ExportScript.Config.ExportTWS               = false     -- Threats from FC3

-- export Displays data
ExportScript.Config.ExportDisplaysA10C      = true      -- A-10C
ExportScript.Config.ExportDisplaysAV8BNA    = true      -- AV8BNA (UFC, ODU, UVHF)
ExportScript.Config.ExportDisplaysF14B      = true      -- F-14B
ExportScript.Config.ExportDisplaysF16       = true      -- F-16C Viper (DED, CMDS, UHF)
ExportScript.Config.ExportDisplaysFA18      = true      -- F/A-18C (UFC)
ExportScript.Config.ExportDisplaysFA18Ifei  = true      -- F/A-18C (IFEI)
ExportScript.Config.ExportDisplaysJF17      = true      -- JF-17 (UFC)
ExportScript.Config.ExportDisplaysM2000     = true      -- Mirage 2000C
ExportScript.Config.ExportDisplaysKA50      = true      -- Ka-50

-- if you don't use CDU in A-10C and you want better performance on older devices, change to false
ExportScript.Config.ExportA10C_CDU          = true