-- file version: 2023.10.04

local DbOption  = require('Options.DbOption')
-- local i18n      = require('i18n')
-- local oms       = require('optionsModsScripts')
-- local Range     = DbOption.Range --allows scroll bars to be used

local CONFIG_PATH = lfs.writedir() .. [[Scripts\pw-dev_script\Config.lua]]
local VERSION_PATH = lfs.writedir() .. [[Scripts\pw-dev_script\version]]
local exist = false

local pwdev = false

local pwScriptConfigDlg = nil
local content
local scriptInit = ""
local scriptVersion = ""
local configVersion = ""

local networkPortSend = 0
local networkPortRecv = 0

local multiAppEnabled = false

-- devices
local DEVICES = 4

local deviceIp = {}
local deviceEnabled = {}

for i = 1, DEVICES, 1 do
	deviceIp[i] = ""
	deviceEnabled[i] = false
end

local hwStreamDeckEnabled = false
local hwStreamDeckIP = ""
local hwStreamDeckPort = 0

local writeNavFile = false

local function CheckPcIp()
	local command = string.format("start cmd /k ipconfig.exe")
	os.execute(command)
end

local function CheckFileExist()
	local ret
	local f = io.open(CONFIG_PATH,"r")
	if f ~= nil then
		io.close(f)
		ret = true
	else
		ret = false
	end

	-- jezeli plik istnieje, sprawdzanie rozmiaru
	if ret then
		local size = lfs.attributes(CONFIG_PATH, "size")
		if size == 0 then ret = false end
	end

	return ret
end

