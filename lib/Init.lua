PWDEV.Init = {}

PWDEV.Init.VersionStr = 2
PWDEV.Init.VersionId = 0

function PWDEV.Init.CheckDcs()
	if (string.match(lfs.writedir(), "openbeta")) then
		PWDEV.Init.VersionStr = 1
	else
		PWDEV.Init.VersionStr = 0
	end
end

function PWDEV.Init.CheckDcsVersionId(version)
	PWDEV.Init.VersionId = string.format("%d.%d.%d.%d",
			version.FileVersion[1],
			version.FileVersion[2],
			version.FileVersion[3], -- head  revision (Continuously growth)
			version.FileVersion[4]) -- build number   (Continuously growth)
end

local function checkExportPermission(apiFunc, tagMessage)
    local result = apiFunc()
    return result and 1 or 0
end

function PWDEV.Init.CheckObjectExport()
    return checkExportPermission(LoIsObjectExportAllowed, "Export objects")
end

function PWDEV.Init.CheckSensorExport()
    return checkExportPermission(LoIsSensorExportAllowed, "Export radar sensors")
end

function PWDEV.Init.CheckOwnshipExport()
    return checkExportPermission(LoIsOwnshipExportAllowed, "Export ownship")
end