-- Maps
PWDEV.Maps = {}

local function AddMap(name, lat1, long1, lat2, long2)
    PWDEV.Maps[name] = {
        Lat1 = lat1,
        Long1 = long1,
        Lat2 = lat2,
        Long2 = long2
    }
end


AddMap("Afghanistan",       38.724444,  60.321667,  28.924167, 73.806111)
AddMap("Caucasus",          48.387642,  26.778781,  38.865153, 47.142275)
AddMap("GermanyCW",         55.688889,  2.823611,   49.220278, 16.388889)
AddMap("Kola",              74.225278,  7.585,      63.953611, 39.953333)
AddMap("Iraq",              37.052436,  38.573381,  24.499361, 52.655797)
AddMap("Nevada",            39.801711,  -119.990225, 34.346914, -112.445997)
AddMap("Normandy",          51.487778,  -4.216111,  48.229722, 2.191667)
AddMap("Normandy2",         51.853050,  -3.5005,    48.182817, 3.129567)
AddMap("PersianGulf",       32.955517,  46.583444,  21.869711, 63.997372)
AddMap("SinaiMap",          34.471389,  28.110833,  25.943889, 36.900833)
AddMap("Falklands",         -45.850933, -84.73315,  -56.442333, -38.1723)
AddMap("Syria",             37.858862,  29.268889,  31.960958, 41.932889)
AddMap("MarianaIslands",    22.090214,  135.057381, 10.772458, 149.391997)
AddMap("TheChannel",        51.517378,  -0.089928,  49.713733, 3.424786)