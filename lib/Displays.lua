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

function contains(table, value)
    for _, v in pairs(table) do
        if v == value then
            return true
        end
    end
    return false
end

function Displays.GetDisplayLines(dcsDisplay, width, height, displayIndicatorData, displayPage, replaceSymbolMap, parentMap, force_page_match)
	local r, _ = Displays.GetDisplayLinesWithColor(dcsDisplay, width, height, displayIndicatorData, displayPage, replaceSymbolMap, parentMap, force_page_match)
	return r
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

function Displays.GetDisplayLinesWithColor(dcsDisplay, width, height, displayIndicatorData, displayPage, replaceSymbolMap, parentMap, force_page_match)
	local emptyLine = string.rep(" ", width)

	local displayLines = {}
	local lineColors = {}
	for i = 1, height do
		displayLines[i] = emptyLine
		lineColors[i] = emptyLine
	end
	if not dcsDisplay then
		return displayLines, lineColors
	end

	parentMap = parentMap or {}
	local parentPage = parentMap[displayPage]

	for k, v in pairs(dcsDisplay) do
		local candidates = displayIndicatorData[k]
		if candidates then
			if replaceSymbolMap then
				v = replaceSymbols(v, replaceSymbolMap)
			end
			local render_instructions = nil
			if #candidates == 1 and not force_page_match then
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
				local old_color = lineColors[ri.y]
				local replacements = {}
				local color_replacements = {}
				local has_color = ri.color ~= nil
				if not ri.alignment or ri.alignment == "LFT" then
					for i = 1, v:len(), 1 do
						local c = v:sub(i, i)
						replacements[ri.x + i - 1] = c
						if has_color then
							color_replacements[ri.x + i - 1] = ri.color
						end
					end
				elseif ri.alignment == "RGHT" then
					for i = 1, v:len(), 1 do
						local c = v:sub(i, i)
						replacements[ri.x - (v:len() - i)] = c
						if has_color then
							color_replacements[ri.x - (v:len() - i)] = ri.color
						end
					end
				end
				local new_line = ""
				local new_color = ""
				for i = 1, width, 1 do
					local replacement_char = replacements[i]
					if replacement_char and replacement_char ~= " " then
						new_line = new_line .. replacement_char
						new_color = new_color .. (has_color and color_replacements[i] or old_color:sub(i, i))
					else
						new_line = new_line .. old_line:sub(i, i)
						local original_color = old_color:sub(i, i)
						if original_color ~= " " then
							new_color = new_color .. original_color
						else
							new_color = new_color .. (has_color and color_replacements[i] or original_color)
						end
					end
				end
				displayLines[ri.y] = new_line
				lineColors[ri.y] = new_color
			end
		end
	end

	return displayLines, lineColors
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