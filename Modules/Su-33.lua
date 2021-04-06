-- Su-33
ExportScript.FoundFCModule = true

-- auxiliary function
dofile(ExportScript.Config.ExportModulePath.."FC_Functions.lua")

function ExportScript.AF.FC_WeaponPanel_SU33()
	-- local lFunctionTyp 

	if ExportScript.AF.TmpWeaponPanelPresend == nil then
		ExportScript.AF.TmpWeaponPanelPresend = {[101] = 0, [102] = 0, [103] = 0, [104] = 0, [105] = 0, [106] = 0, [107] = 0, [108] = 0, [109] = 0, [110] = 0}
	end	

	if ExportScript.AF.TmpWeaponPanelActive == nil then
		ExportScript.AF.TmpWeaponPanelActive = {[201] = 0, [202] = 0, [203] = 0, [204] = 0, [205] = 0, [206] = 0, [207] = 0, [208] = 0, [209] = 0, [210] = 0}
	end

	if ExportScript.AF.TmpWeaponPanel == nil then
		ExportScript.AF.TmpWeaponPanel = {[231] = 0, [232] = 0, [233] = 0, [234] = 0, [235] = 0}
	end

	if ExportScript.AF.EventNumberFC_WeaponPanel == nil then
		ExportScript.AF.EventNumberFC_WeaponPanel = 0
	end 

	if(ExportScript.AF.EventNumberFC_WeaponPanel < ExportScript.AF.EventNumber) then
		ExportScript.AF.EventNumberFC_WeaponPanel = ExportScript.AF.EventNumber

		-- defination
		ExportScript.AF.PayloadInfo = LoGetPayloadInfo()
		if ExportScript.AF.PayloadInfo ~= nil then
			if ExportScript.AF.CurrentStationTmp == nil then
				ExportScript.AF.CurrentStationTmp = -1
			end

			if ExportScript.AF.PayloadInfo.CurrentStation  > 0 and
				ExportScript.AF.CurrentStationTmp ~= ExportScript.AF.PayloadInfo.CurrentStation then
				ExportScript.AF.CurrentStationTmp  = ExportScript.AF.PayloadInfo.CurrentStation

				ExportScript.AF.TmpStationToPanel = {}
				ExportScript.AF.TmpStationToPanel[1] =  {Panel =  1, StationID = 101, CurrentID = 201 }	-- L
				ExportScript.AF.TmpStationToPanel[2] =  {Panel =  2, StationID = 102, CurrentID = 202 }	-- L
				ExportScript.AF.TmpStationToPanel[3] =  {Panel =  3, StationID = 103, CurrentID = 203 }
				ExportScript.AF.TmpStationToPanel[4] =  {Panel =  4, StationID = 104, CurrentID = 204 }
				ExportScript.AF.TmpStationToPanel[5] =  {Panel =  5, StationID = 105, CurrentID = 205 }
				ExportScript.AF.TmpStationToPanel[6] =  {Panel =  6, StationID = 106, CurrentID = 206 }
				ExportScript.AF.TmpStationToPanel[7] =  {Panel =  7, StationID = 107, CurrentID = 207 }
				ExportScript.AF.TmpStationToPanel[8] =  {Panel =  8, StationID = 108, CurrentID = 208 }
				ExportScript.AF.TmpStationToPanel[9] =  {Panel =  9, StationID = 109, CurrentID = 209 }
				ExportScript.AF.TmpStationToPanel[10] = {Panel =  10, StationID = 110, CurrentID = 210 }
				-- ExportScript.AF.TmpStationToPanel[11] = {Panel =  6, StationID = 106, CurrentID = 206 }
				-- ExportScript.AF.TmpStationToPanel[12] = {Panel =  5, StationID = 105, CurrentID = 205 }

				-- ExportScript.AF.TmpWeaponPanelActive reset
				for i = 201, 210, 1 do
					ExportScript.AF.TmpWeaponPanelActive[i] = 0
				end

				if ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation] ~= nil then
					ExportScript.AF.TmpWeaponPanelActive[ExportScript.AF.TmpStationToPanel[ExportScript.AF.PayloadInfo.CurrentStation].CurrentID] = 1        -- currrent value

					table.foreach(ExportScript.AF.PayloadInfo.Stations, ExportScript.AF.WeaponStatusPanel_selectCurrentPayloadStation)   -- corresponding station
				end
			end

			local lWeaponType = 0.0	-- transversely striped
			if ExportScript.AF.PayloadInfo.CurrentStation > 0 then
				if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level1 == 4 then
					if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level2 == 4 then -- Weapon type Missle
						lWeaponType = 0.1	-- MSL
					elseif ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level2 == 7 then -- Weapon type NURS with Container
						if ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level3 == 33 then -- Weapon type Rocket
							lWeaponType = 0.2	-- RCT
						end
					elseif ExportScript.AF.PayloadInfo.Stations[ExportScript.AF.PayloadInfo.CurrentStation].weapon.level2 == 5 then -- Weapon type Bomb
						lWeaponType = 0.3	-- BB
					end
				end
			end

			--[[
			Weapon Panel (Numper = Station number)
									   |
			-------------------------------------------------------
			|    |    |    |    |    |   |    |    |    |    |    |
			L    1    2    3    4    5   6    7    8    9    10   R  -- Panel ID
			1    4    5    7    9    12 11    10   8    6    3    2  -- gES_PayloadInfo.Station.ID
			]]
			-- Payload Info
			-- weapon stations L and R not on Panel
			-- weapon station 1 (left) to 10 (right), 5 and 6 center station

			-- WeaponPresend1 {0, 1}
			-- WeaponPresend2 {0, 1}
			-- WeaponPresend3 {0, 1}
			-- WeaponPresend4 {0, 1}
			-- WeaponPresend5 {0, 1}
			-- WeaponPresend6 {0, 1}
			-- WeaponPresend7 {0, 1}
			-- WeaponPresend8 {0, 1}
			-- WeaponPresend9 {0, 1}
			-- WeaponPresend10 {0, 1}
			-- WeaponActive1 {0, 1}
			-- WeaponActive2 {0, 1}
			-- WeaponActive3 {0, 1}
			-- WeaponActive4 {0, 1}
			-- WeaponActive5 {0, 1}
			-- WeaponActive6 {0, 1}
			-- WeaponActive7 {0, 1}
			-- WeaponActive8 {0, 1}
			-- WeaponActive9 {0, 1}
			-- WeaponActive10 {0, 1}

			-- ExportScript.AF.TmpWeaponPanelPresend[] = (ExportScript.AF.PayloadInfo.Stations[1].count  > 0 and 1 or 0)     -- L
			-- ExportScript.AF.TmpWeaponPanelPresend[] = (ExportScript.AF.PayloadInfo.Stations[2].count  > 0 and 1 or 0)     -- R
			ExportScript.AF.TmpWeaponPanelPresend[110] = (ExportScript.AF.PayloadInfo.Stations[3].count  > 0 and 1 or 0)     -- weapon presend panel 1
			ExportScript.AF.TmpWeaponPanelPresend[101] = (ExportScript.AF.PayloadInfo.Stations[4].count  > 0 and 1 or 0)     -- weapon presend panel 10
			ExportScript.AF.TmpWeaponPanelPresend[102] = (ExportScript.AF.PayloadInfo.Stations[5].count  > 0 and 1 or 0)     -- weapon presend panel 2
			ExportScript.AF.TmpWeaponPanelPresend[109] = (ExportScript.AF.PayloadInfo.Stations[6].count  > 0 and 1 or 0)     -- weapon presend panel 9
			ExportScript.AF.TmpWeaponPanelPresend[103] = (ExportScript.AF.PayloadInfo.Stations[7].count  > 0 and 1 or 0)     -- weapon presend panel 3
			ExportScript.AF.TmpWeaponPanelPresend[108] = (ExportScript.AF.PayloadInfo.Stations[8].count  > 0 and 1 or 0)     -- weapon presend panel 8
			ExportScript.AF.TmpWeaponPanelPresend[104] = (ExportScript.AF.PayloadInfo.Stations[9].count  > 0 and 1 or 0)     -- weapon presend panel 4
			ExportScript.AF.TmpWeaponPanelPresend[107] = (ExportScript.AF.PayloadInfo.Stations[10].count > 0 and 1 or 0)     -- weapon presend panel 7
			-- ExportScript.AF.TmpWeaponPanelPresend[106] = (ExportScript.AF.PayloadInfo.Stations[11].count > 0 and 1 or 0)     -- weapon presend panel 5
			-- ExportScript.AF.TmpWeaponPanelPresend[105] = (ExportScript.AF.PayloadInfo.Stations[12].count > 0 and 1 or 0)     -- weapon presend panel 6
			-- ExportScript.AF.TmpWeaponPanelActive[201]                           -- weapon active panel 1
			-- ExportScript.AF.TmpWeaponPanelActive[202]                           -- weapon active panel 2
			-- ExportScript.AF.TmpWeaponPanelActive[203]                           -- weapon active panel 3
			-- ExportScript.AF.TmpWeaponPanelActive[204]                           -- weapon active panel 4
			-- ExportScript.AF.TmpWeaponPanelActive[205]                           -- weapon active panel 5
			-- ExportScript.AF.TmpWeaponPanelActive[206]                           -- weapon active panel 6
			-- ExportScript.AF.TmpWeaponPanelActive[207]                           -- weapon active panel 7
			-- ExportScript.AF.TmpWeaponPanelActive[208]                           -- weapon active panel 8
			-- ExportScript.AF.TmpWeaponPanelActive[209]                           -- weapon active panel 9
			-- ExportScript.AF.TmpWeaponPanelActive[210]                           -- weapon active panel 10
		end
	end

	if ExportScript.Config.Export  then
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelPresend) do
			ExportScript.Tools.SendData(key, value)
		end
		for key, value in pairs(ExportScript.AF.TmpWeaponPanelActive) do
			ExportScript.Tools.SendData(key, value)
		end
	end

	-- if ExportScript.Config.DACExport and lFunctionTyp == "DAC" then
	-- 	for key, value in pairs(ExportScript.AF.TmpWeaponPanelPresend) do
	-- 		ExportScript.Tools.SendDataDAC(key, value)
	-- 	end
	-- 	for key, value in pairs(ExportScript.AF.TmpWeaponPanelActive) do
	-- 		ExportScript.Tools.SendDataDAC(key, value)
	-- 	end
	-- end
end

function ExportScript.ProcessFCHighImportanceConfig()
    ExportScript.AF.FC_AoA_Su33()

	-- Cautions
    ExportScript.AF.StatusLamp()
end

function ExportScript.ProcessFCLowImportanceConfig()
	-- SPO15 Radar Warning Reciver
	ExportScript.AF.FC_SPO15RWR()

    -- ExportScript.AF.FC_WeaponPanel_SU33()
end