ExportScript = {}

ExportScript.Id = string.format("%08x*",os.time())

ExportScript.PacketSize     = 0
ExportScript.SendStrings    = {}
ExportScript.PacketNavSize  = 0
ExportScript.SendNavStrings	= {}

ExportScript.SendNavAllStrings	= {}
ExportScript.LastData       = {}
ExportScript.LastDataAll       = {}
ExportScript.LastDataNav       = {}

ExportScript.lastExportTimeHI       = 0
ExportScript.lastExportTimeLI       = 0

ExportScript.NoLuaExportBeforeNextFrame = false

local PrevExportScript                    = {}
PrevExportScript.LuaExportStart           = LuaExportStart
PrevExportScript.LuaExportStop            = LuaExportStop
PrevExportScript.LuaExportBeforeNextFrame = LuaExportBeforeNextFrame
PrevExportScript.LuaExportAfterNextFrame  = LuaExportAfterNextFrame
PrevExportScript.LuaExportActivityNextEvent = LuaExportActivityNextEvent

local versionFile = lfs.writedir()..[[Scripts\pw-dev_script\version]]
local configFile = lfs.writedir()..[[Scripts\pw-dev_script\Config.lua]]
local minConfig = "2023.02.11"

local function GetConfigFileVersion()
    local file = io.open(configFile, "r")
	if (file ~= nil) then
		content = file:read("*all")
		file:flush()
		file:close()
		version = content:match("--%s+file%s+version:%s+(.-)\n")
		if (version ~= nil) then
			version = string.gsub(version, "[\r\n]", "")
			version = string.gsub(version, "%s+", "")
			return version
		else
			return 0
		end
	else
		return 0
	end
end

local function getTimestampFromDate(date)
    if (date == 0) then
        return 0
    else
        local pattern = "(%d+).(%d+).(%d+)"
        local dyear, dmonth, dday = date:match(pattern)
        local timestamp = os.time({year = dyear, month = dmonth, day = dday})
        return timestamp
    end
end
dofile(lfs.writedir()..[[Scripts\pw-dev_script\Config.lua]])
ExportScript.utf8 = dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\utf8.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Tools.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Fdr.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Maps.lua]])

local separator = ExportScript.Config.Separator

ExportScript.FoundDCSModule = false
ExportScript.FoundFCModule  = false
ExportScript.FoundNoModul   = true

ExportScript.VersionStr = 2
ExportScript.VersionId = 0
ExportScript.ExportObject = 0
ExportScript.ExportOwnship = 0
ExportScript.ExportSensor = 0

function ExportScript.CheckDcs()
	if (string.match(lfs.writedir(), "openbeta")) then
		ExportScript.VersionStr = 1
	else
		ExportScript.VersionStr = 0
	end
end

function ExportScript.CheckDcsVersionId(version)
	ExportScript.VersionId = string.format("%d.%d.%d.%d",
			version.FileVersion[1],
			version.FileVersion[2],
			version.FileVersion[3], -- head  revision (Continuously growth)
			version.FileVersion[4]) -- build number   (Continuously growth)
end

function LuaExportStart()
	local status, err = pcall(function()
		ExportScript.Start()
	end)

	if PrevExportScript.LuaExportStart then
		PrevExportScript.LuaExportStart()
	end
end

function LuaExportBeforeNextFrame()
	local status, err = pcall(function()
		ExportScript.BeforeNextFrame()
	end)

	if PrevExportScript.LuaExportBeforeNextFrame then
		PrevExportScript.LuaExportBeforeNextFrame()
	end
	
	return NextTime
end

function LuaExportAfterNextFrame()
	local status, err = pcall(function()
		ExportScript.LuaExportAfterNextFrame()
	end)

	if PrevExportScript.LuaExportAfterNextFrame then
		PrevExportScript.LuaExportAfterNextFrame()
	end
	
	return NextTime
end

function LuaExportActivityNextEvent(currenttime)
    local NextTime = currenttime + ExportScript.Config.ExportInterval

	local status, err = pcall(function()
		ExportScript.LuaExportActivityNextEvent()
	end)

	if PrevExportScript.LuaExportActivityNextEvent then
		PrevExportScript.LuaExportActivityNextEvent(currenttime)
	end

	return NextTime
end

function LuaExportStop()
	local status, err = pcall(function()
		ExportScript.Stop()
	end)
	
	if PrevExportScript.LuaExportStop then
		PrevExportScript.LuaExportStop()
	end
end

function ExportScript.Start()
	package.path  = package.path..";.\\LuaSocket\\?.lua"
	package.cpath = package.cpath..";.\\LuaSocket\\?.dll"

	ExportScript.CheckDcs()

	local version = LoGetVersionInfo()
	ExportScript.CheckDcsVersionId(version)

	if (ExportScript.Fdr ~= nil) then
		if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
			ExportScript.Fdr.CsvFileInit()
		end

		if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
			ExportScript.Fdr.NavFileInit(ExportScript.VersionId)
		end
	end
	
	ExportScript.Tools.createUDPSender()
	ExportScript.Tools.createUDPListner()

	ExportScript.AF = {}

	ExportScript.NoLuaExportBeforeNextFrame = false
	ExportScript.Tools.SelectModule()

	ExportScript.ExportObject = ExportScript.Tools.CheckObjectExport()
	ExportScript.ExportSensor = ExportScript.Tools.CheckSensorExport()
	ExportScript.ExportOwnship = ExportScript.Tools.CheckOwnshipExport()

	ExportScript.Tools.playerId = ExportScript.Tools.GetPlayerId()

	ExportScript.Tools.SendShortData("EX=ON")

	PrevExportScript.LuaExportStart()
end

function ExportScript.BeforeNextFrame()
	if PrevExportScript.LuaExportBeforeNextFrame then
		PrevExportScript.LuaExportBeforeNextFrame()
	end
end

function ExportScript.LuaExportAfterNextFrame()
	if ExportScript.NoLuaExportBeforeNextFrame then
		ExportScript.Tools.ProcessOutput()
	end
	
	if PrevExportScript.LuaExportAfterNextFrame then
		PrevExportScript.LuaExportAfterNextFrame()
	end
end

function ExportScript.LuaExportActivityNextEvent(t)
	local tNext = t

	ExportScript.coProcessArguments_BeforeNextFrame = coroutine.create(ExportScript.Tools.ProcessInput)
	coStatus = coroutine.resume(ExportScript.coProcessArguments_BeforeNextFrame)
	
	if ExportScript.NoLuaExportBeforeNextFrame == false then
		ExportScript.Tools.ProcessOutput()
	end

	tNext = tNext + ExportScript.Config.ExportInterval

	return tNext
end

function ExportScript.Stop()
	ExportScript.Tools.SendShortData("EX=OF")

	ExportScript.UDPsender:close()
	if ExportScript.Config.Listener then
		ExportScript.UDPListener:close()
	end
	
	ExportScript.ModuleName   = nil
	ExportScript.FoundNoModul = false

	if (ExportScript.Fdr ~= nil) then
		if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
			ExportScript.Fdr.CsvFileEnd()
		end
		if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
			ExportScript.Fdr.NavFileEnd()
		end
	end

	if PrevExportScript.LuaExportStop then
		PrevExportScript.LuaExportStop()
	end
end