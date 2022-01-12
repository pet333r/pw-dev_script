local DbOption  = require('Options.DbOption')
-- local i18n      = require('i18n')
-- local oms       = require('optionsModsScripts')
-- local Range     = DbOption.Range --allows scroll bars to be used

local CONFIG_PATH = [[Scripts\pw-dev_script\Config.lua]]
local exist = false

local networkPortSend = 0
local networkPortRecv = 0

-- IP's
local deviceIp1 = ""
local deviceIp2 = ""
local deviceIp3 = ""
local deviceIp4 = ""

local device1Enabled = false
local device2Enabled = false
local device3Enabled = false
local device4Enabled = false

local hwStreamDeckEnabled = false
local hwStreamDeckIP = ""
local hwStreamDeckPort = 0

-- local device1Nav
-- local device2Nav
-- local device3Nav
-- local device4Nav

local writeNavFile = false

local content


local pwScriptConfigDlg = nil

local function CheckFileExist()
	local ret
	local f = io.open(lfs.writedir() .. CONFIG_PATH,"r")
	if f ~= nil then
		io.close(f)
		ret = true
	else
		ret = false
	end

	-- jezeli plik istnieje, sprawdzanie rozmiaru
	if ret then
		local size = lfs.attributes(lfs.writedir() .. CONFIG_PATH, "size")
		if size == 0 then ret = false end
	end

	return ret
end

local function ReadConfigFile()
	if exist then
		local file = io.open(lfs.writedir() .. CONFIG_PATH, "r")

		content = file:read("*all")
		file:flush()
		file:close()

		-- ports
		networkPortSend = content:match("ExportScript.Config.Port%s+=%s+(.-);")
		networkPortRecv = content:match("ExportScript.Config.ListenerPort%s+=%s+(.-);")

		-- IP's
		deviceIp1 = content:match("ExportScript.Config.Host%s+=%s+\"(.-)\"")
		deviceIp2 = content:match("ExportScript.Config.Host2%s+=%s+\"(.-)\"")
		deviceIp3 = content:match("ExportScript.Config.Host3%s+=%s+\"(.-)\"")
		deviceIp4 = content:match("ExportScript.Config.Host4%s+=%s+\"(.-)\"")
		-- StreamDeck IP & port
		hwStreamDeckIP 		= content:match("ExportScript.Config.StreamDeckHost%s+=%s+\"(.-)\"")
		hwStreamDeckPort 	= content:match("ExportScript.Config.StreamDeckPort%s+=%s+(.-);")

		local device1EnableTmp = content:match("ExportScript.Config.Export%s+=%s+(.-);")

		if (device1EnableTmp == "true") then device1Enabled = true end
		if (device1EnableTmp == "false") then device1Enabled = false end

		local device2EnableTmp = content:match("ExportScript.Config.Export2%s+=%s+(.-);")
		if (device2EnableTmp == "true") then device2Enabled = true end
		if (device2EnableTmp == "false") then device2Enabled = false end

		local device3EnableTmp = content:match("ExportScript.Config.Export3%s+=%s+(.-);")
		if (device3EnableTmp == "true") then device3Enabled = true end
		if (device3EnableTmp == "false") then device3Enabled = false end

		local device4EnableTmp = content:match("ExportScript.Config.Export4%s+=%s+(.-);")
		if (device4EnableTmp == "true") then device4Enabled = true end
		if (device4EnableTmp == "false") then device4Enabled = false end

		-- StreamDeck
		local StreamDeckEnableTmp = content:match("ExportScript.Config.StreamDeckExport%s+=%s+(.-);")
		if (StreamDeckEnableTmp == "true") then hwStreamDeckEnabled = true end
		if (StreamDeckEnableTmp == "false") then hwStreamDeckEnabled = false end

		local writeNavFileTmp = content:match("ExportScript.Config.WriteNavFile%s+=%s+(.-);")
		if (writeNavFileTmp == "true") then writeNavFile = true end
		if (writeNavFileTmp == "false") then writeNavFile = false end

		-- Network ports:
		pwScriptConfigDlg.pwScriptNetworkPortSendEditBox:setText(networkPortSend)
		pwScriptConfigDlg.pwScriptNetworkPortRecvEditBox:setText(networkPortRecv)

		-- set device 1
		pwScriptConfigDlg.pwScriptDevice1EnabledCheckbox:setState(device1Enabled)
		pwScriptConfigDlg.pwScriptDeviceIp1EditBox:setText(deviceIp1)
		-- set device 2
		pwScriptConfigDlg.pwScriptDevice2EnabledCheckbox:setState(device2Enabled)
		pwScriptConfigDlg.pwScriptDeviceIp2EditBox:setText(deviceIp2)
		-- set device 3
		pwScriptConfigDlg.pwScriptDevice3EnabledCheckbox:setState(device3Enabled)
		pwScriptConfigDlg.pwScriptDeviceIp3EditBox:setText(deviceIp3)
		-- set device 4
		pwScriptConfigDlg.pwScriptDevice4EnabledCheckbox:setState(device4Enabled)
		pwScriptConfigDlg.pwScriptDeviceIp4EditBox:setText(deviceIp4)

		-- StreamDeck
		pwScriptConfigDlg.pwScriptStreamDeckEnabledCheckbox:setState(hwStreamDeckEnabled)
		pwScriptConfigDlg.pwScriptStreamDeckIpEditBox:setText(hwStreamDeckIP)
		pwScriptConfigDlg.pwScriptStreamDeckPortEditBox:setText(hwStreamDeckPort)

		-- write nav file
		pwScriptConfigDlg.pwScriptWriteNavFileEnabledCheckbox:setState(writeNavFile)
	end
