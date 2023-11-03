-- Su-33
local send = PWDEV.Tools.SendData
PWDEV.FoundFCModule = true

-- auxiliary function
dofile(PWDEV.Config.ExportModulePath.."FC_Functions.lua")

function PWDEV.AF.FC_WeaponPanel_SU33()
	-- local lFunctionTyp 

	if PWDEV.AF.TmpWeaponPanelPresend == nil then
		PWDEV.AF.TmpWeaponPanelPresend = {[101] = 0, [102] = 0, [103] = 0, [104] = 0, [105] = 0, [106] = 0, [107] = 0, [108] = 0, [109] = 0, [110] = 0}
	end	

	if PWDEV.AF.TmpWeaponPanelActive == nil then
		PWDEV.AF.TmpWeaponPanelActive = {[201] = 0, [202] = 0, [203] = 0, [204] = 0, [205] = 0, [206] = 0, [207] = 0, [208] = 0, [209] = 0, [210] = 0}
	end

	if PWDEV.AF.TmpWeaponPanel == nil then
		PWDEV.AF.TmpWeaponPanel = {[231] = 0, [232] = 0, [233] = 0, [234] = 0, [235] = 0}
	end

	if PWDEV.AF.EventNumberFC_WeaponPanel == nil then
		PWDEV.AF.EventNumberFC_WeaponPanel = 0
	end 

	if(PWDEV.AF.EventNumberFC_WeaponPanel < PWDEV.AF.EventNumber) then
		PWDEV.AF.EventNumberFC_WeaponPanel = PWDEV.AF.EventNumber

		-- defination
		PWDEV.AF.PayloadInfo = LoGetPayloadInfo()
		if PWDEV.AF.PayloadInfo ~= nil then
			if PWDEV.AF.CurrentStationTmp == nil then
				PWDEV.AF.CurrentStationTmp = -1
			end

			if PWDEV.AF.PayloadInfo.CurrentStation  > 0 and
				PWDEV.AF.CurrentStationTmp ~= PWDEV.AF.PayloadInfo.CurrentStation then
				PWDEV.AF.CurrentStationTmp  = PWDEV.AF.PayloadInfo.CurrentStation

				PWDEV.AF.TmpStationToPanel = {}
				PWDEV.AF.TmpStationToPanel[1] =  {Panel =  1, StationID = 101, CurrentID = 201 }	-- L
				PWDEV.AF.TmpStationToPanel[2] =  {Panel =  2, StationID = 102, CurrentID = 202 }	-- L
				PWDEV.AF.TmpStationToPanel[3] =  {Panel =  3, StationID = 103, CurrentID = 203 }
				PWDEV.AF.TmpStationToPanel[4] =  {Panel =  4, StationID = 104, CurrentID = 204 }
				PWDEV.AF.TmpStationToPanel[5] =  {Panel =  5, StationID = 105, CurrentID = 205 }
				PWDEV.AF.TmpStationToPanel[6] =  {Panel =  6, StationID = 106, CurrentID = 206 }
				PWDEV.AF.TmpStationToPanel[7] =  {Panel =  7, StationID = 107, CurrentID = 207 }
				PWDEV.AF.TmpStationToPanel[8] =  {Panel =  8, StationID = 108, CurrentID = 208 }
				PWDEV.AF.TmpStationToPanel[9] =  {Panel =  9, StationID = 109, CurrentID = 209 }
				PWDEV.AF.TmpStationToPanel[10] = {Panel =  10, StationID = 110, CurrentID = 210 }
				-- PWDEV.AF.TmpStationToPanel[11] = {Panel =  6, StationID = 106, CurrentID = 206 }
				-- PWDEV.AF.TmpStationToPanel[12] = {Panel =  5, StationID = 105, CurrentID = 205 }

				-- PWDEV.AF.TmpWeaponPanelActive reset
				for i = 201, 210, 1 do
					PWDEV.AF.TmpWeaponPanelActive[i] = 0
				end

				if PWDEV.AF.TmpStationToPanel[PWDEV.AF.PayloadInfo.CurrentStation] ~= nil then
					PWDEV.AF.TmpWeaponPanelActive[PWDEV.AF.TmpStationToPanel[PWDEV.AF.PayloadInfo.CurrentStation].CurrentID] = 1        -- currrent value

					table.foreach(PWDEV.AF.PayloadInfo.Stations, PWDEV.AF.WeaponStatusPanel_selectCurrentPayloadStation)   -- corresponding station
				end
			end

			local lWeaponType = 0.0	-- transversely striped
			if PWDEV.AF.PayloadInfo.CurrentStation > 0 then
				if PWDEV.AF.PayloadInfo.Stations[PWDEV.AF.PayloadInfo.CurrentStation].weapon.level1 == 4 then
					if PWDEV.AF.PayloadInfo.Stations[PWDEV.AF.PayloadInfo.CurrentStation].weapon.level2 == 4 then -- Weapon type Missle
						lWeaponType = 0.1	-- MSL
					elseif PWDEV.AF.PayloadInfo.Stations[PWDEV.AF.PayloadInfo.CurrentStation].weapon.level2 == 7 then -- Weapon type NURS with Container
						if PWDEV.AF.PayloadInfo.Stations[PWDEV.AF.PayloadInfo.CurrentStation].weapon.level3 == 33 then -- Weapon type Rocket
							lWeaponType = 0.2	-- RCT
						end
					elseif PWDEV.AF.PayloadInfo.Stations[PWDEV.AF.PayloadInfo.CurrentStation].weapon.level2 == 5 then -- Weapon type Bomb
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

			-- PWDEV.AF.TmpWeaponPanelPresend[] = (PWDEV.AF.PayloadInfo.Stations[1].count  > 0 and 1 or 0)     -- L
			-- PWDEV.AF.TmpWeaponPanelPresend[] = (PWDEV.AF.PayloadInfo.Stations[2].count  > 0 and 1 or 0)     -- R
			PWDEV.AF.TmpWeaponPanelPresend[110] = (PWDEV.AF.PayloadInfo.Stations[3].count  > 0 and 1 or 0)     -- weapon presend panel 1
			PWDEV.AF.TmpWeaponPanelPresend[101] = (PWDEV.AF.PayloadInfo.Stations[4].count  > 0 and 1 or 0)     -- weapon presend panel 10
			PWDEV.AF.TmpWeaponPanelPresend[102] = (PWDEV.AF.PayloadInfo.Stations[5].count  > 0 and 1 or 0)     -- weapon presend panel 2
			PWDEV.AF.TmpWeaponPanelPresend[109] = (PWDEV.AF.PayloadInfo.Stations[6].count  > 0 and 1 or 0)     -- weapon presend panel 9
			PWDEV.AF.TmpWeaponPanelPresend[103] = (PWDEV.AF.PayloadInfo.Stations[7].count  > 0 and 1 or 0)     -- weapon presend panel 3
			PWDEV.AF.TmpWeaponPanelPresend[108] = (PWDEV.AF.PayloadInfo.Stations[8].count  > 0 and 1 or 0)     -- weapon presend panel 8
			PWDEV.AF.TmpWeaponPanelPresend[104] = (PWDEV.AF.PayloadInfo.Stations[9].count  > 0 and 1 or 0)     -- weapon presend panel 4
			PWDEV.AF.TmpWeaponPanelPresend[107] = (PWDEV.AF.PayloadInfo.Stations[10].count > 0 and 1 or 0)     -- weapon presend panel 7
			-- PWDEV.AF.TmpWeaponPanelPresend[106] = (PWDEV.AF.PayloadInfo.Stations[11].count > 0 and 1 or 0)     -- weapon presend panel 5
			-- PWDEV.AF.TmpWeaponPanelPresend[105] = (PWDEV.AF.PayloadInfo.Stations[12].count > 0 and 1 or 0)     -- weapon presend panel 6
			-- PWDEV.AF.TmpWeaponPanelActive[201]                           -- weapon active panel 1
			-- PWDEV.AF.TmpWeaponPanelActive[202]                           -- weapon active panel 2
			-- PWDEV.AF.TmpWeaponPanelActive[203]                           -- weapon active panel 3
			-- PWDEV.AF.TmpWeaponPanelActive[204]                           -- weapon active panel 4
			-- PWDEV.AF.TmpWeaponPanelActive[205]                           -- weapon active panel 5
			-- PWDEV.AF.TmpWeaponPanelActive[206]                           -- weapon active panel 6
			-- PWDEV.AF.TmpWeaponPanelActive[207]                           -- weapon active panel 7
			-- PWDEV.AF.TmpWeaponPanelActive[208]                           -- weapon active panel 8
			-- PWDEV.AF.TmpWeaponPanelActive[209]                           -- weapon active panel 9
			-- PWDEV.AF.TmpWeaponPanelActive[210]                           -- weapon active panel 10
		end
	end

	for key, value in pairs(PWDEV.AF.TmpWeaponPanelPresend) do
		send(key, value)
	end
	for key, value in pairs(PWDEV.AF.TmpWeaponPanelActive) do
		send(key, value)
	end
end

function PWDEV.ProcessFCHighImportanceConfig()
    PWDEV.AF.FC_AoA_Su33()

	-- Cautions
    PWDEV.AF.StatusLamp()
end

function PWDEV.ProcessFCLowImportanceConfig()
	-- SPO15 Radar Warning Reciver
	PWDEV.AF.FC_SPO15RWR()

    -- PWDEV.AF.FC_WeaponPanel_SU33()
end