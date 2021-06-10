ExportScript.Tools = {}

-- const
local ms2knots  = 1.94384449 -- m/s to knots
local ms2fpm    = 196.85 -- m/s to feets/minute
local m2feets   = 3.2808399 -- meters to feets
local rad2deg   = 57.3 -- radians to degrees
-- tmp
local exportNavLowTmp       = ExportScript.Config.ExportNavLow
local exportNavAllLowTmp    = ExportScript.Config.ExportNavAllLow

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

            if _command == "R" then -- R == Reset
                --if ExportScript.Config.Export then
                    ExportScript.Tools.ResetChangeValues()
                --end
            end

            if (_command == "C") then
                _commandArgs = ExportScript.Tools.StrSplit(string.sub(_input,2),",")
				_deviceID = tonumber(_commandArgs[1])
				if _deviceID < 1000 then
					-- DCS Modules
					_device = GetDevice(_commandArgs[1])
					if ExportScript.FoundDCSModule and type(_device) == "table" then
						_device:performClickableAction(_commandArgs[2],_commandArgs[3])
					end
				-- end
                elseif _deviceID == 2000 then
                    -- Flaming Cliffs Module (Buttons)
                    if ExportScript.FoundFCModule then
                        local lComandID = (tonumber(_commandArgs[2]))
                        if tonumber(_commandArgs[3]) == 1.0 then
                            LoSetCommand(lComandID)
                        end
                    end
                elseif _deviceID == 2001 then
                    -- Flaming Cliffs Module (analog axies)
                    if ExportScript.FoundFCModule then
                        local lComandID = (tonumber(_commandArgs[2]))
                        LoSetCommand(lComandID, _commandArgs[3])
                    end
                end
            end
		end
	end
end

-- funkcja do przesylania danych nawigacyjnych konkretnych obiektow na mapie
function ExportScript.Tools.ProcessNavData()
	local SD = LoGetSelfData()

	if SD == nil then
		return
    end

	-- geo data
	local lLat = SD.LatLongAlt.Lat
	local lLon = SD.LatLongAlt.Long
	local lAlt = SD.LatLongAlt.Alt
    local lMagvar = LoGetMagneticYaw()
	-- local lRAlt = LoGetAltitudeAboveGroundLevel()
	local lHdg = SD.Heading

	local lIas = LoGetIndicatedAirSpeed()
	-- local lVspd = LoGetVerticalVelocity()
	local lMach = LoGetMachNumber()

	-- local lAoa = LoGetAngleOfAttack() -- (args - 0, results - 1 (rad))
	local lAcc = LoGetAccelerationUnits()	-- G-Force
	local lPitch, lBank, lYaw = LoGetADIPitchBankYaw()
	lPitch = lPitch * rad2deg
	lBank = lBank * rad2deg
	lYaw = lYaw * rad2deg

    -- local lDistanceToWay			= 999
    -- local route					= LoGetRoute()
    -- local val = 0

    -- if route == nil then
	-- 	return
    -- end

	if ExportScript.Tools.NavData == nil then
		ExportScript.Tools.NavData = {}
	end

	ExportScript.Tools.NavData["Lat"] = string.format("%010.6f", lLat)
	ExportScript.Tools.NavData["Lon"] = string.format("%010.6f", lLon)
    ExportScript.Tools.NavData["Magvar"] = string.format("%.1f", lMagvar * rad2deg)
	ExportScript.Tools.NavData["AltFt"] = string.format("%d", lAlt * m2feets)
	-- ExportScript.Tools.NavData["ALTR"] = string.format("%d", lRAlt)
	ExportScript.Tools.NavData["Heading"] = string.format("%d", lHdg * (180/math.pi))
	ExportScript.Tools.NavData["IAS"] = string.format("%d", lIas * ms2knots)
	-- ExportScript.Tools.NavData["VSpd"] = string.format("%d", lVspd * ms2fpm)
	ExportScript.Tools.NavData["Mach"] = string.format("%.2f", lMach)
	-- ExportScript.Tools.NavData["Aoa"] = string.format("%.1f", lAoa)
	ExportScript.Tools.NavData["G"] = string.format("%.1f", lAcc.y)
	-- ExportScript.Tools.NavData[4411] = string.format("%.1f", lPitch)
	-- ExportScript.Tools.NavData[4412] = string.format("%.1f", lBank)
	-- ExportScript.Tools.NavData[4413] = string.format("%.1f", lYaw)

    -- if (SD and lRoute) then -- if neither are nil
    --     local myLoc					= LoGeoCoordinatesToLoCoordinates(lLon, lLat)
    --     --lDistanceToWay				= math.sqrt((myLoc.x - lRoute.goto_point.world_point.x)^2 + (myLoc.y -  lRoute.goto_point.world_point.y)^2)
    --     -- lDistanceToWay              = math.sqrt((myLoc.x - lRoute.goto_point.world_point.x)^2 + (myLoc.z -  lRoute.goto_point.world_point.z)^2)
    --     val = lRoute.goto_point.world_point.x
    -- end

    -- ExportScript.Tools.NavData[4413] = string.format("%.f", val)

    -- if (route) then
    --     for num,wpt in pairs(route.route) do
    --         val = wpt.world_point.x
        
    --         -- _packet = (string.format("point_num = %d ,wpt_pos = (%f, %f ,%f) ,next %d\n",wpt.this_point_num,wpt.world_point.x,wpt.world_point.y,wpt.world_point.z,wpt.next_point_num))
    --     end
    -- end

	if ExportScript.Tools.NavData ~= nil then

        -- ExportScript.Tools.SendNavData("dsf", val)

		for key, value in pairs(ExportScript.Tools.NavData) do
				ExportScript.Tools.SendNavData(key, value)
		end
	end
