ExportScript.Tools = {}

local PlayerData = {}

local isObjects = true
local isSensors = true
local isOwnship = true

local initiated = false

local lShowOnMapPlayer = true
local lShowOnMapObj = false
local lShowOnMapWea = false
local lShowOnMapAir = false
local lShowOnMapGnd = false

local actualMap
local lSelfNavData = true
local playerId

local lDeviceIpSelf = ""
local lDeviceIpTws = ""
local lDeviceIpMap = ""

-- const
local ms2knots  = 1.94384449 -- m/s to knots
local ms2fpm    = 196.85 -- m/s to feets/minute
local m2feets   = 3.2808399 -- meters to feets
local rad2deg   = 57.3 -- radians to degrees

local exportSelf = false
local exportTws = false

local timestamp = 0
local timestampNav = 0
local timestampNavObj = 0
local timestampNavWea = 0
local timestampNavAir = 0
local timestampNavGnd = 0

local timeSecPlayer = 1
local timeSecNav = 1
local timeSecObj = 4
local timeSecWea = 2
local timeSecAir = 4
local timeSecGnd = 10

ExportScript.Tools.LogPath = lfs.writedir()..[[Logs\pw-dev.log]]
ExportScript.Tools.DebugScript = false
local debugIp = "127.0.0.1"
local debugPort = ExportScript.Config.Port

function ExportScript.Tools.CheckObjectExport()
    isObjects = LoIsObjectExportAllowed()
    if isObjects == nil then
		return false
    end
    ExportScript.Tools.SendData("export objects: " .. tostring(isObjects))
    ExportScript.Tools.WriteToLog("export objects: " .. tostring(isObjects))
end
function ExportScript.Tools.CheckSensorExport()
    isSensors = LoIsSensorExportAllowed()
    ExportScript.Tools.SendData("export sensors: " .. tostring(isSensors))
    ExportScript.Tools.WriteToLog("export sensors: " .. tostring(isSensors))
end
function ExportScript.Tools.CheckOwnshipExport()
    isOwnship = LoIsOwnshipExportAllowed()
    ExportScript.Tools.SendData("export ownship: " .. tostring(isOwnship))
    ExportScript.Tools.WriteToLog("export ownship: " .. tostring(isOwnship))
end

-- deprecated
function ExportScript.Tools.ExportSelfData(value)
    exportSelf = value
end
function ExportScript.Tools.ExportTwsn(value)
    exportTws = value
end

function ExportScript.Tools.ExportMapPlayer(value)
    lShowOnMapPlayer = value
end
function ExportScript.Tools.ExportMapWea(value)
    lShowOnMapWea = value
end
function ExportScript.Tools.ExportMapAir(value)
    lShowOnMapAir = value
end
function ExportScript.Tools.ExportMapGnd(value)
    lShowOnMapGnd = value
end


function ExportScript.Tools.SetSecNav(value)
    timeSecPlayer = value
end
function ExportScript.Tools.SetSecWea(value)
    timeSecWea = value
end
function ExportScript.Tools.SetSecAir(value)
    timeSecAir = value
end
function ExportScript.Tools.SetSecGnd(value)
    timeSecGnd = value
end


function ExportScript.Tools.createUDPSender()
	ExportScript.socket = require("socket")

	local _createUDPSender = ExportScript.socket.protect(function()
		ExportScript.UDPsender = ExportScript.socket.udp()
		ExportScript.socket.try(ExportScript.UDPsender:setsockname("*", 0))
		--ExportScript.socket.try(ExportScript.UDPsender:settimeout(.004)) -- set the timeout for reading the socket; 250 fps
	end)
    _createUDPSender()
end

function ExportScript.Tools.createUDPListner()
	if ExportScript.Config.Listener then
		ExportScript.socket = require("socket")

		local _createUDPListner = ExportScript.socket.protect(function()
			ExportScript.UDPListener = ExportScript.socket.udp()
			ExportScript.socket.try(ExportScript.UDPListener:setsockname("*", ExportScript.Config.ListenerPort))
			ExportScript.socket.try(ExportScript.UDPListener:settimeout(.001)) -- set the timeout for reading the socket; 200 fps
		end)
        _createUDPListner()
	end
end

function ExportScript.Tools.ExportInit()
    playerId = ExportScript.Tools.GetPlayerId()
    ExportScript.Tools.SendShortData("EX=ON")
    ExportScript.Tools.SendShortData("Map=" .. actualMap .. ExportScript.Config.Separator)
    ExportScript.Tools.SendShortData("File=" .. ExportScript.ModuleName .. ExportScript.Config.Separator)
end

