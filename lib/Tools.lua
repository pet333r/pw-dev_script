ExportScript.Tools = {}

local PlayerData = {}
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

local initiated = false

local lShowOnMapPlayer = true
local lShowOnMapObj = false
local lShowOnMapWea = false
local lShowOnMapAir = false
local lShowOnMapGnd = false
local lShowOnMapNav = false

local actualMap
local playerId

local lDevicesNo = 0
local lDeviceIp1 = ""
local lDeviceIp2 = ""
local lDeviceIp3 = ""
local lDeviceIp4 = ""
local lDeviceIp5 = ""
local lDeviceIp6 = ""
local lDeviceIp7 = ""
local lDeviceIp8 = ""

local lDeviceIpMap = ""
local lDevicePortMap = ExportScript.Config.Port

local separator = ExportScript.Config.Separator

-- const
local ms2knots  = 1.94384449 -- m/s to knots
local ms2fpm    = 196.85 -- m/s to feets/minute
local m2feets   = 3.2808399 -- meters to feets
local rad2deg   = 57.296 -- radians to degrees

local timestamp = 0
local timestampNav = 0
local timestampNavObj = 0
local timestampNavWea = 0
local timestampNavAir = 0
local timestampNavGnd = 0
local timestampNavNav = 0

local timeSecPlayer = 1
local timeSecObj = 4
local timeSecWea = 1
local timeSecAir = 2
local timeSecGnd = 9
local timeSecNav = 8

function ExportScript.Tools.ExportMapPlayer(value) lShowOnMapPlayer = value end
function ExportScript.Tools.ExportMapWea(value) lShowOnMapWea = value end
function ExportScript.Tools.ExportMapAir(value) lShowOnMapAir = value end
function ExportScript.Tools.ExportMapGnd(value) lShowOnMapGnd = value end
function ExportScript.Tools.ExportMapNav(value)lShowOnMapNav = value end

function ExportScript.Tools.SetSecPla(value) timeSecPlayer = value end
function ExportScript.Tools.SetSecWea(value) timeSecWea = value end
function ExportScript.Tools.SetSecAir(value) timeSecAir = value end
function ExportScript.Tools.SetSecGnd(value) timeSecGnd = value end
function ExportScript.Tools.SetSecNav(value) timeSecNav = value end

function ExportScript.Tools.GetMapPlayerDiv()
    if (ExportScript.Config.MapPlayerDiv == nil) then
        return 1.0
    else
        return ExportScript.Config.MapPlayerDiv
    end
end

function ExportScript.Tools.GetMapMissileDiv()
    if (ExportScript.Config.MapMissileDiv == nil) then
        return 1.0
    else
        return ExportScript.Config.MapMissileDiv
    end
end

function ExportScript.Tools.GetMapPlanesDiv()
    if (ExportScript.Config.MapMapPlanesDiv == nil) then
        return 1.0
    else
        return ExportScript.Config.MapMapPlanesDiv
    end
end


function ExportScript.Tools.createUDPSender()
	ExportScript.socket = require("socket")

	local _createUDPSender = ExportScript.socket.protect(function()
		ExportScript.UDPsender = ExportScript.socket.udp()
        ExportScript.UDPsender:setoption('broadcast', true)
		ExportScript.socket.try(ExportScript.UDPsender:setsockname("*", 0))
	end)
    local ln, lerror = _createUDPSender()
    if lerror ~= nil then
		return
	end
end

function ExportScript.Tools.createUDPListner()
	if ExportScript.Config.Listener then
		ExportScript.socket = require("socket")

		local _createUDPListner = ExportScript.socket.protect(function()
			ExportScript.UDPListener = ExportScript.socket.udp()
			ExportScript.socket.try(ExportScript.UDPListener:setsockname("*", ExportScript.Config.ListenerPort))
			ExportScript.socket.try(ExportScript.UDPListener:settimeout(0))
		end)

        local ln, lerror = _createUDPListner()
        if lerror ~= nil then
            return
        end
	end
end

function ExportScript.Tools.ExportInit()
    playerId = ExportScript.Tools.GetPlayerId()
    coalition = LoGetSelfData().CoalitionID
    ExportScript.Tools.SendShortData("Map=" .. actualMap .. separator)

    local be = {}
	be.latitude = 0.0
	be.longitude = 0.0

    local data = ExportScript.Tools.GetCoalitionBullseye(coalition)

	be.latitude = data.latitude
	be.longitude = data.longitude

    ExportScript.Tools.SendShortData("File="..ExportScript.ModuleName..separator.."Coal="..coalition..separator.."Call="..LoGetPilotName()..separator.."bex="..be.latitude..separator.."bey="..be.longitude..separator)
end

