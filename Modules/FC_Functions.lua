function PWDEV.AF.FC_AoA_A10A()
    local lAoA = LoGetAngleOfAttack()

    --PWDEV.Tools.SendData(4, string.format("%.1f", lAoA))

    -- yellow  >= 11.5
    -- green >= 7.5 <= 12.6
    -- yellow <= 9

    if lAoA > 12.6 then
        PWDEV.Tools.SendData(540, "1")
        PWDEV.Tools.SendData(541, "0")
    end

    if lAoA >= 11.5 and lAoA <= 12.6 then
        PWDEV.Tools.SendData(540, "1")
        PWDEV.Tools.SendData(541, "1")
    end

    if lAoA > 9 and lAoA < 11.5 then
        PWDEV.Tools.SendData(540, "0")
        PWDEV.Tools.SendData(541, "1")
        PWDEV.Tools.SendData(542, "0")
    end

    if lAoA >= 7.5 and lAoA <= 9 then
        PWDEV.Tools.SendData(541, "1")
        PWDEV.Tools.SendData(542, "1")
    end

    if lAoA < 7.5 then
        PWDEV.Tools.SendData(541, "0")
        PWDEV.Tools.SendData(542, "1")
    end
end

function PWDEV.AF.FC_AoA_Su33()
    local lAoA = LoGetAngleOfAttack()

    --PWDEV.Tools.SendData(4, string.format("%.1f", lAoA))

    -- yellow  <=9
    -- green >= 8.5 <= 10.5
    -- red >= 10
    if lAoA < 8.5 then
        PWDEV.Tools.SendData(1, "1")
        PWDEV.Tools.SendData(2, "0")
    end

    if lAoA >= 8.5 and lAoA <= 9 then
        PWDEV.Tools.SendData(1, "1")
        PWDEV.Tools.SendData(2, "1")
    end

    if lAoA > 9 and lAoA < 10 then
        PWDEV.Tools.SendData(1, "0")
		PWDEV.Tools.SendData(2, "1")
		PWDEV.Tools.SendData(3, "0")
    end

    if lAoA >= 10 and lAoA <= 10.5 then
        PWDEV.Tools.SendData(2, "1")
        PWDEV.Tools.SendData(3, "1")
    end

    if lAoA > 10.5 then
        PWDEV.Tools.SendData(2, "0")
        PWDEV.Tools.SendData(3, "1")
    end
end