function ExportScript.Tools.ProcessInput()
    local _command, _commandArgs, _device
    -- C1,3001,4
    -- lComand = C
    -- _commandArgs[1] = 1 => _device
    -- _commandArgs[2] = 3001 => ButtonID
    -- _commandArgs[3] = 4 => Value
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

            -- R == Reset
            if _command == "R" then
                ExportScript.Tools.ResetChangeValues()
                initiated = false
            end

            if _command == "E" then
                lDeviceIpMap = from
                local opt = tonumber(string.sub(_input,2,-3))
                local vis = tonumber(string.sub(_input,3,-2))
                local val = tonumber(string.sub(_input,4,-1))
                if opt == 0 then
                    if (vis == 0) then
                        ExportScript.Tools.ExportMapPlayer(false)
                        lDeviceIpMap = ""
                    else
                        ExportScript.Tools.ExportMapPlayer(true)
                        ExportScript.Tools.SetSecNav(val)
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
            end

            if (_command == "C") then
                _commandArgs = ExportScript.Tools.StrSplit(string.sub(_input,2),",")
				local _deviceID = tonumber(_commandArgs[1])
                -- DCS Modules arguments
				if _deviceID < 1000 then
					_device = GetDevice(_commandArgs[1])
					if ExportScript.FoundDCSModule and type(_device) == "table" then
						_device:performClickableAction(_commandArgs[2],_commandArgs[3])
					end

                -- Buttons
                elseif _deviceID == 2000 then
                    if ExportScript.FoundDCSModule or ExportScript.FoundFCModule then
                        local lComandID = (tonumber(_commandArgs[2]))
                        if tonumber(_commandArgs[3]) == 1.0 then
                            LoSetCommand(lComandID)
                        end
                    end

                -- Analog
                elseif _deviceID == 2001 then
                    if ExportScript.FoundDCSModule or ExportScript.FoundFCModule then
                        local lComandID = (tonumber(_commandArgs[2]))
                        LoSetCommand(lComandID, _commandArgs[3])
                    end
                end
            end

            ExportScript.Tools.WriteToLog(from .. " : " .. _input .. "\n")
		end
	end
end

--! DEPRECATED
--* funkcja do przesylania danych nawigacyjnych konkretnych obiektow na mapie
function ExportScript.Tools.ProcessNavData()
    ExportScript.Tools.NavData = {}
    ExportScript.Tools.NavData["Lat"] = string.format("%010.6f", PlayerData.Lat)
	ExportScript.Tools.NavData["Lon"] = string.format("%010.6f", PlayerData.Lon)
    ExportScript.Tools.NavData["Magvar"] = string.format("%.1f", PlayerData.Magvar)
	ExportScript.Tools.NavData["AltFt"] = string.format("%d", PlayerData.Alt)
    ExportScript.Tools.NavData["Heading"] = string.format("%d", PlayerData.Hdg)
	ExportScript.Tools.NavData["IAS"] = string.format("%d", PlayerData.Ias)
	ExportScript.Tools.NavData["Mach"] = string.format("%.2f", PlayerData.Mach)
	ExportScript.Tools.NavData["G"] = string.format("%.1f", PlayerData.Acc)

	if ExportScript.Tools.NavData ~= nil then
		for key, value in pairs(ExportScript.Tools.NavData) do
				ExportScript.Tools.SendNavData(key, value)
		end
	end
end

--* Pobranie Id maszyny uzytkownika
function ExportScript.Tools.GetPlayerId()
	local id = LoGetPlayerPlaneId()
	if id == nil then
		return 0
    else
        return id
    end
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

--* Pobranie danych maszyny uzytkownika
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
    PlayerData.WindAng = math.atan2(PlayerData.Wind.y, PlayerData.Wind.x) * 180/math.pi

    if (ExportScript.ModuleName == "FA-18C_hornet") then
        PlayerData.AltGearLeft = ExportScript.Tools.GetArgumentsValue(165, "%d")
        PlayerData.AltGearNose = ExportScript.Tools.GetArgumentsValue(166, "%d")
        PlayerData.AltGearRigh = ExportScript.Tools.GetArgumentsValue(167, "%d")
    elseif (ExportScript.ModuleName == "F-14A-135-GR" or "F-14B") then
        PlayerData.AltGearLeft = ExportScript.Tools.GetArgumentsValue(8302, "%d")
        PlayerData.AltGearNose = ExportScript.Tools.GetArgumentsValue(8301, "%d")
        PlayerData.AltGearRigh = ExportScript.Tools.GetArgumentsValue(8305, "%d")
    elseif (ExportScript.ModuleName == "F-16C_50") then
    else
        PlayerData.AltGearLeft = 0
        PlayerData.AltGearNose = 0
        PlayerData.AltGearRigh = 0
    end
end

