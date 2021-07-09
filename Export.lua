-- Main Table
ExportScript = {}

-- State data for export
ExportScript.PacketSize     = 0
ExportScript.SendStrings    = {}
ExportScript.PacketNavSize  = 0
ExportScript.SendNavStrings	= {}
ExportScript.PacketNavAllSize  = 0
ExportScript.SendNavAllStrings	= {}
ExportScript.LastData       = {}

ExportScript.lastExportTimeHI       = 0
ExportScript.lastExportTimeLI       = 0

ExportScript.NoLuaExportBeforeNextFrame = false

local PrevExportScript                    = {}
PrevExportScript.LuaExportStart           = LuaExportStart
PrevExportScript.LuaExportStop            = LuaExportStop
PrevExportScript.LuaExportBeforeNextFrame = LuaExportBeforeNextFrame
PrevExportScript.LuaExportAfterNextFrame  = LuaExportAfterNextFrame

dofile(lfs.writedir()..[[Scripts\pw-dev_script\Config.lua]])
ExportScript.utf8 = dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\utf8.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Tools.lua]])

-- Found DCS or FC Module
ExportScript.FoundDCSModule = false
ExportScript.FoundFCModule  = false
ExportScript.FoundNoModul   = true

-- pwscript = 
-- {
-- 	pwscriptStart = function(self)
-- 		package.path  = package.path..";.\\LuaSocket\\?.lua"
-- 		package.cpath = package.cpath..";.\\LuaSocket\\?.dll"
	
-- 		ExportScript.Tools.createUDPSender()
-- 		ExportScript.Tools.createUDPListner()
	
-- 		ExportScript.NoLuaExportBeforeNextFrame = false
-- 		ExportScript.Tools.SelectModule()   -- point globals to Module functions and data.
-- 	end,

-- 	-- pwscriptBeforeNextFrame = function(self)
-- 	-- end,

-- 	pwscriptAfterNextFrame = function(self)
-- 		ExportScript.Tools.ProcessOutput()
-- 	end,

-- 	pwscriptActivityNextEvent = function(self,t)
-- 		local tNext = t

-- 		ExportScript.coProcessArguments_BeforeNextFrame = coroutine.create(ExportScript.Tools.ProcessInput)
-- 		coStatus = coroutine.resume(ExportScript.coProcessArguments_BeforeNextFrame)
		
-- 		if ExportScript.NoLuaExportBeforeNextFrame == false then
-- 			ExportScript.Tools.ProcessOutput()
-- 		end
	
-- 		tNext = tNext + ExportScript.Config.ExportInterval
	
-- 		return tNext
-- 	end,

-- 	pwscriptStop = function(self)
-- 		-- Works once just after mission stop.
-- 		ExportScript.Tools.SendData("exporting", "stop")
-- 		ExportScript.Tools.FlushData()

-- 		ExportScript.UDPsender:close()
-- 		if ExportScript.Config.Listener then
-- 			ExportScript.UDPListener:close()
-- 		end
		
-- 		ExportScript.ModuleName   = nil
-- 		ExportScript.FoundNoModul = false
-- 	end
-- }

---------------------------------------------
-- DCS Export API Function Implementations --
---------------------------------------------



function LuaExportStart()
-- Works once just before mission start.

	package.path  = package.path..";.\\LuaSocket\\?.lua"
	package.cpath = package.cpath..";.\\LuaSocket\\?.dll"

	if (ExportScript.Tools.DebugScript == true) then
		ExportScript.logFile = io.open(ExportScript.Tools.LogPath, "wa") -- "W+"
		if ExportScript.logFile then
			ExportScript.logFile:write('\239\187\191') -- create a UTF-8 BOM
		end
	end

	ExportScript.Tools.createUDPSender()
	ExportScript.Tools.createUDPListner()

	ExportScript.AF = {} -- Table for Auxiliary functions

	ExportScript.NoLuaExportBeforeNextFrame = false
	ExportScript.Tools.SelectModule()   -- point globals to Module functions and data.

	if (ExportScript.Tools.DebugScript == true) then
		--request current version info (as it showed by Windows Explorer fo DCS.exe properties)
		local version = LoGetVersionInfo()
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

	-- dodanie info o inicjalizacji przesylania nowych danych
	ExportScript.Tools.SendData("exporting", "start")

	-- Chain previously-included export as necessary
	PrevExportScript.LuaExportStart()
end

function LuaExportBeforeNextFrame()
	-- Chain previously-included export as necessary
	if PrevExportScript.LuaExportBeforeNextFrame then
		PrevExportScript.LuaExportBeforeNextFrame()
	end
end

function LuaExportAfterNextFrame()
	if ExportScript.NoLuaExportBeforeNextFrame then
		ExportScript.Tools.ProcessOutput()
	end
	
	-- Chain previously-included export as necessary
	if PrevExportScript.LuaExportAfterNextFrame then
		PrevExportScript.LuaExportAfterNextFrame()
	end
end

function LuaExportActivityNextEvent(t)
	local tNext = t

	ExportScript.coProcessArguments_BeforeNextFrame = coroutine.create(ExportScript.Tools.ProcessInput)
	coStatus = coroutine.resume(ExportScript.coProcessArguments_BeforeNextFrame)
	
	if ExportScript.NoLuaExportBeforeNextFrame == false then
		ExportScript.Tools.ProcessOutput()
	end

	tNext = tNext + ExportScript.Config.ExportInterval

	return tNext
end

function LuaExportStop()
-- Works once just after mission stop.
	ExportScript.Tools.SendData("exporting", "stop")
	ExportScript.Tools.FlushData()

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

	-- Chain previously-included export as necessary
	if PrevExportScript.LuaExportStop then
		PrevExportScript.LuaExportStop()
	end
end

-- do
-- 	local InitLuaExportStart = LuaExportStart
-- 	LuaExportStart=function()
-- 		pwscript:pwscriptStart()
-- 		if InitLuaExportStart then
-- 			InitLuaExportStart()
-- 		end
-- 	end
-- end

-- do
-- 	local ScriptLuaExportAfterNextFrame = LuaExportAfterNextFrame
-- 	LuaExportAfterNextFrame = function(t)
-- 		pwscript.pwscriptAfterNextFrame(t)
-- 		if ScriptLuaExportAfterNextFrame then
-- 			ScriptLuaExportAfterNextFrame()
-- 		end
-- 		return tNext
-- 	end
-- end

-- do
-- 	local ScriptLuaExportActivityNextEvent = LuaExportActivityNextEvent
-- 	LuaExportActivityNextEvent = function(t)
-- 		local tNext = t
-- 		tNext = pwscript.pwscriptActivityNextEvent(t)
-- 		if ScriptLuaExportActivityNextEvent then
-- 			ScriptLuaExportActivityNextEvent()
-- 		end
-- 		return tNext
-- 	end
-- end

-- do
-- 	local ScriptLuaExportStop = LuaExportStop
-- 	LuaExportStop = function()
-- 		pwscript:pwscriptStop()
-- 		if InitLuaExportStart then
-- 			ScriptLuaExportStop()
-- 		end
-- 	end
-- end