local send = PWDEV.Tools.SendData

PWDEV.ModuleData = {}

local moduleHandlers = {}

function PWDEV.ModuleData.Send()
    if (PWDEV.Tools.PlaneData.Send) then
        --todo dodac przesylanie gdy zmienna bedzie true
        send("G01", PWDEV.Tools.PlaneData.Acc)
        send("G02", PWDEV.Tools.PlaneData.Alt)
        send("G03", PWDEV.Tools.PlaneData.Time)
        send("G04", PWDEV.Tools.PlaneData.Vspd)
        send("G05", PWDEV.Tools.PlaneData.Pitch)
        send("G06", PWDEV.Tools.PlaneData.Bank)
        send("G07", PWDEV.Tools.PlaneData.Yaw)
        send("G08", PWDEV.Tools.PlaneData.Aoa)
        send("G09", PWDEV.Tools.PlaneData.Mach)
        send("G10", PWDEV.Tools.PlaneData.Hdg)

        if moduleHandlers[PWDEV.ModuleName] then
            moduleHandlers[PWDEV.ModuleName]()
        end
    end
end