function ExportScript.Tools.ProcessInput()
    local _command, _commandArgs, _device
    if ExportScript.Config.Listener then
		ExportScript.UDPListenerValues = {}

		local lUDPListenerReceivefrom = ExportScript.socket.protect(function()
			ExportScript.UDPListenerValues.Input, ExportScript.UDPListenerValues.from, ExportScript.UDPListenerValues.port = ExportScript.socket.try(ExportScript.UDPListener:receivefrom())
        end)

		local _error = lUDPListenerReceivefrom()
		if _error ~= nil and _error ~= "timeout" then
			ExportScript.UDPListener:close()
			ExportScript.Tools.createUDPListner()
		end

		local _input, from, port = ExportScript.UDPListenerValues.Input, ExportScript.UDPListenerValues.from, ExportScript.UDPListenerValues.port

        if _input then
            _command = string.sub(_input,1,1)

            if _command == "R" then
                ExportScript.Tools.ResetChangeValues()
                initiated = false
            end

            if _command == "E" then
                lDeviceIpMap = from
                local len = string.len(_input)
                if (len > 4) then
                    lDevicePortMap = tonumber(string.sub(_input, 5, -1))
                end

                local opt = tonumber(string.sub(_input,2,2))
                local vis = tonumber(string.sub(_input,3,3))
                local val = tonumber(string.sub(_input,4,4))

                if opt == 0 then
                    if (vis == 0) then
                        ExportScript.Tools.ExportMapPlayer(false)
                        lDeviceIpMap = ""
                    else
                        ExportScript.Tools.ExportMapPlayer(true)
                        ExportScript.Tools.SetSecPla(val)
                    end
                end
                if opt == 1 then
                    if (vis == 0) then
                        ExportScript.Tools.ExportMapWea(false)
                    else
                        ExportScript.Tools.ExportMapWea(true)
                        ExportScript.Tools.SetSecWea(val)
                    end
                end
                if opt == 2 then
                    if (vis == 0) then
                        ExportScript.Tools.ExportMapAir(false)
                    else
                        ExportScript.Tools.ExportMapAir(true)
                        ExportScript.Tools.SetSecAir(val)
                    end
                end
                if opt == 3 then
                    if (vis == 0) then
                        ExportScript.Tools.ExportMapGnd(false)
                    else
                        ExportScript.Tools.ExportMapGnd(true)
                        ExportScript.Tools.SetSecGnd(val)
                    end
                end
                if opt == 4 then
                    if (vis == 0) then
                        ExportScript.Tools.ExportMapNav(false)
                    else
                        ExportScript.Tools.ExportMapNav(true)
                        ExportScript.Tools.SetSecNav(val)
                    end
                end
            end

            if (_command == "C") then
                _commandArgs = ExportScript.Tools.StrSplit(string.sub(_input,2),",")
				local _deviceID = tonumber(_commandArgs[1])
				if _deviceID < 1000 then
					_device = GetDevice(_commandArgs[1])
					if ExportScript.FoundDCSModule and type(_device) == "table" then
						_device:performClickableAction(_commandArgs[2],_commandArgs[3])
					end

                elseif _deviceID == 2000 then
                    if ExportScript.FoundDCSModule or ExportScript.FoundFCModule then
                        local lComandID = (tonumber(_commandArgs[2]))
                        if tonumber(_commandArgs[3]) == 1.0 then
                            LoSetCommand(lComandID)
                        end
                    end

                elseif _deviceID == 2001 then
                    if ExportScript.FoundDCSModule or ExportScript.FoundFCModule then
                        local lComandID = (tonumber(_commandArgs[2]))
                        LoSetCommand(lComandID, _commandArgs[3])
                    end
                end
            end

            if (_command == "N") then
                local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() end)

                try(ExportScript.UDPsender:sendto("STAT=OK;", from, ExportScript.Config.Port))

                if (lDevicesNo == 0) then

                elseif (lDevicesNo == 1) then
                elseif (lDevicesNo == 2) then
                elseif (lDevicesNo == 3) then
                elseif (lDevicesNo == 4) then
                elseif (lDevicesNo == 5) then
                elseif (lDevicesNo == 6) then
                elseif (lDevicesNo == 7) then
                elseif (lDevicesNo == 8) then
                end

                local opt = tonumber(string.sub(_input,2,2))

                if opt == 0 then
                    if (lDeviceIp1 == from) then lDeviceIp1 = "" end
                    if (lDeviceIp2 == from) then lDeviceIp2 = "" end
                    if (lDeviceIp3 == from) then lDeviceIp3 = "" end
                    if (lDeviceIp4 == from) then lDeviceIp4 = "" end
                    if (lDeviceIp5 == from) then lDeviceIp5 = "" end
                    if (lDeviceIp6 == from) then lDeviceIp6 = "" end
                    if (lDeviceIp7 == from) then lDeviceIp7 = "" end
                    if (lDeviceIp8 == from) then lDeviceIp8 = "" end
                end

                if opt == 1 then
                    if (lDeviceIp1 == "") then
                        ExportScript.Tools.lDeviceIp1 = from
                        return
                    elseif (lDeviceIp1 ~= "") then
                        if (from == lDeviceIp1) then
                            ExportScript.Tools.lDeviceIp1 = from
                            return
                        end
                    -- Device 2	
                    elseif (lDeviceIp2 == "") then
                        ExportScript.Tools.lDeviceIp2 = from
                        return
                    elseif (lDeviceIp2 ~= "") then
                        if (from == lDeviceIp2) then
                            ExportScript.Tools.lDeviceIp2 = from
                            return
                        end
                    -- Device 3
                    elseif (lDeviceIp3 == "") then
                        ExportScript.Tools.lDeviceIp3 = from
                        return
                    elseif (lDeviceIp3 ~= "") then
                        if (from == lDeviceIp3) then
                            ExportScript.Tools.lDeviceIp3 = from
                            return
                        end
                    -- Device 4
                    elseif (lDeviceIp4 == "") then
                        ExportScript.Tools.lDeviceIp4 = from
                        return
                    elseif (lDeviceIp4 ~= "") then
                        if (from == lDeviceIp4) then
                            ExportScript.Tools.lDeviceIp4 = from
                            return
                        end
                    -- Device 5
                    elseif (lDeviceIp5 == "") then
                        ExportScript.Tools.lDeviceIp5 = from
                        return
                    elseif (lDeviceIp5 ~= "") then
                        if (from == lDeviceIp5) then
                            ExportScript.Tools.lDeviceIp5 = from
                            return
                        end
                    -- Device 6
                    elseif (lDeviceIp6 == "") then
                        ExportScript.Tools.lDeviceIp6 = from
                        return
                    elseif (lDeviceIp6 ~= "") then
                        if (from == lDeviceIp6) then
                            ExportScript.Tools.lDeviceIp6 = from
                            return
                        end
                    -- Device 7
                    elseif (lDeviceIp7 == "") then
                        ExportScript.Tools.lDeviceIp7 = from
                        return
                    elseif (lDeviceIp7 ~= "") then
                        if (from == lDeviceIp7) then
                            ExportScript.Tools.lDeviceIp7 = from
                            return
                        end
                    -- Device 8
                    elseif (lDeviceIp8 == "") then
                        ExportScript.Tools.lDeviceIp8 = from
                        return
                    elseif (lDeviceIp8 ~= "") then
                        if (from == lDeviceIp8) then
                            ExportScript.Tools.lDeviceIp8 = from
                            return
                        end
                    end
                end

            end
		end
	end
end

function ExportScript.Tools.GetPlayerId()
	local id = LoGetPlayerPlaneId()
	if id == nil then
		return 0
    else
        return id
    end
end

function ExportScript.Tools.GetObjectCoalition(id)
    return LoGetObjectById(id).CoalitionID
end

function ExportScript.Tools.GetDateTime()
    local missionTime = LoGetMissionStartTime()
    local seconds = tonumber(missionTime)
    if seconds <= 0 then
        return "00:00:00"
    else
        local h = math.floor(seconds/3600)
        local m = math.floor(seconds/60 - (h * 60))
        return string.format("%02d:%02d:%02d", h, m, timestamp)
    end
end

function ExportScript.Tools.GetTime()
    local missionTime = LoGetMissionStartTime()
    local seconds = tonumber(missionTime)
    seconds = seconds + timestamp
    if seconds <= 0 then
        return "000000"
    else
        local h = math.floor(seconds / 3600)
        local m = math.floor(seconds % 3600) / 60
        local s = math.floor(seconds % 60)
        return string.format("%02d%02d%02d", h, m, s)
    end
end