end

function ExportScript.Tools.ProcessNavAllData()
    local obj = LoGetWorldObjects()
    for key, val in pairs(obj) do
        -- if val.GroupName ~= nil then
        --     local mm_packet = string.format("A, %d, %s, %d, %.6f, %.6f, %f, %f, %s, %s, %d", 
        --     key,						-- 1 Unit ID (unique)
        --     val.Name,					-- 2
        --     val.Type.level2,			-- 3
        --     val.LatLongAlt.Lat, 		-- 4 Lat
        --     val.LatLongAlt.Long,		-- 5 Long
        --     val.LatLongAlt.Alt, 		-- 6 ALT
        --     val.Heading,				-- 7 HDG
        --     val.UnitName,				-- 8 Unit Name
        --     val.GroupName,			-- 9 Group Name
        --     val.CoalitionID			-- 10 CoalitionID (1 or 2)
        --     )
        --     -- local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() end)
        --     -- if ExportScript.Config.Export4SD == true then
        --     --     try(ExportScript.UDPsender:sendto(mm_packet, ExportScript.Config.Host4, ExportScript.Config.Port4))
        --     -- end

        --     ExportScript.Tools.SendNavAllData(key, val)
        -- end


   
    end
end

-- function export data based on registered Lock On internal functions / export in LowTickInterval
function ExportScript.Tools.ProcessSelfData()
    local SD = LoGetSelfData

    -- geo data
    local Latitude = SD().LatLongAlt.Lat
    local Longitude = SD().LatLongAlt.Long
    local Altitude = SD().LatLongAlt.Alt
    local AltitudeFeets = Altitude * m2feets
    local AltBar = LoGetAltitudeAboveSeaLevel()	-- (args - 0, results - 1 (meters))
    local AltRad = LoGetAltitudeAboveGroundLevel()	-- (args - 0, results - 1 (meters))
    
    -- course data
    local Heading = SD().Heading*(180/math.pi)

    -- plane data
    local pitch, bank, yaw = LoGetADIPitchBankYaw()
    local AoA = LoGetAngleOfAttack() -- (args - 0, results - 1 (rad))
    local Accel = LoGetAccelerationUnits()	-- G-Force
    pitch = pitch * rad2deg
    bank = bank * rad2deg
    yaw = yaw * rad2deg
    -- 
    local Velocity = LoGetVectorVelocity()  --{x,y,z}
    local VX = Velocity.x
    local VY = Velocity.y
    local VZ = Velocity.z

    -- speed data
    local IAS = LoGetIndicatedAirSpeed() * ms2knots	-- (args - 0, results - 1 (m/s)) => convert to Knots
    local TAS = LoGetTrueAirSpeed() * ms2knots -- (args - 0, results - 1 (m/s)) => convert to Knots
    local GS = math.sqrt(math.pow(VX, 2)+ math.pow(VZ, 2)) * ms2knots -- ground speed (m/s) => convert to Knots
    local VSpeed = LoGetVerticalVelocity() * ms2fpm  -- (args - 0, results - 1(m/s))
    local Mach = LoGetMachNumber()

    -- mechanical data
    local mech = LoGetMechInfo()

    -- engine data
    local engine = LoGetEngineInfo()

    local wind = LoGetVectorWindVelocity()
    local windSpeed = math.abs(math.sqrt(math.pow(wind.x, 2) + math.pow(wind.y, 2) + math.pow(wind.z, 2)))
    local windAngle = math.atan2(wind.y, wind.x) * 180/math.pi

    --local failures = LoGetMCPState()
    
    -- countermeasures data
    local Countermeasures = LoGetSnares()
    
    -- create exporting data
    local sModule = string.format( "File=%s;D4T4", ExportScript.ModuleName)
    local sGeo = string.format("Lat=%010.6f;Lon=%0010.6f;Alt=%.1f;AltFt=%d;AltBar=%d;AltRad=%d", Latitude, Longitude, Altitude, AltitudeFeets, AltBar, AltRad)
    local sCourse = string.format( "Heading=%02d", Heading)
    local sSpeed = string.format("IAS=%d;TAS=%d;GS=%d;VSpeed=%d;Mach=%.2f", IAS, TAS, GS, VSpeed, Mach)
    local sPlane = string.format("Pitch=%.1f;Bank=%.1f;Yaw=%.1f;AoA=%.1f;G=%.1f", pitch, bank, yaw, AoA, Accel.y)
    local sMechanics = string.format("Gear=%.2f;Flaps=%.2f;Speedbrakes=%.2f;Boom=%.2f;Wheelbrakes=%.2f", mech.gear.value, mech.flaps.value, mech.speedbrakes.value, mech.refuelingboom.value, mech.wheelbrakes.value)
    --local sEngine = string.format("FuelExt=%d;FuelInt%d", engine.fuel_external, engine.fuel_internal)
    local sCountermeasures = string.format("Chaff=%d;Flare=%d", Countermeasures.chaff, Countermeasures.flare)
    local sWind = string.format("WindSpd=%d;angle=%.1f", windSpeed, windAngle)
    
    -- join exporting strings into one packet
    local _packet = string.format("%s;%s;%s;%s;%s;%s;%s;%s;\r\n", sModule, sGeo, sCourse, sSpeed, sPlane, sMechanics, sCountermeasures, sWind)

    local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() end)
        if ExportScript.Config.Export1SD == true then
            try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
        end
        if ExportScript.Config.Export2SD == true then
            try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port2))
        end
        if ExportScript.Config.Export3SD == true then
            try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port3))
        end
        if ExportScript.Config.Export4SD == true then
            try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port4))
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
            try(ExportScript.UDPsender:sendto(jsonThreats, ExportScript.Config4.Host, ExportScript.Config4.Port))
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

            if (ExportScript.Config.ExportNavData == true) then
                if (exportNavLowTmp < 1) then
                    ExportScript.Tools.ProcessNavData()
                    exportNavLowTmp = ExportScript.Config.ExportNavLow
                end
                exportNavLowTmp = exportNavLowTmp - 1

                if (exportNavAllLowTmp < 1) then
                    ExportScript.Tools.ProcessNavAllData()
                    exportNavAllLowTmp = ExportScript.Config.ExportNavAllLow
                end
                exportNavAllLowTmp = exportNavAllLowTmp - 1
            end

            ExportScript.lastExportTimeHI = 0

            --process SelfData info
            if ExportScript.Config.ExportSelfData == true then
                ExportScript.Tools.ProcessSelfData()
            end

            -- if (ExportScript.Config.ExportNavData == true) then
            --     local obj = LoGetWorldObjects()
            --     for key, val in pairs(obj) do
            --         if val.GroupName ~= nil then
            --             -- local mm_packet = string.format("A,%d,%s,%d,%.6f,%.6f,%f,%f,%s,%s,%d",
            --             local mm_packet = string.format("A,%d,%s,%d,%.6f,%.6f,%d,%d,%d",
            --             key,						-- 1 Unit ID (unique)
            --             val.Name,					-- 2
            --             val.Type.level2,			-- 3
            --             val.LatLongAlt.Lat, 		-- 4 Lat
            --             val.LatLongAlt.Long,		-- 5 Long
            --             val.LatLongAlt.Alt, 		-- 6 ALT
            --             val.Heading,				-- 7 HDG
            --             -- val.UnitName,				-- 8 Unit Name
            --             -- val.GroupName,			-- 9 Group Name
            --             val.CoalitionID			-- 10 CoalitionID (1 or 2)
            --             ).. "\n"
            
            --             -- ExportScript.Tools.SendNavAllData(key, val)

            --             local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() end)

            --                 if ExportScript.Config.Export4Nav == true then
            --                     try(ExportScript.UDPsender:sendto(mm_packet, ExportScript.Config.Host4, ExportScript.Config.Port4))
            --                 end
            --         end
            --     end
            -- end
        end
    if ExportScript.Config.Export then
        ExportScript.Tools.FlushData()
    end
    if (ExportScript.Config.ExportNavData == true) then
        ExportScript.Tools.FlushNavData()
        -- ExportScript.Tools.FlushNavAllData()
    end

    elseif ExportScript.FoundFCModule then -- Assume FC Aircraft
        ExportScript.AF.EventNumber = os.clock() --tonumber(tostring(os.clock()):gsub(".", ""))

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

            -- process SelfData info
            if ExportScript.Config.ExportSelfData == true then
                ExportScript.Tools.ProcessSelfData()
            end

            if ExportScript.Config.ExportTWS == true then
                ExportScript.Tools.ProcessTWS()
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
            -- dodanie na końcu linii separatora + znak nowej linii
                table.concat(ExportScript.SendStrings, ExportScript.Config.Separator) .. ExportScript.Config.Separator .. "\n"

            local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)

            if ExportScript.Config.Export then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
            end

            if ExportScript.Config.Export2 then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port2))
            end

            if ExportScript.Config.Export3 then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port3))
            end

            if ExportScript.Config.Export4 then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port4))
            end

			ExportScript.SendStrings = {}
			ExportScript.PacketSize  = 0
		else

		end
	end)
    _flushData()