--* zapis danych do plikow
function ExportScript.Tools.WriteToNavFiles()
    if (ExportScript.Fdr ~= nil) then
        -- 0-6
        local data1 = string.format("%d;%s;%.6f;%.6f;%d;%d;%d;", timestamp, ExportScript.Tools.GetDateTime(), PlayerData.Lon, PlayerData.Lat, PlayerData.Alt, PlayerData.Balt, PlayerData.RAlt)
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
        -- 25-36
        local data8 = string.format("%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;%.2f;",
        PlayerData.Cam.x.x, PlayerData.Cam.x.y, PlayerData.Cam.x.z, PlayerData.Cam.y.x, PlayerData.Cam.y.y, PlayerData.Cam.y.z, PlayerData.Cam.z.x, PlayerData.Cam.z.y, PlayerData.Cam.z.z, PlayerData.Cam.p.x, PlayerData.Cam.p.y, PlayerData.Cam.p.z)
        
        local csvPacket = string.format("%s%s%s%s%s%s%s%s\n", data1, data2, data3, data4, data5, data6, data7, data8)
        ExportScript.Fdr.CsvFileWrite(csvPacket)

        local navPacket = string.format("%.6f,%.6f,%d\n", PlayerData.Lon, PlayerData.Lat, PlayerData.AltM)
        ExportScript.Fdr.NavFileWrite(navPacket)
    end
end

--* funkcja do przesylania danych nawigacyjnych konkretnych obiektow na mapie
function ExportScript.Tools.ProcessNavDataD()
	ExportScript.Tools.NavDataD = {}
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
	ExportScript.Tools.NavDataD[100] = string.format("%d", PlayerData.AltGearLeft)
	ExportScript.Tools.NavDataD[101] = string.format("%d", PlayerData.AltGearNose)
	ExportScript.Tools.NavDataD[102] = string.format("%d", PlayerData.AltGearRigh)
	-- ExportScript.Tools.NavDataD[80] = string.format("%.1f", lPitch)
	-- ExportScript.Tools.NavDataD[81] = string.format("%.1f", lBank)
	-- ExportScript.Tools.NavDataD[82] = string.format("%.1f", lYaw)

	if ExportScript.Tools.NavDataD ~= nil then
		for key, value in pairs(ExportScript.Tools.NavDataD) do
				ExportScript.Tools.SendNavData(key, value)
		end
	end
end

--* obsluga obiektow naziemnych
function ExportScript.Tools.ProcessNavGround()
    local obj = LoGetWorldObjects()
    if obj == nil then
        return
    end
    -- local threats = LoGetTWSInfo()

    local gndObjects = false
    local id

    ExportScript.Tools.NavDataGnd = {}

    for key, val in pairs(obj) do
        id = key
        -- local emitPower = 0

        -- if (val.Type.level2 == 8 or val.Type.level2 == 9 or val.Type.level2 == 16 or val.Type.level2 == 17) then
        if (val.Type.level2 == 16) then
            -- if threats then	
            --     for mode,emit in pairs (threats.Emitters) do
            --         if emit.ID == key then
            --             emitPower = emit.Power
            --         end
            --     end
            -- end
            local packetObjects =
            string.format(
                "%d" .. ExportScript.Config.Separator .. -- Coalition ID
                "%.6f" .. ExportScript.Config.Separator .. -- Lat
                "%.6f" .. ExportScript.Config.Separator .. -- Lng
                "%d" .. ExportScript.Config.Separator -- type
                -- "%f" .. ExportScript.Config.Separator
                ,

                val.CoalitionID,			-- CoalitionID (1 or 2)
                val.LatLongAlt.Lat, 		-- Lat
                val.LatLongAlt.Long,		-- Lng
                val.Type.level2			-- type
                -- emitPower
            )
            ExportScript.Tools.NavDataGnd[id] = packetObjects
            gndObjects = true
        end
    end

    if gndObjects then
        for key, value in pairs(ExportScript.Tools.NavDataGnd) do
            ExportScript.Tools.SendNavAllData("N4G" .. ExportScript.Config.Separator .. key, value)
        end
        ExportScript.Tools.SendPacket("N4G" .. ExportScript.Config.Separator .. "stop" .. ExportScript.Config.Separator .. "\n")
    end
end