function ExportScript.Tools.GetPlayerData()
    local SD = LoGetSelfData()
	if SD == nil then
		return
    end

	PlayerData.Lat = SD.LatLongAlt.Lat
	PlayerData.Lon = SD.LatLongAlt.Long
	PlayerData.Alt = SD.LatLongAlt.Alt * m2feets
    PlayerData.AltM = SD.LatLongAlt.Alt
    PlayerData.Magvar = LoGetMagneticYaw() * rad2deg
    PlayerData.Balt = LoGetAltitudeAboveSeaLevel() * m2feets
	PlayerData.RAlt = LoGetAltitudeAboveGroundLevel() * m2feets
	PlayerData.Hdg = SD.Heading * (180/math.pi)

	PlayerData.Ias = LoGetIndicatedAirSpeed() * ms2knots
    PlayerData.Tas = LoGetTrueAirSpeed() * ms2knots
	PlayerData.Vspd = LoGetVerticalVelocity() * ms2fpm
	PlayerData.Mach = LoGetMachNumber()

    if (math.floor(PlayerData.RAlt) <= 10) then PlayerData.OnGround = 1 else PlayerData.OnGround = 0 end

	PlayerData.Aoa = LoGetAngleOfAttack() -- * rad2deg
	PlayerData.Acc = LoGetAccelerationUnits().y	-- G-Force
	PlayerData.Pitch, PlayerData.Bank, PlayerData.Yaw = LoGetADIPitchBankYaw()
	PlayerData.Pitch = PlayerData.Pitch * rad2deg
	PlayerData.Bank = PlayerData.Bank * rad2deg
	PlayerData.Yaw = PlayerData.Yaw * rad2deg

    PlayerData.Velocity = LoGetVectorVelocity()
    PlayerData.VX = PlayerData.Velocity.x
    PlayerData.VZ = PlayerData.Velocity.z
    PlayerData.Gspd = math.sqrt(math.pow(PlayerData.VX, 2)+ math.pow(PlayerData.VZ, 2)) * ms2knots

    PlayerData.Cam = LoGetCameraPosition()

    PlayerData.Wind = LoGetVectorWindVelocity()
    PlayerData.WindSpd = math.abs(math.sqrt(math.pow(PlayerData.Wind.x, 2) + math.pow(PlayerData.Wind.y, 2) + math.pow(PlayerData.Wind.z, 2)))
    PlayerData.WindAng = math.atan2(PlayerData.Wind.y, PlayerData.Wind.x) * rad2deg + 180 --* 180/math.pi

    if ((ExportScript.ModuleName == "A-10C") or (ExportScript.ModuleName == "A-10C_2")) then
        PlayerData.AltGearNose  = ExportScript.Tools.GetArgumentsValue(659, "%d")
        PlayerData.AltGearLeft  = ExportScript.Tools.GetArgumentsValue(660, "%d")
        PlayerData.AltGearRigh  = ExportScript.Tools.GetArgumentsValue(661, "%d")
        PlayerData.ThrottleLeft  = ExportScript.Tools.GetArgumentsValue(8, "%.1f")
        PlayerData.ThrottleRigh  = ExportScript.Tools.GetArgumentsValue(9, "%.1f")

        -- refueling
        PlayerData.MechRefueling = LoGetAircraftDrawArgumentValue(22)
        -- brake
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(184)
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(182)

        local arm = ExportScript.Tools.GetArgumentsValue(375, "%.1f")
        if (arm == "0.2") then
            PlayerData.Arm = 1
        elseif (arm == "0.0" or arm == "0.1") then
            PlayerData.Arm = 0
        end
    elseif (ExportScript.ModuleName == "AJS37") then
        PlayerData.MechGearNose = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh = LoGetAircraftDrawArgumentValue(3)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(186)
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(184)
    elseif (ExportScript.ModuleName == "AV8BNA") then
        PlayerData.MechGearNose = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh = LoGetAircraftDrawArgumentValue(3)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(182)

        PlayerData.AG = ExportScript.Tools.GetArgumentsValue(281, "%d")
        PlayerData.Arm = ExportScript.Tools.GetArgumentsValue(287, "%d")
    elseif ((ExportScript.ModuleName == "C-101CC") or
            (ExportScript.ModuleName == "C-101EB")) then
        PlayerData.MechGearNose = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh = LoGetAircraftDrawArgumentValue(3)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(21)
    elseif (ExportScript.ModuleName == "F-5E-3") then
        PlayerData.AltGearLeft  = ExportScript.Tools.GetArgumentsValue(53, "%d")
        PlayerData.AltGearNose  = ExportScript.Tools.GetArgumentsValue(54, "%d")
        PlayerData.AltGearRigh  = ExportScript.Tools.GetArgumentsValue(55, "%d")
        -- PlayerData.IndHook  = ExportScript.Tools.GetArgumentsValue(90, "%d")
    elseif ((ExportScript.ModuleName == "F-14A-135-GR") or (ExportScript.ModuleName == "F-14B")) then
        PlayerData.AltGearNose  = ExportScript.Tools.GetArgumentsValue(8301, "%d")
        PlayerData.AltGearLeft  = ExportScript.Tools.GetArgumentsValue(8302, "%d")
        PlayerData.AltGearRigh  = ExportScript.Tools.GetArgumentsValue(8305, "%d")
        PlayerData.IndHook         = ExportScript.Tools.GetArgumentsValue(238, "%d")
        PlayerData.EngineRpmLeft = ExportScript.Tools.GetArgumentsValue(1057, "%.1f")
        PlayerData.EngineRpmRigh = ExportScript.Tools.GetArgumentsValue(1058, "%.1f")
        -- brake
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(21)
        -- refueling
        PlayerData.MechRefueling = LoGetAircraftDrawArgumentValue(22)
        -- hook
        PlayerData.MechHook = LoGetAircraftDrawArgumentValue(25)
        -- nozzle 2x
        PlayerData.MechNozzLeft = LoGetAircraftDrawArgumentValue(434)
        PlayerData.MechNozzRigh = LoGetAircraftDrawArgumentValue(433)

        PlayerData.AA = ExportScript.Tools.GetArgumentsValue(1013, "%d")
        PlayerData.AG = ExportScript.Tools.GetArgumentsValue(1012, "%d")
        local arm = ExportScript.Tools.GetArgumentsValue(1047, "%d")
        if (arm == "-1") then
            PlayerData.Arm = 1
        elseif (arm == "0" or arm == "1") then
            PlayerData.Arm = 0
        end
    elseif (ExportScript.ModuleName == "F-15ESE") then
        PlayerData.AA = ExportScript.Tools.GetArgumentsValue(326, "%d")
        PlayerData.AG = ExportScript.Tools.GetArgumentsValue(327, "%d")
        PlayerData.Arm = ExportScript.Tools.GetArgumentsValue(323, "%d")

        PlayerData.MechGearNose = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh = LoGetAircraftDrawArgumentValue(3)
        -- refueling
        PlayerData.MechRefueling = LoGetAircraftDrawArgumentValue(22)
        -- hook
        PlayerData.MechHook = LoGetAircraftDrawArgumentValue(25)
        -- nozzle 2x
        PlayerData.MechNozzRigh = LoGetAircraftDrawArgumentValue(89)
        PlayerData.MechNozzLeft = LoGetAircraftDrawArgumentValue(90)
        -- brake
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(182)
    elseif (ExportScript.ModuleName == "F-16C_50") then
        PlayerData.AltGearNose  = ExportScript.Tools.GetArgumentsValue(350, "%d")
        PlayerData.AltGearLeft  = ExportScript.Tools.GetArgumentsValue(351, "%d")
        PlayerData.AltGearRigh  = ExportScript.Tools.GetArgumentsValue(352, "%d")
        PlayerData.IndRefueling    = ExportScript.Tools.GetArgumentsValue(555, "%d")
        PlayerData.IndHook         = ExportScript.Tools.GetArgumentsValue(354, "%d")
        PlayerData.EngineRpmLeft = ExportScript.Tools.GetArgumentsValue(95, "%.1f")

        PlayerData.MechGearNose = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh = LoGetAircraftDrawArgumentValue(3)
        -- refueling
        PlayerData.MechRefueling = LoGetAircraftDrawArgumentValue(22)
        -- hook
        PlayerData.MechHook = LoGetAircraftDrawArgumentValue(25)
        -- nozzle
        PlayerData.MechNozzLeft = LoGetAircraftDrawArgumentValue(90)
        -- brake
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(184)
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(182)

        PlayerData.Arm = ExportScript.Tools.GetArgumentsValue(105, "%d")
    elseif (ExportScript.ModuleName == "FA-18C_hornet") then
        PlayerData.AltGearLeft  = ExportScript.Tools.GetArgumentsValue(165, "%d")
        PlayerData.AltGearNose  = ExportScript.Tools.GetArgumentsValue(166, "%d")
        PlayerData.AltGearRigh  = ExportScript.Tools.GetArgumentsValue(167, "%d")
        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
        PlayerData.Refueling    = ExportScript.Tools.GetArgumentsValue(555, "%d")
        PlayerData.IndHook      = ExportScript.Tools.GetArgumentsValue(293, "%d")

        -- brake
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(21)
        -- refueling
        PlayerData.MechRefueling = LoGetAircraftDrawArgumentValue(22)
        -- hook
        PlayerData.MechHook = LoGetAircraftDrawArgumentValue(25)
        -- nozzle 2x
        PlayerData.MechNozzRigh = LoGetAircraftDrawArgumentValue(89)
        PlayerData.MechNozzLeft = LoGetAircraftDrawArgumentValue(90)

        PlayerData.AA = ExportScript.Tools.GetArgumentsValue(47, "%d")
        PlayerData.AG = ExportScript.Tools.GetArgumentsValue(48, "%d")
        PlayerData.Arm = ExportScript.Tools.GetArgumentsValue(49, "%d")
    elseif (ExportScript.ModuleName == "F-86F Sabre") then
        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(184)
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(182)
    elseif (ExportScript.ModuleName == "I-16") then
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
    elseif (ExportScript.ModuleName == "L-39ZA") then
        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(184)
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(182)
    elseif (ExportScript.ModuleName == "JF-17") then
        PlayerData.AltGearLeft  = ExportScript.Tools.GetArgumentsValue(101, "%d")
        PlayerData.AltGearNose  = ExportScript.Tools.GetArgumentsValue(102, "%d")
        PlayerData.AltGearRigh  = ExportScript.Tools.GetArgumentsValue(103, "%d")
        -- nozzle
        PlayerData.MechNozzLeft = LoGetAircraftDrawArgumentValue(90)

        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
        -- brake
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(182)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(184)

        PlayerData.AA = ExportScript.Tools.GetArgumentsValue(163, "%d")
        PlayerData.AG = ExportScript.Tools.GetArgumentsValue(164, "%d")
        PlayerData.Arm = ExportScript.Tools.GetArgumentsValue(509, "%d")
    elseif (ExportScript.ModuleName == "M-2000C") then
        PlayerData.AltGearLeft  = ExportScript.Tools.GetArgumentsValue(417, "%d")
        PlayerData.AltGearNose  = ExportScript.Tools.GetArgumentsValue(418, "%d")
        PlayerData.AltGearRigh  = ExportScript.Tools.GetArgumentsValue(419, "%d")
        PlayerData.IndHook         = ExportScript.Tools.GetArgumentsValue(414, "%d")
        -- refueling
        PlayerData.MechRefueling = LoGetAircraftDrawArgumentValue(22)
        -- nozzle
        PlayerData.MechNozzLeft = LoGetAircraftDrawArgumentValue(90)

        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
        -- brake
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(182)
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(184)

        PlayerData.Arm = ExportScript.Tools.GetArgumentsValue(234, "%d")
    elseif ((ExportScript.ModuleName == "Mirage-F1CE") or
            (ExportScript.ModuleName == "Mirage-F1B") or
            (ExportScript.ModuleName == "Mirage-F1EE")) then
        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)

        PlayerData.MechNozzLeft = LoGetAircraftDrawArgumentValue(90)

        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(184)
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(182)

        local arm = ExportScript.Tools.GetArgumentsValue(433, "%.1f")
        if (arm == "0.0") then
            PlayerData.Arm = 1
        elseif (arm == "1.0" or arm == "0.5") then
            PlayerData.Arm = 0
        end
    elseif ((ExportScript.ModuleName == "MB-339A") or
            (ExportScript.ModuleName == "MB-339APAN")) then
        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(21)
    elseif (ExportScript.ModuleName == "Mi-24P") then
        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
    elseif (ExportScript.ModuleName == "MiG-15bis") then
        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(184)
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(182)
    elseif (ExportScript.ModuleName == "MiG-19P") then
        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(182)
        PlayerData.MechAirBrakeRigh = LoGetAircraftDrawArgumentValue(184)
    elseif (ExportScript.ModuleName == "MiG-21Bis") then
        PlayerData.MechGearNose  = LoGetAircraftDrawArgumentValue(0)
        PlayerData.MechGearLeft  = LoGetAircraftDrawArgumentValue(5)
        PlayerData.MechGearRigh  = LoGetAircraftDrawArgumentValue(3)
        PlayerData.MechAirBrakeLeft = LoGetAircraftDrawArgumentValue(21)
    else
        
    end
