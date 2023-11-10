PWDEV = {}

PWDEV.Id = string.format("%08x*",os.time())

PWDEV.PacketSize     = 0
PWDEV.SendStrings    = {}
PWDEV.PacketNavSize  = 0
PWDEV.SendNavStrings	= {}

PWDEV.SendNavAllStrings	= {}
PWDEV.LastData       	= {}
PWDEV.LastDataAll       = {}
PWDEV.LastDataNav       = {}

PWDEV.lastExportTimeHI       = 0
PWDEV.lastExportTimeLI       = 0

PWDEV.NoLuaExportBeforeNextFrame = false

local PrevPWDEV                    = {}
PrevPWDEV.LuaExportStart           = LuaExportStart
PrevPWDEV.LuaExportStop            = LuaExportStop
PrevPWDEV.LuaExportBeforeNextFrame = LuaExportBeforeNextFrame
PrevPWDEV.LuaExportAfterNextFrame  = LuaExportAfterNextFrame
PrevPWDEV.LuaExportActivityNextEvent = LuaExportActivityNextEvent

package.path  = package.path..";.\\LuaSocket\\?.lua"
package.cpath = package.cpath..";.\\LuaSocket\\?.dll"

local versionFile = lfs.writedir()..[[Scripts\pw-dev_script\version]]
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


local configFileVer = GetConfigFileVersion()


dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Init.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\Config.lua]])
PWDEV.utf8 = dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\utf8.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Tools.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Fdr.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Maps.lua]])
PWDEV.Displays = dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Displays.lua]])


local separator = PWDEV.Config.Separator

PWDEV.FoundDCSModule = false
PWDEV.FoundFCModule  = false
PWDEV.FoundNoModul   = true

function PWDEV.Start()
	PWDEV.Tools.createUDPSender()
	PWDEV.Tools.createUDPListner()

	PWDEV.Init.CheckDcs()

	local version = LoGetVersionInfo()
	PWDEV.Init.CheckDcsVersionId(version)

	if (PWDEV.Fdr ~= nil) then
		if (PWDEV.Config.WriteNavFile == true) then
			PWDEV.Fdr.CsvFileInit()
			PWDEV.Fdr.NavFileInit(PWDEV.Init.VersionId)
		end
	end

	PWDEV.AF = {}

	PWDEV.NoLuaExportBeforeNextFrame = false
	PWDEV.Tools.SelectModule()

	local scriptVer = PWDEV.Tools.GetFileData(versionFile, 1)
	PWDEV.Tools.playerId = PWDEV.Tools.GetPlayerId()

	PWDEV.Tools.SendShortData("EX=ON;Ver="..PWDEV.Init.VersionStr .. separator.."VId="..PWDEV.Init.VersionId..separator.."MOE="..PWDEV.Init.CheckObjectExport()..separator.."MSE="..PWDEV.Init.CheckSensorExport()..separator.."MPE="..PWDEV.Init.CheckOwnshipExport()..separator.."SV="..scriptVer..separator.."CV="..configFileVer..separator)
end

function PWDEV.ActivityNextEvent()
	PWDEV.coProcessArguments_BeforeNextFrame = coroutine.create(PWDEV.Tools.ProcessInput)
	coStatus = coroutine.resume(PWDEV.coProcessArguments_BeforeNextFrame)

	if PWDEV.NoLuaExportBeforeNextFrame == false then
		PWDEV.Tools.ProcessOutput()
	end
end

function PWDEV.Stop()
	PWDEV.Tools.FlushDataDevice()

	PWDEV.Tools.SendShortData("EX=OF")

	PWDEV.UDPsender:close()
	if PWDEV.Config.Listener then
		PWDEV.UDPListener:close()
	end
	
	PWDEV.ModuleName   = nil
	PWDEV.FoundNoModul = false

	if (PWDEV.Fdr ~= nil) then
		if (PWDEV.Config.WriteNavFile == true) then
			PWDEV.Fdr.CsvFileEnd()
			PWDEV.Fdr.NavFileEnd()
		end
	end
end

LuaExportStart = function()
	local status, err = pcall(function()
		PWDEV.Start()
	end)

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
	if PWDEV.NoLuaExportBeforeNextFrame then
		PWDEV.Tools.ProcessOutput()
	end

	if PrevPWDEV.LuaExportAfterNextFrame then
		PrevPWDEV.LuaExportAfterNextFrame()
	end
end

function LuaExportActivityNextEvent(currenttime)
	local tNext = currenttime

	local status, err = pcall(function()
		PWDEV.ActivityNextEvent()
	end)

	tNext = tNext + PWDEV.Config.ExportInterval

	return tNext
end

LuaExportStop = function()
	local status, err = pcall(function()
		PWDEV.Stop()
	end)

	if PrevPWDEV.LuaExportStop then
		PrevPWDEV.LuaExportStop()
	end
end