--* obsluga obiektow "w locie"
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
        if ((val.Type.level1 == 1 or val.Type.level1 == 3) and val.Type.level2 ~= 3) then
        -- if (val.GroupName ~= nil) then
            if val.CoalitionID == 0 then
            elseif (key ~= playerId) then
                local packetObjects =
                string.format(
                    "%d" .. ExportScript.Config.Separator .. -- Coalition ID
                    "%.6f" .. ExportScript.Config.Separator .. -- Lat
                    "%.6f" .. ExportScript.Config.Separator .. -- Lng
                    -- "%d," .. ExportScript.Config.Separator .. -- alt
                    "%d" .. ExportScript.Config.Separator .. -- Hdg
                    "%d" .. ExportScript.Config.Separator  -- type
                    -- "%s" .. ExportScript.Config.Separator -- Name
                    ,
    
                    val.CoalitionID,			-- CoalitionID (1 or 2)
                    val.LatLongAlt.Lat, 		-- Lat
                    val.LatLongAlt.Long,		-- Lng
                    -- val.LatLongAlt.Alt * m2feets, 		-- ALT
                    val.Heading * (180/math.pi),				-- HDG
                    val.Type.level2			-- type
                    -- val.Name					-- Name
                )
                ExportScript.Tools.NavDataAll[id] = packetObjects
                objects = true
            end
        end
    end

    if objects then
        for key, value in pairs(ExportScript.Tools.NavDataAll) do
            ExportScript.Tools.SendNavAllData("N4A" .. ExportScript.Config.Separator .. key, value)
        end
        ExportScript.Tools.SendPacket("N4A" .. ExportScript.Config.Separator .. "stop" .. ExportScript.Config.Separator .. "\n")
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
                "%d" .. ExportScript.Config.Separator ..    -- CoalitionID (1 or 2)
                "%d" .. ExportScript.Config.Separator ..    -- Type
                "%.6f" .. ExportScript.Config.Separator ..  -- Lat
                "%.6f" .. ExportScript.Config.Separator ..  -- Lng
                "%s" .. ExportScript.Config.Separator       -- Name
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
        for key, value in pairs(ExportScript.Tools.NavDataWeapons) do
            ExportScript.Tools.SendNavAllData("N4W" .. ExportScript.Config.Separator .. key, value)
        end
        ExportScript.Tools.SendPacket("N4W" .. ExportScript.Config.Separator .. "stop" .. ExportScript.Config.Separator .. "\n")
    end
end

function ExportScript.Tools.ProcessTWS()
    -- read from TWS FC3 export
    local threats = LoGetTWSInfo()
    local jsonThreats = "{ 'Mode':1.0, 'Emiters':[{ 'ID':'test', 'Power':0.5, 'Azimuth':0.8, 'Priority':150, 'SignalType':'scan', 'Type':'TEST' }] }\n"
    if threats then		
        -- add emiters to json
        local jsonEmiters = "[ "
        for mode,emit in pairs (threats.Emitters) do
            local jsonEmit = ""		
            local threatType = LoGetNameByType(emit.Type.level1, emit.Type.level2, emit.Type.level3, emit.Type.level4)
            if threatType then
                jsonEmit = string.format("{ 'ID':'%s', 'Power':%f, 'Azimuth':%f, 'Priority':%f, 'SignalType':'%s', 'Type':'%s' }", emit.ID, emit.Power, emit.Azimuth, emit.Priority, emit.SignalType, threatType)		
            else
                jsonEmit = string.format("{ 'ID':'%s', 'Power':%f, 'Azimuth':%f, 'Priority':%f, 'SignalType':'%s', 'Type':'U' }", emit.ID, emit.Power, emit.Azimuth, emit.Priority, emit.SignalType)		
            end
            if jsonEmiters ~= "[ " then
                jsonEmiters = jsonEmiters .. ","
            end
            jsonEmiters = jsonEmiters .. jsonEmit
        end
        jsonEmiters = jsonEmiters .. "]"
        jsonThreats = string.format("{ 'Mode':%f, 'Emiters':%s }\n", threats.Mode, jsonEmiters)

        local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() end)

        ExportScript.Tools.DebugProcess(try, jsonThreats)
    end
end

