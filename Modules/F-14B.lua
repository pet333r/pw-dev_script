-- F-14B
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
	-- ACMP
	[2003] = "%.2f",	-- PILOT AOA Unit Slider
	[1046] = "%1d",		-- PILOT Master Arm Cover
	[1047] = "%1d",		-- PILOT Master Arm Switch
	[1049] = "%1d",		-- PILOT ACM Cover
	[9200] = "%1d",		-- PILOT Master Caution Light (red)
	[9201] = "%1d",		-- PILOT Weapon Panel Hot Trigger Light (red)
	[9202] = "%1d",		-- PILOT Weapon Panel Collision Light (green)
	[9203] = "%1d",		-- PILOT Weapon Panel SEAM Lock Light (green)
	[9204] = "%1d",		-- Gunrate High Light
	[9205] = "%1d",		-- Gunrate Low Light
	[9206] = "%1d",		-- Sidewinder Cooling ON Light
	[9207] = "%1d",		-- Sidewinder Cooling OFF Light
	[9208] = "%1d",		-- Missle Prepare ON Light
	[9209] = "%1d",		-- Missle Prepare OFF Light
	[9210] = "%1d",		-- Missle Mode Normal Light (red)
	[9211] = "%1d",		-- Missle Mode Boresight Light (red)
	[9221] = "%.1f",	-- PILOT Weapon Store 1A as Light
	[9222] = "%.1f",	-- PILOT Weapon Store 1B as Light
	[9223] = "%.1f",	-- PILOT Weapon Store 3 as Light
	[9224] = "%.1f",	-- PILOT Weapon Store 4 as Light
	[9225] = "%.1f",	-- PILOT Weapon Store 5 as Light
	[9226] = "%.1f",	-- PILOT Weapon Store 6 as Light
	[9227] = "%.1f",	-- PILOT Weapon Store 8B as Light
	[9228] = "%.1f",	-- PILOT Weapon Store 8A as Light

	-- Lights
	[913] = "%1d",		-- PILOT Position Lights Wings
	[916] = "%1d",		-- PILOT Position Lights Tail
	[919] = "%1d",		-- PILOT Position Lights Flash
	[923] = "%1d",		-- PILOT Position Lights Anti-Collision
	[915] = "%1d",		-- PILOT Hook Bypass
	[918] = "%1d",		-- PILOT Taxi Light
	[921] = "%1d",		-- PILOT White Flood Light
	[924] = "%1d",		-- PILOT Red Flood Light
	[15005] = "%.1f",	-- PILOT ACM Panel Light Intensity
	[15006] = "%.1f",	-- PILOT AoA Indexer Light Intensity
	[15007] = "%.1f",	-- PILOT Instrument Light Intensity"
	[15008] = "%.1f",	-- PILOT Console Light Intensity"
	[15009] = "%.1f",	-- PILOT Formation Light Intensity"

	[2001] = "%.2f", 	-- PILOT Wing Sweep Commanded
	[2002] = "%.2f", 	-- PILOT Wing Sweep Position
	[2047] = "%.2f", 	-- PILOT Wing Sweep Minimum Index

	-- Wing sweep flags
	[15091] = "%1d",		-- PILOT Wing Sweep OFF Flag
	[15092] = "%1d",		-- PILOT Wing Sweep AUTO Flag
	[15093] = "%1d",		-- PILOT Wing Sweep MAN Flag
	[15094] = "%1d",		-- PILOT Wing Sweep EMER Flag
	[15095] = "%1d",		-- PILOT Wing Sweep OVER Flag

	-- RIO CAP
	[98] = "%.1f",		-- RIO CAP Category
	[5564] = "%.1f", 	-- BTN 6 Light (green)
	[5565] = "%.1f", 	-- BTN 7 Light (green)
	[5566] = "%.1f", 	-- BTN 8 Light (green)
	[5567] = "%.1f", 	-- BTN 9 Light (green)
	[5590] = "%.1f", 	-- BTN 10 Light (green)
	[5568] = "%.1f", 	-- BTN 1 Light (green)
	[5569] = "%.1f", 	-- BTN 2 Light (green)
	[5570] = "%.1f", 	-- BTN 3 Light (green)
	[5571] = "%.1f", 	-- BTN 4 Light (green)
	[5572] = "%.1f", 	-- BTN 5 Light (green)

	[3760] = "%1d",		-- PILOT AOA Slow (green)
	[3761] = "%1d",		-- PILOT AOA Optimum (yellow)
	[3762] = "%1d",		-- PILOT AOA Fast (red)

	-- DISPLAY Panel: Mode
	[1015] = "%1d", 	-- Take-Off Mode
	[1014] = "%1d", 	-- Cruise Mode
	[1013] = "%1d", 	-- Air-to-Air Mode
	[1012] = "%1d", 	-- Air-to-Ground Mode
	[1011] = "%1d", 	-- Landing Mode

	-- DISPLAY Panel: Steer CMD
	[1002] = "%1d", 	-- TACAN
	[1003] = "%1d", 	-- Destination
	[1004] = "%1d", 	-- AWL PCD
	[1005] = "%1d", 	-- Vector
	[1006] = "%1d", 	-- Manual

	-- DISPLAY Panel: HUD
	[1021] = "%1d", 	-- HUD De-clutter On/Off
	[1020] = "%1d", 	-- HUD AWL Mode

	-- DISPLAY Panel: VDI
	[1019] = "%1d", 	-- VDI Display Mode
	[1018] = "%1d", 	-- VDI Landing Mode

	-- DISPLAY Panel: HSD
	[1016] = "%1d", 	-- HSD Display Mode
	[1017] = "%1d", 	-- HSD ECM Override

	-- DISPLAY Panel: Power
	[1010] = "%1d", 	-- VDI Power On/Off
	[1009] = "%1d", 	-- HUD Power On/Off
	[1008] = "%1d", 	-- HSD/ECMD Power On/Off

	-- FUEL
	[1054] = "%.2f", 	-- PILOT Fuel AFT & L
	[1055] = "%.2f", 	-- PILOT Fuel FWD & R
	-- RMP / TIT / FF
	[1057] = "%.2f", 	-- PILOT Engine RPM Left
	[1058] = "%.2f", 	-- PILOT Engine RPM Right
	[1059] = "%.2f", 	-- PILOT Engine TIT Left
	[1060] = "%.2f", 	-- PILOT Engine TIT Right
	[1061] = "%.2f", 	-- PILOT Engine FF Left
	[1062] = "%.2f", 	-- PILOT Engine FF Right

	[9357] = "%1d",		-- Pilot SAM
	[9358] = "%1d",		-- Pilot AAA
	[9359] = "%1d",		-- Pilot AI

	-- LR ENG FIRE
	[15014] = "%1d", 	-- PILOT Right Engine Fire Light (red)
	[15015] = "%1d", 	-- PILOT Left Engine Fire Light (red)

	-- Caution panel
	[15016] = "%1d", 	-- PLT_WARN_LGEN 		 Left Generator (yellow)
	[15017] = "%1d", 	-- PLT_WARN_LOILHOT 	 Left Oil Hot (yellow)
	[15018] = "%1d", 	-- PLT_WARN_LFUELPRESS  Left Fuel Pressure (yellow)
	[15019] = "%1d", 	-- PLT_WARN_ENGFIREEXT  Engine Fire Extinguisher (green)
	[15020] = "%1d", 	-- PLT_WARN_RGEN 		 Right Generator (yellow)
	[15021] = "%1d", 	-- PLT_WARN_ROILHOT 	 Right Oil Hot (yellow)
	[15022] = "%1d", 	-- PLT_WARN_RFUELPRESS  Right Fuel Pressure (yellow)
	[15023] = "%1d", 	-- PLT_WARN_WINGSWEEP 	 Wing Sweep (green)
	[15024] = "%1d", 	-- PLT_WARN_AUXFIREEXT  Auxiliary Fire Extinguisher (green)
	[15025] = "%1d", 	-- PLT_WARN_YAWSTABOP 	 Yaw Stabilizer Op (yellow)
	[15026] = "%1d", 	-- PLT_WARN_YAWSTABOUT  Yaw Stabilizer Out (yellow)
	[15027] = "%1d", 	-- PLT_WARN_CANOPY 	 Canopy (yellow)
	[15028] = "%1d", 	-- PLT_WARN_CADC 		 CADC (yellow)
	[15029] = "%1d", 	-- PLT_WARN_LFUELLOW 	 Left Fuel Low (yellow)
	[15030] = "%1d", 	-- PLT_WARN_WSHIELDHOT  Windshield Hot (green)
	[15031] = "%1d", 	-- PLT_WARN_EMERGJETT 	 Emergency Jettison (yellow)
	[15032] = "%1d", 	-- PLT_WARN_OXYLOW 	 Qxygen Low (yellow)
	[15033] = "%1d", 	-- PLT_WARN_BINGO 		 Bingo Fuel (yellow)
	[15034] = "%1d", 	-- PLT_WARN_HYDPRESS 	 Hydraulic Pressure (yellow)
	[15035] = "%1d", 	-- PLT_WARN_RFUELLOW 	 Right Fuel Low (yellow)
	[15036] = "%1d", 	-- PLT_WARN_MACHTRIM 	 Mach Trim (green)
	[15037] = "%1d", 	-- PLT_WARN_PITCHSTAB 	 Pitch Stabilizer (yellow)
	[15038] = "%1d", 	-- PLT_WARN_BLEEDDUCT 	 Bleed Duct (yellow)
	[15039] = "%1d", 	-- PLT_WARN_ROLLSTAB 	 Roll Stabilizer (yellow)
	[15040] = "%1d", 	-- PLT_WARN_PITCHSTAB2  Pitch Stabilizer 2 (yellow)
	[15041] = "%1d", 	-- PLT_WARN_AUTOPLT 	 Autopilot (yellow)
	[15042] = "%1d", 	-- PLT_WARN_LOVSPVALVE  Left Ovsp Valve (yellow)
	[15043] = "%1d", 	-- PLT_WARN_ROVSPVALVE  Right Ovsp Valve (yellow)
	[15044] = "%1d", 	-- PLT_WARN_RRAMP 		 Right Ramp (yellow)
	[15045] = "%1d", 	-- PLT_WARN_LAUNCHBAR 	 Launchbar (green)
	[15046] = "%1d", 	-- PLT_WARN_FLAP 		 Flap (yellow)
	[15047] = "%1d", 	-- PLT_WARN_HZTAILAUTH  Horizontal Tail Auth (yellow)
	[15048] = "%1d", 	-- PLT_WARN_OILPRESS 	 Oil Pressure (yellow)
	[15049] = "%1d", 	-- PLT_WARN_LRAMP 		 Left Ramp (yellow)
	[15050] = "%1d", 	-- PLT_WARN_LADDER 	 Ladder (yellow)
	[15051] = "%1d", 	-- PLT_WARN_RINLET 	 Right Inlet (yellow)
	[15052] = "%1d", 	-- PLT_WARN_INLETICE 	 Inlet Ice (yellow)
	[15053] = "%1d", 	-- PLT_WARN_RUDDERAUTH  Rudder Auth (yellow)
	[15054] = "%1d", 	-- PLT_WARN_LINLET 	 Left Inlet (yellow)
	[15055] = "%1d", 	-- PLT_WARN_ANRS 		 ANRS (green)
	[15056] = "%1d", 	-- PLT_WARN_ROLLSTAB2 	 Roll Stabilizer 2 (yellow)	
	[15057] = "%1d", 	-- PLT_WARN_SPOILERS 	 Spoilers (yellow)	
	[15058] = "%1d", 	-- PLT_WARN_TRANSRECT 	 Trans Rect (green)
	[15059] = "%1d", 	-- PLT_WARN_REDUCESPEED Reduce Speed (yellow)
	[15060] = "%1d", 	-- PLT_WARN_INTERTRIM 	 Inter Trim (green)
	[15061] = "%1d", 	-- PLT_WARN_LENGSEC 	 Left Engine Secondary (yellow)
	[15062] = "%1d", 	-- PLT_WARN_RATS 		 RATS (green)
	[15063] = "%1d", 	-- PLT_WARN_STARTVALVE  Start Valve (yellow)
	[15064] = "%1d", 	-- PLT_WARN_RENGSEC 	 Right Engine Secondary (yellow)
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