end

-- NavData
function ExportScript.Tools.SendNavData(id, value)

    if string.len(value) > 3 and value == string.sub("-0.00000000",1, string.len(value)) then
        value = value:sub(2)
    end

    if ExportScript.LastData[id] == nil or ExportScript.LastData[id] ~= value then
        local _data    =  id .. "=" .. value
        local _dataLen = string.len(_data)

        if _dataLen + ExportScript.PacketNavSize > 576 then
            ExportScript.Tools.FlushNavData()
        end

        table.insert(ExportScript.SendNavStrings, _data)
        ExportScript.LastData[id] = value
        ExportScript.PacketNavSize   = ExportScript.PacketNavSize + _dataLen + 1
    end
end

function ExportScript.Tools.FlushNavData()
	local _flushData = ExportScript.socket.protect(function()
		if #ExportScript.SendNavStrings > 0 then
            local _packet = "File=" .. ExportScript.ModuleName .. ExportScript.Config.Separator .. "N4D" .. ExportScript.Config.Separator ..
            -- dodanie na końcu linii separatora + znak nowej linii
                table.concat(ExportScript.SendNavStrings, ExportScript.Config.Separator) .. ExportScript.Config.Separator .. "\n"

            local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)

            if ExportScript.Config.Export1Nav then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
            end

            if ExportScript.Config.Export2Nav then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port2))
            end

            if ExportScript.Config.Export3Nav then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port3))
            end

            if ExportScript.Config.Export4Nav then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port4))
            end

			ExportScript.SendNavStrings = {}
			ExportScript.PacketNavSize  = 0
		else

		end
	end)
    _flushData()
