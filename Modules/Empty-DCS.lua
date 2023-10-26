-- Module Name Export
PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments = 
{
}

PWDEV.ConfigArguments = 
{
}

-- Pointed to by ProcessDCSHighImportance
function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to 
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	PWDEV.Tools.SendData("ExportID", "Format")
	PWDEV.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	PWDEV.Tools.SendData(2000, PWDEV.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- PWDEV.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end

-- Pointed to by PWDEV.ProcessDCSConfigLowImportance
function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to 
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	PWDEV.Tools.SendData("ExportID", "Format")
	PWDEV.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	PWDEV.Tools.SendData(2000, PWDEV.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- PWDEV.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end