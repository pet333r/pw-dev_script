local HOOK_VERSION = "2024.04.11"

local VersionId = "NA"

-- const
local MS_2_KNOTS  = 1.94384449
local MS_2_FPM    = 196.85
local M_2_FEETS   = 3.2808399
local RAD_2_DEG   = 57.296

Fdr = {}

local telemetryFolder = lfs.writedir() .. [[Logs\telemetry\]]
lfs.mkdir(telemetryFolder)
local pathCsv = telemetryFolder
local pathKml = telemetryFolder

local WRITE_NAV_FILE = false
local WRITE_CSV_FILE = true
local WRITE_KML_FILE = true

function Fdr.GetDateTime()
    local date_table = os.date("*t")
	local hour, minute, second = date_table.hour, date_table.min, date_table.sec
	local year, month, day = date_table.year, date_table.month, date_table.day
	local dateResult = string.format("%d-%02d-%02d %02d.%02d.%02d", year, month, day, hour, minute, second)
    return dateResult
end

function Fdr.CsvFileInit()
    local datetime = Fdr.GetDateTime()

    if (WRITE_CSV_FILE) then
        local fileCsv = pathCsv .. datetime .. " " .. Export.LoGetSelfData().Name .. ".csv"
        Fdr.csvFile = io.open(fileCsv, "w+")
        if Fdr.csvFile then
            Fdr.csvFile:write('\239\187\191') -- create a UTF-8 BOM
        end
    end
end

function Fdr.CsvFileWrite(packet)
    if (WRITE_CSV_FILE) then
        if Fdr.csvFile then
            Fdr.csvFile:write(packet)
        end
    end
end

function Fdr.CsvFileEnd()
    if (WRITE_CSV_FILE) then
        if Fdr.csvFile then
            Fdr.csvFile:flush()
            Fdr.csvFile:close()
            Fdr.csvFile = nil
        end
    end
end

function Fdr.NavFileInit(version)
    local datetime = Fdr.GetDateTime()

    if (WRITE_KML_FILE) then
        local fileKml = pathKml .. datetime .. " " .. Export.LoGetSelfData().Name .. ".kml"
        Fdr.kmlFile = io.open(fileKml, "w+") -- "W+"

        if Fdr.kmlFile then
            Fdr.kmlFile:write('\239\187\191') -- create a UTF-8 BOM
            Fdr.kmlFile:write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
            Fdr.kmlFile:write("<kml xmlns=\"http://www.opengis.net/kml/2.2\">\n")
            Fdr.kmlFile:write("  <Document>\n")
            Fdr.kmlFile:write("    <Style id=\"StyleLineKML\">\n")
            Fdr.kmlFile:write("      <LineStyle id=\"lineStyle\">\n")
            Fdr.kmlFile:write("        <color>a032cfcb</color>\n")
            Fdr.kmlFile:write("        <width>2</width>\n")
            Fdr.kmlFile:write("      </LineStyle>\n")
            Fdr.kmlFile:write("      <PolyStyle>\n")
            Fdr.kmlFile:write("        <color>5046d774</color>\n")
            Fdr.kmlFile:write("      </PolyStyle>\n")
            Fdr.kmlFile:write("    </Style>\n")
            Fdr.kmlFile:write("    <Placemark>\n")
            Fdr.kmlFile:write("      <description>Flight recorded in DCS World " .. version .. " @ " .. datetime .. "</description>\n")
            Fdr.kmlFile:write("      <styleUrl>#StyleLineKML</styleUrl>\n")
            Fdr.kmlFile:write("      <LineString>\n")
            Fdr.kmlFile:write("        <extrude>true</extrude>\n")
            Fdr.kmlFile:write("        <tessellate>true</tessellate>\n")
            Fdr.kmlFile:write("        <altitudeMode>absolute</altitudeMode>\n")
            Fdr.kmlFile:write("        <coordinates>")
        end
    end
end

function Fdr.NavFileWrite(packet)
    if (WRITE_KML_FILE) then
        if Fdr.kmlFile then
            Fdr.kmlFile:write(packet)
        end
    end
end

function Fdr.NavFileEnd()
    if (WRITE_KML_FILE) then
        if Fdr.kmlFile then
            Fdr.kmlFile:write("        </coordinates>\n")
            Fdr.kmlFile:write("      </LineString>\n")
            Fdr.kmlFile:write("    </Placemark>\n")
            Fdr.kmlFile:write("  </Document>\n")
            Fdr.kmlFile:write("</kml>\n")
            Fdr.kmlFile:flush()
            Fdr.kmlFile:close()
            Fdr.kmlFile = nil
        end
    end
end

local playerId = ""
local theatre = "NA"

local timer = 0
local prevTimer = 0
local prevTimerPlayer = 0
local prevTimerAir = 0
local prevTimerGnd = 0
local prevTimerNavy = 0
local prevTimerWea = 0

local function setDefaultTimer(value)
    prevTimer = value
    prevTimerPlayer = value
    prevTimerAir = value
    prevTimerGnd = value
    prevTimerNavy = value
    prevTimerWea = value
end


local ModuleName = "NA"

local selfData = {}
selfData.Name = "NA"
selfData.CoalitionID = 0

