PWDEV.Tools = {}

local PlayerData = {}

local initiated = false

local lShowOnMapPlayer = true
local lDeviceIpMap = ""

local actualMap

local separator = PWDEV.Config.Separator

-- const
local MS_2_KNOTS  = 1.94384449 -- m/s to knots
local MS_2_FPM    = 196.85 -- m/s to feets/minute
local M_2_FEETS   = 3.2808399 -- meters to feets
local RAD_2_DEG   = 57.296 -- radians to degrees

local timestamp = 0
local timestampNav = 0
local timeSecPlayer = 1

function PWDEV.Tools.createUDPSender()
	PWDEV.socket = require("socket")

	local _createUDPSender = PWDEV.socket.protect(function()
		PWDEV.UDPsender = PWDEV.socket.udp()
        PWDEV.UDPsender:setoption('broadcast', true)
		PWDEV.socket.try(PWDEV.UDPsender:setsockname("*", 0))
	end)
    local ln, lerror = _createUDPSender()
    if lerror ~= nil then
		return
	end
end

function PWDEV.Tools.createUDPListner()
	if PWDEV.Config.Listener then
		PWDEV.socket = require("socket")

		local _createUDPListner = PWDEV.socket.protect(function()
			PWDEV.UDPListener = PWDEV.socket.udp()
			PWDEV.socket.try(PWDEV.UDPListener:setsockname("*", PWDEV.Config.ListenerPort))
			PWDEV.socket.try(PWDEV.UDPListener:settimeout(0))
		end)

        local ln, lerror = _createUDPListner()
        if lerror ~= nil then
            return
        end
	end
end

function PWDEV.Tools.ExportInit()
    local isOwnship = LoIsOwnshipExportAllowed()

    if (isOwnship == true) then
        PWDEV.Tools.SendShortData("File="..PWDEV.ModuleName..separator.."Call="..LoGetPilotName()..separator .. "Theatre=" .. actualMap .. separator)
    end
end

function PWDEV.Tools.ProcessInput()
    local _command, _commandArgs, _device
    if PWDEV.Config.Listener then
		PWDEV.UDPListenerValues = {}

		local lUDPListenerReceivefrom = PWDEV.socket.protect(function()
			PWDEV.UDPListenerValues.Input, PWDEV.UDPListenerValues.from, PWDEV.UDPListenerValues.port = PWDEV.socket.try(PWDEV.UDPListener:receivefrom())
        end)

		local _error = lUDPListenerReceivefrom()
		if _error ~= nil and _error ~= "timeout" then
			PWDEV.UDPListener:close()
			PWDEV.Tools.createUDPListner()
		end

		local _input, from, port = PWDEV.UDPListenerValues.Input, PWDEV.UDPListenerValues.from, PWDEV.UDPListenerValues.port

        if _input then
            _command = string.sub(_input,1,1)

            if _command == "R" then
                PWDEV.Tools.ResetChangeValues()
                initiated = false
            end

            if _command == "E" then
                lDeviceIpMap = from

                local opt = tonumber(string.sub(_input,2,2))
                local vis = tonumber(string.sub(_input,3,3))
                local val = tonumber(string.sub(_input,4,4))

                if opt == 0 then
                    if (vis == 0) then
                        lShowOnMapPlayer = false
                        lDeviceIpMap = ""
                    else
                        lShowOnMapPlayer = true
                        timeSecPlayer = val
                    end
                end
            end

            if (_command == "C") then
                _commandArgs = PWDEV.Tools.StrSplit(string.sub(_input,2),",")
				local _deviceID = tonumber(_commandArgs[1])
                local function tablelength(T)
                    local count = 0
                    for _ in pairs(T) do count = count + 1 end
                    return count
                end
                if _deviceID == 256 then
				elseif _deviceID < 1000 then
					_device = GetDevice(_commandArgs[1])
					if PWDEV.FoundDCSModule and type(_device) == "table" then
                        if (tablelength(_commandArgs) == 3) then
                            _device:performClickableAction(_commandArgs[2],_commandArgs[3])

                        elseif (tablelength(_commandArgs) == 4) then
                            local argValue = PWDEV.Tools.GetArgumentsValue(tonumber(_commandArgs[3]), "%.3f")
                            local increment = string.format("%.3f", _commandArgs[4])

                            if (argValue == "-1.000" and increment == "-1.000") then

                            elseif (argValue == "1.000" and increment == "1.000") then

                            else
                                _device:performClickableAction(_commandArgs[2],argValue + _commandArgs[4])
                            end
                        elseif (tablelength(_commandArgs) == 5) then
                            local argValue = PWDEV.Tools.GetArgumentsValue(tonumber(_commandArgs[3]), "%d")
                            if (argValue == "0") then
                                _device:performClickableAction(_commandArgs[2],_commandArgs[5])
                            elseif (argValue == "1") then
                                _device:performClickableAction(_commandArgs[2], argValue - _commandArgs[5])
                            elseif (argValue == "-1") then
                                _device:performClickableAction(_commandArgs[2], argValue + _commandArgs[5])
                            end

                        elseif (tablelength(_commandArgs) == 6) then
                            local argValue = PWDEV.Tools.GetArgumentsValue(tonumber(_commandArgs[3]), "%.3f")
                            local increment = tonumber(_commandArgs[4])
                            local min = tonumber(_commandArgs[5])
                            local max = tonumber(_commandArgs[6])

                            local sum = argValue + increment
                            if (sum < min) then
                            elseif (sum > max) then
                            else
                                _device:performClickableAction(_commandArgs[2],argValue + _commandArgs[4])
                            end
                        end
					end

                elseif _deviceID == 2000 then
                    if PWDEV.FoundDCSModule or PWDEV.FoundFCModule then
                        local lComandID = (tonumber(_commandArgs[2]))
                        if tonumber(_commandArgs[3]) == 1.0 then
                            LoSetCommand(lComandID)
                        end
                    end

                elseif _deviceID == 2001 then
                    if PWDEV.FoundDCSModule or PWDEV.FoundFCModule then
                        local lComandID = (tonumber(_commandArgs[2]))
                        LoSetCommand(lComandID, _commandArgs[3])
                    end
                end
            end
		end
	end