local function ExecuteUpdate()
	local command = string.format("powershell -ExecutionPolicy Bypass -File \"" .. lfs.writedir() .. [[Scripts\pw-dev_script\update.ps1"]])
	os.execute(command)
end

local function getNthLine(fileName, n)
    local file = io.open(fileName, "r")
    local count = 1

	if file ~= nil then
		for line in file:lines() do
			if count == n then
				file:close()
				return line
			end
			count = count + 1
		end
	
		file:close()
	end
	return "-"
end

local tableMapDiv = {
    DbOption.Item(_('0.1')):Value(0),
    DbOption.Item(_('0.2')):Value(1),
    DbOption.Item(_('0.4')):Value(2),
    DbOption.Item(_('0.5')):Value(4),
    DbOption.Item(_('1.0')):Value(5),
}

local function ReadConfigFile()
	if exist then
		local file = io.open(CONFIG_PATH, "r")

		content = file:read("*all")
		file:flush()
		file:close()

		configVersion = content:match("Config.FileVersion%s+=%s+\"(.-)\"")
		if configVersion ~= nil then
			configVersion = string.gsub(configVersion, "[\r\n]", "")
		else
			configVersion = "-"
		end

		if (content:match("ExportScript.Config")) then
			scriptInit = "ExportScript.Config"
		else
			scriptInit = "PWDEV.Config"
			pwdev = true
		end

		-- ports
		networkPortSend = content:match(scriptInit .. ".Port%s+=%s+(.-);")
		networkPortRecv = content:match(scriptInit .. ".ListenerPort%s+=%s+(.-);")

		-- multi app
		if (content:match(scriptInit .. ".MultiAppDevice%s+=%s+(.-);") == "true") then multiAppEnabled = true else multiAppEnabled = false end

		-- IP's
		if pwdev == true then
			for i = 1, DEVICES, 1 do
				deviceIp[i] = content:match(scriptInit .. ".Device%[".. i .."].Host%s+=%s+\"(.-)\"")
				if (content:match(scriptInit .. ".Device%[".. i .."].Export%s+=%s+(.-);") == "true") then deviceEnabled[i] = true else deviceEnabled[i] = false end
			end
		else
			deviceIp[1] = content:match(scriptInit .. ".Host%s+=%s+\"(.-)\"")
			deviceIp[2] = content:match(scriptInit .. ".Host2%s+=%s+\"(.-)\"")
			deviceIp[3] = content:match(scriptInit .. ".Host3%s+=%s+\"(.-)\"")
			deviceIp[4] = content:match(scriptInit .. ".Host4%s+=%s+\"(.-)\"")

			if (content:match(scriptInit .. ".Export%s+=%s+(.-);") == "true") then deviceEnabled[1] = true else deviceEnabled[1] = false end
			if (content:match(scriptInit .. ".Export2%s+=%s+(.-);") == "true") then deviceEnabled[2] = true else deviceEnabled[2] = false end
			if (content:match(scriptInit .. ".Export3%s+=%s+(.-);") == "true") then deviceEnabled[3] = true else deviceEnabled[3] = false end
			if (content:match(scriptInit .. ".Export4%s+=%s+(.-);") == "true") then deviceEnabled[4] = true else deviceEnabled[4] = false end
		end

		-- StreamDeck IP & port
		hwStreamDeckIP 		= content:match(scriptInit .. ".StreamDeckHost%s+=%s+\"(.-)\"")
		hwStreamDeckPort 	= content:match(scriptInit .. ".StreamDeckPort%s+=%s+(.-);")

		-- StreamDeck
		if (content:match(scriptInit .. ".StreamDeckExport%s+=%s+(.-);") == "true") then hwStreamDeckEnabled = true else hwStreamDeckEnabled = false end

		if (content:match(scriptInit .. ".WriteNavFile%s+=%s+(.-);") == "true") then writeNavFile = true else writeNavFile = false end

		-- Network ports:
		pwScriptConfigDlg.pwScriptNetworkPortSendEditBox:setText(networkPortSend)
		pwScriptConfigDlg.pwScriptNetworkPortRecvEditBox:setText(networkPortRecv)

		-- multi app
		pwScriptConfigDlg.pwScriptMultiAppEnabledCheckbox:setState(multiAppEnabled)

		-- set device 1
		pwScriptConfigDlg.pwScriptDevice1EnabledCheckbox:setState(deviceEnabled[1])
		pwScriptConfigDlg.pwScriptDeviceIp1EditBox:setText(deviceIp[1])
		-- set device 2
		pwScriptConfigDlg.pwScriptDevice2EnabledCheckbox:setState(deviceEnabled[2])
		pwScriptConfigDlg.pwScriptDeviceIp2EditBox:setText(deviceIp[2])
		-- set device 3
		pwScriptConfigDlg.pwScriptDevice3EnabledCheckbox:setState(deviceEnabled[3])
		pwScriptConfigDlg.pwScriptDeviceIp3EditBox:setText(deviceIp[3])
		-- set device 4
		pwScriptConfigDlg.pwScriptDevice4EnabledCheckbox:setState(deviceEnabled[4])
		pwScriptConfigDlg.pwScriptDeviceIp4EditBox:setText(deviceIp[4])

		-- StreamDeck
		pwScriptConfigDlg.pwScriptStreamDeckEnabledCheckbox:setState(hwStreamDeckEnabled)
		pwScriptConfigDlg.pwScriptStreamDeckIpEditBox:setText(hwStreamDeckIP)
		pwScriptConfigDlg.pwScriptStreamDeckPortEditBox:setText(hwStreamDeckPort)

		-- write nav file
		pwScriptConfigDlg.pwScriptWriteNavFileEnabledCheckbox:setState(writeNavFile)
	end
end

local function SaveToConfig()
	local fileNew = io.open(CONFIG_PATH, "w+")

	content = string.gsub(content, scriptInit .. ".MultiAppDevice%s+=%s+(.-);", scriptInit .. ".MultiAppDevice = " .. tostring(multiAppEnabled) .. ";")

	if pwdev == true then
		for i = 1, DEVICES, 1 do
			content = string.gsub(content, scriptInit .. ".Device%[".. i .."].Export%s+=%s+(.-);", scriptInit .. ".Device%[".. i .."].Export = " .. tostring(deviceEnabled[i]) .. ";")

			content = string.gsub(content, scriptInit .. ".Device%[".. i .."].Host%s+=%s+\"(.-)\"", scriptInit .. ".Device%[".. i .."].Host = \"" .. deviceIp[i] .. "\"")
		end
	else
		content = string.gsub(content, scriptInit .. ".Export%s+=%s+(.-);", scriptInit .. ".Export = " .. tostring(deviceEnabled[1]) .. ";")
		content = string.gsub(content, scriptInit .. ".Export2%s+=%s+(.-);", scriptInit .. ".Export2 = " .. tostring(deviceEnabled[2]) .. ";")
		content = string.gsub(content, scriptInit .. ".Export3%s+=%s+(.-);", scriptInit .. ".Export3 = " .. tostring(deviceEnabled[3]) .. ";")
		content = string.gsub(content, scriptInit .. ".Export4%s+=%s+(.-);", scriptInit .. ".Export4 = " .. tostring(deviceEnabled[4]) .. ";")

		content = string.gsub(content, scriptInit .. ".Host%s+=%s+\"(.-)\"", scriptInit .. ".Host = \"" .. deviceIp[2] .. "\"")
		content = string.gsub(content, scriptInit .. ".Host2%s+=%s+\"(.-)\"", scriptInit .. ".Host2 = \"" .. deviceIp[2] .. "\"")
		content = string.gsub(content, scriptInit .. ".Host3%s+=%s+\"(.-)\"", scriptInit .. ".Host3 = \"" .. deviceIp[3] .. "\"")
		content = string.gsub(content, scriptInit .. ".Host4%s+=%s+\"(.-)\"", scriptInit .. ".Host4 = \"" .. deviceIp[4] .. "\"")
	end

	content = string.gsub(content, scriptInit .. ".Port%s+=%s+(.-);", 	scriptInit .. ".Port = " .. networkPortSend .. ";")

	-- StreamDeck
	content = string.gsub(content, scriptInit .. ".StreamDeckExport%s+=%s+(.-);", scriptInit .. ".StreamDeckExport = " .. tostring(hwStreamDeckEnabled) .. ";")
	content = string.gsub(content, scriptInit .. ".StreamDeckHost%s+=%s+\"(.-)\"", scriptInit .. ".StreamDeckHost = \"" .. hwStreamDeckIP .. "\"")
	content = string.gsub(content, scriptInit .. ".StreamDeckPort%s+=%s+(.-);", scriptInit .. ".StreamDeckPort = " .. hwStreamDeckPort .. ";")

	content = string.gsub(content, scriptInit .. ".WriteNavFile%s+=%s+(.-);", scriptInit .. ".WriteNavFile = " .. tostring(writeNavFile) .. ";")
	-- IP's
	content = string.gsub(content, scriptInit .. ".ListenerPort%s+=%s+(.-);", scriptInit .. ".ListenerPort = " .. networkPortRecv .. ";")

	fileNew:write(content)
	fileNew:flush()
	fileNew:close()
end

local function UpdateOptions()
	-- Check parameters
	if pwScriptConfigDlg == nil then
		return
	end

	-- pobranie stanu glownego wlacznika
	local editEnabled = pwScriptConfigDlg.pwScriptEnabledCheckbox:getState()

	pwScriptConfigDlg.pwScriptNetworkTitleLabel:setEnabled(editEnabled)

	-- multi app
	pwScriptConfigDlg.pwScriptMultiAppTitleLabel:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptMultiAppEnabledCheckbox:setEnabled(editEnabled)

	-- port send
	pwScriptConfigDlg.pwScriptNetworkPortSendLabel:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptNetworkPortSendEditBox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptNetworkPortSendDefaultLabel:setEnabled(editEnabled)
	-- port recv
	pwScriptConfigDlg.pwScriptNetworkPortRecvLabel:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptNetworkPortRecvEditBox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptNetworkPortRecvDefaultLabel:setEnabled(editEnabled)

	pwScriptConfigDlg.pwScriptDevicesTitleLabel:setEnabled(editEnabled)

	-- device 1
	deviceEnabled[1] = pwScriptConfigDlg.pwScriptDevice1EnabledCheckbox:getState()
	pwScriptConfigDlg.pwScriptDevice1EnabledCheckbox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptDeviceIp1EditBox:setEnabled(editEnabled and deviceEnabled[1])

	-- device 2
	deviceEnabled[2] = pwScriptConfigDlg.pwScriptDevice2EnabledCheckbox:getState()
	pwScriptConfigDlg.pwScriptDevice2EnabledCheckbox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptDeviceIp2EditBox:setEnabled(editEnabled and deviceEnabled[2])

	-- device 3
	deviceEnabled[3] = pwScriptConfigDlg.pwScriptDevice3EnabledCheckbox:getState()
	pwScriptConfigDlg.pwScriptDevice3EnabledCheckbox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptDeviceIp3EditBox:setEnabled(editEnabled and deviceEnabled[3])

	-- device 4
	deviceEnabled[4] = pwScriptConfigDlg.pwScriptDevice4EnabledCheckbox:getState()
	pwScriptConfigDlg.pwScriptDevice4EnabledCheckbox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptDeviceIp4EditBox:setEnabled(editEnabled and deviceEnabled[4])

	-- StreamDeck
	hwStreamDeckEnabled = pwScriptConfigDlg.pwScriptStreamDeckEnabledCheckbox:getState()
	pwScriptConfigDlg.pwScriptStreamDeckTitleLabel:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptStreamDeckEnabledCheckbox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptStreamDeckIpEditBox:setEnabled(editEnabled and hwStreamDeckEnabled)
	pwScriptConfigDlg.pwScriptStreamDeckPortEditBox:setEnabled(editEnabled and hwStreamDeckEnabled)
	-- StreamDeck labels
	pwScriptConfigDlg.pwScriptStreamDeckIpLabel:setEnabled(editEnabled and hwStreamDeckEnabled)
	pwScriptConfigDlg.pwScriptStreamDeckIpDefaultLabel:setEnabled(editEnabled and hwStreamDeckEnabled)
	pwScriptConfigDlg.pwScriptStreamDeckPortLabel:setEnabled(editEnabled and hwStreamDeckEnabled)
	pwScriptConfigDlg.pwScriptStreamDeckPortDefaultLabel:setEnabled(editEnabled and hwStreamDeckEnabled)

	-- write nav file
	pwScriptConfigDlg.pwScriptWriteNavFileTitleLabel:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptWriteNavFileEnabledCheckbox:setEnabled(editEnabled)

	-- save button
	pwScriptConfigDlg.pwScriptSaveButton:setEnabled(editEnabled)
end

local function OnShowDialog(dialogBox)
	if pwScriptConfigDlg ~= dialogBox then
		pwScriptConfigDlg = dialogBox
	end
	
	exist = CheckFileExist()
	if exist == false then
		pwScriptConfigDlg.pwScriptExistLabel:setText("CONFIG.LUA FILE NOT FINDED OR FILE IS CORRUPTED")
	end
	-- obsluga przycisku sprawdzenia IP
	if pwScriptConfigDlg.pwScriptCheckPcIpButton then
		function pwScriptConfigDlg.pwScriptCheckPcIpButton:onChange()
			CheckPcIp()
		end
	end

	-- obsluga przycisku zapisu danych
	if pwScriptConfigDlg.pwScriptSaveButton then
		function pwScriptConfigDlg.pwScriptSaveButton:onChange()
			SaveToConfig()
		end
	end

	-- obsluga przycisku aktualizacji skryptu
	if pwScriptConfigDlg.pwScriptUpdateButton then
		function pwScriptConfigDlg.pwScriptUpdateButton:onChange()
			ExecuteUpdate()
		end
	end

	-- zaladowanie danych z pliku zaraz po przejsciu na panel
	ReadConfigFile()

	-- pobranie aktualnie zainstalowanej wersji skryptu oraz pliku Config
	scriptVersion = getNthLine(VERSION_PATH, 1)
	pwScriptConfigDlg.pwScriptInstalledVersion:setText(scriptVersion)
	pwScriptConfigDlg.pwScriptConfigVersion:setText(configVersion)

	-- uaktualnienie stanu kontrolek
	UpdateOptions()
end

local pwScriptEnabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	if value == true then
		ReadConfigFile()
	end

	UpdateOptions()
end)

-- Ports
local pwScriptNetworkPortSend = DbOption.new():setValue(false):editbox()
:callback(function(value)
	networkPortSend = value
end)
local pwScriptNetworkPortRecv = DbOption.new():setValue(false):editbox()
:callback(function(value)
	networkPortRecv = value
end)

-- multi app enabled
local pwScriptMultiAppEnabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	multiAppEnabled = value
	UpdateOptions()
end)

-- Devices enabled
local pwScriptDevice1Enabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	deviceEnabled[1] = value
	UpdateOptions()
end)
--
local pwScriptDevice2Enabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	deviceEnabled[2] = value
	UpdateOptions()
