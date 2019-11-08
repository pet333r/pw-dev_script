-- Main Table
ExportScript = {}

-- State data for export
ExportScript.PacketSize     = 0
ExportScript.SendStrings    = {}
ExportScript.LastData       = {}

ExportScript.lastExportTimeHI       = 0
ExportScript.lastExportTimeLI       = 0

ExportScript.NoLuaExportBeforeNextFrame = false

local PrevExport                    = {}
PrevExport.LuaExportStart           = LuaExportStart
PrevExport.LuaExportStop            = LuaExportStop
PrevExport.LuaExportBeforeNextFrame = LuaExportBeforeNextFrame
PrevExport.LuaExportAfterNextFrame  = LuaExportAfterNextFrame

dofile(lfs.writedir()..[[Scripts\pw-dev_script\Config.lua]])
ExportScript.utf8 = dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\utf8.lua]])
dofile(lfs.writedir()..[[Scripts\pw-dev_script\lib\Tools.lua]])

-- Found DCS or FC Module
ExportScript.FoundDCSModule = false
ExportScript.FoundFCModule  = false
ExportScript.FoundNoModul   = true

---------------------------------------------
-- DCS Export API Function Implementations --
---------------------------------------------

function LuaExportStart()
-- Works once just before mission start.

	package.path  = package.path..";.\\LuaSocket\\?.lua"
	package.cpath = package.cpath..";.\\LuaSocket\\?.dll"

	ExportScript.Tools.createUDPSender()
	ExportScript.Tools.createUDPListner()

	ExportScript.NoLuaExportBeforeNextFrame = false
	ExportScript.Tools.SelectModule()   -- point globals to Module functions and data.
	
	-- Chain previously-included export as necessary
	--if PrevExport.LuaExportStart then
		PrevExport.LuaExportStart()
	--end
end

function LuaExportBeforeNextFrame()
	-- Chain previously-included export as necessary
	if PrevExport.LuaExportBeforeNextFrame then
		PrevExport.LuaExportBeforeNextFrame()
	end
end

function LuaExportAfterNextFrame()
	if ExportScript.NoLuaExportBeforeNextFrame then
		ExportScript.Tools.ProcessOutput()
	end
	
	-- Chain previously-included export as necessary
	if PrevExport.LuaExportAfterNextFrame then
		PrevExport.LuaExportAfterNextFrame()
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
	--if ExportScript.Config.Export then
		ExportScript.Tools.SendData("exporting", "stop")
		ExportScript.Tools.FlushData()
	--end

	ExportScript.UDPsender:close()
	if ExportScript.Config.Listener then
		ExportScript.UDPListener:close()
	end
	
	ExportScript.ModuleName   = nil
	ExportScript.FoundNoModul = false
	
	-- Chain previously-included export as necessary
	if PrevExport.LuaExportStop then
		PrevExport.LuaExportStop()
	end
end