end

function PWDEV.Tools.GetPlayerData()
    local SD = LoGetSelfData()
    if not SD then return end

    local acc = LoGetAccelerationUnits() or {}

    PlayerData.Lat     = SD.LatLongAlt.Lat
    PlayerData.Lon     = SD.LatLongAlt.Long
    PlayerData.Alt     = (SD.LatLongAlt.Alt or 0) * M_2_FEETS
    PlayerData.Magvar  = (LoGetMagneticYaw() or 0) * RAD_2_DEG
    PlayerData.Hdg     = (SD.Heading or 0) * RAD_2_DEG

    PlayerData.Ias     = (LoGetIndicatedAirSpeed() or 0) * MS_2_KNOTS
    PlayerData.Mach    = LoGetMachNumber() or 0
    PlayerData.Acc     = acc.y or 0  -- G-Force
end

function PWDEV.Tools.ProcessNavDataD()
	local pd = PlayerData
	local NavDataD = {
		[70] = string.format("%010.6f", pd.Lat),
		[71] = string.format("%010.6f", pd.Lon),
		[72] = string.format("%.1f", pd.Hdg),
		[73] = string.format("%.1f", pd.Magvar),
		[74] = string.format("%d", pd.Alt),
		[76] = string.format("%d", pd.Ias),
		[78] = string.format("%.2f", pd.Mach),
		[79] = string.format("%.1f", pd.Acc),
	}

	PWDEV.Tools.NavDataD = NavDataD

	for key, value in pairs(NavDataD) do
		PWDEV.Tools.SendNavDataPlayer(key, value)
	end
end