function ExportScript.Tools.ProcessOutput()
    local _coStatus

    local _info = LoGetSelfData()
    if _info ~= nil then
        if ExportScript.ModuleName ~= _info.Name then
            ExportScript.NoLuaExportBeforeNextFrame = false
			ExportScript.Tools.SelectModule()  -- point globals to Module functions and data.
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

        timestamp = LoGetModelTime()

        if (ExportScript.Config.ExportNavData == true and (ExportScript.Config.WriteNavFile or lShowOnMapPlayer)) then
            if (timestamp > timestampNav + timeSecPlayer) then

                ExportScript.Tools.GetPlayerData()

                if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
                    local coProcessWriteFile = coroutine.create(ExportScript.Tools.WriteToNavFiles)
                    _coStatus = coroutine.resume(coProcessWriteFile)
                end
                if lShowOnMapPlayer then
                    local coProcessNavData = coroutine.create(ExportScript.Tools.ProcessNavData)
                    _coStatus = coroutine.resume(coProcessNavData)
                end
                timestampNav = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapWea == true) then
            if (timestamp > timestampNavWea + timeSecWea) then
                local coProcessNavWeapon = coroutine.create(ExportScript.Tools.ProcessNavWeapon)
                _coStatus = coroutine.resume(coProcessNavWeapon)
                timestampNavWea = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapAir == true) then
            if (timestamp > timestampNavAir + timeSecAir) then
                local coProcessNavObjects = coroutine.create(ExportScript.Tools.ProcessNavAir)
                _coStatus = coroutine.resume(coProcessNavObjects)
                timestampNavAir = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapGnd == true) then
            if (timestamp > timestampNavGnd + timeSecGnd) then
                local coProcessNavGround = coroutine.create(ExportScript.Tools.ProcessNavGround)
                _coStatus = coroutine.resume(coProcessNavGround)
                timestampNavGnd = timestamp
            end
        end

    if ExportScript.Config.Export then
        ExportScript.Tools.FlushData()
    end
    if (ExportScript.Config.ExportNavData == true) then
        ExportScript.Tools.FlushNavData()
    end

    -- FC3 Aircraft
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
            if ExportScript.Config.Export then
                ExportScript.coProcessFCLowImportance = coroutine.create(ExportScript.ProcessFCLowImportance)
                _coStatus = coroutine.resume( ExportScript.coProcessFCLowImportance)
            end
            ExportScript.lastExportTimeHI = 0
        end

        timestamp = LoGetModelTime()

        if (ExportScript.Config.ExportNavData == true and (ExportScript.Config.WriteNavFile or lShowOnMapPlayer)) then
            if (timestamp > timestampNav + timeSecPlayer) then

                ExportScript.Tools.GetPlayerData()

                if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
                    local coProcessWriteFile = coroutine.create(ExportScript.Tools.WriteToNavFiles)
                    _coStatus = coroutine.resume(coProcessWriteFile)
                end
                if lShowOnMapPlayer then
                    local coProcessNavData = coroutine.create(ExportScript.Tools.ProcessNavData)
                    _coStatus = coroutine.resume(coProcessNavData)
                end
                timestampNav = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapWea == true) then
            if (timestamp > timestampNavWea + timeSecWea) then
                local coProcessNavWeapon = coroutine.create(ExportScript.Tools.ProcessNavWeapon)
                _coStatus = coroutine.resume(coProcessNavWeapon)
                timestampNavWea = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapAir == true) then
            if (timestamp > timestampNavAir + timeSecAir) then
                local coProcessNavObjects = coroutine.create(ExportScript.Tools.ProcessNavAir)
                _coStatus = coroutine.resume(coProcessNavObjects)
                timestampNavAir = timestamp
            end
        end

        if (ExportScript.Config.ExportNavAllData == true and lShowOnMapGnd == true) then
            if (timestamp > timestampNavGnd + timeSecGnd) then
                local coProcessNavGround = coroutine.create(ExportScript.Tools.ProcessNavGround)
                _coStatus = coroutine.resume(coProcessNavGround)
                timestampNavGnd = timestamp
            end
        end

    if ExportScript.Config.Export then
        ExportScript.Tools.FlushData()
    end
    if (ExportScript.Config.ExportNavData == true) then
        ExportScript.Tools.FlushNavData()
    end
    else -- No Module found
        if ExportScript.FoundNoModul then
            ExportScript.Tools.SelectModule()  -- point globals to Module functions and data.
        end
    end
end

function ExportScript.Tools.StrSplit(str, delim, maxNb)
    -- Eliminate bad cases...
    if string.find(str, delim) == nil then
        return { str }
    end
    if maxNb == nil or maxNb < 1 then
        maxNb = 0    -- No limit
    end
    local lResult = {}
    local lPat = "(.-)" .. delim .. "()"
    local lNb  = 0
    local lLastPos
    for part, pos in string.gfind(str, lPat) do
	-- for part, pos in string.gmatch(str, lPat) do -- Lua Version > 5.1
        lNb = lNb + 1
        lResult[lNb] = part
        lLastPos = pos
        if lNb == maxNb then break end
    end
    -- Handle the last field
    if lNb ~= maxNb then
        lResult[lNb + 1] = string.sub(str, lLastPos)
    end
    return lResult
end

-- Status Gathering Functions
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
        try(ExportScript.UDPsender:sendto(packet, lDeviceIpMap, ExportScript.Config.Port))
    end

    ExportScript.Tools.DebugProcess(try, packet)
end

function ExportScript.Tools.SendShortData(message)
    local _flushData = ExportScript.socket.protect(function()
        local _packet = message .. "\n"

        local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)

        if ExportScript.Config.Export then
            try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
        end

        if ExportScript.Config.Export2 then
            try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port))
        end

        if ExportScript.Config.Export3 then
            try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port))
        end

        if ExportScript.Config.Export4 then
            try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port))
        end

        ExportScript.Tools.DebugProcess(try, _packet)
	end)
    _flushData()
end