end

function ExportScript.Tools.SendNavAllData(id, value)

    if string.len(value) > 3 and value == string.sub("-0.00000000",1, string.len(value)) then
        value = value:sub(2)
    end

    if ExportScript.LastData[id] == nil or ExportScript.LastData[id] ~= value then
        local _data    =  id .. "=" .. value
        local _dataLen = string.len(_data)

        if _dataLen + ExportScript.PacketNavAllSize > 576 then
            ExportScript.Tools.FlushNavAllData()
        end

        table.insert(ExportScript.SendNavAllStrings, _data)
        ExportScript.LastData[id] = value
        ExportScript.PacketNavAllSize   = ExportScript.PacketNavAllSize + _dataLen + 1
    end
end

function ExportScript.Tools.FlushNavAllData()
	local _flushData = ExportScript.socket.protect(function()
		if #ExportScript.SendNavAllStrings > 0 then
            local _packet = "File=" .. ExportScript.ModuleName .. ExportScript.Config.Separator .. "N4A" .. ExportScript.Config.Separator ..
            -- dodanie na końcu linii separatora + znak nowej linii
                table.concat(ExportScript.SendNavAllStrings, ExportScript.Config.Separator) .. ExportScript.Config.Separator .. "\n"

            local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)

            if ExportScript.Config.Export1Nav then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
            end

            if ExportScript.Config.Export2Nav then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port2))
            end

            if ExportScript.Config.Export3Nav then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port3))
            end

            if ExportScript.Config.Export4Nav then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host4, ExportScript.Config.Port4))
            end

			ExportScript.SendNavAllStrings = {}
			ExportScript.PacketNavAllSize  = 0
		else

		end
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

    local _info      = LoGetSelfData()
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

        --if ExportScript.Config.Export then
            ExportScript.Tools.FlushData()
        --end
    end
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

-----------------------------------------------------------------
-- functions from DCS-BIOS

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