function PWDEV.Tools.ProcessOutput()
    local _coStatus

    local _info = LoGetSelfData()
    if _info ~= nil then
        if PWDEV.ModuleName ~= _info.Name then
            PWDEV.NoLuaExportBeforeNextFrame = false
			PWDEV.Tools.SelectModule()
			return
        else
            if (initiated == false) then
                PWDEV.Tools.ExportInit()
                initiated = true
            end
        end
        _info = nil
    end

    local _device = GetDevice(0)
    if type(_device) == "table" and PWDEV.FoundDCSModule then
        _device:update_arguments()

        PWDEV.coProcessArguments_EveryFrame = coroutine.create(PWDEV.Tools.ProcessArguments)
        _coStatus = coroutine.resume( PWDEV.coProcessArguments_EveryFrame, _device, PWDEV.EveryFrameArguments)

        PWDEV.coProcessDCSHighImportance = coroutine.create(PWDEV.ProcessDCSHighImportance)
        _coStatus = coroutine.resume( PWDEV.coProcessDCSHighImportance, _device)

        if PWDEV.FirstNewDataSend and PWDEV.FirstNewDataSendCount == 0 then
            PWDEV.Tools.ResetChangeValues()
            PWDEV.FirstNewDataSend = false
        else
            PWDEV.FirstNewDataSendCount = PWDEV.FirstNewDataSendCount - 1
        end
        PWDEV.lastExportTimeHI = PWDEV.lastExportTimeHI + PWDEV.Config.ExportInterval

		if PWDEV.lastExportTimeHI > PWDEV.Config.ExportLowTickInterval then
            PWDEV.coProcessArguments_Arguments = coroutine.create(PWDEV.Tools.ProcessArguments)
            _coStatus = coroutine.resume( PWDEV.coProcessArguments_Arguments, _device, PWDEV.Arguments)

            PWDEV.coProcessDCSLowImportance = coroutine.create(PWDEV.ProcessDCSLowImportance)
            _coStatus = coroutine.resume( PWDEV.coProcessDCSLowImportance, _device)

            PWDEV.lastExportTimeHI = 0
        end

        PWDEV.Tools.FlushDataDevice()

        timestamp = LoGetModelTime()

        if (lShowOnMapPlayer) then
            if (timestamp > timestampNav + timeSecPlayer) then

                PWDEV.Tools.GetPlayerData()

                local coProcessNavData = coroutine.create(PWDEV.Tools.ProcessNavDataD)
                _coStatus = coroutine.resume(coProcessNavData)
                timestampNav = timestamp
            end
            PWDEV.Tools.FlushNavDataPlayer()
        end

    elseif PWDEV.FoundFCModule then
        PWDEV.AF.EventNumber = os.clock()

        PWDEV.coProcessGlassCockpitFCHighImportance = coroutine.create(PWDEV.ProcessFCHighImportance)
        _coStatus = coroutine.resume( PWDEV.coProcessGlassCockpitFCHighImportance)

        if PWDEV.FirstNewDataSend and PWDEV.FirstNewDataSendCount == 0 then
            PWDEV.Tools.ResetChangeValues()
            PWDEV.FirstNewDataSend = false
        else
            PWDEV.FirstNewDataSendCount = PWDEV.FirstNewDataSendCount - 1
        end
        PWDEV.lastExportTimeHI = PWDEV.lastExportTimeHI + PWDEV.Config.ExportInterval

		if PWDEV.lastExportTimeHI > PWDEV.Config.ExportLowTickInterval then
            PWDEV.coProcessFCLowImportance = coroutine.create(PWDEV.ProcessFCLowImportance)
            _coStatus = coroutine.resume( PWDEV.coProcessFCLowImportance)

            PWDEV.lastExportTimeHI = 0
        end

        timestamp = LoGetModelTime()

        if (lShowOnMapPlayer) then
            if (timestamp > timestampNav + timeSecPlayer) then

                PWDEV.Tools.GetPlayerData()

                local coProcessNavData = coroutine.create(PWDEV.Tools.ProcessNavDataD)
                _coStatus = coroutine.resume(coProcessNavData)
                timestampNav = timestamp
            end
            PWDEV.Tools.FlushNavDataPlayer()
        end

        PWDEV.Tools.FlushDataDevice()
    else
        if PWDEV.FoundNoModul then
            PWDEV.Tools.SelectModule()
        end
    end
end

function PWDEV.Tools.StrSplit(str, delim, maxNb)
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

function PWDEV.Tools.ProcessArguments(device, arguments)
    local _argument , _format , _argumentValue

    for _argument, _format in pairs(arguments) do
        _argumentValue = string.format(_format,device:get_argument_value(_argument))

        PWDEV.Tools.SendData(_argument, _argumentValue)
    end
end

function PWDEV.Tools.GetArgumentsValue(argument, format)
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

function PWDEV.Tools.SendShortData(message)
    local _flushData = PWDEV.socket.protect(function()
        local _packet = message .. "\n"

        local try = PWDEV.socket.newtry(function() PWDEV.UDPsender:close() PWDEV.Tools.createUDPSender() PWDEV.Tools.ResetChangeValues() end)

        for i = 1, #PWDEV.Config.Device, 1 do
            if PWDEV.Config.Device[i].Export then
                try(PWDEV.UDPsender:sendto(_packet, PWDEV.Config.Device[i].Host, PWDEV.Config.Port))
            end
        end
	end)
    _flushData()
