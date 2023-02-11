if (PWDEV == nil) then
    PWDEV = {}
end

PWDEV.Utils = {}

do
    PWDEV.Properties = {}

    PWDEV.Properties.MultiAppDevice = false

    PWDEV.Properties.Export1 = false
    PWDEV.Properties.Host1   = ""
    PWDEV.Properties.Port    = 0

    PWDEV.Properties.Export2 = false
    PWDEV.Properties.Host2   = ""

    PWDEV.Properties.Export3 = false
    PWDEV.Properties.Host3   = ""

    PWDEV.Properties.Export4 = false
    PWDEV.Properties.Host4   = ""

    PWDEV.Properties.StreamDeckExport = false
    PWDEV.Properties.StreamDeckHost = ""
    PWDEV.Properties.StreamDeckPort = 0
    PWDEV.Properties.StreamDeckSeparator = ""

    PWDEV.Properties.Listener     = false
    PWDEV.Properties.ListenerPort = 0

    PWDEV.Properties.WriteNavFile = false

    PWDEV.Properties.Separator = ";"

    PWDEV.Properties.MapPlayerDiv        = 1.0
    PWDEV.Properties.MapMissileDiv       = 1.0
    PWDEV.Properties.MapMapPlanesDiv     = 1.0

    PWDEV.Properties.ExportInterval          = 0.05
    PWDEV.Properties.ExportLowTickInterval   = 0.1
    PWDEV.Properties.ExportModulePath        = ""
    PWDEV.Properties.FirstNewDataSend        = 0.05
    PWDEV.Properties.FirstNewDataSendCount   = 0

    PWDEV.Properties.ExportNavData           = false
    PWDEV.Properties.ExportNavAllData        = false

    PWDEV.Properties.ExportNavLow            = 0
    PWDEV.Properties.ExportNavAllLow         = 0
end

function PWDEV.Utils.SetOld()
    PWDEV.Properties.MultiAppDevice         = ExportScript.Config.MultiAppDevice
    PWDEV.Properties.Export1                = ExportScript.Config.Export
    PWDEV.Properties.Host1                  = ExportScript.Config.Host
    PWDEV.Properties.Port                   = ExportScript.Config.Port
    PWDEV.Properties.Export2                = ExportScript.Config.Export2
    PWDEV.Properties.Host2                  = ExportScript.Config.Host2
    PWDEV.Properties.Export3                = ExportScript.Config.Export3
    PWDEV.Properties.Host3                  = ExportScript.Config.Host3
    PWDEV.Properties.Export4                = ExportScript.Config.Export4
    PWDEV.Properties.Host4                  = ExportScript.Config.Host4
    PWDEV.Properties.StreamDeckExport       = ExportScript.Config.StreamDeckExport
    PWDEV.Properties.StreamDeckHost         = ExportScript.Config.StreamDeckHost
    PWDEV.Properties.StreamDeckPort         = ExportScript.Config.StreamDeckPort
    PWDEV.Properties.StreamDeckSeparator    = ExportScript.Config.StreamDeckSeparator
    PWDEV.Properties.Listener               = ExportScript.Config.Listener
    PWDEV.Properties.ListenerPort           = ExportScript.Config.ListenerPort
    PWDEV.Properties.WriteNavFile           = ExportScript.Config.WriteNavFile
    PWDEV.Properties.Separator              = ExportScript.Config.Separator
    PWDEV.Properties.MapPlayerDiv           = ExportScript.Config.MapPlayerDiv
    PWDEV.Properties.MapMissileDiv          = ExportScript.Config.MapMissileDiv
    PWDEV.Properties.MapMapPlanesDiv        = ExportScript.Config.MapMapPlanesDiv
    PWDEV.Properties.ExportInterval         = ExportScript.Config.ExportInterval
    PWDEV.Properties.ExportLowTickInterval  = ExportScript.Config.ExportLowTickInterval
    PWDEV.Properties.ExportModulePath       = ExportScript.Config.ExportModulePath
    PWDEV.Properties.FirstNewDataSend       = ExportScript.Config.FirstNewDataSend
    PWDEV.Properties.FirstNewDataSendCount  = ExportScript.Config.FirstNewDataSendCount
    PWDEV.Properties.ExportNavData          = ExportScript.Config.ExportNavData
    PWDEV.Properties.ExportNavAllData       = ExportScript.Config.ExportNavAllData
    PWDEV.Properties.ExportNavLow           = ExportScript.Config.ExportNavLow
    PWDEV.Properties.ExportNavAllLow        = ExportScript.Config.ExportNavAllLow