local PlayerData = {}
PlayerData.Lat = 0.0
PlayerData.Lon = 0.0
PlayerData.MechGearNose = 0.0
PlayerData.MechGearLeft = 0.0
PlayerData.MechGearRigh = 0.0
PlayerData.MechAirBrakeLeft = 0.0
PlayerData.MechAirBrakeRigh = 0.0
PlayerData.MechRefueling = 0.0
PlayerData.MechHook = 0.0
PlayerData.MechNozzLeft = 0.0
PlayerData.MechNozzRigh = 0.0

PlayerData.AltGearLeft = 0
PlayerData.AltGearNose = 0
PlayerData.AltGearRigh = 0
PlayerData.IndRefueling = 0
PlayerData.IndHook = 0
PlayerData.ThrottleLeft = 0.0
PlayerData.ThrottleRigh = 0.0
PlayerData.EngineRpmLeft = 0.0
PlayerData.EngineRpmRigh = 0.0
PlayerData.FuelFlow = 0

PlayerData.AA = 0
PlayerData.AG = 0
PlayerData.Arm = 0

PacketNavSize  = 0
SendNavStrings	= {}

SendNavAllStrings	= {}
LastDataNav       = {}

local be = {}
be.latitude = 0.0
be.longitude = 0.0

local active = false
local showFileInfo = false

local host = "127.0.0.1"
local port = 5161
local listenerPort = 25072


local showOnMapPlayer = true
local showOnMapObj = false
local showOnMapWea = false
local showOnMapAir = false
local showOnMapGnd = false
local showOnMapNav = false

local timeSecPlayer = 1
local timeSecObj = 4
local timeSecWea = 1
local timeSecAir = 2
local timeSecGnd = 9
local timeSecNav = 8

local multInput = 0.1
local multPlayer = 1.0
local multAir = 1.0
local multGnd = 1.0
local multNavy = 1.0
local multWeapon = 1.0

function ExportMapPlayer(value) showOnMapPlayer = value end
function ExportMapWea(value) showOnMapWea = value end
function ExportMapAir(value) showOnMapAir = value end
function ExportMapGnd(value) showOnMapGnd = value end
function ExportMapNav(value) showOnMapNav = value end

function SetSecPla(value) timeSecPlayer = value end
function SetSecWea(value) timeSecWea = value end
function SetSecAir(value) timeSecAir = value end
function SetSecGnd(value) timeSecGnd = value end
function SetSecNav(value) timeSecNav = value end

function ChangeHost(ip) host = ip end
function ChangePort(value) port = value end

local isObject = 0
local isSensor = 0
local isOwnship = 0

local function IsMultiplayer()
    if DCS.isMultiplayer() == nil then
        return 0
    elseif DCS.isMultiplayer() == false then
        return 0
    else
        return 1
    end
end

local function CheckObjectExport()
    local isObjects = Export.LoIsObjectExportAllowed()
    if isObjects == nil then
		return 0
    elseif isObjects == true then
        return 1
    else
        return 0
    end
end

local function CheckSensorExport()
    local isSensors = Export.LoIsSensorExportAllowed()
    if isSensors == nil then
		return 0
    elseif isSensors == true then
        return 1
    else
        return 0
    end
end

local function CheckOwnshipExport()
    local isOwnship = Export.LoIsOwnshipExportAllowed()
    if isOwnship == nil then
		return 0
    elseif isOwnship == true then
        return 1
    else
        return 0
    end
end

local function GetPilotName()
    local name = Export.LoGetPilotName()
    if name == nil then
		return "NA"
    else
        return name
    end
end

function GetArgumentsValue(argument, format)
    local _device = Export.GetDevice(0)
    local _argumentValue

    if type(_device) == "table" then
        _device:update_arguments()
        _argumentValue = string.format(format,_device:get_argument_value(argument))
        return _argumentValue
    else
        return 0
    end
end

function GetTime()
    local missionTime = Export.LoGetMissionStartTime()
    local seconds = tonumber(missionTime)
    seconds = seconds + timer
    if seconds <= 0 then
        return "000000"
    else
        local h = math.floor(seconds / 3600)
        local m = math.floor(seconds % 3600) / 60
        local s = math.floor(seconds % 60)
        return string.format("%02d%02d%02d", h, m, s)
    end
end

function GetPlayerId()
    local id = Export.LoGetPlayerPlaneId()
    if id == nil then
        return "NA"
    else
        return id
    end
end

local separator = ";"
local newline = "\n"