end

function ExportScript.Tools.WriteToNavFiles()
    if (ExportScript.Fdr ~= nil) then
        -- 0-6
        local data1 = string.format("%d;%s;%.6f;%.6f;%d;%d;%d;", timestamp, ExportScript.Tools.GetTime(), PlayerData.Lon, PlayerData.Lat, PlayerData.Alt, PlayerData.Balt, PlayerData.RAlt)
        -- 7-11
        local data2 = string.format("%d;%d;%d;%d;%.2f;", PlayerData.Ias, PlayerData.Tas, PlayerData.Gspd, PlayerData.Vspd, PlayerData.Mach)
        -- 12-13
        local data3 = string.format("%.1f;%.1f;", PlayerData.Aoa, PlayerData.Acc)
        -- 14-15
        local data4 = string.format("%d;%d;", PlayerData.Hdg, PlayerData.Magvar)
        -- 16-18
        local data5 = string.format("%.1f;%.1f;%d;", PlayerData.Pitch, PlayerData.Bank, PlayerData.Yaw)
        -- 19-20
        local data6 = string.format("%d;%d;", PlayerData.WindSpd, PlayerData.WindAng)
        -- 21-24
        local data7 = string.format("%d;%d;%d;%d;", PlayerData.OnGround, PlayerData.AltGearLeft, PlayerData.AltGearNose, PlayerData.AltGearRigh)
        -- 25-28
        local data8 = string.format("%d;%d;%.1f;%.1f;", PlayerData.IndRefueling, PlayerData.IndHook, PlayerData.ThrottleLeft, PlayerData.ThrottleRigh)
        -- 29-33
        local data9 = string.format("%.1f;%.1f;%d;%.2f;%.2f;", PlayerData.EngineRpmLeft, PlayerData.EngineRpmRigh, PlayerData.FuelFlow, PlayerData.MechNozzLeft, PlayerData.MechNozzRigh)
        -- 34-36
        local data10 = string.format("%.1f;%.1f;%.1f;", PlayerData.MechGearNose, PlayerData.MechGearLeft, PlayerData.MechGearRigh)
        -- 37-40
        local data11 = string.format("%.1f;%.1f;%.1f;%.1f;", PlayerData.MechAirBrakeLeft, PlayerData.MechAirBrakeRigh, PlayerData.MechRefueling, PlayerData.MechHook)
        -- 41-52
        local data12 = string.format("%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;",
        PlayerData.Cam.x.x, PlayerData.Cam.x.y, PlayerData.Cam.x.z, PlayerData.Cam.y.x, PlayerData.Cam.y.y, PlayerData.Cam.y.z, PlayerData.Cam.z.x, PlayerData.Cam.z.y, PlayerData.Cam.z.z, PlayerData.Cam.p.x, PlayerData.Cam.p.y, PlayerData.Cam.p.z)

        local csvPacket = string.format("%s%s%s%s%s%s%s%s%s%s%s%s\n", data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12)
        ExportScript.Fdr.CsvFileWrite(csvPacket)

        local navPacket = string.format("%.6f,%.6f,%d\n", PlayerData.Lon, PlayerData.Lat, PlayerData.AltM)
        ExportScript.Fdr.NavFileWrite(navPacket)
    end
end

function ExportScript.Tools.ProcessNavDataD()
	ExportScript.Tools.NavDataD = {}
    ExportScript.Tools.NavDataD[0]  = string.format("%d", ExportScript.Tools.GetTime())
    ExportScript.Tools.NavDataD[60] = string.format("%d", PlayerData.WindAng)
    ExportScript.Tools.NavDataD[61] = string.format("%d", PlayerData.WindSpd)
    ExportScript.Tools.NavDataD[70] = string.format("%010.6f", PlayerData.Lat)
	ExportScript.Tools.NavDataD[71] = string.format("%010.6f", PlayerData.Lon)
    ExportScript.Tools.NavDataD[72] = string.format("%.1f", PlayerData.Hdg)
    ExportScript.Tools.NavDataD[73] = string.format("%.1f", PlayerData.Magvar)
	ExportScript.Tools.NavDataD[74] = string.format("%d", PlayerData.Alt)
	ExportScript.Tools.NavDataD[75] = string.format("%d", PlayerData.RAlt)
	ExportScript.Tools.NavDataD[76] = string.format("%d", PlayerData.Ias)
	ExportScript.Tools.NavDataD[77] = string.format("%d", PlayerData.Vspd)
	ExportScript.Tools.NavDataD[78] = string.format("%.2f", PlayerData.Mach)
	ExportScript.Tools.NavDataD[79] = string.format("%.1f", PlayerData.Acc)
	ExportScript.Tools.NavDataD[80] = string.format("%.1f", PlayerData.Aoa)
	ExportScript.Tools.NavDataD[100] = string.format("%.1f", PlayerData.MechGearLeft)
	ExportScript.Tools.NavDataD[101] = string.format("%.1f", PlayerData.MechGearNose)
	ExportScript.Tools.NavDataD[102] = string.format("%.1f", PlayerData.MechGearRigh)
	ExportScript.Tools.NavDataD[103] = string.format("%.1f", PlayerData.MechAirBrakeLeft)
	ExportScript.Tools.NavDataD[210] = string.format("%d", PlayerData.AA)
	ExportScript.Tools.NavDataD[211] = string.format("%d", PlayerData.AG)
	ExportScript.Tools.NavDataD[212] = string.format("%d", PlayerData.Arm)

	if ExportScript.Tools.NavDataD ~= nil then
		for key, value in pairs(ExportScript.Tools.NavDataD) do
				ExportScript.Tools.SendNavData(key, value)
		end
	end
end

function ExportScript.Tools.ProcessNavGround()
    local obj = LoGetWorldObjects()
    if obj == nil then
        return
    end

    local gndObjects = false
    local id

    ExportScript.Tools.NavDataGnd = {}

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
                --
                local static = 0
                if (val.Flags.Static == true) then
                    static = 1
                end
                local packetObjects =
                string.format(
                    "%d" .. separator .. -- Coalition ID
                    "%.6f" .. separator .. -- Lat
                    "%.6f" .. separator .. -- Lng
                    "%d" .. separator .. -- type
                    "%d" .. separator .. -- hum
                    "%d" .. separator .. -- invisible
                    "%d" .. separator .. -- static
                    "%s" .. separator  -- Name
                    -- "%s" .. separator -- Name
                    ,

                    val.CoalitionID,			-- CoalitionID (1 or 2)
                    val.LatLongAlt.Lat, 		-- Lat
                    val.LatLongAlt.Long,		-- Lng
                    val.Type.level2,			-- type
                    hum,			-- hum
                    invisible,
                    static,
                    val.Type.level4
                    -- val.Name
                )
                ExportScript.Tools.NavDataGnd[id] = packetObjects
                gndObjects = true
            end
        end
    end

    if gndObjects then
        ExportScript.Tools.SendPacket("N4G" .. separator .. "start" .. separator .. "\n")
        for key, value in pairs(ExportScript.Tools.NavDataGnd) do
            ExportScript.Tools.SendNavAllData("N4G" .. separator .. key, value)
        end
        ExportScript.Tools.SendPacket("N4G" .. separator .. "stop" .. separator .. "\n")
    end