end

local function SaveToConfig()
	local fileNew = io.open(lfs.writedir() .. CONFIG_PATH, "w+")

	content = string.gsub(content, "ExportScript.Config.Export%s+=%s+(.-);", "ExportScript.Config.Export = " .. tostring(device1Enabled) .. ";")
	content = string.gsub(content, "ExportScript.Config.Export2%s+=%s+(.-);", "ExportScript.Config.Export2 = " .. tostring(device2Enabled) .. ";")
	content = string.gsub(content, "ExportScript.Config.Export3%s+=%s+(.-);", "ExportScript.Config.Export3 = " .. tostring(device3Enabled) .. ";")
	content = string.gsub(content, "ExportScript.Config.Export4%s+=%s+(.-);", "ExportScript.Config.Export4 = " .. tostring(device4Enabled) .. ";")

	content = string.gsub(content, "ExportScript.Config.Port%s+=%s+(.-);", "ExportScript.Config.Port = " .. networkPortSend .. ";")

	content = string.gsub(content, "ExportScript.Config.Host%s+=%s+\"(.-)\"", "ExportScript.Config.Host = \"" .. deviceIp1 .. "\"")
	content = string.gsub(content, "ExportScript.Config.Host2%s+=%s+\"(.-)\"", "ExportScript.Config.Host2 = \"" .. deviceIp2 .. "\"")
	content = string.gsub(content, "ExportScript.Config.Host3%s+=%s+\"(.-)\"", "ExportScript.Config.Host3 = \"" .. deviceIp3 .. "\"")
	content = string.gsub(content, "ExportScript.Config.Host4%s+=%s+\"(.-)\"", "ExportScript.Config.Host4 = \"" .. deviceIp4 .. "\"")

	-- StreamDeck
	content = string.gsub(content, "ExportScript.Config.StreamDeckExport%s+=%s+(.-);", "ExportScript.Config.StreamDeckExport = " .. tostring(hwStreamDeckEnabled) .. ";")
	content = string.gsub(content, "ExportScript.Config.StreamDeckHost%s+=%s+\"(.-)\"", "ExportScript.Config.StreamDeckHost = \"" .. hwStreamDeckIP .. "\"")
	content = string.gsub(content, "ExportScript.Config.StreamDeckPort%s+=%s+(.-);", "ExportScript.Config.StreamDeckPort = " .. hwStreamDeckPort .. ";")

	content = string.gsub(content, "ExportScript.Config.WriteNavFile%s+=%s+(.-);", "ExportScript.Config.WriteNavFile = " .. tostring(writeNavFile) .. ";")
	-- IP's
	content = string.gsub(content, "ExportScript.Config.ListenerPort%s+=%s+(.-);", "ExportScript.Config.ListenerPort = " .. networkPortRecv .. ";")
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
	device1Enabled = pwScriptConfigDlg.pwScriptDevice1EnabledCheckbox:getState()
	pwScriptConfigDlg.pwScriptDevice1EnabledCheckbox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptDeviceIp1EditBox:setEnabled(editEnabled and device1Enabled)

	-- device 2
	device2Enabled = pwScriptConfigDlg.pwScriptDevice2EnabledCheckbox:getState()
	pwScriptConfigDlg.pwScriptDevice2EnabledCheckbox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptDeviceIp2EditBox:setEnabled(editEnabled and device2Enabled)

	-- device 3
	device3Enabled = pwScriptConfigDlg.pwScriptDevice3EnabledCheckbox:getState()
	pwScriptConfigDlg.pwScriptDevice3EnabledCheckbox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptDeviceIp3EditBox:setEnabled(editEnabled and device3Enabled)

	-- device 4
	device4Enabled = pwScriptConfigDlg.pwScriptDevice4EnabledCheckbox:getState()
	pwScriptConfigDlg.pwScriptDevice4EnabledCheckbox:setEnabled(editEnabled)
	pwScriptConfigDlg.pwScriptDeviceIp4EditBox:setEnabled(editEnabled and device4Enabled)

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
	-- obsluga przycisku zapisu danych
	if pwScriptConfigDlg.pwScriptSaveButton then
		function pwScriptConfigDlg.pwScriptSaveButton:onChange()
			SaveToConfig()
		end
	end

	-- zaladowanie danych z pliku zaraz po przejsciu na panel
	ReadConfigFile()

	-- auktualnienie stanu kontrolek
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

-- Devices enabled
local pwScriptDevice1Enabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	device1Enabled = value
	UpdateOptions()
end)
--
local pwScriptDevice2Enabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	device2Enabled = value
	UpdateOptions()
end)
--
local pwScriptDevice3Enabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	device3Enabled = value
	UpdateOptions()
end)
--
local pwScriptDevice4Enabled = DbOption.new():setValue(false):checkbox()
:callback(function(value)
	UpdateOptions()
	device4Enabled = value
end)

-- IP's
local pwScriptDeviceIp1 = DbOption.new():setValue(""):editbox()
:callback(function(value)
	deviceIp1 = value
end)
--
local pwScriptDeviceIp2 = DbOption.new():setValue(""):editbox()
:callback(function(value)
	deviceIp2 = value
end)
--
local pwScriptDeviceIp3 = DbOption.new():setValue(""):editbox()
:callback(function(value)
	deviceIp3 = value
end)
--
local pwScriptDeviceIp4 = DbOption.new():setValue(""):editbox()
:callback(function(value)
	deviceIp4 = value
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