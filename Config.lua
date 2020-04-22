-- properties
ExportScript.Config = {}

-- send (PC)
ExportScript.Config.Export    = true                -- sending data
ExportScript.Config.Host      = "127.0.0.1"         -- IP for 1st app
ExportScript.Config.Port      = 5160                -- port for sending data
ExportScript.Config.Separator = ";"

-- send 2 (tablet)
ExportScript.Config.Export2    = true                -- sending data
ExportScript.Config.Host2      = "192.168.1.4"       -- IP for 2nd app
ExportScript.Config.Port2      = 5160                -- port for sending data

-- send 3 (phone)
ExportScript.Config.Export3    = true                -- sending data
ExportScript.Config.Host3      = "192.168.1.3"       -- IP for 3rd app
ExportScript.Config.Port3      = 5160                -- port for sending data

-- receive commands from external apps
ExportScript.Config.Listener         = true         -- listen commands from apps
ExportScript.Config.ListenerPort     = 25070        -- Listener Port receiving commands

-- Other
ExportScript.Config.ExportInterval         = 0.05	-- export every 0.05 seconds
ExportScript.Config.ExportLowTickInterval  = 0.1	-- export every 0.x seconds
ExportScript.Config.ExportModulePath       = lfs.writedir()..[[Scripts\pw-dev_script\Modules\]]
ExportScript.Config.FirstNewDataSend       = true
ExportScript.Config.FirstNewDataSendCount  = 100

-- data export ( change to true if You are using DCS AoA Indexer )
ExportScript.Config.ExportSelfData          = false     -- export SelfData (Lat, Lon, Alt etc.) every LowTickInterval
-- export Displays data
ExportScript.Config.ExportDisplaysAV8BNA    = true      -- AV8BNA (UFC, ODU, UVHF)
ExportScript.Config.ExportDisplaysF16       = true      -- F-16C Viper (DED, CMDS, UHF)
ExportScript.Config.ExportDisplaysFA18      = true      -- F/A-18C (UFC)
ExportScript.Config.ExportTWS               = true      -- Threats from FC3