end

function ExportScript.Tools.ProcessNavAir()
    local obj = LoGetWorldObjects()
    if obj == nil then
        return
    end

    local objects = false
    local id

    ExportScript.Tools.NavDataAll = {}

    for key, val in pairs(obj) do
        id = key
        if (val.Type.level1 == 1 and val.Type.level2 < 3) then
            if val.CoalitionID == 0 then
            elseif (key ~= playerId) then
                if val.Flags.Born == true then
                    --
                    local hum = 0
                    if (val.Flags.Human == true) then
                        hum = 1
                    end
                    --
                    local invisible = 0
                    if (val.Flags.Invisible == true) then
                        invisible = 1
                    end
                    --
                    local static = 0
                    if (val.Flags.Static == true) then
                        static = 1
                    end

                    local packetObjects =
                    string.format(
                        "%d" .. separator .. -- Coalition ID
                        "%.6f" .. separator .. -- Lat
                        "%.6f" .. separator .. -- Lng
                        "%d" .. separator .. -- type
                        "%d" .. separator .. -- type
                        "%d" .. separator .. -- hum
                        "%d" .. separator .. -- invisible
                        "%d" .. separator .. -- static
                        -- "%d," .. separator .. -- alt
                        "%d" .. separator  -- Hdg
                        -- "%s" .. separator -- Name
                        ,

                        val.CoalitionID,			-- CoalitionID (1 or 2)
                        val.LatLongAlt.Lat, 		-- Lat
                        val.LatLongAlt.Long,		-- Lng
                        val.Type.level2,			-- type
                        val.Type.level3,			-- type
                        hum,			-- hum
                        invisible,
                        static,
                        -- val.LatLongAlt.Alt * m2feets, 		-- ALT
                        val.Heading * (180/math.pi)				-- HDG
                        -- val.Name					-- Name
                    )
                    ExportScript.Tools.NavDataAll[id] = packetObjects
                    objects = true
                end
            end
        end
    end

    if objects then
        ExportScript.Tools.SendPacket("N4A" .. separator .. "start" .. separator .. "\n")
        for key, value in pairs(ExportScript.Tools.NavDataAll) do
            ExportScript.Tools.SendNavAllData("N4A" .. separator .. key, value)
        end
        ExportScript.Tools.SendPacket("N4A" .. separator .. "stop" .. separator .. "\n")
    end
end

function ExportScript.Tools.ProcessNavNav()
    local obj = LoGetWorldObjects()
    if obj == nil then
        return
    end

    local objects = false
    local id

    ExportScript.Tools.NavDataNav = {}

    for key, val in pairs(obj) do
        id = key
        if (val.Type.level1 == 3) then
            if val.Flags.Born == true then
                --
                local invisible = 0
                if (val.Flags.Invisible == true) then
                    invisible = 1
                end
                --
                local static = 0
                if (val.Flags.Static == true) then
                    static = 1
                end
                local packetObjects =
                string.format(
                    "%d" .. separator .. -- Coalition ID
                    "%.6f" .. separator .. -- Lat
                    "%.6f" .. separator .. -- Lng
                    "%d" .. separator .. -- type
                    "%d" .. separator .. -- invisible
                    "%d" .. separator  -- static
                    -- "%s" .. separator -- Name
                    ,

                    val.CoalitionID,			-- CoalitionID (1 or 2)
                    val.LatLongAlt.Lat, 		-- Lat
                    val.LatLongAlt.Long,		-- Lng
                    val.Type.level3,			-- type
                    invisible,
                    static
                    -- val.Name					-- Name
                )
                ExportScript.Tools.NavDataNav[id] = packetObjects
                objects = true
            end
        end
    end

    if objects then
        ExportScript.Tools.SendPacket("N4N" .. separator .. "start" .. separator .. "\n")
        for key, value in pairs(ExportScript.Tools.NavDataNav) do
            ExportScript.Tools.SendNavAllData("N4N" .. separator .. key, value)
        end
        ExportScript.Tools.SendPacket("N4N" .. separator .. "stop" .. separator .. "\n")
    end
end

function ExportScript.Tools.ProcessNavWeapon()
    local obj = LoGetWorldObjects()
    if obj == nil then
        return
    end

    local weapons = false
    local id

    ExportScript.Tools.NavDataWeapons = {}

    for key, val in pairs(obj) do
        id = key

        if (val.Type.level1 == 4 and (val.Type.level2 == 4 or val.Type.level2 == 5)) then
            local packetWeapons =
            string.format(
                "%d" .. separator ..    -- CoalitionID (1 or 2)
                "%d" .. separator ..    -- Type
                "%.6f" .. separator ..  -- Lat
                "%.6f" .. separator ..  -- Lng
                "%s" .. separator       -- Name
                ,

                val.CoalitionID,		-- CoalitionID (1 or 2)
                val.Type.level2,        -- type
                val.LatLongAlt.Lat,     -- Lat
                val.LatLongAlt.Long,	-- Lng
                val.Name                -- Name
            )
            ExportScript.Tools.NavDataWeapons[id] = packetWeapons
            weapons = true
        end
    end

    if weapons then
        ExportScript.Tools.SendPacket("N4W" .. separator .. "start" .. separator .. "\n")
        for key, value in pairs(ExportScript.Tools.NavDataWeapons) do
            ExportScript.Tools.SendNavAllData("N4W" .. separator .. key, value)
        end
        ExportScript.Tools.SendPacket("N4W" .. separator .. "stop" .. separator .. "\n")
    end
end

