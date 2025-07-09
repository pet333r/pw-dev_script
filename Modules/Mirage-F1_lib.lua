mf1_comm1_channel = {
    ["0.00"] = "1",
    ["0.05"] = "2",
    ["0.10"] = "3",
    ["0.15"] = "4",
    ["0.20"] = "5",
    ["0.25"] = "6",
    ["0.30"] = "7",
    ["0.35"] = "8",
    ["0.40"] = "9",
    ["0.45"] = "10",
    ["0.50"] = "11",
    ["0.55"] = "12",
    ["0.60"] = "13",
    ["0.65"] = "14",
    ["0.70"] = "15",
    ["0.75"] = "16",
    ["0.80"] = "17",
    ["0.85"] = "18",
    ["0.90"] = "19",
    ["0.95"] = "20",
}

local mf1_thousandths = {
    ["0.000"] = "00",
    ["0.333"] = "25",
    ["0.666"] = "50",
    ["0.999"] = "75"
}

function Mf1_comm1_channel_get(dev0)
	d = {}
	d[1] = string.format("%1.0f",dev0:get_argument_value(274) * 10)
	d[2] = string.format("%1.0f",dev0:get_argument_value(275) * 10)
	d[3] = string.format("%1.0f",dev0:get_argument_value(276) * 10)
	d[4] = string.format("%1.0f",dev0:get_argument_value(277) * 10)
    local th = mf1_thousandths[string.format("%.3f", dev0:get_argument_value(278))]
    return d[1]..d[2]..d[3]..d[4]..th
end