-- Network Functions for GlassCockpit
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
            local _packet = "File=" .. ExportScript.ModuleName .. ExportScript.Config.Separator .. "R4G" .. ExportScript.Config.Separator ..
            -- local _packet = "R4G" .. ExportScript.Config.Separator ..
                table.concat(ExportScript.SendStrings, ExportScript.Config.Separator) .. ExportScript.Config.Separator .. "\n"

            local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)

            if ExportScript.Config.Export then
                if (ExportScript.Config.Host == lDeviceIpMap) then
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export2 then
                if (ExportScript.Config.Host2 == lDeviceIpMap) then
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export3 then
                if (ExportScript.Config.Host3 == lDeviceIpMap) then
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export4 then
                if (ExportScript.Config.Host4 == lDeviceIpMap) then
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port))
                end
            end

			ExportScript.SendStrings = {}
			ExportScript.PacketSize  = 0

            ExportScript.Tools.DebugProcess(try, _packet)
		end
	end)
    _flushData()
end

-- NavData
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
            local _packet = "N4D" .. ExportScript.Config.Separator .. "Mod=" .. ExportScript.ModuleName .. ExportScript.Config.Separator ..
                table.concat(ExportScript.SendNavStrings, ExportScript.Config.Separator) .. ExportScript.Config.Separator .. "\n"

            local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)

            if ExportScript.Config.Export1Nav then
                if (ExportScript.Config.Host == lDeviceIpMap) then
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export2Nav then
                if (ExportScript.Config.Host2 == lDeviceIpMap) then
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export3Nav then
                if (ExportScript.Config.Host3 == lDeviceIpMap) then
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port))
                end
            end

            if ExportScript.Config.Export4Nav then
                if (ExportScript.Config.Host4 == lDeviceIpMap) then
                else
                    try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port))
                end
            end

            if (lDeviceIpMap ~= "") then
                try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, ExportScript.Config.Port))
            end

			ExportScript.SendNavStrings = {}
			ExportScript.PacketNavSize  = 0

            ExportScript.Tools.DebugProcess(try, _packet)
		else

		end
	end)
    _flushData()
end

function ExportScript.Tools.SendNavAllData(id, value)
    local _data = id .. ExportScript.Config.Separator .. value

    table.insert(ExportScript.SendNavAllStrings, _data)
    ExportScript.Tools.FlushNavAllData()
end

function ExportScript.Tools.FlushNavAllData()
	local _flushData = ExportScript.socket.protect(function()
        local _packet = table.concat(ExportScript.SendNavAllStrings, ExportScript.Config.Separator) .. "\n"
        local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() end)
        if (lDeviceIpMap ~= "") then
            try(ExportScript.UDPsender:sendto(_packet, lDeviceIpMap, ExportScript.Config.Port))
        end

        ExportScript.SendNavAllStrings = {}
        ExportScript.Tools.DebugProcess(try, _packet)
	end)
    _flushData()
end

function ExportScript.Tools.ResetChangeValues()
    ExportScript.LastData   = {}
end

function ExportScript.Tools.SelectModule()
   -- Select Module...
    ExportScript.FoundDCSModule = false
    ExportScript.FoundFCModule  = false
    ExportScript.FoundNoModul   = true

    local _info = LoGetSelfData()
    if _info == nil then  -- End SelectModule, if don't selected a aircraft
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
        -- load Aircraft File
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
                -- no Arguments
                ExportScript.EveryFrameArguments = {}
            end
            _counter = 0
            for k, v in pairs(ExportScript.ConfigArguments) do
                _counter = _counter + 1
            end

            if _counter > 0 then
                ExportScript.Arguments = ExportScript.ConfigArguments
            else
                -- no Arguments
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
                ExportScript.Tools.WriteToLog("Loaded Map: " .. Map .. "\n")
                break
            end
        end
    end
    return lMap
end

-- The function returns a correctly formatted string with the given radio frequency.
-- Frequency: MHz/KHz, format: e.g. "7.3" or "5.2", fill with leading zeros (default false), least value of frequency (default 0.025 (MHz))
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

-- The function return a table with values of given indicator
-- The value is retrievable via a named index. e.g. TmpReturn.txt_digits
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

-- funkcja zwraca konkretna wartosc dla danego klucza w tabeli argumentow
-- pobiera: nr argumentu / nazwa klucza / dlugosc zwracanego ciagu
function ExportScript.Tools.getListIndicatorValueByName(IndicatorID, NameID, Length)
	local ListIindicator = list_indication(IndicatorID)
	
	if ListIindicator == "" then
		return nil
    end
    
    local data = ""
    -- tworzy pusty string o danej dlugosci
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

-- The function format a given string for a display
-- String: value for show in display, maxChars: Display size (default 5), LEFTorRIGHT: flush with left "l" or right "r" site (default "r")
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