end)
--
local pwScriptDevice3Enabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	deviceEnabled[3] = value
	UpdateOptions()
end)
--
local pwScriptDevice4Enabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	deviceEnabled[4] = value
	UpdateOptions()
end)

-- IP's
local pwScriptDeviceIp1 = DbOption.new():setValue(""):editbox()
:callback(function(value)
	deviceIp[1] = value
end)
--
local pwScriptDeviceIp2 = DbOption.new():setValue(""):editbox()
:callback(function(value)
	deviceIp[2] = value
end)
--
local pwScriptDeviceIp3 = DbOption.new():setValue(""):editbox()
:callback(function(value)
	deviceIp[3] = value
end)
--
local pwScriptDeviceIp4 = DbOption.new():setValue(""):editbox()
:callback(function(value)
	deviceIp[4] = value
end)

-- StreamDeck Enabled
local pwScriptStreamDeckEnabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	hwStreamDeckEnabled = value
	UpdateOptions()
end)
-- StreamDeck IP
local pwScriptStreamDeckIp = DbOption.new():setValue(""):editbox()
:callback(function(value)
	hwStreamDeckIP = value
end)
-- StreamDeck Ports
local pwScriptStreamDeckPort = DbOption.new():setValue(false):editbox()
:callback(function(value)
	hwStreamDeckPort = value
end)


