-- INFO
-- file version: 2024.12.06

--[[ IMPORTANT
    - Do not enter the same IP address multiple times
    - If you use, for ex. one device, you can leave others IP by default (there is no need to change them)
]]

PWDEV.Config = {}

PWDEV.Config.FileVersion = "2024.12.06"

PWDEV.Config.Port = 5160;              -- port for sending data for all connected devices

PWDEV.Config.Device = {}

-- device 1
PWDEV.Config.Device[1] = {}
PWDEV.Config.Device[1].Export = true;              -- sending data
PWDEV.Config.Device[1].Host = "192.168.0.12"     -- IP for 1st app

-- device 2
PWDEV.Config.Device[2] = {}
PWDEV.Config.Device[2].Export = false;             -- sending data
PWDEV.Config.Device[2].Host = "192.168.0.14"    -- IP for 2nd app

-- device 3
PWDEV.Config.Device[3] = {}
PWDEV.Config.Device[3].Export = false;            -- sending data
PWDEV.Config.Device[3].Host = "192.168.0.16"    -- IP for 3rd app

-- device 4
PWDEV.Config.Device[4] = {}
PWDEV.Config.Device[4].Export = false;            -- sending data
PWDEV.Config.Device[4].Host = "192.168.0.18"    -- IP for 4rd app

-- StreamDeck
PWDEV.Config.StreamDeckExport = false;       -- sending data to StreamDeck
PWDEV.Config.StreamDeckHost = "127.0.0.1"    -- local IP (default: 127.0.0.1)
PWDEV.Config.StreamDeckPort = 1725;
PWDEV.Config.StreamDeckSeparator = ":"

-- receive commands from external apps
PWDEV.Config.Listener     = true;        -- listen commands from apps
PWDEV.Config.ListenerPort = 25070;       -- Listener Port receiving commands

-- data separator (do not change)
PWDEV.Config.Separator = ";"

-- Other
PWDEV.Config.ExportInterval          = 0.05;	-- export every 0.xx seconds (def: 0.05)
PWDEV.Config.ExportLowTickInterval   = 0.1;	-- export every 0.x seconds (def: 0.1)
PWDEV.Config.ExportModulePath        = lfs.writedir()..[[Scripts\pw-dev_script\Modules\]]
PWDEV.Config.FirstNewDataSend        = true;
PWDEV.Config.FirstNewDataSendCount   = 100;