-- split function for string libraray
-- stringvalue: value
-- delimiter  : delimiter for split
-- for example, see http://www.lua.org/manual/5.1/manual.html#5.4.1
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

-- round function for math libraray
-- number  : value
-- decimals: number of decimal
-- method  :  ceil: Returns the smallest integer larger than or equal to number
--           floor: Returns the smallest integer smaller than or equal to number
function ExportScript.Tools.round(number, decimals, method)
    if string.find(number, "%p" ) ~= nil then
        decimals = decimals or 0
        local lFactor = 10 ^ decimals
        if (method == "ceil" or method == "floor") then
            -- ceil: Returns the smallest integer larger than or equal to number
            -- floor: Returns the smallest integer smaller than or equal to number
            return math[method](number * lFactor) / lFactor
        else
            return tonumber(("%."..decimals.."f"):format(number))
        end
    else
        return number
    end
end

function ExportScript.Tools.DebugProcess(try, packet)
    if (ExportScript.Tools.DebugScript == true) then
        try(ExportScript.UDPsender:sendto(packet, debugIp, debugPort))
        ExportScript.Tools.WriteToLog(packet)
    end
end

function ExportScript.Tools.WriteToLog(message)
    if (ExportScript.logFile and ExportScript.Tools.DebugScript == true) then
        local ltmp, lMiliseconds = math.modf(os.clock())
        if lMiliseconds == 0 then
            lMiliseconds='000'
        else
            lMiliseconds=tostring(lMiliseconds):sub(3,5)
        end
        ExportScript.logFile:write(os.date("%X") .. ":" .. lMiliseconds .. " : " .. message)
    end
end


--------------------------------------------------------------------------------------------
ExportScript.Fdr = {}

ExportScript.Fdr.WriteFdrFile = true
ExportScript.Fdr.WriteNavFile = true

function ExportScript.Fdr.GetDateTime()
    local date_table = os.date("*t")
	local hour, minute, second = date_table.hour, date_table.min, date_table.sec
	local year, month, day = date_table.year, date_table.month, date_table.day
	local dateResult = string.format("%d-%02d-%02d %02d.%02d.%02d", year, month, day, hour, minute, second)
    return dateResult
end

function ExportScript.Fdr.CsvFileInit()
    local datetime = ExportScript.Fdr.GetDateTime()

    ExportScript.csvFile = io.open(lfs.writedir()..[[Logs\]] .. datetime .. ".csv", "wa")
    if ExportScript.csvFile then
        ExportScript.Tools.WriteToLog("write CSV file: " .. lfs.writedir() .. [[Logs\]] .. datetime .. ".csv\n")
        ExportScript.csvFile:write('\239\187\191') -- create a UTF-8 BOM
    end
end

function ExportScript.Fdr.CsvFileWrite(packet)
    if ExportScript.csvFile then
        ExportScript.csvFile:write(packet)
    end
end

function ExportScript.Fdr.CsvFileEnd()
    if ExportScript.csvFile then
        ExportScript.csvFile:flush()
        ExportScript.csvFile:close()
        ExportScript.csvFile = nil
    end
end

function ExportScript.Fdr.NavFileInit(version)
    local datetime = ExportScript.Fdr.GetDateTime()

    ExportScript.kmlFile = io.open(lfs.writedir()..[[Logs\]] .. datetime .. ".kml", "wa") -- "W+"
    if ExportScript.kmlFile then
        ExportScript.Tools.WriteToLog("write KML file: " .. lfs.writedir() .. [[Logs\]] .. datetime .. ".kml\n")

        ExportScript.kmlFile:write('\239\187\191') -- create a UTF-8 BOM
        ExportScript.kmlFile:write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        ExportScript.kmlFile:write("<kml xmlns=\"http://www.opengis.net/kml/2.2\">\n")
        ExportScript.kmlFile:write("  <Document>\n")
        ExportScript.kmlFile:write("    <Style id=\"StyleLineKML\">\n")
        ExportScript.kmlFile:write("      <LineStyle id=\"lineStyle\">\n")
        ExportScript.kmlFile:write("        <color>a032cfcb</color>\n")
        ExportScript.kmlFile:write("        <width>2</width>\n")
        ExportScript.kmlFile:write("      </LineStyle>\n")
        ExportScript.kmlFile:write("      <PolyStyle>\n")
        ExportScript.kmlFile:write("        <color>5046d774</color>\n")
        ExportScript.kmlFile:write("      </PolyStyle>\n")
        ExportScript.kmlFile:write("    </Style>\n")
        ExportScript.kmlFile:write("    <Placemark>\n")
        ExportScript.kmlFile:write("      <description>Flight recorded in DCS World " ..
            string.format("%d.%d.%d.%d",version.ProductVersion[1], version.ProductVersion[2],
            version.ProductVersion[3], version.ProductVersion[4]) .. 
            " @ " .. datetime .. "</description>\n")
        ExportScript.kmlFile:write("      <styleUrl>#StyleLineKML</styleUrl>\n")
        ExportScript.kmlFile:write("      <LineString>\n")
        ExportScript.kmlFile:write("        <extrude>true</extrude>\n")
        ExportScript.kmlFile:write("        <tessellate>true</tessellate>\n")
        ExportScript.kmlFile:write("        <altitudeMode>absolute</altitudeMode>\n")
        ExportScript.kmlFile:write("        <coordinates>")
    end
