-- Main Table
ExportScript = {}

-- State data for export
ExportScript.PacketSize     = 0
ExportScript.SendStrings    = {}
ExportScript.PacketNavSize  = 0
ExportScript.SendNavStrings	= {}
-- ExportScript.PacketNavAllSize  = 0
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

dofile(lfs.writedir()..[[Scripts\pw-dev_script\Config.lua]])
ExportScript.utf8 = dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\utf8.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Tools.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Fdr.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Maps.lua]])

-- Found DCS or FC Module
ExportScript.FoundDCSModule = false
ExportScript.FoundFCModule  = false
ExportScript.FoundNoModul   = true


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
	-- Works once just before mission start.
	package.path  = package.path..";.\\LuaSocket\\?.lua"
	package.cpath = package.cpath..";.\\LuaSocket\\?.dll"

	if (ExportScript.Tools.DebugScript == true) then
		ExportScript.logFile = io.open(ExportScript.Tools.LogPath, "wa") -- "W+"
		if ExportScript.logFile then
			ExportScript.logFile:write('\239\187\191') -- create a UTF-8 BOM
		end
	end

		--request current version info (as it showed by Windows Explorer fo DCS.exe properties)
		local version = LoGetVersionInfo()

		if (ExportScript.Fdr ~= nil) then
			if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
				ExportScript.Fdr.CsvFileInit()
			end
	
			if (ExportScript.Config.WriteNavFile ~= nil and ExportScript.Config.WriteNavFile == true) then
				ExportScript.Fdr.NavFileInit(version)
			end
		end
	
	ExportScript.Tools.createUDPSender()
	ExportScript.Tools.createUDPListner()

	ExportScript.AF = {} -- Table for Auxiliary functions

	ExportScript.NoLuaExportBeforeNextFrame = false
	ExportScript.Tools.SelectModule()   -- point globals to Module functions and data.

	if (ExportScript.Tools.DebugScript == true) then
		if version and ExportScript.logFile then
			ExportScript.logFile:write("ProductName: "..version.ProductName..'\n')
			ExportScript.logFile:write(string.format("FileVersion: %d.%d.%d.%d\n",
													version.FileVersion[1],
													version.FileVersion[2],
													version.FileVersion[3],
													version.FileVersion[4]))
			ExportScript.logFile:write(string.format("ProductVersion: %d.%d.%d.%d\n",
													version.ProductVersion[1],
													version.ProductVersion[2],
													version.ProductVersion[3],  -- head  revision (Continuously growth)
													version.ProductVersion[4])) -- build number   (Continuously growth)
		end
	end

	-- ExportScript.Tools.CheckObjectExport()
	-- ExportScript.Tools.CheckSensorExport()
	-- ExportScript.Tools.CheckOwnshipExport()

	ExportScript.Tools.playerId = ExportScript.Tools.GetPlayerId()

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
	-- Works once just after mission stop.
	ExportScript.Tools.SendShortData("EX=OF")
	-- ExportScript.Tools.SendData("exporting", "stop")
	-- ExportScript.Tools.FlushData()

	ExportScript.UDPsender:close()
	if ExportScript.Config.Listener then
		ExportScript.UDPListener:close()
	end
	
	ExportScript.ModuleName   = nil
	ExportScript.FoundNoModul = false

	if (ExportScript.Tools.DebugScript == true) then
		if ExportScript.logFile then
			ExportScript.Tools.WriteToLog("====== EOF ======")
			ExportScript.logFile:flush()
			ExportScript.logFile:close()
			ExportScript.logFile = nil
		end
	end

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