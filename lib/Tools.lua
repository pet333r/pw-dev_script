ExportScript.Tools = {}

-- const
local ms2knots  = 1.94384449
local ms2fpm    = 196.85

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
			ExportScript.socket.try(ExportScript.UDPListener:settimeout(.001)) -- set the timeout for reading the socket; 250 fps
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
				end
			end
		end
	end
end

-- function export data based on registered Lock On internal functions / export in LowTickInterval
function ExportScript.Tools.ProcessSelfData()
    local SD = LoGetSelfData

    local Latitude = SD().LatLongAlt.Lat
    local Longitude = SD().LatLongAlt.Long
    local Altitude = SD().LatLongAlt.Alt
    local Heading = SD().Heading*(180/math.pi)
    local Pitch = SD().Pitch*(180/math.pi)
    local Bank = SD().Bank*(180/math.pi)
    local AltitudeFeets = Altitude * 3.2808399
    local AltBar = LoGetAltitudeAboveSeaLevel()	-- (args - 0, results - 1 (meters))
    local AltRad = LoGetAltitudeAboveGroundLevel()	-- (args - 0, results - 1 (meters))

    local Velocity = LoGetVectorVelocity()  --{x,y,z}
    local VX = Velocity.x
    local VY = Velocity.y
    local VZ = Velocity.z

    local IAS = LoGetIndicatedAirSpeed() * ms2knots	-- (args - 0, results - 1 (m/s)) => convert to Knots
    local TAS = LoGetTrueAirSpeed() * ms2knots -- (args - 0, results - 1 (m/s)) => convert to Knots
    local GS = math.sqrt(math.pow(VX, 2)+ math.pow(VZ, 2)) * ms2knots -- ground speed (m/s) => convert to Knots
    local VSpeed = LoGetVerticalVelocity() * ms2fpm  -- (args - 0, results - 1(m/s))
    local Mach = LoGetMachNumber()
    local AoA = LoGetAngleOfAttack() -- (args - 0, results - 1 (rad))
    local Accel = LoGetAccelerationUnits()	-- G-Force

    local _packet = string.format("File=%s:D4T4:Lat=%010.6f:Lon=%0010.6f:Alt=%.1f:AltFt=%d:Heading=%02d:Pitch=%02.1f:Bank=%02.1f:AltBar=%d:AltRad=%d:IAS=%d:TAS=%d:GS=%d:VSpeed=%d:Mach=%.2f:AoA=%.1f:G=%.1f:\n", 
        ExportScript.ModuleName, Latitude, Longitude, Altitude, AltitudeFeets, Heading, Pitch, Bank, AltBar, AltRad, IAS, TAS, GS, VSpeed, Mach, AoA, Accel.y)

    local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() end)
        try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
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
        try(ExportScript.UDPsender:sendto(jsonThreats, ExportScript.Config.Host, ExportScript.Config.Port))
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

            --if ExportScript.Config.Export then
                ExportScript.coProcessDCSHighImportance = coroutine.create(ExportScript.ProcessDCSHighImportance)
                _coStatus = coroutine.resume( ExportScript.coProcessDCSHighImportance, _device)
            --end

            if ExportScript.FirstNewDataSend and ExportScript.FirstNewDataSendCount == 0 then
                --if ExportScript.Config.Export then
                    ExportScript.Tools.ResetChangeValues()
                --end
                ExportScript.FirstNewDataSend = false
            else
                ExportScript.FirstNewDataSendCount = ExportScript.FirstNewDataSendCount - 1
            end
			ExportScript.lastExportTimeHI = ExportScript.lastExportTimeHI + ExportScript.Config.ExportInterval

		if ExportScript.lastExportTimeHI > ExportScript.Config.ExportLowTickInterval then
                ExportScript.coProcessArguments_Arguments = coroutine.create(ExportScript.Tools.ProcessArguments)
                _coStatus = coroutine.resume( ExportScript.coProcessArguments_Arguments, _device, ExportScript.Arguments)

            --if ExportScript.Config.Export then
                ExportScript.coProcessDCSLowImportance = coroutine.create(ExportScript.ProcessDCSLowImportance)
                _coStatus = coroutine.resume( ExportScript.coProcessDCSLowImportance, _device)
            --end
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

        --if ExportScript.Config.Export then
            ExportScript.Tools.SendData(_argument, _argumentValue)
        --end
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
            local _packet = "File=" .. ExportScript.ModuleName .. ExportScript.Config.Separator .. "4RG" .. ExportScript.Config.Separator ..
                table.concat(ExportScript.SendStrings, ExportScript.Config.Separator) .. ":\n"
			local try = ExportScript.socket.newtry(function() ExportScript.UDPsender:close() ExportScript.Tools.createUDPSender() ExportScript.Tools.ResetChangeValues() end)
            try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host, ExportScript.Config.Port))
            
            if ExportScript.Config.Export2 then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host2, ExportScript.Config.Port2))
            end

            if ExportScript.Config.Export3 then
                try(ExportScript.UDPsender:sendto(_packet, ExportScript.Config.Host3, ExportScript.Config.Port3))
            end

			ExportScript.SendStrings = {}
			ExportScript.PacketSize  = 0
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