function ExportScript.Tools.ProcessOutput()
    local _coStatus

    local _info = LoGetSelfData()
    if _info ~= nil then
        if ExportScript.ModuleName ~= _info.Name then
            ExportScript.NoLuaExportBeforeNextFrame = false
			ExportScript.Tools.SelectModule()
			return
        else
            if (initiated == false) then
                ExportScript.Tools.ExportInit()
                initiated = true
            end
        end
        _info = nil
    end

    local _device = GetDevice(0)
    if type(_device) == "table" and ExportScript.FoundDCSModule then
        _device:update_arguments()

        ExportScript.coProcessArguments_EveryFrame = coroutine.create(ExportScript.Tools.ProcessArguments)
        _coStatus = coroutine.resume( ExportScript.coProcessArguments_EveryFrame, _device, ExportScript.EveryFrameArguments)

        ExportScript.coProcessDCSHighImportance = coroutine.create(ExportScript.ProcessDCSHighImportance)
        _coStatus = coroutine.resume( ExportScript.coProcessDCSHighImportance, _device)

        if ExportScript.FirstNewDataSend and ExportScript.FirstNewDataSendCount == 0 then
            ExportScript.Tools.ResetChangeValues()
            ExportScript.FirstNewDataSend = false
        else
            ExportScript.FirstNewDataSendCount = ExportScript.FirstNewDataSendCount - 1
        end
        ExportScript.lastExportTimeHI = ExportScript.lastExportTimeHI + ExportScript.Config.ExportInterval

		if ExportScript.lastExportTimeHI > ExportScript.Config.ExportLowTickInterval then
            ExportScript.coProcessArguments_Arguments = coroutine.create(ExportScript.Tools.ProcessArguments)
            _coStatus = coroutine.resume( ExportScript.coProcessArguments_Arguments, _device, ExportScript.Arguments)

            ExportScript.coProcessDCSLowImportance = coroutine.create(ExportScript.ProcessDCSLowImportance)
            _coStatus = coroutine.resume( ExportScript.coProcessDCSLowImportance, _device)

            ExportScript.lastExportTimeHI = 0
        end

        ExportScript.Tools.FlushData()

        timestamp = LoGetModelTime()

        if (ExportScript.Config.ExportNavData == true and (ExportScript.Config.WriteNavFile or lShowOnMapPlayer)) then
            if (timestamp > timestampNav + (ExportScript.Tools.GetMapPlayerDiv() * timeSecPlayer)) then

                ExportScript.Tools.GetPlayerData()

                if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
                    local coProcessWriteFile = coroutine.create(ExportScript.Tools.WriteToNavFiles)
                    _coStatus = coroutine.resume(coProcessWriteFile)
                end
                if lShowOnMapPlayer then
                    local coProcessNavData = coroutine.create(ExportScript.Tools.ProcessNavDataD)
                    _coStatus = coroutine.resume(coProcessNavData)
                end
                timestampNav = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapWea == true) then
            if (timestamp > timestampNavWea + (ExportScript.Tools.GetMapMissileDiv() * timeSecWea)) then
                local coProcessNavWeapon = coroutine.create(ExportScript.Tools.ProcessNavWeapon)
                _coStatus = coroutine.resume(coProcessNavWeapon)
                timestampNavWea = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapAir == true) then
            if (timestamp > timestampNavAir + (ExportScript.Tools.GetMapPlanesDiv() * timeSecAir)) then
                local coProcessNavObjects = coroutine.create(ExportScript.Tools.ProcessNavAir)
                _coStatus = coroutine.resume(coProcessNavObjects)
                timestampNavAir = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapNav == true) then
            if (timestamp > timestampNavNav + timeSecNav) then
                local coProcessNavNavy = coroutine.create(ExportScript.Tools.ProcessNavNav)
                _coStatus = coroutine.resume(coProcessNavNavy)
                timestampNavNav = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapGnd == true) then
            if (timestamp > timestampNavGnd + timeSecGnd) then
                local coProcessNavGround = coroutine.create(ExportScript.Tools.ProcessNavGround)
                _coStatus = coroutine.resume(coProcessNavGround)
                timestampNavGnd = timestamp
            end
        end

     
        if (ExportScript.Config.ExportNavData == true) then
            ExportScript.Tools.FlushNavData()
        end

    elseif ExportScript.FoundFCModule then
        ExportScript.AF.EventNumber = os.clock()

        ExportScript.coProcessGlassCockpitFCHighImportance = coroutine.create(ExportScript.ProcessFCHighImportance)
        _coStatus = coroutine.resume( ExportScript.coProcessGlassCockpitFCHighImportance)

        if ExportScript.FirstNewDataSend and ExportScript.FirstNewDataSendCount == 0 then
            ExportScript.Tools.ResetChangeValues()
            ExportScript.FirstNewDataSend = false
        else
            ExportScript.FirstNewDataSendCount = ExportScript.FirstNewDataSendCount - 1
        end
        ExportScript.lastExportTimeHI = ExportScript.lastExportTimeHI + ExportScript.Config.ExportInterval

		if ExportScript.lastExportTimeHI > ExportScript.Config.ExportLowTickInterval then
            ExportScript.coProcessFCLowImportance = coroutine.create(ExportScript.ProcessFCLowImportance)
            _coStatus = coroutine.resume( ExportScript.coProcessFCLowImportance)

            ExportScript.lastExportTimeHI = 0
        end

        timestamp = LoGetModelTime()

        if (ExportScript.Config.ExportNavData == true and (ExportScript.Config.WriteNavFile or lShowOnMapPlayer)) then
            if (timestamp > timestampNav + (ExportScript.Tools.GetMapPlayerDiv() * timeSecPlayer)) then

                ExportScript.Tools.GetPlayerData()

                if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
                    local coProcessWriteFile = coroutine.create(ExportScript.Tools.WriteToNavFiles)
                    _coStatus = coroutine.resume(coProcessWriteFile)
                end
                if lShowOnMapPlayer then
                    local coProcessNavData = coroutine.create(ExportScript.Tools.ProcessNavDataD)
                    _coStatus = coroutine.resume(coProcessNavData)
                end
                timestampNav = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapWea == true) then
            if (timestamp > timestampNavWea + (ExportScript.Tools.GetMapMissileDiv() * timeSecWea)) then
                local coProcessNavWeapon = coroutine.create(ExportScript.Tools.ProcessNavWeapon)
                _coStatus = coroutine.resume(coProcessNavWeapon)
                timestampNavWea = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapAir == true) then
            if (timestamp > timestampNavAir + (ExportScript.Tools.GetMapPlanesDiv() * timeSecAir)) then
                local coProcessNavObjects = coroutine.create(ExportScript.Tools.ProcessNavAir)
                _coStatus = coroutine.resume(coProcessNavObjects)
                timestampNavAir = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapNav == true) then
            if (timestamp > timestampNavNav + timeSecNav) then
                local coProcessNavNavy = coroutine.create(ExportScript.Tools.ProcessNavNav)
                _coStatus = coroutine.resume(coProcessNavNavy)
                timestampNavNav = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapGnd == true) then
            if (timestamp > timestampNavGnd + timeSecGnd) then
                local coProcessNavGround = coroutine.create(ExportScript.Tools.ProcessNavGround)
                _coStatus = coroutine.resume(coProcessNavGround)
                timestampNavGnd = timestamp
            end
        end

        ExportScript.Tools.FlushData()

        if (ExportScript.Config.ExportNavData == true) then
            ExportScript.Tools.FlushNavData()
        end
    else
        if ExportScript.FoundNoModul then
            ExportScript.Tools.SelectModule()
        end
    end
end

function ExportScript.Tools.StrSplit(str, delim, maxNb)
    if string.find(str, delim) == nil then
        return { str }
    end
    if maxNb == nil or maxNb < 1 then
        maxNb = 0
    end
    local lResult = {}
    local lPat = "(.-)" .. delim .. "()"
    local lNb  = 0
    local lLastPos
    for part, pos in string.gfind(str, lPat) do
        lNb = lNb + 1
        lResult[lNb] = part
        lLastPos = pos
        if lNb == maxNb then break end
    end
    if lNb ~= maxNb then
        lResult[lNb + 1] = string.sub(str, lLastPos)
    end
    return lResult
end

function ExportScript.Tools.ProcessArguments(device, arguments)
    local _argument , _format , _argumentValue
    local _counter = 0

    for _argument, _format in pairs(arguments) do
        _argumentValue = string.format(_format,device:get_argument_value(_argument))

        ExportScript.Tools.SendData(_argument, _argumentValue)
    end
end

function ExportScript.Tools.GetArgumentsValue(argument, format)
    local _device = GetDevice(0)
    local _argumentValue

    if type(_device) == "table" then
        _device:update_arguments()
        _argumentValue = string.format(format,_device:get_argument_value(argument))
        return _argumentValue
    else
        return 0
    end
end

function ExportScript.Tools.SendPacket(packet)
    local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() end)
    if (lDeviceIpMap ~= "") then
        try(ExportScript.UDPsender:sendto(packet, lDeviceIpMap, lDevicePortMap))
    end
end

function ExportScript.Tools.SendShortData(message)
    local _flushData = ExportScript.socket.protect(function()
        local _packet = message .. "\n"

        local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)

        if ExportScript.Config.Export then
            if (ExportScript.Config.Host == lDeviceIpMap) then
                if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice == false) then
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                elseif (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                end
            else
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
            end
        end

        if ExportScript.Config.Export2 then
            if (ExportScript.Config.Host2 == lDeviceIpMap) then
                if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice == false) then
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                elseif (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port))
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                end
            else
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port))
            end
        end

        if ExportScript.Config.Export3 then
            if (ExportScript.Config.Host3 == lDeviceIpMap) then
                if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice == false) then
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                elseif (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port))
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                end
            else
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port))
            end
        end

        if ExportScript.Config.Export4 then
            if (ExportScript.Config.Host4 == lDeviceIpMap) then
                if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice == false) then
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                elseif (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port))
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                end
            else
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port))
            end
        end

        if ExportScript.Config.Export5 then
            if (ExportScript.Config.Host5 == lDeviceIpMap) then
                if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice == false) then
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                elseif (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host5, ExportScript.Config.Port))
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                end
            else
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host5, ExportScript.Config.Port))
            end
        end

        if ExportScript.Config.Export6 then
            if (ExportScript.Config.Host6 == lDeviceIpMap) then
                if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice == false) then
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                elseif (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host6, ExportScript.Config.Port))
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                end
            else
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host6, ExportScript.Config.Port))
            end
        end

        if ExportScript.Config.Export7 then
            if (ExportScript.Config.Host7 == lDeviceIpMap) then
                if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice == false) then
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                elseif (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host7, ExportScript.Config.Port))
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                end
            else
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host7, ExportScript.Config.Port))
            end
        end

        if ExportScript.Config.Export8 then
            if (ExportScript.Config.Host8 == lDeviceIpMap) then
                if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice == false) then
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                elseif (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host8, ExportScript.Config.Port))
                    try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
                end
            else
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host8, ExportScript.Config.Port))
            end
        end
	end)
    _flushData()
