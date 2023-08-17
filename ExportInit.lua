ExportScript = {}
PWDEV = {}

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

local PrevPWDEV                    = {}
PrevPWDEV.LuaExportStart           = LuaExportStart
PrevPWDEV.LuaExportStop            = LuaExportStop
PrevPWDEV.LuaExportBeforeNextFrame = LuaExportBeforeNextFrame
PrevPWDEV.LuaExportAfterNextFrame  = LuaExportAfterNextFrame
PrevPWDEV.LuaExportActivityNextEvent = LuaExportActivityNextEvent

local versionFile = lfs.writedir()..[[Scripts\pw-dev_script\version]]
local minConfig = "2023.02.11"

local function GetConfigFileVersion()
    local file = io.open(lfs.writedir()..[[Scripts\pw-dev_script\Config.lua]], "r")
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

local configFileVer = GetConfigFileVersion()

local minTime = getTimestampFromDate(minConfig)
local cfgTime = getTimestampFromDate(configFileVer)

dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Init.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\Config.lua]])
ExportScript.utf8 = dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\utf8.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Tools.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Fdr.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Maps.lua]])

local separator = ExportScript.Config.Separator

ExportScript.FoundDCSModule = false
ExportScript.FoundFCModule  = false
ExportScript.FoundNoModul   = true

LuaExportStart = function()
	package.path  = package.path..";.\\LuaSocket\\?.lua"
	package.cpath = package.cpath..";.\\LuaSocket\\?.dll"

	ExportScript.Init.CheckDcs()

	local version = LoGetVersionInfo()
	ExportScript.Init.CheckDcsVersionId(version)

	if (ExportScript.Fdr ~= nil) then
		if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
			ExportScript.Fdr.CsvFileInit()
			ExportScript.Fdr.NavFileInit(ExportScript.Init.VersionId)
		end
	end
	
	ExportScript.Tools.createUDPSender()
	ExportScript.Tools.createUDPListner()

	ExportScript.AF = {}

	ExportScript.NoLuaExportBeforeNextFrame = false
	ExportScript.Tools.SelectModule()

	local scriptVer = ExportScript.Tools.GetFileData(versionFile, 1)
	ExportScript.Tools.playerId = ExportScript.Tools.GetPlayerId()

	ExportScript.Tools.SendShortData("EX=ON;Ver="..ExportScript.Init.VersionStr .. separator.."VId="..ExportScript.Init.VersionId..separator.."MOE="..ExportScript.Init.CheckObjectExport()..separator.."MSE="..ExportScript.Init.CheckSensorExport()..separator.."MPE="..ExportScript.Init.CheckOwnshipExport()..separator.."SV="..scriptVer..separator.."CV="..configFileVer..separator)

	if PrevPWDEV.LuaExportStart then
		PrevPWDEV.LuaExportStart()
	end
end

function LuaExportBeforeNextFrame()
	if PrevPWDEV.LuaExportBeforeNextFrame then
		PrevPWDEV.LuaExportBeforeNextFrame()
	end
end

function LuaExportAfterNextFrame()
	if ExportScript.NoLuaExportBeforeNextFrame then
		ExportScript.Tools.ProcessOutput()
	end

	if PrevPWDEV.LuaExportAfterNextFrame then
		PrevPWDEV.LuaExportAfterNextFrame()
	end
end

function LuaExportActivityNextEvent(currenttime)
	local tNext = currenttime

	ExportScript.coProcessArguments_BeforeNextFrame = coroutine.create(ExportScript.Tools.ProcessInput)
	coStatus = coroutine.resume(ExportScript.coProcessArguments_BeforeNextFrame)

	if ExportScript.NoLuaExportBeforeNextFrame == false then
		ExportScript.Tools.ProcessOutput()
	end

	tNext = tNext + ExportScript.Config.ExportInterval

	if PrevPWDEV.LuaExportActivityNextEvent then
		tNext = PrevPWDEV.LuaExportActivityNextEvent(currenttime)
	end

	return tNext
end

LuaExportStop = function()
	ExportScript.Tools.SendShortData("EX=OF")

	ExportScript.Tools.FlushData()

	ExportScript.UDPsender:close()
	if ExportScript.Config.Listener then
		ExportScript.UDPListener:close()
	end
	
	ExportScript.ModuleName   = nil
	ExportScript.FoundNoModul = false

	if (ExportScript.Fdr ~= nil) then
		if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
			ExportScript.Fdr.CsvFileEnd()
			ExportScript.Fdr.NavFileEnd()
		end
	end

	if PrevPWDEV.LuaExportStop then
		PrevPWDEV.LuaExportStop()
	end
end