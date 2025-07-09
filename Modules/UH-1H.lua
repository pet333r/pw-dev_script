-- UH-1H Huey

local send = PWDEV.Tools.SendData

PWDEV.FoundDCSModule = true

PWDEV.ConfigEveryFrameArguments =
{
    -- Warnings
    [91] = "%d", -- ENGINE OIL PRESS (yellow)
    [92] = "%d", -- ENGINE ICING (yellow)
    [93] = "%d", -- ENGINE ICE JET (yellow)
    [94] = "%d", -- ENGINE CHIP DET (yellow)
    [95] = "%d", -- LEFT FUEL BOOST (yellow)
    [96] = "%d", -- RIGHT FUEL BOOST (yellow)
    [97] = "%d", -- ENG FUEL PUMP (yellow)
    [98] = "%d", -- 20 MIN FUEL (yellow)
    [99] = "%d", -- FUEL FILTER (yellow)
    [100] = "%d", -- GOV EMER (yellow)
    [101] = "%d", -- AUX FUEL LOW (yellow)
    [102] = "%d", -- XMSN OIL PRESS (yellow)
    [103] = "%d", -- XMSN OIL HOT (yellow)
    [104] = "%d", -- HYD PRESSURE (yellow)
    [105] = "%d", -- ENGINE INLET AIR (yellow)
    [106] = "%d", -- INST INVERTER (yellow)
    [107] = "%d", -- DC GENERATOR (yellow)
    [108] = "%d", -- EXTERNAL POWER (yellow)
    [109] = "%d", -- CHIP DETECTOR (yellow)
    [110] = "%d", -- IFF (yellow)

    -- EXT LTS
    [223] = "%d", -- Navigation Lights STEADY/OFF/FLASH
    [224] = "%d", -- Position LIghts DIM/BRT
    [225] = "%d", -- Anticollision Lights OFF/ON

    -- INST LTG
    [230] = "%.1f", -- Overhead Console Panel Lights Brightness
    [231] = "%.1f", -- Pedestal Lights Brightness
    [232] = "%.1f", -- Secondary Instrument Lights Brightness
    [233] = "%.1f", -- Engine Instrument Lights Brightness
    [234] = "%.1f", -- Copilot Instrument Lights Brightness
    [235] = "%.1f", -- Pilot Instrument Lights Brightness

    [252] = "%d", -- Master Arm OFF/SAFE/ARMED
    [253] = "%d", -- Gun Selector LEFT / BOTH / RIGHT
    [254] = "%d", -- ARMED Indicator (red)
    [255] = "%d", -- SAFE Indicator (green)

    [256] = "%d", -- 7.62 / 2.75 / 40
    [257] = "%.1f", -- Rocket Pair
    [259] = "%d", -- Jettison Switch Cover
    [260] = "%d", -- Jettison Switch

	[285] = "%d", -- CB IFF APX 1 (N/F)
	[287] = "%d", -- CB IFF APX 2 (N/F)
	[289] = "%d", -- CB Prox. warn.(N/F)
	[291] = "%d", -- CB Marker beacon
	[293] = "%d", -- CB VHF Nav. (ARN-82)
	[295] = "%d", -- CB LF Nav. (ARN-83)
	[297] = "%d", -- CB Intercom CPLT(N/F)
	[299] = "%d", -- CB Intercom PLT
	[349] = "%d", -- CB ARC-102 HF Static INVTR(N/F)
	[351] = "%d", -- CB HF ANT COUPLR(N/F)
	[353] = "%d", -- CB HF ARC-102(N/F)
	[355] = "%d", -- CB FM Radio
	[357] = "%d", -- CB UHF Radio
	[359] = "%d", -- CB FM 2 Radio(N/F)
	[361] = "%d", -- CB VHF AM Radio
	[321] = "%d", -- CB Pitot tube(N/F)
	[345] = "%d", -- CB Rescue hoist CTL(N/F)
	[347] = "%d", -- CB Rescue hoist cable cutter N/F)
	[301] = "%d", -- CB Wind wiper CPLT
	[303] = "%d", -- CB Wind wiper PLT
	[305] = "%d", -- CB KY-28 voice security(N/F)
	[403] = "%d", -- CB Starter Relay(N/F)
	[307] = "%d", -- CB Search light power(N/F)
	[309] = "%d", -- CB Landing light power(N/F)
	[311] = "%d", -- CB Landing & Search light control(N/F)
	[313] = "%d", -- CB Anticollision light(N/F)
	[363] = "%d", -- CB Fuselage lights(N/F)
	[365] = "%d", -- CB Navigation lights(N/F)
	[367] = "%d", -- CB Dome lights(N/F)
	[369] = "%d", -- CB Cockpit lights(N/F)
	[371] = "%d", -- CB Caution lights(N/F)
	[373] = "%d", -- CB Console lights(N/F)
	[375] = "%d", -- CB INST Panel lights(N/F)
	[377] = "%d", -- CB INST SEC lights(N/F)
	[323] = "%d", -- CB Cabin heater (Outlet valve)(N/F)
	[325] = "%d", -- CB Cabin heater (Air valve)(N/F)
	[343] = "%d", -- CB Rescue hoist PWR(N/F)
	[327] = "%d", -- CB RPM Warning system(N/F)
	[329] = "%d", -- CB Engine anti-ice(N/F)
	[331] = "%d", -- CB Fire detector(N/F)
	[333] = "%d", -- CB LH fuel boost pump(N/F)
	[335] = "%d", -- CB Turn & Slip indicator
	[337] = "%d", -- CB TEMP indicator(N/F)
	[339] = "%d", -- CB HYD Control(N/F)
	[341] = "%d", -- CB FORCE Trim(N/F)
	[379] = "%d", -- CB Cargo hook release(N/F)
	[381] = "%d", -- CB EXT Stores jettison(N/F)
	[383] = "%d", -- CB Spare inverter PWR(N/F)
	[385] = "%d", -- CB Inverter CTRL (N/F)
	[387] = "%d", -- CB Main inverter PWR(N/F)
	[389] = "%d", -- CB Generator & Bus Reset(N/F)
	[391] = "%d", -- CB STBY Generator Field(N/F)
	[393] = "%d", -- CB Governor Control(N/F)
	[395] = "%d", -- CB IDLE Stop release(N/F)
	[397] = "%d", -- CB RH fuel boost pump(N/F)
	[399] = "%d", -- CB Fuel TRANS(N/F)
	[401] = "%d", -- CB Fuel valves(N/F)
	[315] = "%d", -- CB Heated blanket 1(N/F)
	[317] = "%d", -- CB Heated blanket 2(N/F)
	[319] = "%d", -- CB Voltmeter Non Ess Bus(N/F)
	[405] = "%d", -- CB Ignition system(N/F)
	[423] = "%d", -- CB Pilot ATTD1(N/F)
	[424] = "%d", -- CB Pilot ATTD2(N/F)
	[425] = "%d", -- CB Copilot ATTD1(N/F)
	[426] = "%d", -- CB Copilot ATTD2(N/F)
	[427] = "%d", -- CB Gyro Cmps(N/F)
	[428] = "%d", -- CB Fuel Quantity(N/F)
	[429] = "%d", -- CB 28V Trans(N/F)
	[430] = "%d", -- CB Fail Relay(N/F)
	[431] = "%d", -- CB Pressure Fuel(N/F)
	[432] = "%d", -- CB Pressure Torque(N/F)
	[433] = "%d", -- CB Pressure XMSN(N/F)
	[434] = "%d", -- CB Pressure Eng(N/F)
	[435] = "%d", -- CB Course Ind(N/F)

	[449] = "%d", -- Radar Altimeter Power Switch
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