end

function ExportScript.Fdr.NavFileWrite(packet)
    if ExportScript.kmlFile then
        ExportScript.kmlFile:write(packet)
    end
end

function ExportScript.Fdr.NavFileEnd()
    if ExportScript.kmlFile then
        ExportScript.kmlFile:write("        </coordinates>\n")
        ExportScript.kmlFile:write("      </LineString>\n")
        ExportScript.kmlFile:write("    </Placemark>\n")
        ExportScript.kmlFile:write("  </Document>\n")
        ExportScript.kmlFile:write("</kml>\n")
        ExportScript.kmlFile:flush()
        ExportScript.kmlFile:close()
        ExportScript.kmlFile = nil
    end
end


--------------------------------------------------------------------------------------------
-- Load the corresponding map and read the latitude and longitude values and write specify the decimal degree format (convert from degrees, decimal to decimal degrees).
-- Lat1 and Long1 contain the coordinates of the upper left corner.
-- Lat2 and Long2 contain the coordinates of the lower right corner.

-- https://www.fcc.gov/media/radio/dms-decimal
-- lalt+y change coordinate system

-- Maps
ExportScript.Maps = {}
-- Caucasus Map
ExportScript.Maps.CaucasusBase          = {}
ExportScript.Maps.CaucasusBase.Lat1     = 48.391667  -- 48°23'30" N
ExportScript.Maps.CaucasusBase.Long1    = 26.868056  -- 26°52'5" E
ExportScript.Maps.CaucasusBase.Lat2     = 38.881667  -- 38°52'54" N
ExportScript.Maps.CaucasusBase.Long2    = 47.142222   -- 47°8'32" E
-- Nevada (NTTR) Map
ExportScript.Maps.Nevada                = {}
ExportScript.Maps.Nevada.Lat1           = 39.801667   -- 39°48'6" N
ExportScript.Maps.Nevada.Long1          = -119.99 --  -119°59'24" W
ExportScript.Maps.Nevada.Lat2           = 34.346667   -- 34°20'48" N
ExportScript.Maps.Nevada.Long2          = -112.445833 -- -112°26'45" W
-- Normandy Map
ExportScript.Maps.Normandy              = {}
ExportScript.Maps.Normandy.Lat1         = 53.85556   -- 
ExportScript.Maps.Normandy.Long1        = -15.02667 -- 
ExportScript.Maps.Normandy.Lat2         = 45.07167   -- 
ExportScript.Maps.Normandy.Long2        = 8.437222 -- 
-- Persian Gulf Map
ExportScript.Maps.PersianGulf           = {}
ExportScript.Maps.PersianGulf.Lat1      = 32.955278  -- 32°57'19" N
ExportScript.Maps.PersianGulf.Long1     = 46.583333  -- 46°35'0" E
ExportScript.Maps.PersianGulf.Lat2      = 21.897222  -- 21°53'50" N
ExportScript.Maps.PersianGulf.Long2     = 63.683611   -- 63°41'1" E
-- Syria Map
ExportScript.Maps.Syria                 = {}
ExportScript.Maps.Syria.Lat1            = 37.362778   -- 37°21'46" N
ExportScript.Maps.Syria.Long1           = 29.268889   -- 29°16'8" E
ExportScript.Maps.Syria.Lat2            = 32.136111    -- 32°8'10" N
ExportScript.Maps.Syria.Long2           = 42.150278    -- 42°9'1" E
-- Mariana Islands Map
ExportScript.Maps.MarianaIslands        = {}
ExportScript.Maps.MarianaIslands.Lat1   = 22.09   -- 22°5'24" N
ExportScript.Maps.MarianaIslands.Long1  = 135.0575   -- 135°3'27" E
ExportScript.Maps.MarianaIslands.Lat2   = 10.772222    -- 10°46'20" N
ExportScript.Maps.MarianaIslands.Long2  = 149.391667    -- 149°23'30" E
-- The Channel
ExportScript.Maps.TheChannel            = {}
ExportScript.Maps.TheChannel.Lat1       = 51.517295
ExportScript.Maps.TheChannel.Long1      = -0.089791
ExportScript.Maps.TheChannel.Lat2       = 49.713717
ExportScript.Maps.TheChannel.Long2      = 3.424733