function load()
    package.path = package.path .. ";.\\LuaSocket\\?.lua;"
    package.cpath = package.cpath .. ";.\\LuaSocket\\?.dll;"

    local function createUDPListner()
        socket = require("socket")

        local _createUDPListner = socket.protect(function()
            pwUDPListener = socket.udp()
            socket.try(pwUDPListener:setsockname("*", listenerPort))
            socket.try(pwUDPListener:settimeout(0))

        end)
        local ln, lerror = _createUDPListner()
        if lerror ~= nil then
            return
        end
    end

    local function createUDPSender()
        local socket = require("socket")

        local _createUDPSender = socket.protect(function()
            pwUDPSender = socket.udp()
            pwUDPSender:setoption('broadcast', true)
            socket.try(pwUDPSender:setsockname("*", 0))
        end)
        local ln, lerror = _createUDPSender()
        if lerror ~= nil then
            return
        end
    end

    local function send(message)
        if (host ~= "" and active) then
            local try = socket.newtry(function() pwUDPSender:close() createUDPSender() end)
            try(pwUDPSender:sendto(message .. newline, host, port))
        end
    end

    function ResetChangeValues()
        InitSend()
    end

    function InitSend()
        send("Map=" .. theatre .. separator .. "Theatre=" .. theatre .. separator)
        send("File=".. ModuleName .. separator.."Coal=" .. selfData.CoalitionID .. separator .. "Call=" .. GetPilotName() .. separator .. "bex=" .. be.latitude..separator.."bey="..be.longitude..separator)
    end

    function ProcessInput()
        local _command, _commandArgs, _device

        UDPListenerValues = {}

        local lUDPListenerReceivefrom = socket.protect(function()
			UDPListenerValues.Input, UDPListenerValues.from, UDPListenerValues.port = socket.try(pwUDPListener:receivefrom())
        end)

        local _error = lUDPListenerReceivefrom()
		if _error ~= nil and _error ~= "timeout" then
			pwUDPListener:close()
			createUDPListner()
		end

        local _input, from, port = UDPListenerValues.Input, UDPListenerValues.from, UDPListenerValues.port

        if _input then
            active = true
            _command = string.sub(_input,1,1)

            if _command == "R" then
                ResetChangeValues()
            end

            if _command == "E" then
                local len = string.len(_input)
                if (len > 4) then
                    port = tonumber(string.sub(_input, 5, -1))
                end

                local opt = tonumber(string.sub(_input,2,2))
                local vis = tonumber(string.sub(_input,3,3))
                local val = tonumber(string.sub(_input,4,4))

                if opt == 0 then
                    if (vis == 0) then
                        ExportMapPlayer(false)
                    else
                        ChangeHost(from)
                        if (len > 4) then
                            ChangePort(port)
                        end

                        InitSend()

                        ExportMapPlayer(true)
                        SetSecPla(val)
                    end
                elseif opt == 1 then
                    if (vis == 0) then
                        ExportMapWea(false)
                    else
                        ExportMapWea(true)
                        SetSecWea(val)
                    end
                elseif opt == 2 then
                    if (vis == 0) then
                        ExportMapAir(false)
                    else
                        ExportMapAir(true)
                        SetSecAir(val)
                    end
                elseif opt == 3 then
                    if (vis == 0) then
                        ExportMapGnd(false)
                    else
                        ExportMapGnd(true)
                        SetSecGnd(val)
                    end
                elseif opt == 4 then
                    if (vis == 0) then
                        ExportMapNav(false)
                    else
                        ExportMapNav(true)
                        SetSecNav(val)
                    end
                end
            end
        end
    end


    function getBullseye(coalition)
        local x = 0.0
        local y = 0.0
        local gps = {}
        gps.latitude = 0.0
        gps.longitude = 0.0

        if coalition == 0 then
            if (DCS.getCurrentMission().mission.coalition.neutrals.bullseye ~= nil) then
                x = DCS.getCurrentMission().mission.coalition.neutrals.bullseye.x
                y = DCS.getCurrentMission().mission.coalition.neutrals.bullseye.y
            end
        elseif coalition == 1 then
            if (DCS.getCurrentMission().mission.coalition.red.bullseye ~= nil) then
                x = DCS.getCurrentMission().mission.coalition.red.bullseye.x
                y = DCS.getCurrentMission().mission.coalition.red.bullseye.y
            end
        elseif coalition == 2 then
            if (DCS.getCurrentMission().mission.coalition.blue.bullseye ~= nil) then
                x = DCS.getCurrentMission().mission.coalition.blue.bullseye.x
                y = DCS.getCurrentMission().mission.coalition.blue.bullseye.y
            end
        end

        gps.latitude = Export.LoLoCoordinatesToGeoCoordinates(x,y).latitude
        gps.longitude = Export.LoLoCoordinatesToGeoCoordinates(x,y).longitude

        return gps
    end

    function FlushNavDataObjects()
        local _flush = socket.protect(function()
            local _packet = table.concat(SendNavAllStrings, separator)
            send(_packet)
    
            SendNavAllStrings = {}
        end)
        _flush()
    end


    function GetPlayerData()
        local SD = Export.LoGetSelfData()
        if SD == nil then
            return
        end

        PlayerData.Lat = SD.LatLongAlt.Lat
        PlayerData.Lon = SD.LatLongAlt.Long
        PlayerData.Alt = SD.LatLongAlt.Alt * M_2_FEETS
        PlayerData.AltM = SD.LatLongAlt.Alt
        PlayerData.Magvar = Export.LoGetMagneticYaw() * RAD_2_DEG
        PlayerData.Balt = Export.LoGetAltitudeAboveSeaLevel() * M_2_FEETS
        PlayerData.RAlt = Export.LoGetAltitudeAboveGroundLevel() * M_2_FEETS
        PlayerData.Hdg = SD.Heading * (180/math.pi)

        PlayerData.Ias = Export.LoGetIndicatedAirSpeed() * MS_2_KNOTS
        PlayerData.Tas = Export.LoGetTrueAirSpeed() * MS_2_KNOTS
        PlayerData.Vspd = Export.LoGetVerticalVelocity() * MS_2_FPM
        PlayerData.Mach = Export.LoGetMachNumber()

        if (math.floor(PlayerData.RAlt) <= 10) then PlayerData.OnGround = 1 else PlayerData.OnGround = 0 end

        PlayerData.Aoa = Export.LoGetAngleOfAttack()
        PlayerData.Acc = Export.LoGetAccelerationUnits().y
        PlayerData.Pitch, PlayerData.Bank, PlayerData.Yaw = Export.LoGetADIPitchBankYaw()
        PlayerData.Pitch = PlayerData.Pitch * RAD_2_DEG
        PlayerData.Bank = PlayerData.Bank * RAD_2_DEG
        PlayerData.Yaw = PlayerData.Yaw * RAD_2_DEG

        PlayerData.Velocity = Export.LoGetVectorVelocity()
        PlayerData.VX = PlayerData.Velocity.x
        PlayerData.VZ = PlayerData.Velocity.z
        PlayerData.Gspd = math.sqrt(math.pow(PlayerData.VX, 2)+ math.pow(PlayerData.VZ, 2)) * MS_2_KNOTS

        PlayerData.Cam = Export.LoGetCameraPosition()

        PlayerData.Wind = Export.LoGetVectorWindVelocity()
        PlayerData.WindSpd = math.abs(math.sqrt(math.pow(PlayerData.Wind.x, 2) + math.pow(PlayerData.Wind.y, 2) + math.pow(PlayerData.Wind.z, 2)))
        PlayerData.WindAng = math.atan2(PlayerData.Wind.y, PlayerData.Wind.x) * RAD_2_DEG + 180

        do
            if (ModuleName == "A-4E-C") then
                PlayerData.MechGearNose = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechHook = Export.LoGetAircraftDrawArgumentValue(25)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(500)
            elseif ((ModuleName == "A-10C") or (ModuleName == "A-10C_2")) then
                PlayerData.AltGearNose  = GetArgumentsValue(659, "%d")
                PlayerData.AltGearLeft  = GetArgumentsValue(660, "%d")
                PlayerData.AltGearRigh  = GetArgumentsValue(661, "%d")
                PlayerData.ThrottleLeft  = GetArgumentsValue(8, "%.1f")
                PlayerData.ThrottleRigh  = GetArgumentsValue(9, "%.1f")
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechRefueling = Export.LoGetAircraftDrawArgumentValue(22)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(184)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(182)
                local arm = GetArgumentsValue(375, "%.1f")
                if (arm == "0.2") then
                    PlayerData.Arm = 1
                elseif (arm == "0.0" or arm == "0.1") then
                    PlayerData.Arm = 0
                end
            elseif (ModuleName == "AJS37") then
                PlayerData.MechGearNose = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(21)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(186)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(184)
            elseif (ModuleName == "AV8BNA") then
                PlayerData.MechGearNose = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(182)
                PlayerData.AG = GetArgumentsValue(281, "%d")
                PlayerData.Arm = GetArgumentsValue(287, "%d")
            elseif (ModuleName == "Bronco-OV-10A") then
                PlayerData.MechGearNose = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh = Export.LoGetAircraftDrawArgumentValue(3)
            elseif ((ModuleName == "C-101CC") or
                    (ModuleName == "C-101EB")) then
                PlayerData.MechGearNose = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(21)
            elseif (ModuleName == "F-5E-3") then
                PlayerData.MechGearNose = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.AltGearLeft  = GetArgumentsValue(53, "%d")
                PlayerData.AltGearNose  = GetArgumentsValue(54, "%d")
                PlayerData.AltGearRigh  = GetArgumentsValue(55, "%d")
                PlayerData.MechHook = Export.LoGetAircraftDrawArgumentValue(25)
                PlayerData.MechNozzRigh = Export.LoGetAircraftDrawArgumentValue(89)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(90)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(184)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(182)
                PlayerData.IndHook  = GetArgumentsValue(90, "%d")
            elseif ((ModuleName == "F-14A-135-GR") or (ModuleName == "F-14B")) then
                PlayerData.AltGearNose  = GetArgumentsValue(8301, "%d")
                PlayerData.AltGearLeft  = GetArgumentsValue(8302, "%d")
                PlayerData.AltGearRigh  = GetArgumentsValue(8305, "%d")
                PlayerData.IndHook         = GetArgumentsValue(238, "%d")
                PlayerData.EngineRpmLeft = GetArgumentsValue(1057, "%.1f")
                PlayerData.EngineRpmRigh = GetArgumentsValue(1058, "%.1f")
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(21)
                PlayerData.MechRefueling = Export.LoGetAircraftDrawArgumentValue(22)
                PlayerData.MechHook = Export.LoGetAircraftDrawArgumentValue(25)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(434)
                PlayerData.MechNozzRigh = Export.LoGetAircraftDrawArgumentValue(433)
                PlayerData.AA = GetArgumentsValue(1013, "%d")
                PlayerData.AG = GetArgumentsValue(1012, "%d")
                local arm = GetArgumentsValue(1047, "%d")
                if (arm == "-1") then
                    PlayerData.Arm = 1
                elseif (arm == "0" or arm == "1") then
                    PlayerData.Arm = 0
                end
            elseif (ModuleName == "F-15ESE") then
                PlayerData.AA = GetArgumentsValue(326, "%d")
                PlayerData.AG = GetArgumentsValue(327, "%d")
                PlayerData.Arm = GetArgumentsValue(323, "%d")
                PlayerData.MechGearNose = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechRefueling = Export.LoGetAircraftDrawArgumentValue(22)
                PlayerData.MechHook = Export.LoGetAircraftDrawArgumentValue(25)
                PlayerData.MechNozzRigh = Export.LoGetAircraftDrawArgumentValue(89)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(90)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(182)
            elseif (ModuleName == "F-16C_50") then
                PlayerData.AltGearNose  = GetArgumentsValue(350, "%d")
                PlayerData.AltGearLeft  = GetArgumentsValue(351, "%d")
                PlayerData.AltGearRigh  = GetArgumentsValue(352, "%d")
                PlayerData.IndRefueling    = GetArgumentsValue(555, "%d")
                PlayerData.IndHook         = GetArgumentsValue(354, "%d")
                PlayerData.EngineRpmLeft = GetArgumentsValue(95, "%.1f")
                PlayerData.MechGearNose = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechRefueling = Export.LoGetAircraftDrawArgumentValue(22)
                PlayerData.MechHook = Export.LoGetAircraftDrawArgumentValue(25)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(90)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(184)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(182)
                PlayerData.Arm = GetArgumentsValue(105, "%d")
            elseif (ModuleName == "FA-18C_hornet") then
                PlayerData.AltGearLeft  = GetArgumentsValue(165, "%d")
                PlayerData.AltGearNose  = GetArgumentsValue(166, "%d")
                PlayerData.AltGearRigh  = GetArgumentsValue(167, "%d")
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.Refueling    = GetArgumentsValue(555, "%d")
                PlayerData.IndHook      = GetArgumentsValue(293, "%d")
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(21)
                PlayerData.MechRefueling = Export.LoGetAircraftDrawArgumentValue(22)
                PlayerData.MechHook = Export.LoGetAircraftDrawArgumentValue(25)
                PlayerData.MechNozzRigh = Export.LoGetAircraftDrawArgumentValue(89)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(90)
                PlayerData.AA = GetArgumentsValue(47, "%d")
                PlayerData.AG = GetArgumentsValue(48, "%d")
                PlayerData.Arm = GetArgumentsValue(49, "%d")
            elseif (ModuleName == "F-86F Sabre") then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(184)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(182)
            elseif (ModuleName == "I-16") then
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
            elseif (ModuleName == "L-39ZA") then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(184)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(182)
            elseif (ModuleName == "JF-17") then
                PlayerData.AltGearLeft  = GetArgumentsValue(101, "%d")
                PlayerData.AltGearNose  = GetArgumentsValue(102, "%d")
                PlayerData.AltGearRigh  = GetArgumentsValue(103, "%d")
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(90)
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(182)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(184)
                PlayerData.AA = GetArgumentsValue(163, "%d")
                PlayerData.AG = GetArgumentsValue(164, "%d")
                PlayerData.Arm = GetArgumentsValue(509, "%d")
            elseif ((ModuleName == "Ka-50") or (ModuleName == "Ka-50_3")) then
            elseif (ModuleName == "M-2000C") then
                PlayerData.AltGearLeft  = GetArgumentsValue(417, "%d")
                PlayerData.AltGearNose  = GetArgumentsValue(418, "%d")
                PlayerData.AltGearRigh  = GetArgumentsValue(419, "%d")
                PlayerData.IndHook         = GetArgumentsValue(414, "%d")
                PlayerData.MechRefueling = Export.LoGetAircraftDrawArgumentValue(22)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(90)
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(182)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(184)
                PlayerData.Arm = GetArgumentsValue(234, "%d")
            elseif ((ModuleName == "Mirage-F1BE") or
                    (ModuleName == "Mirage-F1CE") or
                    (ModuleName == "Mirage-F1EE")) then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(90)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(184)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(182)
                local arm = GetArgumentsValue(433, "%.1f")
                if (arm == "0.0") then
                    PlayerData.Arm = 1
                elseif (arm == "1.0" or arm == "0.5") then
                    PlayerData.Arm = 0
                end
            elseif (ModuleName == "MosquitoFBMkVI") then
            elseif ((ModuleName == "MB-339A") or
                    (ModuleName == "MB-339APAN")) then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(21)
            elseif (ModuleName == "Mi-8MT") then
            elseif (ModuleName == "Mi-24P") then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
            elseif (ModuleName == "MiG-15bis") then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(184)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(182)
            elseif (ModuleName == "MiG-19P") then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(182)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(184)
            elseif (ModuleName == "MiG-21Bis") then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(21)
            elseif ((ModuleName == "MiG-29A") or
                    (ModuleName == "MiG-29G") or
                    (ModuleName == "MiG-29S")) then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(21)
                PlayerData.MechNozzRigh = Export.LoGetAircraftDrawArgumentValue(89)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(90)
            elseif (ModuleName == "P-47D") then
            elseif ((ModuleName == "P-51D") or (ModuleName == "TF-51D")) then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
            elseif (ModuleName == "SA342") then
            elseif (ModuleName == "SpitfireLFMkIX") then
            elseif ((ModuleName == "Su-25") or (ModuleName == "Su-25T")) then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(186)
                PlayerData.MechAirBrakeRigh = Export.LoGetAircraftDrawArgumentValue(182)
            elseif ((ModuleName == "Su-27") or (ModuleName == "Su-33")) then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(21)
                PlayerData.MechRefueling = Export.LoGetAircraftDrawArgumentValue(22)
                PlayerData.MechHook = Export.LoGetAircraftDrawArgumentValue(25)
                PlayerData.MechNozzRigh = Export.LoGetAircraftDrawArgumentValue(89)
                PlayerData.MechNozzLeft = Export.LoGetAircraftDrawArgumentValue(90)
            elseif (ModuleName == "T-45") then
                PlayerData.MechGearNose  = Export.LoGetAircraftDrawArgumentValue(0)
                PlayerData.MechGearLeft  = Export.LoGetAircraftDrawArgumentValue(5)
                PlayerData.MechGearRigh  = Export.LoGetAircraftDrawArgumentValue(3)
                PlayerData.MechHook = Export.LoGetAircraftDrawArgumentValue(25)
                PlayerData.MechAirBrakeLeft = Export.LoGetAircraftDrawArgumentValue(500)
            else
            end
        end
    end

    function ProcessNavDataD()
        NavDataD = {}
        NavDataD[0]  = string.format("%d", GetTime())
        NavDataD[60] = string.format("%d", PlayerData.WindAng)
        NavDataD[61] = string.format("%d", PlayerData.WindSpd)
        NavDataD[70] = string.format("%010.6f", PlayerData.Lat)
        NavDataD[71] = string.format("%010.6f", PlayerData.Lon)
        NavDataD[72] = string.format("%.1f", PlayerData.Hdg)
        NavDataD[73] = string.format("%.1f", PlayerData.Magvar)
        NavDataD[74] = string.format("%d", PlayerData.Alt)
        NavDataD[75] = string.format("%d", PlayerData.RAlt)
        NavDataD[76] = string.format("%d", PlayerData.Ias)
        NavDataD[77] = string.format("%d", PlayerData.Vspd)
        NavDataD[78] = string.format("%.2f", PlayerData.Mach)
        NavDataD[79] = string.format("%.1f", PlayerData.Acc)
        NavDataD[80] = string.format("%.1f", PlayerData.Aoa)
        NavDataD[100] = string.format("%.1f", PlayerData.MechGearLeft)
        NavDataD[101] = string.format("%.1f", PlayerData.MechGearNose)
        NavDataD[102] = string.format("%.1f", PlayerData.MechGearRigh)
        NavDataD[103] = string.format("%.1f", PlayerData.MechAirBrakeLeft)
        NavDataD[210] = string.format("%d", PlayerData.AA)
        NavDataD[211] = string.format("%d", PlayerData.AG)
        NavDataD[212] = string.format("%d", PlayerData.Arm)

        if NavDataD ~= nil then
            for key, value in pairs(NavDataD) do
                if LastDataNav[key] == nil or LastDataNav[key] ~= value then
                    local _data    =  key .. "=" .. value
                    local _dataLen = string.len(_data)

                    table.insert(SendNavStrings, _data)
                    LastDataNav[key] = value
                    PacketNavSize   = PacketNavSize + _dataLen + 1
                end
            end
            local _flush = socket.protect(function()
                if #SendNavStrings > 0 then
                    local _packet = "N4D" .. separator .. table.concat(SendNavStrings, separator) .. separator
                    send(_packet)

                    SendNavStrings = {}
                    PacketNavSize  = 0
                else

                end
            end)
            _flush()
        end
    end

    function WriteToNavFiles()
        if (Fdr ~= nil) then
            local data1 = string.format("%d;%s;%.6f;%.6f;%d;%d;%d;", timer, GetTime(), PlayerData.Lon, PlayerData.Lat, PlayerData.Alt, PlayerData.Balt, PlayerData.RAlt)
            local data2 = string.format("%d;%d;%d;%d;%.2f;", PlayerData.Ias, PlayerData.Tas, PlayerData.Gspd, PlayerData.Vspd, PlayerData.Mach)
            local data3 = string.format("%.1f;%.1f;", PlayerData.Aoa, PlayerData.Acc)
            local data4 = string.format("%d;%d;", PlayerData.Hdg, PlayerData.Magvar)
            local data5 = string.format("%.1f;%.1f;%d;", PlayerData.Pitch, PlayerData.Bank, PlayerData.Yaw)
            local data6 = string.format("%d;%d;", PlayerData.WindSpd, PlayerData.WindAng)
            local data7 = string.format("%d;%d;%d;%d;", PlayerData.OnGround, PlayerData.AltGearLeft, PlayerData.AltGearNose, PlayerData.AltGearRigh)
            local data8 = string.format("%d;%d;%.1f;%.1f;", PlayerData.IndRefueling, PlayerData.IndHook, PlayerData.ThrottleLeft, PlayerData.ThrottleRigh)
            local data9 = string.format("%.1f;%.1f;%d;%.2f;%.2f;", PlayerData.EngineRpmLeft, PlayerData.EngineRpmRigh, PlayerData.FuelFlow, PlayerData.MechNozzLeft, PlayerData.MechNozzRigh)
            local data10 = string.format("%.1f;%.1f;%.1f;", PlayerData.MechGearNose, PlayerData.MechGearLeft, PlayerData.MechGearRigh)
            local data11 = string.format("%.1f;%.1f;%.1f;%.1f;", PlayerData.MechAirBrakeLeft, PlayerData.MechAirBrakeRigh, PlayerData.MechRefueling, PlayerData.MechHook)
            local data12 = string.format("%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;",
            PlayerData.Cam.x.x, PlayerData.Cam.x.y, PlayerData.Cam.x.z, PlayerData.Cam.y.x, PlayerData.Cam.y.y, PlayerData.Cam.y.z, PlayerData.Cam.z.x, PlayerData.Cam.z.y, PlayerData.Cam.z.z, PlayerData.Cam.p.x, PlayerData.Cam.p.y, PlayerData.Cam.p.z)

            local csvPacket = string.format("%s%s%s%s%s%s%s%s%s%s%s%s\n", data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12)
            Fdr.CsvFileWrite(csvPacket)

            local navPacket = string.format("%.6f,%.6f,%d\n", PlayerData.Lon, PlayerData.Lat, PlayerData.AltM)
            Fdr.NavFileWrite(navPacket)
        end
    end

    function ProcessNavAir()
        local init = "N4A"
        local obj = Export.LoGetWorldObjects()
        if obj == nil then
            return
        end

        local objects = false
        local id

        NavDataAll = {}

        for key, val in pairs(obj) do
            id = key
            if (val.Type.level1 == 1 and val.Type.level2 < 3) then
                if val.CoalitionID == 0 then
                elseif (key ~= playerId) then
                    if val.Flags.Born == true then
                        local hum = 0
                        if (val.Flags.Human == true) then
                            hum = 1
                        end
                        local invisible = 0
                        if (val.Flags.Invisible == true) then
                            invisible = 1
                        end
                        local static = 0
                        if (val.Flags.Static == true) then
                            static = 1
                        end

                        local packetObjects =
                        string.format(
                            "%d" .. separator ..
                            "%.6f" .. separator ..
                            "%.6f" .. separator ..
                            "%d" .. separator ..
                            "%d" .. separator ..
                            "%d" .. separator ..
                            "%d" .. separator ..
                            "%d" .. separator ..
                            "%d" .. separator
                            ,

                            val.CoalitionID,
                            val.LatLongAlt.Lat,
                            val.LatLongAlt.Long,
                            val.Type.level2,
                            val.Type.level3,
                            hum,
                            invisible,
                            static,
                            val.Heading * (180/math.pi)
                        )
                        NavDataAll[id] = packetObjects
                        objects = true
                    end
                end
            end
        end

        if objects then
            send(init .. separator .. "start" .. separator)
            for key, value in pairs(NavDataAll) do
                local _data = init .. separator .. key .. separator .. value

                table.insert(SendNavAllStrings, _data)
                FlushNavDataObjects()
            end
            send(init .. separator .. "stop" .. separator)
        end
    end

    function ProcessNavNav()
        local init = "N4N"
        local obj = Export.LoGetWorldObjects()
        if obj == nil then
            return
        end

        local objects = false
        local id

        NavDataNav = {}

        for key, val in pairs(obj) do
            id = key
            if (val.Type.level1 == 3) then
                if val.Flags.Born == true then
                    local invisible = 0
                    if (val.Flags.Invisible == true) then
                        invisible = 1
                    end
                    local static = 0
                    if (val.Flags.Static == true) then
                        static = 1
                    end
                    local packetObjects =
                    string.format(
                        "%d" .. separator ..
                        "%.6f" .. separator ..
                        "%.6f" .. separator ..
                        "%d" .. separator ..
                        "%d" .. separator ..
                        "%d" .. separator
                        ,

                        val.CoalitionID,
                        val.LatLongAlt.Lat,
                        val.LatLongAlt.Long,
                        val.Type.level3,
                        invisible,
                        static
                    )
                    NavDataNav[id] = packetObjects
                    objects = true
                end
            end
        end

        if objects then
            send(init .. separator .. "start" .. separator)
            for key, value in pairs(NavDataNav) do
                local _data = init .. separator .. key .. separator .. value

                table.insert(SendNavAllStrings, _data)
                FlushNavDataObjects()
            end
            send(init .. separator .. "stop" .. separator)
        end
    end

    function ProcessNavGround()
        local init = "N4G"
        local obj = Export.LoGetWorldObjects()
        if obj == nil then
            return
        end

        local gndObjects = false
        local id

        NavDataGnd = {}

        for key, val in pairs(obj) do
            id = key

            if (val.Type.level2 == 16) then
                if val.Flags.Born == true then
                    local hum = 0
                    if (val.Flags.Human == true) then
                        hum = 1
                    end
                    local invisible = 0
                    if (val.Flags.Invisible == true) then
                        invisible = 1
                    end
                    local static = 0
                    if (val.Flags.Static == true) then
                        static = 1
                    end
                    local packetObjects =
                    string.format(
                        "%d" .. separator ..
                        "%.6f" .. separator ..
                        "%.6f" .. separator ..
                        "%d" .. separator ..
                        "%d" .. separator ..
                        "%d" .. separator ..
                        "%d" .. separator ..
                        "%s" .. separator
                        ,

                        val.CoalitionID,
                        val.LatLongAlt.Lat,
                        val.LatLongAlt.Long,
                        val.Type.level2,
                        hum,
                        invisible,
                        static,
                        val.Type.level4
                    )
                    NavDataGnd[id] = packetObjects
                    gndObjects = true
                end
            end
        end

        if gndObjects then
            send(init .. separator .. "start" .. separator)
            for key, value in pairs(NavDataGnd) do
                local _data = init .. separator .. key .. separator .. value

                table.insert(SendNavAllStrings, _data)
                FlushNavDataObjects()
            end
            send(init .. separator .. "stop" .. separator)
        end
    end

    function ProcessNavWeapon()
        local init = "N4W"
        local obj = Export.LoGetWorldObjects()
        if obj == nil then
            return
        end

        local weapons = false
        local id

        NavDataWeapons = {}

        for key, val in pairs(obj) do
            id = key

            if (val.Type.level1 == 4 and (val.Type.level2 == 4 or val.Type.level2 == 5)) then
                local packetWeapons =
                string.format(
                    "%d" .. separator ..
                    "%d" .. separator ..
                    "%.6f" .. separator ..
                    "%.6f" .. separator ..
                    "%s" .. separator
                    ,

                    val.CoalitionID,
                    val.Type.level2,
                    val.LatLongAlt.Lat,
                    val.LatLongAlt.Long,
                    val.Name
                )
                NavDataWeapons[id] = packetWeapons
                weapons = true
            end
        end

        if weapons then
            send(init .. separator .. "start" .. separator)
            for key, value in pairs(NavDataWeapons) do
                local _data = init .. separator .. key .. separator .. value

                table.insert(SendNavAllStrings, _data)
                FlushNavDataObjects()
            end
            send(init .. separator .. "stop" .. separator)
        end
    end

    local pwdev = {}

    function pwdev.onMissionLoadBegin()
        createUDPSender()
        createUDPListner()

        isObject = CheckObjectExport()
        isSensor = CheckSensorExport()
        isOwnship= CheckOwnshipExport()

        local version = Export.LoGetVersionInfo()
        VersionId = string.format("%d.%d.%d.%d",
			version.FileVersion[1],
			version.FileVersion[2],
			version.FileVersion[3],
			version.FileVersion[4])
    end


    function pwdev.onMissionLoadEnd()
        theatre = DCS.getCurrentMission().mission.theatre
    end

    function pwdev.onSimulationStart()
        if (WRITE_NAV_FILE == true and isOwnship == 1) then
            Fdr.CsvFileInit()
			Fdr.NavFileInit(VersionId)
        end
    end

    function pwdev.onSimulationFrame()
        timer  = DCS.getModelTime()

        if (timer > 0 and showFileInfo == false) then
            if (isOwnship == 1) then
                selfData = Export.LoGetSelfData()
                if selfData == nil then
                    return
                end
                ModuleName = selfData.Name
                playerId = GetPlayerId()
            end

            send("EX=ON" .. separator .. "VId=".. VersionId .. separator .. "MOE=" .. isObject .. separator .. "MSE=" .. isSensor .. separator .. "MPE=" .. isOwnship .. separator ..
                "SV=" .. HOOK_VERSION ..separator .. "MP=" .. IsMultiplayer() .. separator .. "SC2" .. separator)

            local data = getBullseye(selfData.CoalitionID)
            be.latitude = data.latitude
            be.longitude = data.longitude

            InitSend()

            showFileInfo = true
        end

        if (timer > (prevTimer + multInput)) then
            coProcessArguments = coroutine.create(ProcessInput)
            coStatus = coroutine.resume(coProcessArguments)
            prevTimer = timer
        end

        if (isOwnship == 1) then
            if (timer > (prevTimerPlayer + timeSecPlayer)) then
                GetPlayerData()

                if showOnMapPlayer then
                    ProcessNavDataD()
                end

                if (WRITE_NAV_FILE == true) then
                    WriteToNavFiles()
                end
                prevTimerPlayer = timer
            end
        end

        if (isObject == 1) then
            if showOnMapAir then
                if (timer > (prevTimerAir + timeSecAir)) then
                    ProcessNavAir()
                    prevTimerAir = timer
                end
            end

            if showOnMapNav then
                if (timer > (prevTimerNavy + timeSecNav)) then
                    ProcessNavNav()
                    prevTimerNavy = timer
                end
            end

            if showOnMapGnd then
                if (timer > (prevTimerGnd + timeSecGnd)) then
                    ProcessNavGround()
                    prevTimerGnd = timer
                end
            end

            if showOnMapWea then
                if (timer > (prevTimerWea + timeSecWea)) then
                    ProcessNavWeapon()
                    prevTimerWea = timer
                end
            end
        end
    end

    function pwdev.onSimulationStop()
        showFileInfo = false

        ModuleName = "NA"

        selfData.CoalitionID = 0

        be.latitude = 0.0
        be.longitude = 0.0

        send("EX=OF")

        pwUDPSender:close()
        pwUDPListener:close()

        setDefaultTimer(0)

        showOnMapPlayer = true
        showOnMapObj = false
        showOnMapWea = false
        showOnMapAir = false
        showOnMapGnd = false
        showOnMapNav = false

        if (WRITE_NAV_FILE == true and isOwnship == 1) then
			Fdr.CsvFileEnd()
			Fdr.NavFileEnd()
		end
    end

    DCS.setUserCallbacks(pwdev)
end

local status, err = pcall(load)
if not status then
end