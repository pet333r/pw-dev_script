-- properties
ExportScript.Config = {}

-- send
ExportScript.Config.Export    = true                -- sending data
ExportScript.Config.Host      = "127.0.0.1"         -- IP for 1st app
ExportScript.Config.Port      = 1625                -- port for sending data
ExportScript.Config.Separator = ":"

-- send 2
ExportScript.Config.Export2    = true                -- sending data
ExportScript.Config.Host2      = "192.168.1.3"       -- IP for 2nd app
ExportScript.Config.Port2      = 1625                -- port for sending data

-- receive
ExportScript.Config.Listener         = true         -- listen commands from apps
ExportScript.Config.ListenerPort     = 26027        -- Listener Port receiving commands

-- Other
ExportScript.Config.ExportInterval         = 0.05	-- export evry 0.05 secounds
ExportScript.Config.ExportLowTickInterval  = 0.5	-- export evry 0.5 secounds
ExportScript.Config.ExportModulePath       = lfs.writedir()..[[Scripts\pw-dev_script\Modules\]]
ExportScript.Config.FirstNewDataSend       = true
ExportScript.Config.FirstNewDataSendCount  = 100