end

function PWDEV.Tools.SendData(id, value)
    if string.len(value) > 3 and value == string.sub("-0.00000000",1, string.len(value)) then
        value = value:sub(2)
    end

    if PWDEV.LastData[id] == nil or PWDEV.LastData[id] ~= value then
        local _data    =  id .. "=" .. value
        local _dataLen = string.len(_data)

        if _dataLen + PWDEV.PacketSize > 576 then
            PWDEV.Tools.FlushDataDevice()
        end

        table.insert(PWDEV.SendStrings, _data)
        PWDEV.LastData[id] = value
        PWDEV.PacketSize   = PWDEV.PacketSize + _dataLen + 1
    end
end

function PWDEV.Tools.FlushDataDevice()
	local _flush = PWDEV.socket.protect(function()
        if #PWDEV.SendStrings > 0 then
            local _packet = "R4G" .. separator .. table.concat(PWDEV.SendStrings, separator) .. separator .. "\n"

            local try = PWDEV.socket.newtry(function() PWDEV.UDPsender:close() PWDEV.Tools.createUDPSender() PWDEV.Tools.ResetChangeValues() end)

            for hardware = 1, #PWDEV.Config.Device, 1 do
                if PWDEV.Config.Device[hardware].Export then
                    try(PWDEV.UDPsender:sendto(_packet, PWDEV.Config.Device[hardware].Host, PWDEV.Config.Port))
                end
            end

            if PWDEV.Config.StreamDeckExport then
                local _id = ""
                _id = PWDEV.Id
                local _packetStreamDeck = _id .. table.concat(PWDEV.SendStrings, PWDEV.Config.StreamDeckSeparator) .. "\n"

                try(PWDEV.UDPsender:sendto(_packetStreamDeck, PWDEV.Config.StreamDeckHost, PWDEV.Config.StreamDeckPort))
            end

            PWDEV.SendStrings = {}
            PWDEV.PacketSize  = 0

        end
	end)
    local ln, lerror = _flush()
end

function PWDEV.Tools.SendNavDataPlayer(id, value)
    if PWDEV.LastDataNav[id] == nil or PWDEV.LastDataNav[id] ~= value then
        local _data    =  id .. "=" .. value
        local _dataLen = string.len(_data)

        if _dataLen + PWDEV.PacketNavSize > 576 then
            PWDEV.Tools.FlushNavDataPlayer()
        end

        table.insert(PWDEV.SendNavStrings, _data)
        PWDEV.LastDataNav[id] = value
        PWDEV.PacketNavSize   = PWDEV.PacketNavSize + _dataLen + 1
    end
end

function PWDEV.Tools.FlushNavDataPlayer()
	local _flush = PWDEV.socket.protect(function()
		if #PWDEV.SendNavStrings > 0 then
            if (lDeviceIpMap ~= "") then
                local _packet = "N4D" .. separator .. table.concat(PWDEV.SendNavStrings, separator) .. separator .. "\n"
                local try = PWDEV.socket.newtry(function() PWDEV.UDPsender:close() PWDEV.Tools.createUDPSender() PWDEV.Tools.ResetChangeValues() end)
                try(PWDEV.UDPsender:sendto(_packet, lDeviceIpMap, PWDEV.Config.Port))
            end

			PWDEV.SendNavStrings = {}
			PWDEV.PacketNavSize  = 0
		else

		end
	end)
    _flush()
end

function PWDEV.Tools.ResetChangeValues()
    PWDEV.LastData = {}
end