end

function ExportScript.Tools.SendData(id, value)
    if string.len(value) > 3 and value == string.sub("-0.00000000",1, string.len(value)) then
        value = value:sub(2)
    end

    if ExportScript.LastData[id] == nil or ExportScript.LastData[id] ~= value then
        local _data    =  id .. "=" .. value
        local _dataLen = string.len(_data)

        if _dataLen + ExportScript.PacketSize > 576 then
            ExportScript.Tools.FlushData()
        end

        table.insert(ExportScript.SendStrings, _data)
        ExportScript.LastData[id] = value
        ExportScript.PacketSize   = ExportScript.PacketSize + _dataLen + 1
    end
end

function ExportScript.Tools.FlushData()
    local _flushData = ExportScript.socket.protect(function()
        if #ExportScript.SendStrings > 0 then
            local _packet = "R4G" .. separator .. table.concat(ExportScript.SendStrings, separator) .. separator .. "\n"

            local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)

            if ExportScript.Config.Export then
                if (ExportScript.Config.Host == lDeviceIpMap) then
                    if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                        try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
                    end
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export2 then
                if (ExportScript.Config.Host2 == lDeviceIpMap) then
                    if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                        try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port))
                    end
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export3 then
                if (ExportScript.Config.Host3 == lDeviceIpMap) then
                    if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                        try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port))
                    end
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export4 then
                if (ExportScript.Config.Host4 == lDeviceIpMap) then
                    if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                        try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port))
                    end
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export5 then
                if (ExportScript.Config.Host5 == lDeviceIpMap) then
                    if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                        try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host5, ExportScript.Config.Port))
                    end
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host5, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export6 then
                if (ExportScript.Config.Host6 == lDeviceIpMap) then
                    if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                        try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host6, ExportScript.Config.Port))
                    end
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host6, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export7 then
                if (ExportScript.Config.Host7 == lDeviceIpMap) then
                    if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                        try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host7, ExportScript.Config.Port))
                    end
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host7, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export8 then
                if (ExportScript.Config.Host8 == lDeviceIpMap) then
                    if (ExportScript.Config.MultiAppDevice ~= nil and ExportScript.Config.MultiAppDevice) then
                        try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host8, ExportScript.Config.Port))
                    end
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host8, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.StreamDeckExport then
                local _id = ""
                _id = ExportScript.Id
                local _packetStreamDeck = _id .. table.concat(ExportScript.SendStrings, ExportScript.Config.StreamDeckSeparator) .. "\n"

                try(ExportScript.UDPsender:sendto(_packetStreamDeck, ExportScript.Config.StreamDeckHost, ExportScript.Config.StreamDeckPort))
            end

            ExportScript.SendStrings = {}
            ExportScript.PacketSize  = 0

        end
    end)
    local ln, lerror = _flushData()
end

function ExportScript.Tools.SendNavData(id, value)
    if ExportScript.LastDataNav[id] == nil or ExportScript.LastDataNav[id] ~= value then
        local _data    =  id .. "=" .. value
        local _dataLen = string.len(_data)

        if _dataLen + ExportScript.PacketNavSize > 576 then
            ExportScript.Tools.FlushNavData()
        end

        table.insert(ExportScript.SendNavStrings, _data)
        ExportScript.LastDataNav[id] = value
        ExportScript.PacketNavSize   = ExportScript.PacketNavSize + _dataLen + 1
    end
end

function ExportScript.Tools.FlushNavData()
	local _flushData = ExportScript.socket.protect(function()
		if #ExportScript.SendNavStrings > 0 then
            local _packet = "N4D" .. separator ..
                table.concat(ExportScript.SendNavStrings, separator) .. separator .. "\n"

            local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)

            if (lDeviceIpMap ~= "") then
                try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
            end

			ExportScript.SendNavStrings = {}
			ExportScript.PacketNavSize  = 0
		else

		end
	end)
    _flushData()
end

function ExportScript.Tools.SendNavAllData(id, value)
    local _data = id .. separator .. value

    table.insert(ExportScript.SendNavAllStrings, _data)
    ExportScript.Tools.FlushNavAllData()
end

function ExportScript.Tools.FlushNavAllData()
	local _flushData = ExportScript.socket.protect(function()
        local _packet = table.concat(ExportScript.SendNavAllStrings, separator) .. "\n"
        local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() end)
        if (lDeviceIpMap ~= "") then
            try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, lDevicePortMap))
        end

        ExportScript.SendNavAllStrings = {}
	end)
    _flushData()
end

function ExportScript.Tools.ResetChangeValues()
    ExportScript.LastData   = {}
end

function ExportScript.Tools.SelectModule()
    ExportScript.FoundDCSModule = false
    ExportScript.FoundFCModule  = false
    ExportScript.FoundNoModul   = true

    local _info = LoGetSelfData()
    if _info == nil then
        return
    end

    ExportScript.ModuleName   = _info.Name
    local _moduleName         = ExportScript.ModuleName..".lua"
    local _moduleFile         = ""

    ExportScript.FoundNoModul = false

    for file in lfs.dir(ExportScript.Config.ExportModulePath) do
        if lfs.attributes(ExportScript.Config.ExportModulePath .. file, "mode") == "file" then
            if file == _moduleName then
                _moduleFile = ExportScript.Config.ExportModulePath .. file
            end
        end
    end

    if string.len(_moduleFile) > 1 then
        dofile(_moduleFile)

        ExportScript.FirstNewDataSend      = ExportScript.Config.FirstNewDataSend
        ExportScript.FirstNewDataSendCount = ExportScript.Config.FirstNewDataSendCount

        if ExportScript.FoundDCSModule then
            local _counter = 0
            for k, v in pairs(ExportScript.ConfigEveryFrameArguments) do
                _counter = _counter + 1
            end

            if _counter > 0 then
                ExportScript.EveryFrameArguments = ExportScript.ConfigEveryFrameArguments
            else
                ExportScript.EveryFrameArguments = {}
            end
            _counter = 0
            for k, v in pairs(ExportScript.ConfigArguments) do
                _counter = _counter + 1
            end

            if _counter > 0 then
                ExportScript.Arguments = ExportScript.ConfigArguments
            else
                ExportScript.Arguments = {}
            end

            ExportScript.ProcessDCSHighImportance = ExportScript.ProcessDCSConfigHighImportance
            ExportScript.ProcessDCSLowImportance  = ExportScript.ProcessDCSConfigLowImportance

        elseif ExportScript.FoundFCModule then
            ExportScript.ProcessFCHighImportance  = ExportScript.ProcessFCHighImportanceConfig
            ExportScript.ProcessFCLowImportance   = ExportScript.ProcessFCLowImportanceConfig
        end

        actualMap = ExportScript.Tools.GetMap(_info)
        ExportScript.Tools.FlushData()
    end
end

function ExportScript.Tools.GetMap(player)
    local lMap
    for Map, LatLong in pairs(ExportScript.Maps) do
        if player.LatLongAlt.Lat > LatLong.Lat2 and player.LatLongAlt.Lat < LatLong.Lat1 then
            if player.LatLongAlt.Long > LatLong.Long1 and player.LatLongAlt.Long < LatLong.Long2 then
                lMap = Map
                break
            end
        else
            lMap = "NA"
        end
    end
    return lMap
end

local function file_exists(name)
    local f = io.open(name,"r")
    if f ~= nil then io.close(f) return true else return false end
end

function ExportScript.Tools.GetMissionPath(version)
    local temp =  os.getenv('TEMP')
    local dirM = "\\Mission\\mission"

    if version == 0 then
        return (temp .. "\\DCS" .. dirM)
    elseif version == 1 then
        return (temp .. "\\DCS.openbeta" .. dirM)
    end
end

