-- F-14B
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	[3760] = "%1d",	-- PILOT AOA Slow (green)
	[3761] = "%1d",	-- PILOT AOA Optimum (yellow)
	[3762] = "%1d",	-- PILOT AOA Fast (red)

	[15016] = "%1d", -- 	PLT_WARN_LGEN 		 Left Generator (yellow)
	[15017] = "%1d", -- 	PLT_WARN_LOILHOT 	 Left Oil Hot (yellow)
	[15018] = "%1d", -- 	PLT_WARN_LFUELPRESS  Left Fuel Pressure (yellow)
	[15019] = "%1d", -- 	PLT_WARN_ENGFIREEXT  Engine Fire Extinguisher (green)
	[15020] = "%1d", -- 	PLT_WARN_RGEN 		 Right Generator (yellow)
	[15021] = "%1d", -- 	PLT_WARN_ROILHOT 	 Right Oil Hot (yellow)
	[15022] = "%1d", -- 	PLT_WARN_RFUELPRESS  Right Fuel Pressure (yellow)
	[15023] = "%1d", -- 	PLT_WARN_WINGSWEEP 	 Wing Sweep (green)
	[15024] = "%1d", -- 	PLT_WARN_AUXFIREEXT  Auxiliary Fire Extinguisher (green)
	[15025] = "%1d", -- 	PLT_WARN_YAWSTABOP 	 Yaw Stabilizer Op (yellow)
	[15026] = "%1d", -- 	PLT_WARN_YAWSTABOUT  Yaw Stabilizer Out (yellow)
	[15027] = "%1d", -- 	PLT_WARN_CANOPY 	 Canopy (yellow)
	[15028] = "%1d", -- 	PLT_WARN_CADC 		 CADC (yellow)
	[15029] = "%1d", -- 	PLT_WARN_LFUELLOW 	 Left Fuel Low (yellow)
	[15030] = "%1d", -- 	PLT_WARN_WSHIELDHOT  Windshield Hot (green)
	[15031] = "%1d", -- 	PLT_WARN_EMERGJETT 	 Emergency Jettison (yellow)
	[15032] = "%1d", -- 	PLT_WARN_OXYLOW 	 Qxygen Low (yellow)
	[15033] = "%1d", -- 	PLT_WARN_BINGO 		 Bingo Fuel (yellow)
	[15034] = "%1d", -- 	PLT_WARN_HYDPRESS 	 Hydraulic Pressure (yellow)
	[15035] = "%1d", -- 	PLT_WARN_RFUELLOW 	 Right Fuel Low (yellow)
	[15036] = "%1d", -- 	PLT_WARN_MACHTRIM 	 Mach Trim (green)
	[15037] = "%1d", -- 	PLT_WARN_PITCHSTAB 	 Pitch Stabilizer (yellow)
	[15038] = "%1d", -- 	PLT_WARN_BLEEDDUCT 	 Bleed Duct (yellow)
	[15039] = "%1d", -- 	PLT_WARN_ROLLSTAB 	 Roll Stabilizer (yellow)
	[15040] = "%1d", -- 	PLT_WARN_PITCHSTAB2  Pitch Stabilizer 2 (yellow)
	[15041] = "%1d", -- 	PLT_WARN_AUTOPLT 	 Autopilot (yellow)
	[15042] = "%1d", -- 	PLT_WARN_LOVSPVALVE  Left Ovsp Valve (yellow)
	[15043] = "%1d", -- 	PLT_WARN_ROVSPVALVE  Right Ovsp Valve (yellow)
	[15044] = "%1d", -- 	PLT_WARN_RRAMP 		 Right Ramp (yellow)
	[15045] = "%1d", -- 	PLT_WARN_LAUNCHBAR 	 Launchbar (green)
	[15046] = "%1d", -- 	PLT_WARN_FLAP 		 Flap (yellow)
	[15047] = "%1d", -- 	PLT_WARN_HZTAILAUTH  Horizontal Tail Auth (yellow)
	[15048] = "%1d", -- 	PLT_WARN_OILPRESS 	 Oil Pressure (yellow)
	[15049] = "%1d", -- 	PLT_WARN_LRAMP 		 Left Ramp (yellow)
	[15050] = "%1d", -- 	PLT_WARN_LADDER 	 Ladder (yellow)
	[15051] = "%1d", -- 	PLT_WARN_RINLET 	 Right Inlet (yellow)
	[15052] = "%1d", -- 	PLT_WARN_INLETICE 	 Inlet Ice (yellow)
	[15053] = "%1d", -- 	PLT_WARN_RUDDERAUTH  Rudder Auth (yellow)
	[15054] = "%1d", -- 	PLT_WARN_LINLET 	 Left Inlet (yellow)
	[15055] = "%1d", -- 	PLT_WARN_ANRS 		 ANRS (green)
	[15056] = "%1d", -- 	PLT_WARN_ROLLSTAB2 	 Roll Stabilizer 2 (yellow)	
	[15057] = "%1d", -- 	PLT_WARN_SPOILERS 	 Spoilers (yellow)	
	[15058] = "%1d", -- 	PLT_WARN_TRANSRECT 	 Trans Rect (green)
	[15059] = "%1d", -- 	PLT_WARN_REDUCESPEED Reduce Speed (yellow)
	[15060] = "%1d", -- 	PLT_WARN_INTERTRIM 	 Inter Trim (green)
	[15061] = "%1d", -- 	PLT_WARN_LENGSEC 	 Left Engine Secondary (yellow)
	[15062] = "%1d", -- 	PLT_WARN_RATS 		 RATS (green)
	[15063] = "%1d", -- 	PLT_WARN_STARTVALVE  Start Valve (yellow)
	[15064] = "%1d", -- 	PLT_WARN_RENGSEC 	 Right Engine Secondary (yellow)
}
ExportScript.ConfigArguments = 
{
}

-- Pointed to by ProcessDCSHighImportance
function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

-- Pointed to by ExportScript.ProcessDCSConfigLowImportance
function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end