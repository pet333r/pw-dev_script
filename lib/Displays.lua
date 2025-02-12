local Displays = {}

---Replaces all instances of the keys of the provided map with the values in the provided map
---@param s string string to replace values in
---@param map table map of values to replace, where keys are replaced by values
---@return string s the resulting substituted string
local function replaceSymbols(s, map)
    for key, value in pairs(map) do
        s = s:gsub(key, value)
    end

    return s
end

---Gets the display lines for a DCS display
---@param dcsDisplay table The DCS display to parse
---@param displayIndicatorData table The data from the json file containing information about the display
---@param getDisplayPage function Gets the current display page
---@param replaceSymbolMap table Map of symbols to replace from -> to
---@return table displayLines The lines of the display (bios id -> txt)
function Displays.GetDisplayItems(dcsDisplay, displayIndicatorData, getDisplayPage, replaceSymbolMap)
    local displayLines = {}

    local displayPage = nil
    if getDisplayPage then
         displayPage = getDisplayPage()
    end

    for k, v in pairs(dcsDisplay) do
        -- "k": {
        --     "pages": [
        --         "MAIN" // list of pages that this item can appear on
        --     ],
        --     "biosId": "ARC210_COMSEC_MODE", // bios id to use
        --     "description": "COMSEC Mode", // the name/description displayed in the reference tool
        --     "maxLength": 11, // max length of the string
        --     "alignment": "LEFT" // optional alignment for string padding (LEFT, RIGHT, CENTER)
        --     "type": "TEXT" // the type of the item, which indicates how it should be parsed and generated
        -- },
        local candidates = displayIndicatorData[k]
        if candidates then
            local render_instructions = nil
            if displayPage then
                for _, ri in pairs(candidates) do
                    for _, page in pairs(ri.pages) do
                        if displayPage == page then
                            render_instructions = ri
                            break
                        end
                    end
                end
            else
                render_instructions = candidates[1]
            end
            if render_instructions then
                if replaceSymbolMap then
                    v = replaceSymbols(v, replaceSymbolMap)
                end
                local ri = render_instructions
                if (ri.type == "TEXT") then
                    local txt = v;
                    local max_len = ri.maxLength
                    txt = v:sub(1, max_len)

                    if ri.alignment == "LEFT" then
                        txt = txt .. string.rep(" ", max_len - #txt)
                    elseif ri.alignment == "RIGHT" then
                        txt = string.rep(" ", max_len - #txt) .. txt
                    elseif ri.alignment == "CENTER" then
                        local half = #txt/2
                        txt = string.rep(" ", max_len - math.floor(half)) .. txt .. string.rep(" ", max_len - math.ceil(half))
                    end

                    displayLines[ri.biosId] = txt
                end
            end
        end
    end

    return displayLines
end

-- this function works by iterating over all of the items in the provided indicatordata table and substituting
-- them in for each line according to their x and y values

---Gets the display lines for a DCS display
---@param dcsDisplay table The DCS display to parse
---@param width number The character width of the screen
---@param height number The lines of text the screen supports
---@param displayIndicatorData table The data from the json file containing information about the display
---@param getDisplayPage function Gets the current display page
---@param replaceSymbolMap table Map of symbols to replace from -> to
---@param parentMap
---@return table displayLines The lines of the display
function Displays.GetDisplayLines(dcsDisplay, width, height, displayIndicatorData, getDisplayPage, replaceSymbolMap, parentMap)
    local emptyLine = string.rep(" ", width)

    local displayLines = {}
    for i = 1, height do
        displayLines[i] = emptyLine
    end
    if not dcsDisplay then
        return displayLines
    end

    local displayPage = getDisplayPage()
    parentMap = parentMap or {}
	local parentPage = parentMap[displayPage]

    for k, v in pairs(dcsDisplay) do
        local candidates = displayIndicatorData[k]
        if candidates then
            if replaceSymbolMap then
                v = replaceSymbols(v, replaceSymbolMap)
            end
            local render_instructions = nil
            if #candidates == 1 then
                render_instructions = candidates[1]
            else
                for _, ri in pairs(candidates) do
					local parent_instructions = nil
					for _, page in pairs(ri.pages) do
						if displayPage == page then
							render_instructions = ri
							break
						elseif parentPage == page then
							parent_instructions = ri
						end
					end
					if render_instructions == nil then
						render_instructions = parent_instructions
					end
                end
            end
            if render_instructions then
                local ri = render_instructions
                local old_line = displayLines[ri.y]
                local replacements = {}
                if not ri.alignment or ri.alignment == "LFT" then
                    for i = 1, v:len(), 1 do
                        local c = v:sub(i, i)
                        if c ~= " " then replacements[ri.x + i - 1] = c end
                    end
                elseif ri.alignment == "RGHT" then
                    for i = 1, v:len(), 1 do
                        local c = v:sub(i, i)
                        if c ~= " " then replacements[ri.x - (v:len() - i)] = c end
                    end
                end
                local new_line = ""
                for i = 1, width, 1 do
                    new_line = new_line .. (replacements[i] or old_line:sub(i,i))
                end
                displayLines[ri.y] = new_line
            end
        end
    end

    return displayLines
end

function contains(table, value)
    for _, v in pairs(table) do
        if v == value then
            return true
        end
    end
    return false
end

function Displays.GetDisplayLinesWithColors(dcsDisplay, width, height, displayIndicatorData, getDisplayPage, replaceSymbolMap, parentMap)
    local emptyLine = string.rep(" ", width)

    local displayLines = {}
    local colorLines = {}
    for i = 1, height do
        displayLines[i] = emptyLine
        colorLines[i] = emptyLine
    end
    if not dcsDisplay then
        return displayLines, colorLines
    end

    local displayPage = getDisplayPage()
    parentMap = parentMap or {}
    local parentPage = parentMap[displayPage]

    for k, value in pairs(dcsDisplay) do
        local candidates = displayIndicatorData[k]
        if candidates then
            if replaceSymbolMap then
                value = replaceSymbols(value, replaceSymbolMap)
            end
            local render_instructions = nil
            if #candidates == 1 then
                render_instructions = candidates[1]
            else
                local displayPageCandidates = {}
                local parentPageCandidates = {}
                for _, ri in pairs(candidates) do
                    if contains(ri.pages, displayPage) then
                        table.insert(displayPageCandidates, ri)
                    elseif parentPage and contains(ri.pages, parentPage) then
                        table.insert(parentPageCandidates, ri)
                    end
                end

                if #displayPageCandidates > 0 then
                    render_instructions = displayPageCandidates[1]
                elseif #parentPageCandidates > 0 then
                    render_instructions = parentPageCandidates[1]
                else
                    render_instructions = candidates[1]
                end
            end
            if render_instructions then
                local ri = render_instructions
                local old_line = displayLines[ri.y]
                local old_color_line = colorLines[ri.y]
                local replacements = {}
                local colorReplacements = {}

                if not ri.alignment or ri.alignment == "LFT"then
                    for i = 1, value:len(), 1 do
                        local c = value:sub(i, i)
                        if c ~= " " then 
                            replacements[ri.x + i - 1] = c
                            colorReplacements[ri.x + i - 1] = getColorChar(ri.color)
                        end
                    end
                elseif ri.alignment == "RGHT" then
                    for i = 1, value:len(), 1 do
                        local c = value:sub(i, i)
                        if c ~= " " then
                            replacements[ri.x - (value:len() - i)] = c
                            colorReplacements[ri.x - (value:len() - i)] = getColorChar(ri.color)
                        end
                    end
                end

                local new_line = ""
                local new_color_line = ""
                for i = 1, width, 1 do
                    new_line = new_line .. (replacements[i] or old_line:sub(i,i))
                    new_color_line = new_color_line .. (colorReplacements[i] or old_color_line:sub(i,i))
                end

                displayLines[ri.y] = new_line
                colorLines[ri.y] = new_color_line
            end
        end
    end

    return displayLines, colorLines
end

function getColorChar(color)
    if color == 0 then return "W" end
    if color == 1 then return "W" end
    if color == 2 then return "G" end
    if color == 3 then return "B" end
    if color == 4 then return "P" end
    return " "
end

return Displays