function ExportScript.Tools.GetCoalitionBullseye(coalition)
    local path
    local x = 0
    local y = 0
    local gps = {}
    gps.latitude = 0.0
    gps.longitude = 0.0

    path = ExportScript.Tools.GetMissionPath(ExportScript.Init.VersionStr)

    local exist = file_exists(path)
    if exist then
        dofile(path)

        if coalition == 0 then
            if (_G.mission.coalition.neutrals.bullseye ~= nil) then
                x = _G.mission.coalition.neutrals.bullseye.x
                y = _G.mission.coalition.neutrals.bullseye.y
            end
        elseif coalition == 1 then
            if (_G.mission.coalition.red.bullseye ~= nil) then
                x = _G.mission.coalition.red.bullseye.x
                y = _G.mission.coalition.red.bullseye.y
            end
        elseif coalition == 2 then
            if (_G.mission.coalition.blue.bullseye ~= nil) then
                x = _G.mission.coalition.blue.bullseye.x
                y = _G.mission.coalition.blue.bullseye.y
            end
        end
        gps.latitude = LoLoCoordinatesToGeoCoordinates(x,y).latitude
        gps.longitude = LoLoCoordinatesToGeoCoordinates(x,y).longitude
    end
    return gps
end

function ExportScript.Tools.RoundFreqeuncy(Freqeuncy, Format, PrefixZeros, LeastValue)
	local _freqeuncy   = Freqeuncy   or 0.0
	local _format      = Format      or "7.3"
	local _prefixzeros = PrefixZeros or false
	local _leastvalue  = LeastValue or 0.025
	local _tmpString   = ""
	local _tmp1, _tmp2, _tmp3, _tmp4  = 0, 0, 0, 0

	local from ,to = string.find(_format, "%.")
	_tmp1 = string.sub(_format, 0, to)
	_tmp2 = string.sub(_format, to)
	_tmp1 = tonumber(string.sub(_tmp1, string.find(_tmp1, "%d+")))
	_tmp2 = tonumber(string.sub(_tmp2, string.find(_tmp2, "%d+")))

	local _tmp3, _tmp4 = math.modf(_freqeuncy)
	local bla3, bla4 =  math.modf(_tmp4 / _leastvalue)

	_tmpString = (_tmp3 + (bla3 * _leastvalue ))

	_tmpString = string.format("%.".._tmp2.."f", _tmpString)

	_tmpString = string.rep(" ", _tmp1 - string.len(_tmpString)) .. _tmpString

	if _prefixzeros then
		_tmpString = string.gsub(_tmpString, " ", "0")
	end

	return _tmpString
end

function ExportScript.Tools.getListCockpitParam(param)
    local lpos1, pos2, lpos3, pos4
    local paramTxt = ""
    local lCockpitParams = list_cockpit_params()
    if lCockpitParams ~= nil then
        lpos1, pos2 = lCockpitParams:find(param .. ":", 1)
        if pos2 ~= nil then
            lpos3, pos4 = lCockpitParams:find("%c", pos2)
            if lpos3 ~= nil then
                paramTxt = lCockpitParams:sub(pos2 + 1, lpos3 - 2)
            else
                paramTxt = lCockpitParams:sub(pos2 + 1)
            end
        end
        return paramTxt
    end
end

function ExportScript.Tools.getListCockpitParams()
	local ListIindicator = list_cockpit_params()
	local TmpReturn = {}
    local ListindicatorMatch = ListIindicator:gmatch("([^\n]+):([^\n]+)")

    while true do
        local Key, Value = ListindicatorMatch()
        if not Key then
            break
        end
        TmpReturn[Key] = Value
    end
	return TmpReturn
end

function ExportScript.Tools.getListCockpitParamsStr()
	local ListIindicator = list_cockpit_params()
	local TmpReturn = {}
    local ListindicatorMatch = ListIindicator:gmatch("([^\n]+):\"([^\n]+)\"")

    while true do
        local Key, Value = ListindicatorMatch()
        if not Key then
            break
        end
        TmpReturn[Key] = Value
    end
	return TmpReturn
end

function ExportScript.Tools.getListIndicatorValue(IndicatorID)
	local ListIindicator = list_indication(IndicatorID)
	local TmpReturn = {}

	if ListIindicator == "" then
		return nil
	end

	local ListindicatorMatch = ListIindicator:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local Key, Value = ListindicatorMatch()
		if not Key then
			break
		end
		TmpReturn[Key] = Value
	end

	return TmpReturn
end

function ExportScript.Tools.parseListIndicatorList(IndicatorID)
	local ret = {}
	local ListIindicator = list_indication(IndicatorID)
	if ListIindicator == "" then return nil end

	local m = ListIindicator:gmatch("([^\n]*)\n")
	local newval = false
	local name = nil
	local value = {}

	while true do
		local line = m()
		if not line then
			if name ~= nil then
				ret[name] = value
			end
			break
		end
		if line == "-----------------------------------------" then
			newval = true
			if name ~= nil then
				ret[name] = value
				name = nil
				value = {}
			end
		else
			if newval == true then
				newval = false
				name = line
			else
				value[#value+1] = line
			end
		end
	end
	return ret
end

function ExportScript.Tools.getListIndicatorValueByNameLeft(IndicatorID, NameID, Length)
	local ListIindicator = list_indication(IndicatorID)

	if ListIindicator == "" then
		return nil
    end

    local data = ""

	local ListindicatorMatch = ListIindicator:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local Key, Value = ListindicatorMatch()
		if not Key then
			break
        end
        if Key == NameID then
            data = Value
        end
	end
    while data:len() < Length do data = data .. " " end
	return data
end

function ExportScript.Tools.getListIndicatorValueByName(IndicatorID, NameID, Length)
	local ListIindicator = list_indication(IndicatorID)

	if ListIindicator == "" then
		return nil
    end

    local data = ""
    while data:len() < Length do data = data .. " " end

	local ListindicatorMatch = ListIindicator:gmatch("-----------------------------------------\n([^\n]+)\n([^\n]*)\n")
	while true do
		local Key, Value = ListindicatorMatch()
		if not Key then
			break
        end
        if Key == NameID then
            Value = data .. Value
            return Value:sub(-Length)
        end
	end
	return data
end

function ExportScript.Tools.DisplayFormat(String, maxChars, LEFTorRight, DAC)
	local lString      = String      or ""
	local lmaxChars    = maxChars    or 5
	local lLEFTorRight = LEFTorRight or "r"
	local lTmpLen      = 0
	local lRep         = " "

	lString = ExportScript.utf8.sub(lString, 0, lmaxChars)
	lTmpLen = ExportScript.utf8.len(lString)

	if lTmpLen < lmaxChars then
		if string.lower(lLEFTorRight) == "l" then
			lString = lString..string.rep(" ", lmaxChars - lTmpLen)
		else
			lString = string.rep(" ", lmaxChars - lTmpLen)..lString
		end
	end

	return lString
end

function ExportScript.Tools.mergeString(original_string, new_data, location)
	local new_data_length   = string.len(new_data)
	local before            = string.sub(original_string, 1, location)
	local after             = string.sub(original_string, location + new_data_length + 1)
	local base              = string.sub(original_string, location + 1, location + new_data_length)
	local merged            = {}

	for i = 1, new_data_length
	do
		local curr_base = string.sub(base, i, i)
		if curr_base  ~= " " then
			merged[i] = curr_base
		else
			merged[i] = string.sub(new_data, i, i)
		end
	end
	return before..table.concat(merged)..after
end

function ExportScript.Tools.split(stringvalue, delimiter)
    result = {};
    for match in (stringvalue..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

function ExportScript.Tools.coerce_nil_to_string(value)
	if value == nil then
		return ""
	else
		return value
	end
end

function ExportScript.Tools.round(number, decimals, method)
    if string.find(number, "%p" ) ~= nil then
        decimals = decimals or 0
        local lFactor = 10 ^ decimals
        if (method == "ceil" or method == "floor") then
            return math[method](number * lFactor) / lFactor
        else
            return tonumber(("%."..decimals.."f"):format(number))
        end
    else
        return number
    end
end

function ExportScript.Tools.GetFileData(fileName, n)
    local file = io.open(fileName, "r")
    local fTmp = io.open(fileName, "r")
    local count = 1
    local lNum = 0

    if file ~= nil then
        for line in fTmp:lines() do
            lNum = lNum + 1
        end
        fTmp:close()

        for line in file:lines() do
            if n > lNum then
                return "-"
            else
                if count == n then
                    file:close()
                    return line
                end
                count = count + 1
            end
        end
        file:close()
        return 0
    else
        return 0
    end
end