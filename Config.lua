-- properties
ExportScript.Config = {}

-- send (PC)
ExportScript.Config.Export    = true                -- sending data
ExportScript.Config.Host      = "127.0.0.1"         -- IP for 1st app
ExportScript.Config.Port      = 5160                -- port for sending data
ExportScript.Config.Separator = ":"

-- send 2 (tablet)
ExportScript.Config.Export2    = true                -- sending data
ExportScript.Config.Host2      = "192.168.1.4"       -- IP for 2nd app
ExportScript.Config.Port2      = 5160                -- port for sending data

-- send 3 (phone)
ExportScript.Config.Export3    = true                -- sending data
ExportScript.Config.Host3      = "192.168.1.5"       -- IP for 3rd app
ExportScript.Config.Port3      = 5160                -- port for sending data

-- receive commands from external apps
ExportScript.Config.Listener         = true         -- listen commands from apps
ExportScript.Config.ListenerPort     = 25070        -- Listener Port receiving commands

-- Other
ExportScript.Config.ExportInterval         = 0.05	-- export every 0.05 secounds
ExportScript.Config.ExportLowTickInterval  = 0.5	-- export every 0.5 secounds
ExportScript.Config.ExportModulePath       = lfs.writedir()..[[Scripts\pw-dev_script\Modules\]]
ExportScript.Config.FirstNewDataSend       = true
ExportScript.Config.FirstNewDataSendCount  = 100

-- data export
ExportScript.Config.ExportSelfData  = false     -- export SelfData (Lat, Lon, Alt etc.) every LowTickInterval
ExportScript.Config.ExportDed       = true      -- export Data Entry Display data from F-16C Viper