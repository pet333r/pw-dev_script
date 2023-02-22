ExportScript.Init = {}

ExportScript.Init.VersionStr = 2
ExportScript.Init.VersionId = 0

function ExportScript.Init.CheckDcs()
	if (string.match(lfs.writedir(), "openbeta")) then
		ExportScript.Init.VersionStr = 1
	else
		ExportScript.Init.VersionStr = 0
	end
end

function ExportScript.Init.CheckDcsVersionId(version)
	ExportScript.Init.VersionId = string.format("%d.%d.%d.%d",
			version.FileVersion[1],
			version.FileVersion[2],
			version.FileVersion[3], -- head  revision (Continuously growth)
			version.FileVersion[4]) -- build number   (Continuously growth)
end

function ExportScript.Init.CheckObjectExport()
    local isObjects = LoIsObjectExportAllowed()
    if isObjects == nil then
		return 0
    elseif isObjects == true then
        return 1
    else
        return 0
    end
end

function ExportScript.Init.CheckSensorExport()
    local isSensors = LoIsSensorExportAllowed()
    if isSensors == nil then
		return 0
    elseif isSensors == true then
        return 1
    else
        return 0
    end
end

function ExportScript.Init.CheckOwnshipExport()
    local isOwnship = LoIsOwnshipExportAllowed()
    if isOwnship == nil then
		return 0
    elseif isOwnship == true then
        return 1
    else
        return 0
    end
end