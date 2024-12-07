-- UH-1H Huey

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Warnings
    [91] = "%1d", -- ENGINE OIL PRESS (yellow)
    [92] = "%1d", -- ENGINE ICING (yellow)
    [93] = "%1d", -- ENGINE ICE JET (yellow)
    [94] = "%1d", -- ENGINE CHIP DET (yellow)
    [95] = "%1d", -- LEFT FUEL BOOST (yellow)
    [96] = "%1d", -- RIGHT FUEL BOOST (yellow)
    [97] = "%1d", -- ENG FUEL PUMP (yellow)
    [98] = "%1d", -- 20 MIN FUEL (yellow)
    [99] = "%1d", -- FUEL FILTER (yellow)
    [100] = "%1d", -- GOV EMER (yellow)
    [101] = "%1d", -- AUX FUEL LOW (yellow)
    [102] = "%1d", -- XMSN OIL PRESS (yellow)
    [103] = "%1d", -- XMSN OIL HOT (yellow)
    [104] = "%1d", -- HYD PRESSURE (yellow)
    [105] = "%1d", -- ENGINE INLET AIR (yellow)
    [106] = "%1d", -- INST INVERTER (yellow)
    [107] = "%1d", -- DC GENERATOR (yellow)
    [108] = "%1d", -- EXTERNAL POWER (yellow)
    [109] = "%1d", -- CHIP DETECTOR (yellow)
    [110] = "%1d", -- IFF (yellow)

    -- EXT LTS
    [223] = "%1d", -- Navigation Lights STEADY/OFF/FLASH
    [224] = "%1d", -- Position LIghts DIM/BRT
    [225] = "%1d", -- Anticollision Lights OFF/ON

    -- INST LTG
    [230] = "%.1f", -- Overhead Console Panel Lights Brightness
    [231] = "%.1f", -- Pedestal Lights Brightness
    [232] = "%.1f", -- Secondary Instrument Lights Brightness
    [233] = "%.1f", -- Engine Instrument Lights Brightness
    [234] = "%.1f", -- Copilot Instrument Lights Brightness
    [235] = "%.1f", -- Pilot Instrument Lights Brightness

    [252] = "%1d", -- Master Arm OFF/SAFE/ARMED
    [253] = "%1d", -- Gun Selector LEFT / BOTH / RIGHT
    [254] = "%1d", -- ARMED Indicator (red)
    [255] = "%1d", -- SAFE Indicator (green)

    [256] = "%1d", -- 7.62 / 2.75 / 40
    [257] = "%.1f", -- Rocket Pair
    [259] = "%1d", -- Jettison Switch Cover
    [260] = "%1d", -- Jettison Switch
}

PWDEV.ConfigArguments =
{
}

local function getFlare()
    local function a(n) return GetDevice(0):get_argument_value(n) end
    return string.format("%.0f%.0f", a(460)*10, a(461)*10)
end
local function getChaff()
    local function a(n) return GetDevice(0):get_argument_value(n) end
    return string.format("%.0f%.0f", a(462)*10, a(463)*10)
end
local function getUhfFreq()
	local function a(n) return GetDevice(0):get_argument_value(n) end
	return string.format("%.0f%.0f%.0f.%.0f%.0f", 2+a(10), a(11)*10, a(12)*10, a(13)*10, a(14)*10)
end
local function getVhfCommFreq()
	local function a(n) return GetDevice(0):get_argument_value(n) end
	return string.format("1%.0f%.0f", a(1)*10, a(2)*10) .. "." .. string.format("%.0f%02.0f", a(3)*10, a(4)*100)
end
local function getVhfNavFreq()
	local function a(n) return GetDevice(0):get_argument_value(n) end
	return string.format("%.0f%.0f%.0f", a(46)*10, a(47)*10, a(48)*10) .. "." .. string.format("%.0f%.0f", a(49)*10, a(50)*10)
end

function PWDEV.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function PWDEV.ProcessDCSConfigLowImportance(mainPanelDevice)
    send(2001, getUhfFreq())
    send(2002, getVhfCommFreq())
    send(2003, getVhfNavFreq())

    send(2011, getChaff())
    send(2012, getFlare())

    -- COMMS
    local comm = PWDEV.Tools.getListIndicatorValue(7) or {}

    send(2801, comm.SheetTable_Channel1)
    send(2802, comm.SheetTable_Channel2)
    send(2803, comm.SheetTable_Channel3)
    send(2804, comm.SheetTable_Channel4)
    send(2805, comm.SheetTable_Channel5)
    send(2806, comm.SheetTable_Channel6)
    send(2807, comm.SheetTable_Channel7)
    send(2808, comm.SheetTable_Channel8)
    send(2809, comm.SheetTable_Channel9)
    send(2810, comm.SheetTable_Channel10)
    send(2811, comm.SheetTable_Channel11)
    send(2812, comm.SheetTable_Channel12)
    send(2813, comm.SheetTable_Channel13)
    send(2814, comm.SheetTable_Channel14)
    send(2815, comm.SheetTable_Channel15)
    send(2816, comm.SheetTable_Channel16)
    send(2817, comm.SheetTable_Channel17)
    send(2818, comm.SheetTable_Channel18)
    send(2819, comm.SheetTable_Channel19)
    send(2820, comm.SheetTable_Channel20)
end