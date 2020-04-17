-- Mirage 2000C
ExportScript.FoundDCSModule = true

ExportScript.ConfigEveryFrameArguments = 
{
    -- WARNING PANEL
	[525] = "%1d",	--  BATT	
	[526] = "%1d",	--  TR	
	[527] = "%1d",	--  ALT 1	
	[528] = "%1d",	--  ALT2
	[529] = "%1d",	--  HUILLE	
	[530] = "%1d",	--  T7	
	[531] = "%1d",	--  CALC C	
	[532] = "%1d",	--  SOURIS	
	[533] = "%1d",	--  PELLE
	[534] = "%1d",	--  B.P	
	[535] = "%1d",	--  BP.G	
	[536] = "%1d",	--  BP.D	
	[537] = "%1d",	--  TRANSF	
	[538] = "%1d",	--  NIVEAU
	[539] = "%1d",	--  HYD 1	
	[540] = "%1d",	--  HYD 2	
	[541] = "%1d",	--  HYD 3	
	[542] = "%1d",	--  EP	
	[543] = "%1d",	--  BINGO
	[544] = "%1d",	--  P.CAB	
	[545] = "%1d",	--  TEMP	
	[546] = "%1d",	--  REG O2	
	[547] = "%1d",	--  5nm O2	
	[548] = "%1d",	--  O2 HA
	[549] = "%1d",	--  ANEMO	
	[550] = "%1d",	--  CC	
	[551] = "%1d",	--  DSV	
	[552] = "%1d",	--  CONDIT	
	[553] = "%1d",	--  CONF
	[554] = "%1d",	--  PA	
	[555] = "%1d",	--  MAN	
	[556] = "%1d",	--  DOM	
	[557] = "%1d",	--  BECS	
	[558] = "%1d",	--  U.S.EL
	[559] = "%1d",	--  ZEICHEN	
	[560] = "%1d",	--  GAIN	
	[561] = "%1d",	--  RPM	
	[562] = "%1d",	--  DECOL	
	[563] = "%1d",	--  PARK.
}

ExportScript.ConfigArguments = 
{
}

function ExportScript.ProcessDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDCSConfigLowImportance(mainPanelDevice)
end