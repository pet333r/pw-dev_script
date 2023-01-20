ExportScript.Fdr = {}

local telemetryFolder = lfs.writedir() .. [[Logs\telemetry\]]
lfs.mkdir(telemetryFolder)
local pathCsv = telemetryFolder
local pathKml = telemetryFolder

ExportScript.Fdr.WriteFdrFile = true
ExportScript.Fdr.WriteNavFile = true

function ExportScript.Fdr.GetDateTime()
    local date_table = os.date("*t")
	local hour, minute, second = date_table.hour, date_table.min, date_table.sec
	local year, month, day = date_table.year, date_table.month, date_table.day
	local dateResult = string.format("%d-%02d-%02d %02d.%02d.%02d", year, month, day, hour, minute, second)
    return dateResult
end

function ExportScript.Fdr.CsvFileInit()
    local datetime = ExportScript.Fdr.GetDateTime()

    ExportScript.csvFile = io.open(pathCsv .. datetime ..  ".csv", "wa")
    if ExportScript.csvFile then
        ExportScript.Tools.WriteToLog("write CSV file: " .. pathCsv .. datetime .. ".csv\n")
        ExportScript.csvFile:write('\239\187\191') -- create a UTF-8 BOM
    end
end

function ExportScript.Fdr.CsvFileWrite(packet)
    if ExportScript.csvFile then
        ExportScript.csvFile:write(packet)
    end
end

function ExportScript.Fdr.CsvFileEnd()
    if ExportScript.csvFile then
        ExportScript.csvFile:flush()
        ExportScript.csvFile:close()
        ExportScript.csvFile = nil
    end
end

function ExportScript.Fdr.NavFileInit(version)
    local datetime = ExportScript.Fdr.GetDateTime()

    ExportScript.kmlFile = io.open(pathKml .. datetime .. ".kml", "wa") -- "W+"
    if ExportScript.kmlFile then
        ExportScript.Tools.WriteToLog("write KML file: " .. pathKml .. datetime .. ".kml\n")

        ExportScript.kmlFile:write('\239\187\191') -- create a UTF-8 BOM
        ExportScript.kmlFile:write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        ExportScript.kmlFile:write("<kml xmlns=\"http://www.opengis.net/kml/2.2\">\n")
        ExportScript.kmlFile:write("  <Document>\n")
        ExportScript.kmlFile:write("    <Style id=\"StyleLineKML\">\n")
        ExportScript.kmlFile:write("      <LineStyle id=\"lineStyle\">\n")
        ExportScript.kmlFile:write("        <color>a032cfcb</color>\n")
        ExportScript.kmlFile:write("        <width>2</width>\n")
        ExportScript.kmlFile:write("      </LineStyle>\n")
        ExportScript.kmlFile:write("      <PolyStyle>\n")
        ExportScript.kmlFile:write("        <color>5046d774</color>\n")
        ExportScript.kmlFile:write("      </PolyStyle>\n")
        ExportScript.kmlFile:write("    </Style>\n")
        ExportScript.kmlFile:write("    <Placemark>\n")
ExportScript.kmlFile:write("      <description>Flight recorded in DCS World " .. ExportScript.VersionId .. 
" @ " .. datetime .. "</description>\n")
        ExportScript.kmlFile:write("      <styleUrl>#StyleLineKML</styleUrl>\n")
        ExportScript.kmlFile:write("      <LineString>\n")
        ExportScript.kmlFile:write("        <extrude>true</extrude>\n")
        ExportScript.kmlFile:write("        <tessellate>true</tessellate>\n")
        ExportScript.kmlFile:write("        <altitudeMode>absolute</altitudeMode>\n")
        ExportScript.kmlFile:write("        <coordinates>")
    end
end

function ExportScript.Fdr.NavFileWrite(packet)
    if ExportScript.kmlFile then
        ExportScript.kmlFile:write(packet)
    end
end

function ExportScript.Fdr.NavFileEnd()
    if ExportScript.kmlFile then
        ExportScript.kmlFile:write("        </coordinates>\n")
        ExportScript.kmlFile:write("      </LineString>\n")
        ExportScript.kmlFile:write("    </Placemark>\n")
        ExportScript.kmlFile:write("  </Document>\n")
        ExportScript.kmlFile:write("</kml>\n")
        ExportScript.kmlFile:flush()
        ExportScript.kmlFile:close()
        ExportScript.kmlFile = nil
    end
end