end

function PWDEV.Utils.SetNew()
    PWDEV.Properties.MultiAppDevice         = PWDEV.Config.MultiAppDevice
    PWDEV.Properties.Export1                = PWDEV.Config.Export1
    PWDEV.Properties.Host1                  = PWDEV.Config.Host1
    PWDEV.Properties.Port                   = PWDEV.Config.Port
    PWDEV.Properties.Export2                = PWDEV.Config.Export2
    PWDEV.Properties.Host2                  = PWDEV.Config.Host2
    PWDEV.Properties.Export3                = PWDEV.Config.Export3
    PWDEV.Properties.Host3                  = PWDEV.Config.Host3
    PWDEV.Properties.Export4                = PWDEV.Config.Export4
    PWDEV.Properties.Host4                  = PWDEV.Config.Host4
    PWDEV.Properties.StreamDeckExport       = PWDEV.Config.StreamDeckExport
    PWDEV.Properties.StreamDeckHost         = PWDEV.Config.StreamDeckHost
    PWDEV.Properties.StreamDeckPort         = PWDEV.Config.StreamDeckPort
    PWDEV.Properties.StreamDeckSeparator    = PWDEV.Config.StreamDeckSeparator
    PWDEV.Properties.Listener               = PWDEV.Config.Listener
    PWDEV.Properties.ListenerPort           = PWDEV.Config.ListenerPort
    PWDEV.Properties.WriteNavFile           = PWDEV.Config.WriteNavFile
    PWDEV.Properties.Separator              = PWDEV.Config.Separator
    PWDEV.Properties.MapPlayerDiv           = PWDEV.Config.MapPlayerDiv
    PWDEV.Properties.MapMissileDiv          = PWDEV.Config.MapMissileDiv
    PWDEV.Properties.MapMapPlanesDiv        = PWDEV.Config.MapMapPlanesDiv
    PWDEV.Properties.ExportInterval         = PWDEV.Config.ExportInterval
    PWDEV.Properties.ExportLowTickInterval  = PWDEV.Config.ExportLowTickInterval
    PWDEV.Properties.ExportModulePath       = PWDEV.Config.ExportModulePath
    PWDEV.Properties.FirstNewDataSend       = PWDEV.Config.FirstNewDataSend
    PWDEV.Properties.FirstNewDataSendCount  = PWDEV.Config.FirstNewDataSendCount
    PWDEV.Properties.ExportNavData          = PWDEV.Config.ExportNavData
    PWDEV.Properties.ExportNavAllData       = PWDEV.Config.ExportNavAllData
    PWDEV.Properties.ExportNavLow           = PWDEV.Config.ExportNavLow
    PWDEV.Properties.ExportNavAllLow        = PWDEV.Config.ExportNavAllLow
end

function PWDEV.Utils.CheckConfigFile()
    if (PWDEV.Config ~= nil) then
        PWDEV.Utils.SetNew()
    elseif (PWDEV.Config == nil) then
        if (ExportScript == nil) then
            ExportScript = {}
        end

        if (ExportScript.Config ~= nil) then

            PWDEV.Utils.SetOld()
        end
    end
end

PWDEV.Utils.CheckConfigFile()