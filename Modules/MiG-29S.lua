-- MIG-29S
ExportScript.FoundFCModule = true

-- auxiliary function
dofile(ExportScript.Config.ExportModulePath.."FC_Functions.lua")

function ExportScript.ProcessFCHighImportanceConfig()
	-- Cautions
    ExportScript.AF.StatusLamp()
end

function ExportScript.ProcessFCLowImportanceConfig()
    -- SPO15 Radar Warning Reciver
    ExportScript.AF.FC_SPO15RWR()


    -- local lMCPState = LoGetMCPState() -- Warning Lights
	-- if lMCPState == nil then
	-- 	return
    -- end
    
	--ExportScript.Tools.WriteToLog('lMCPState: '..ExportScript.Tools.dump(lMCPState))
	--[[
	[RightTailPlaneFailure] = boolean: "false"
    [EOSFailure] = boolean: "false"
    [ECMFailure] = boolean: "false"
    [RightAileronFailure] = boolean: "false"
    [MasterWarning] = boolean: "false"
    [RightEngineFailure] = boolean: "false"
    [CannonFailure] = boolean: "false"
    [MLWSFailure] = boolean: "false"
    [ACSFailure] = boolean: "false"
    [RadarFailure] = boolean: "false"
    [HelmetFailure] = boolean: "false"
    [HUDFailure] = boolean: "false"
    [LeftMainPumpFailure] = boolean: "false"
    [RightWingPumpFailure] = boolean: "false"
    [LeftWingPumpFailure] = boolean: "false"
    [MFDFailure] = boolean: "false"
    [RWSFailure] = boolean: "false"
    [GearFailure] = boolean: "false"
    [HydraulicsFailure] = boolean: "false"
    [AutopilotFailure] = boolean: "true"
    [FuelTankDamage] = boolean: "false"
    [LeftAileronFailure] = boolean: "false"
    [CanopyOpen] = boolean: "false"
    [RightMainPumpFailure] = boolean: "false"
    [StallSignalization] = boolean: "false"
    [LeftEngineFailure] = boolean: "false"
    [AutopilotOn] = boolean: "false"
    [LeftTailPlaneFailure] = boolean: "false"
	]]

	-- ExportScript.Tools.SendData(700, lMCPState.LeftTailPlaneFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(701, lMCPState.RightTailPlaneFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(702, lMCPState.MasterWarning == true and 1 or 0 )
	-- ExportScript.Tools.SendData(703, lMCPState.LeftEngineFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(704, lMCPState.RightEngineFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(705, lMCPState.LeftAileronFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(706, lMCPState.RightAileronFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(707, lMCPState.LeftMainPumpFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(708, lMCPState.RightMainPumpFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(709, lMCPState.LeftWingPumpFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(710, lMCPState.RightWingPumpFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(711, lMCPState.EOSFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(712, lMCPState.ECMFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(713, lMCPState.CannonFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(714, lMCPState.MLWSFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(715, lMCPState.ACSFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(716, lMCPState.RadarFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(717, lMCPState.HelmetFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(718, lMCPState.HUDFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(719, lMCPState.MFDFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(720, lMCPState.RWSFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(721, lMCPState.GearFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(722, lMCPState.HydraulicsFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(723, lMCPState.AutopilotFailure == true and 1 or 0 )
	-- ExportScript.Tools.SendData(724, lMCPState.FuelTankDamage == true and 1 or 0 )
	-- ExportScript.Tools.SendData(725, lMCPState.CanopyOpen == true and 1 or 0 )
	-- ExportScript.Tools.SendData(726, lMCPState.StallSignalization == true and 1 or 0 )
	-- ExportScript.Tools.SendData(727, lMCPState.AutopilotOn == true and 1 or 0 )
end