--
local pwScriptWriteNavFileEnabled = DbOption.new():setValue(""):checkbox()
:callback(function(value)
	writeNavFile = value
end)


return {
	-- Events
	callbackOnShowDialog  	= OnShowDialog,

	pwScriptEnabled			= pwScriptEnabled,

	pwScriptNetworkPortSend = pwScriptNetworkPortSend,
	pwScriptNetworkPortRecv = pwScriptNetworkPortRecv,

	pwScriptMultiAppEnabled = pwScriptMultiAppEnabled,

	pwScriptDevice1Enabled = pwScriptDevice1Enabled,
	pwScriptDevice2Enabled = pwScriptDevice2Enabled,
	pwScriptDevice3Enabled = pwScriptDevice3Enabled,
	pwScriptDevice4Enabled = pwScriptDevice4Enabled,

	pwScriptDeviceIp1		= pwScriptDeviceIp1,
	pwScriptDeviceIp2		= pwScriptDeviceIp2,
	pwScriptDeviceIp3		= pwScriptDeviceIp3,
	pwScriptDeviceIp4		= pwScriptDeviceIp4,

	pwScriptStreamDeckEnabled = pwScriptStreamDeckEnabled,
	pwScriptStreamDeckIp	= pwScriptStreamDeckIp,
	pwScriptStreamDeckPort	= pwScriptStreamDeckPort,

	pwScriptWriteNavFileEnabled = pwScriptWriteNavFileEnabled,
}