PWDEV.Fdr = {}

local telemetryFolder = lfs.writedir() .. [[Logs\telemetry\]]
lfs.mkdir(telemetryFolder)
local pathCsv = telemetryFolder
local pathKml = telemetryFolder

local WriteCsvFile = true
local WriteKmlFile = true

function PWDEV.Fdr.GetDateTime()
    local date_table = os.date("*t")
	local hour, minute, second = date_table.hour, date_table.min, date_table.sec
	local year, month, day = date_table.year, date_table.month, date_table.day
	local dateResult = string.format("%d-%02d-%02d %02d.%02d.%02d", year, month, day, hour, minute, second)
    return dateResult
end

function PWDEV.Fdr.CsvFileInit()
    local datetime = PWDEV.Fdr.GetDateTime()

    if (WriteCsvFile) then
        local fileCsv = pathCsv .. datetime .. " " .. LoGetSelfData().Name .. ".csv"
        PWDEV.csvFile = io.open(fileCsv, "w+")
        if PWDEV.csvFile then
            PWDEV.csvFile:write('\239\187\191') -- create a UTF-8 BOM
        end
    end
end

function PWDEV.Fdr.CsvFileWrite(packet)
    if (WriteCsvFile) then
        if PWDEV.csvFile then
            PWDEV.csvFile:write(packet)
        end
    end
end

function PWDEV.Fdr.CsvFileEnd()
    if (WriteCsvFile) then
        if PWDEV.csvFile then
            PWDEV.csvFile:flush()
            PWDEV.csvFile:close()
            PWDEV.csvFile = nil
        end
    end
end

function PWDEV.Fdr.NavFileInit(version)
    local datetime = PWDEV.Fdr.GetDateTime()

    if (WriteKmlFile) then
        local fileKml = pathKml .. datetime .. " " .. LoGetSelfData().Name .. ".kml"
        PWDEV.kmlFile = io.open(fileKml, "w+") -- "W+"
        if PWDEV.kmlFile then
            PWDEV.kmlFile:write('\239\187\191') -- create a UTF-8 BOM
            PWDEV.kmlFile:write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
            PWDEV.kmlFile:write("<kml xmlns=\"http://www.opengis.net/kml/2.2\">\n")
            PWDEV.kmlFile:write("  <Document>\n")
            PWDEV.kmlFile:write("    <Style id=\"StyleLineKML\">\n")
            PWDEV.kmlFile:write("      <LineStyle id=\"lineStyle\">\n")
            PWDEV.kmlFile:write("        <color>a032cfcb</color>\n")
            PWDEV.kmlFile:write("        <width>2</width>\n")
            PWDEV.kmlFile:write("      </LineStyle>\n")
            PWDEV.kmlFile:write("      <PolyStyle>\n")
            PWDEV.kmlFile:write("        <color>5046d774</color>\n")
            PWDEV.kmlFile:write("      </PolyStyle>\n")
            PWDEV.kmlFile:write("    </Style>\n")
            PWDEV.kmlFile:write("    <Placemark>\n")
    PWDEV.kmlFile:write("      <description>Flight recorded in DCS World " .. version .. 
    " @ " .. datetime .. "</description>\n")
            PWDEV.kmlFile:write("      <styleUrl>#StyleLineKML</styleUrl>\n")
            PWDEV.kmlFile:write("      <LineString>\n")
            PWDEV.kmlFile:write("        <extrude>true</extrude>\n")
            PWDEV.kmlFile:write("        <tessellate>true</tessellate>\n")
            PWDEV.kmlFile:write("        <altitudeMode>absolute</altitudeMode>\n")
            PWDEV.kmlFile:write("        <coordinates>")
        end
    end
end

function PWDEV.Fdr.NavFileWrite(packet)
    if (WriteKmlFile) then
        if PWDEV.kmlFile then
            PWDEV.kmlFile:write(packet)
        end
    end
end

function PWDEV.Fdr.NavFileEnd()
    if (WriteKmlFile) then
        if PWDEV.kmlFile then
            PWDEV.kmlFile:write("        </coordinates>\n")
            PWDEV.kmlFile:write("      </LineString>\n")
            PWDEV.kmlFile:write("    </Placemark>\n")
            PWDEV.kmlFile:write("  </Document>\n")
            PWDEV.kmlFile:write("</kml>\n")
            PWDEV.kmlFile:flush()
            PWDEV.kmlFile:close()
            PWDEV.kmlFile = nil
        end
    end
end