function PWDEV.Tools.SelectModule()
    PWDEV.FoundDCSModule = false
    PWDEV.FoundFCModule  = false
    PWDEV.FoundNoModul   = true

    local info = LoGetSelfData()
    if not info then return end

    PWDEV.ModuleName  = info.Name
    local moduleName  = info.Name .. ".lua"
    local modulePath  = ""

    PWDEV.FoundNoModul = false

    for file in lfs.dir(PWDEV.Config.ExportModulePath) do
        if lfs.attributes(PWDEV.Config.ExportModulePath .. file, "mode") == "file" and file == moduleName then
            modulePath = PWDEV.Config.ExportModulePath .. file
            break
        end
    end

    if #modulePath > 0 then
        dofile(modulePath)

        PWDEV.FirstNewDataSend      = PWDEV.Config.FirstNewDataSend
        PWDEV.FirstNewDataSendCount = PWDEV.Config.FirstNewDataSendCount

        if PWDEV.FoundDCSModule then
            PWDEV.EveryFrameArguments = next(PWDEV.ConfigEveryFrameArguments) and PWDEV.ConfigEveryFrameArguments or {}
            PWDEV.Arguments           = next(PWDEV.ConfigArguments) and PWDEV.ConfigArguments or {}

            PWDEV.ProcessDCSHighImportance = PWDEV.ProcessDCSConfigHighImportance
            PWDEV.ProcessDCSLowImportance  = PWDEV.ProcessDCSConfigLowImportance

        elseif PWDEV.FoundFCModule then
            PWDEV.ProcessFCHighImportance  = PWDEV.ProcessFCHighImportanceConfig
            PWDEV.ProcessFCLowImportance   = PWDEV.ProcessFCLowImportanceConfig
        end

        actualMap = PWDEV.Tools.GetMap(info)

        PWDEV.Tools.FlushDataDevice()
    else
        PWDEV.ProcessDCSHighImportance = PWDEV.ProcessDCSHighImportanceNoConfig
        PWDEV.ProcessDCSLowImportance  = PWDEV.ProcessDCSLowImportanceNoConfig
        PWDEV.ProcessFCHighImportance  = PWDEV.ProcessFCHighImportanceNoConfig
        PWDEV.ProcessFCLowImportance   = PWDEV.ProcessFCLowImportanceNoConfig

        PWDEV.EveryFrameArguments = {}
        PWDEV.Arguments           = {}
    end
end

function PWDEV.Tools.GetMap(player)
    local lMap
    for Map, LatLong in pairs(PWDEV.Maps) do
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

function PWDEV.Tools.RoundFreqeuncy(Freqeuncy, Format, PrefixZeros, LeastValue)
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

function PWDEV.Tools.getListCockpitParam(param)
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

function PWDEV.Tools.getListCockpitParams()
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

function PWDEV.Tools.getListCockpitParamsStr()
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

function PWDEV.Tools.getListIndicatorValue(IndicatorID)
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

function PWDEV.Tools.parseListIndicatorList(IndicatorID)
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

function PWDEV.Tools.getListIndicatorValueByNameLeft(IndicatorID, NameID, Length)
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

function PWDEV.Tools.getListIndicatorValueByName(IndicatorID, NameID, Length)
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

function PWDEV.Tools.DisplayFormat(String, maxChars, LEFTorRight, DAC)
	local lString      = String      or ""
	local lmaxChars    = maxChars    or 5
	local lLEFTorRight = LEFTorRight or "r"
	local lTmpLen      = 0
	local lRep         = " "

	lString = PWDEV.utf8.sub(lString, 0, lmaxChars)
	lTmpLen = PWDEV.utf8.len(lString)

	if lTmpLen < lmaxChars then
		if string.lower(lLEFTorRight) == "l" then
			lString = lString..string.rep(" ", lmaxChars - lTmpLen)
		else
			lString = string.rep(" ", lmaxChars - lTmpLen)..lString
		end
	end

	return lString
end

function PWDEV.Tools.mergeString(original_string, new_data, location)
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

function PWDEV.Tools.split(stringvalue, delimiter)
    result = {};
    for match in (stringvalue..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

function PWDEV.Tools.coerce_nil_to_string(value)
	if value == nil then return "" else return value end
end

function PWDEV.Tools.round(number, decimals, method)
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

function PWDEV.Tools.GetFileData(fileName, n)
    local file = io.open(fileName, "r")
    if not file then return 0 end

    local count = 1
    for line in file:lines() do
        if count == n then
            file:close()
            return line
        end
        count = count + 1
    end

    file:close()
    return "-"
end

function PWDEV.ProcessDCSHighImportanceNoConfig(mainPanelDevice) end
function PWDEV.ProcessDCSLowImportanceNoConfig(mainPanelDevice) end

function PWDEV.ProcessFCHighImportanceNoConfig() end
function PWDEV.ProcessFCLowImportanceNoConfig() end