function PWDEV.AF.FC_SPO15RWR()
    local lTWSInfo = LoGetTWSInfo() -- SPO15 Information
	if lTWSInfo == nil then
		return
    end

	if PWDEV.AF.EventNumberFC_SPO15RWR == nil then
		PWDEV.AF.EventNumberFC_SPO15RWR = 0
	end 

    if(PWDEV.AF.EventNumberFC_SPO15RWR < PWDEV.AF.EventNumber) then
		PWDEV.AF.EventNumberFC_SPO15RWR = PWDEV.AF.EventNumber
        local lPriorityTmp		= 0
        local lPrimaryThreatTmp	= 0
        
		if PWDEV.AF.SPO15RWRData == nil then
			PWDEV.AF.SPO15RWRData = {}
			
			PWDEV.AF.SPO15RWRData[400] = 1	-- Power light
		end
    
        -- 10 x for Secondary Thread direction
		PWDEV.AF.SPO15RWRData[451]=0
		PWDEV.AF.SPO15RWRData[452]=0
		PWDEV.AF.SPO15RWRData[453]=0
		PWDEV.AF.SPO15RWRData[454]=0
		PWDEV.AF.SPO15RWRData[455]=0
		PWDEV.AF.SPO15RWRData[456]=0
		PWDEV.AF.SPO15RWRData[457]=0
		PWDEV.AF.SPO15RWRData[458]=0
		PWDEV.AF.SPO15RWRData[459]=0
		PWDEV.AF.SPO15RWRData[460]=0
    
        if(#lTWSInfo.Emitters > 0) then
            PWDEV.AF.SPO15_FoundErmitter = true
                
                for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
                    if(lTWSInfo.Emitters[EmitterIndex].Priority > lPriorityTmp) then
                        lPriorityTmp      = lTWSInfo.Emitters[EmitterIndex].Priority
                        lPrimaryThreatTmp = EmitterIndex
                    end
                end
    
    
            for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
                local lAzimut = PWDEV.Tools.round(lTWSInfo.Emitters[EmitterIndex].Azimuth * 90, 1)
                if EmitterIndex == lPrimaryThreatTmp then
                    -- primary threat
                    -- direction to the threat
					PWDEV.AF.SPO15RWRData[401] = (lAzimut <= -170.0 and 1 or 0) -- left back side
					PWDEV.AF.SPO15RWRData[402] = ((lAzimut <= -90.0  and lAzimut >= -170.0 ) and 1 or 0) -- left 90 degree
					PWDEV.AF.SPO15RWRData[403] = ((lAzimut <= -55.0  and lAzimut >= -125.0 ) and 1 or 0) -- left 50 degree
					PWDEV.AF.SPO15RWRData[404] = ((lAzimut <= -30.0  and lAzimut >= -70.0  ) and 1 or 0) -- left 30 degree
					PWDEV.AF.SPO15RWRData[405] = ((lAzimut <=  5.0   and lAzimut >= -40.0  ) and 1 or 0) -- left 10 degree
					PWDEV.AF.SPO15RWRData[406] = ((lAzimut >= -5.0   and lAzimut <=  40.0  ) and 1 or 0) -- right 10 degree
					PWDEV.AF.SPO15RWRData[407] = ((lAzimut >=  30.0  and lAzimut <=  70.0  ) and 1 or 0) -- right 30 degree
					PWDEV.AF.SPO15RWRData[408] = ((lAzimut >=  55.0  and lAzimut <= 125.0  ) and 1 or 0) -- right 50 degree
					PWDEV.AF.SPO15RWRData[409] = ((lAzimut >=  90.0  and lAzimut <= 170.0  ) and 1 or 0) -- right 90 degree
					PWDEV.AF.SPO15RWRData[410] = (lAzimut >= 170.0 and 1 or 0) -- right back side
            
                    -- power of the threat
                    local lPower = PWDEV.Tools.round(lTWSInfo.Emitters[EmitterIndex].Power * 15, 0, "ceil") + 1
                    PWDEV.AF.SPO15RWRData[411] = (lPower <= 1  and 0 or 1) -- 1. power lamp
					PWDEV.AF.SPO15RWRData[412] = (lPower <= 2  and 0 or 1) -- 2. power lamp
					PWDEV.AF.SPO15RWRData[413] = (lPower <= 3  and 0 or 1) -- 3. power lamp
					PWDEV.AF.SPO15RWRData[414] = (lPower <= 4  and 0 or 1) -- 4. power lamp
					PWDEV.AF.SPO15RWRData[415] = (lPower <= 5  and 0 or 1) -- 5. power lamp
					PWDEV.AF.SPO15RWRData[416] = (lPower <= 6  and 0 or 1) -- 6. power lamp
					PWDEV.AF.SPO15RWRData[417] = (lPower <= 7  and 0 or 1) -- 7. power lamp
					PWDEV.AF.SPO15RWRData[418] = (lPower <= 8  and 0 or 1) -- 8. power lamp
					PWDEV.AF.SPO15RWRData[419] = (lPower <= 9  and 0 or 1) -- 9. power lamp
					PWDEV.AF.SPO15RWRData[420] = (lPower <= 10 and 0 or 1) -- 10. power lamp
					PWDEV.AF.SPO15RWRData[421] = (lPower <= 11 and 0 or 1) -- 11. power lamp
					PWDEV.AF.SPO15RWRData[422] = (lPower <= 12 and 0 or 1) -- 12. power lamp
					PWDEV.AF.SPO15RWRData[423] = (lPower <= 13 and 0 or 1) -- 13. power lamp
					PWDEV.AF.SPO15RWRData[424] = (lPower <= 14 and 0 or 1) -- 14. power lamp
					PWDEV.AF.SPO15RWRData[425] = (lPower <= 15 and 0 or 1) -- 15. power lamp
                    
                    -- type of the threat
                    local lPrimaryTypeTmp = PWDEV.AF.FindRadarTypeForSPO15(lTWSInfo, lPrimaryThreatTmp)
                    PWDEV.AF.SPO15RWRData[430] = (lPrimaryTypeTmp.AIR == 1 and 1 or 0)	-- primary Air or Weapon
					PWDEV.AF.SPO15RWRData[431] = (lPrimaryTypeTmp.LRR == 1 and 1 or 0)	-- long range radar
					PWDEV.AF.SPO15RWRData[432] = (lPrimaryTypeTmp.MRR == 1 and 1 or 0)	-- mid range radar
					PWDEV.AF.SPO15RWRData[433] = (lPrimaryTypeTmp.SRR == 1 and 1 or 0)	-- short range radar
					PWDEV.AF.SPO15RWRData[434] = (lPrimaryTypeTmp.EWR == 1 and 1 or 0)	-- EWR
					PWDEV.AF.SPO15RWRData[435] = (lPrimaryTypeTmp.AWACS == 1 and 1 or 0)	-- AWACS

                    -- look or missil on air
					if lPrimaryTypeTmp.Lock == 0.1 then
						PWDEV.AF.SPO15RWRData[440] = 0
						PWDEV.AF.SPO15RWRData[441] = 1 -- blinking lights on
					elseif lPrimaryTypeTmp.Lock == 0.2 then
						PWDEV.AF.SPO15RWRData[440] = 1
						PWDEV.AF.SPO15RWRData[441] = 0 -- blinking lights off
					end

					 -- Lock
					 PWDEV.AF.SPO15RWRData[444] = 0  -- off
					 if PWDEV.AF.SPO15RWRData[440] == 1 then
						 PWDEV.AF.SPO15RWRData[444] = 1	-- Lock
					 elseif PWDEV.AF.SPO15RWRData[441] == 1 then
						 PWDEV.AF.SPO15RWRData[444] = 0.5	-- Missle on air
					 end

					if lPrimaryTypeTmp.Lock == 0 then
						PWDEV.AF.SPO15RWRData[444] = 0
					end

					-- hemisphere
					PWDEV.AF.SPO15RWRData[442] = lPrimaryTypeTmp.TopHemisphere	-- top hemisphere
					PWDEV.AF.SPO15RWRData[443] = lPrimaryTypeTmp.BottomHemisphere	-- bottom hemisphere
					
					lPrimaryTypeTmp = nil
                end
                --if EmitterIndex == 2 then
				-- Secondary Thread direction
				PWDEV.AF.SPO15RWR_SendData(451, lAzimut <= -170.0) -- left back side
				PWDEV.AF.SPO15RWR_SendData(452, (lAzimut <= -90.0  and lAzimut >= -170.0 )) -- left 90 degree
				PWDEV.AF.SPO15RWR_SendData(453, (lAzimut <= -55.0  and lAzimut >= -125.0 )) -- left 50 degree
				PWDEV.AF.SPO15RWR_SendData(454, (lAzimut <= -30.0  and lAzimut >= -70.0  )) -- left 30 degree
				PWDEV.AF.SPO15RWR_SendData(455, (lAzimut <=  5.0   and lAzimut >= -40.0  )) -- left 10 degree
				PWDEV.AF.SPO15RWR_SendData(456, (lAzimut >= -5.0   and lAzimut <=  40.0  )) -- right 10 degree
				PWDEV.AF.SPO15RWR_SendData(457, (lAzimut >=  30.0  and lAzimut <=  70.0  )) -- right 30 degree
				PWDEV.AF.SPO15RWR_SendData(458, (lAzimut >=  55.0  and lAzimut <= 125.0  )) -- right 50 degree
				PWDEV.AF.SPO15RWR_SendData(459, (lAzimut >=  90.0  and lAzimut <= 170.0  )) -- right 90 degree
				PWDEV.AF.SPO15RWR_SendData(460, lAzimut >= 170.0) -- right back side
                --end
			end
			
			-- type of the secondary threat
			local lSecondaryTypeTmp = PWDEV.AF.FindRadarTypeForSPO15(lTWSInfo)
			PWDEV.AF.SPO15RWRData[470] = (lSecondaryTypeTmp.AIR == 1 and 1 or 0)	-- secondary Air or Weapon
			PWDEV.AF.SPO15RWRData[471] = (lSecondaryTypeTmp.LRR == 1 and 1 or 0)	-- long range radar
			PWDEV.AF.SPO15RWRData[472] = (lSecondaryTypeTmp.MRR == 1 and 1 or 0)	-- mid range radar
			PWDEV.AF.SPO15RWRData[473] = (lSecondaryTypeTmp.SRR == 1 and 1 or 0)	-- short range radar
			PWDEV.AF.SPO15RWRData[474] = (lSecondaryTypeTmp.EWR == 1 and 1 or 0)	-- EWR
			PWDEV.AF.SPO15RWRData[475] = (lSecondaryTypeTmp.AWACS == 1 and 1 or 0)	-- AWACS
			lSecondaryTypeTmp = nil
        
            -- Ermitter Power Triangle
            if PWDEV.AF.SPO15RWRData[411] == 1 then
                PWDEV.AF.SPO15RWRData[426] = 1
            else
                PWDEV.AF.SPO15RWRData[426] = 0
            end
        else
            lPriorityTmp      = 0
			lPrimaryThreatTmp = 0

			if PWDEV.AF.SPO15_FoundErmitter == nil or PWDEV.AF.SPO15_FoundErmitter then
				PWDEV.AF.SPO15RWR_Reset(401, 480)
			end
        end
    end

    if PWDEV.AF.SPO15RWRData ~= nil then
        for key, value in pairs(PWDEV.AF.SPO15RWRData) do
            PWDEV.Tools.SendData(key, value)
        end
    end
end

function PWDEV.AF.FindRadarTypeForSPO15(lTWSInfo, PrimaryThreat)
	local lPrimaryThreat	= PrimaryThreat or 0
    local lReturn 			= {AIR = 0, LRR = 0, MRR = 0, SRR = 0, EWR = 0, AWACS = 0, Lock = 0, TopHemisphere = 0, BottomHemisphere = 0}

    for EmitterIndex = 1, #lTWSInfo.Emitters, 1 do
		if lPrimaryThreat ~= 0 then
			EmitterIndex = lPrimaryThreat
		end
		local lType = lTWSInfo.Emitters[EmitterIndex].Type
		local lNameByType = LoGetNameByType(lType.level1, lType.level2, lType.level3, lType.level4) -- world database classification of emitter, args 4 (number : level1,level2,level3,level4), result string

        -- threat type
		if (lType.level1 == 1 or lType.level1 == 4) and 
		not(lType.level4 == 26 or -- level4 26: A-50
		lType.level4 == 27 or -- level4 27: E-3
		lType.level4 == 41) then -- level4 41: E-2C
			lReturn.AIR = 1  -- primary Air or Weapon
		end

		if lNameByType ~= nil then 
			if lType.level1 == 2 or lType.level1 == 3 then
				-- ground or navy
				if lType.level2 == 16 then
					local lAn, lEn
					-- Ground SAM
					-- RU: s-300ps 64h6e sr,s-300ps 40b6m tr
					-- US: patriot str
					lAn, lEn = string.find("s-300ps 64h6e sr,s-300ps 40b6m tr,an/mpq-53,patriot str", lNameByType, 0, true)
					-- long range radar
					if lAn ~= nil then
						lReturn.LRR = 1
					end

					-- US: hawk sr,hawk tr
					-- Ru: s-300ps 40b6md sr,buk 9s18m1 sr,buk 9a310m1 ln,PATRIOT-RLS_P_1,MT-LB_P_1,kub 1s91 str
					-- PATRIOT-RLS_P_1 = SA-3 S-125 SR
					-- MT-LB_P_1 = SA-3-3 S-125 TR
					lAn, lEn = string.find("s-300ps 40b6md sr,buk 9s18m1 sr,buk 9a310m1 ln,PATRIOT-RLS_P_1,MT-LB_P_1,kub 1s91 str,hawk sr,hawk tr", lNameByType, 0, true)
					-- mid range radar
					if lAn ~= nil then
						lReturn.MRR = 1
					end

					-- US: M163 Vulcan,roland ads,roland radar,gepard
					-- RU: Dog Ear Radar,tor 9a331,tunguska 2c6m,osa 9a33 ln,shilka zsu-23-4
					lAn, lEn = string.find("M163 Vulcan,gepard,roland ads,roland radar,Dog Ear Radar,tor 9a331,tunguska 2c6m,osa 9a33 ln,shilka zsu-23-4", lNameByType, 0, true)
					-- short range radar
					if lAn ~= nil then
						lReturn.SRR = 1
					end
	--[[			if lType.level4 == 27 or -- Dog Ear Radar
					   lType.level4 == 31 or -- roland ads
					   lType.level4 == 32 or -- roland radar
					   lType.level4 == 38 then -- gepard
						lReturn.SRR = 1
					end
	]]
					-- RU: 1l13 ewr station,55g6 ewr station
					lAn, lEn = string.find("1l13 ewr station,55g6 ewr station", lNameByType, 0, true)
					-- EWR
					if lAn ~= nil then
						lReturn.EWR = 1
					end

				elseif lType.level2 == 12 then
					local lAn, lEn
					-- Ship
					-- RU Ships: Moscow,Piotr Velikiy,Rezky (Krivak-2)
					-- US Ships: FFG-7 Oliver H. Perry class,SG-47 Ticonderoga class
					lAn, lEn = string.find("Moscow,Piotr Velikiy,Rezky (Krivak-2),FFG-7 Oliver H. Perry class,SG-47 Ticonderoga class", lNameByType, 0, true)
					-- long range radar
					if lAn ~= nil then
						lReturn.LRR = 1
					end

					-- RU Ships: Albatros (Grisha-5),TAKR Kuznetsov,Molniya (Tarantul-3),Neustrashimy
					-- US Ships: CVN-70 Vinson
					lAn, lEn = string.find("Albatros (Grisha-5),TAKR Kuznetsov,Molniya (Tarantul-3),Neustrashimy,CVN-70 Vinson", lNameByType, 0, true)
					-- short range radar
					if lAn ~= nil then
						lReturn.SRR = 1
					end
				end
			elseif lType.level1 == 1 and lType.level2 == 1 and lType.level3 == 5 then 
				 if lType.level4 == 26 or lType.level4 == 27 or lType.level4 == 41 then
					-- AWACS
					-- level4 26: a-50
					-- level4 27: e-3a
					-- level4 41: e-2c hawkeye
					lReturn.AWACS = 1
				end
			end
		else -- if lNameByType == nil
			if lType.level1 == 2 or lType.level1 == 3 then
				-- ground or navy
				if lType.level2 == 16 then
					-- Ground SAM
					-- long range radar

					-- mid range radar
					if lType.level4 == 42 then -- SAM Hawk CWAR /MPQ-55
						lReturn.MRR = 1
					end

					-- short range radar
	--[[			if lType.level4 == 27 or -- Dog Ear Radar
					   lType.level4 == 31 or -- roland ads
					   lType.level4 == 32 or -- roland radar
					   lType.level4 == 38 then -- gepard
						lReturn.SRR = 1
					end
	]]

					-- EWR

				elseif lType.level2 == 12 then
					-- long range radar

					-- short range radar
				end
			elseif lType.level1 == 1 and lType.level2 == 1 and lType.level3 == 5 then 
				 if lType.level4 == 26 or lType.level4 == 27 or lType.level4 == 41 then
					-- AWACS
					-- level4 26: a-50
					-- level4 27: e-3a
					-- level4 41: e-2c hawkeye
					lReturn.AWACS = 1
				end
			end
		end
		-- primary threat handling only
		if lPrimaryThreat ~= 0 then
			if lTWSInfo.Emitters[lPrimaryThreat].SignalType == "lock" then
				-- look
				lReturn.Lock = 0.2
				
				lReturn.TopHemisphere    = 1 -- top hemisphere
				lReturn.BottomHemisphere = 1 -- bottom hemisphere
			elseif lTWSInfo.Emitters[lPrimaryThreat].SignalType == "missile_radio_guided" then
				-- Rocket on air
				lReturn.Lock = 0.1
			elseif lTWSInfo.Emitters[lPrimaryThreat].SignalType == "scan" then
				-- beep
			elseif lTWSInfo.Emitters[lPrimaryThreat].SignalType == "track_while_scan" then
				-- ???
			else
				lReturn.Lock = 0
			end

			local lErmitterObject		= LoGetObjectById(lTWSInfo.Emitters[lPrimaryThreat].ID)
			local lErmitterObjectAlt	= 0

			if lErmitterObject then
				lErmitterObjectAlt = lErmitterObject.LatLongAlt.Alt
			end

			local lSelfData		= LoGetSelfData()
			local lSelfDataAlt	= PWDEV.Tools.round(lSelfData.LatLongAlt.Alt, 0)

			if lErmitterObjectAlt and lSelfDataAlt then
				if lErmitterObjectAlt > (lSelfDataAlt + 400) then
					lReturn.TopHemisphere    = 1 -- top hemisphere
				elseif lErmitterObjectAlt < (lSelfDataAlt - 400) then
					lReturn.BottomHemisphere = 1 -- bottom hemisphere
				else 
					lReturn.TopHemisphere    = 1 -- top hemisphere
					lReturn.BottomHemisphere = 1 -- bottom hemisphere
				end
			end

			lErmitterObject, lErmitterObjectAlt, lSelfData, lSelfDataAlt = nil

			break
		end
	end

   return lReturn
end

function PWDEV.AF.SPO15RWR_Reset(lMinId, lMaxID)
    for lCounter = lMinId, lMaxID, 1 do
        PWDEV.AF.SPO15RWRData[lCounter] = 0
    end
    PWDEV.AF.SPO15_FoundErmitter = false
end
    
function PWDEV.AF.SPO15RWR_SendData(lKey, lValue)
    if PWDEV.AF.SPO15RWRData[lKey] == 0 then
        if lValue then
            PWDEV.AF.SPO15RWRData[lKey] =  1
        end
    end
end

function PWDEV.AF.StatusLamp()
	local lMCPState = LoGetMCPState() -- Warning Lights
	if lMCPState == nil then
		return
	end

	PWDEV.Tools.SendData("702", lMCPState.MasterWarning == true and 1 or 0 )
	PWDEV.Tools.SendData("711", lMCPState.EOSFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("712", lMCPState.ECMFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("713", lMCPState.CannonFailure == true and 1 or 0 )

	PWDEV.Tools.SendData("714", lMCPState.MLWSFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("715", lMCPState.ACSFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("716", lMCPState.RadarFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("717", lMCPState.HelmetFailure == true and 1 or 0 )

	PWDEV.Tools.SendData("718", lMCPState.HUDFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("719", lMCPState.MFDFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("720", lMCPState.RWSFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("721", lMCPState.GearFailure == true and 1 or 0 )

	PWDEV.Tools.SendData("722", lMCPState.HydraulicsFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("723", lMCPState.AutopilotFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("724", lMCPState.FuelTankDamage == true and 1 or 0 )
	PWDEV.Tools.SendData("725", lMCPState.CanopyOpen == true and 1 or 0 )

	PWDEV.Tools.SendData("726", lMCPState.StallSignalization == true and 1 or 0 )
	PWDEV.Tools.SendData("727", lMCPState.AutopilotOn == true and 1 or 0 )
	PWDEV.Tools.SendData("709", lMCPState.LeftWingPumpFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("710", lMCPState.RightWingPumpFailure == true and 1 or 0)

	PWDEV.Tools.SendData("700", lMCPState.LeftTailPlaneFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("701", lMCPState.RightTailPlaneFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("703", lMCPState.LeftEngineFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("704", lMCPState.RightEngineFailure == true and 1 or 0 )

	PWDEV.Tools.SendData("705", lMCPState.LeftAileronFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("706", lMCPState.RightAileronFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("707", lMCPState.LeftMainPumpFailure == true and 1 or 0 )
	PWDEV.Tools.SendData("708", lMCPState.RightMainPumpFailure == true and 1 or 0 )
end