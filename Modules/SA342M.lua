-- SA342M
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    -- Warnings
    [1] = "%1d",  -- Pitot Tube Warning
    [2] = "%1d",  -- Turbine Oil Pressure Warning
    [3] = "%1d",  -- Main Rotor Oil Pressure Warning
    [4] = "%1d",  -- Low Turbine RPM Warning
    [5] = "%1d",  -- Generator Warning
    [6] = "%1d",  -- Alternator Warning
    [7] = "%1d",  -- Battery Warning
    [8] = "%1d",  -- Autopilot Warning
    [9] = "%1d",  -- AC 115 V Bus/NAV Warning
    [10] = "%1d", -- Low Fuel Warning
    [11] = "%1d", -- Low Rotor RPM Warning
    [12] = "%1d", -- Chips In Oil Warning
    [13] = "%1d", -- Sand Filter Warning

    -- INST LTG
    [230] = "%.1f", -- Overhead Console Panel
    [231] = "%.1f", -- Pedestal
    [232] = "%.1f", -- Secondary Instrument
    [233] = "%.1f", -- Engine Instrument
    [234] = "%.1f", -- Copilot Instrument
    [235] = "%.1f", -- Pilot Instrument
}

ExportScript.ConfigArguments =
{
}

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)

    local nadir = ExportScript.Tools.getListIndicatorValue(3)
    if not nadir then
        return
    end

    -- ExportScript.Tools.SendData(700, ExportScript.Tools.coerce_nil_to_string(nadir.N.element_params))
    -- ExportScript.Tools.SendData(701, nadir.S)
    -- ExportScript.Tools.SendData(702, nadir.W)
    -- ExportScript.Tools.SendData(703, nadir.E)
    -- ExportScript.Tools.SendData(704, nadir.X)
    -- ExportScript.Tools.SendData(705, nadir.Y)

    -- ExportScript.Tools.SendData(706, nadir.Pt_CentMille)
    -- ExportScript.Tools.SendData(707, nadir.Pt_DixMille)
    -- ExportScript.Tools.SendData(708, nadir.Pt_Mille)
    -- ExportScript.Tools.SendData(709, nadir.Pt_Cent)
    -- ExportScript.Tools.SendData(710, nadir.Pt_Dix)
    -- ExportScript.Tools.SendData(711, nadir.Pt_Unit)

    -- ExportScript.Tools.SendData(712, nadir.Pt_CentMilleI)
    -- ExportScript.Tools.SendData(713, nadir.Pt_DixMilleI)
    -- ExportScript.Tools.SendData(714, nadir.Pt_MilleI)
    -- ExportScript.Tools.SendData(715, nadir.Pt_CentI)
    -- ExportScript.Tools.SendData(716, nadir.Pt_DixI)
    -- ExportScript.Tools.SendData(717, nadir.Pt_UnitI)

    -- ExportScript.Tools.SendData(718, nadir.GEL)
    -- ExportScript.Tools.SendData(719, nadir.PILE)
    -- ExportScript.Tools.SendData(720, nadir.AIR)
    -- ExportScript.Tools.SendData(721, nadir.ERR)
    -- ExportScript.Tools.SendData(722, nadir.NAV)
    -- ExportScript.Tools.SendData(723, nadir.PANNE)

    ExportScript.Tools.SendData(2001, ExportScript.Tools.DisplayFormat(nadir.CentMille..nadir.DixMille..nadir.Mille..nadir.Cent..nadir.Dix..nadir.Unit, 6))
    ExportScript.Tools.SendData(2002, ExportScript.Tools.DisplayFormat(nadir.CentMilleI..nadir.DixMilleI..nadir.MilleI..nadir.CentI..nadir.DixI..nadir.UnitI, 6))
    ExportScript.Tools.SendData(2003, nadir.F_unit)

end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end