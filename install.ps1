Set-ExecutionPolicy RemoteSigned

# get user-name
$username = $env:UserName
$separator = "*******************************************************"

Write-Host "$separator`n******** Installing pw-dev script to DCS World ********`n$separator`n          Install script version: 2020.04.01`n
Checking DCS World version(s) for current user:" $username

Write-Host $separator
#/////////////////////////////////////////////////////////////

$dcsPath
$pathStandalone = "c:\Users\$username\Saved Games\DCS\"
$pathOpenbeta = "c:\Users\$username\Saved Games\DCS.openbeta\"
$dcs1 = 0	# exist?: standalone
$dcs2 = 0	# exist?: openbeta

# check for standalone DCS World version installed
If (test-path $pathStandalone)
{
	$dcsPath = $pathStandalone
	$dcs1 = 1
	Write-Host "Found version: standalone DCS World"
}
# check for DCS World openbeta installed
If (test-path $pathOpenbeta)
{
	$dcsPath = $pathOpenbeta
	$dcs2 = 1
	Write-Host "Found version: DCS World Openbeta"
}

# if 2 versions of DCS exist on disk
If ($dcs1 -eq 1 -and $dcs2 -eq 1)
{
	Write-Host "Found 2 DCS versions: Standalone & Openbeta, to which version do you want to install the script ? press key:`n 1 - standalone version`n 2 - openbeta" #-ForegroundColor Green
}

# not found DCS World installed
If ($dcs1 -eq 0 -and $dcs2 -eq 0)
{
	Write-Host "NOT found DCS World for current user: $username" #-ForegroundColor Red
	write-host "Exiting, log in to the user account with DCS World installed and run the script again..."
	$Host.UI.RawUI.ReadKey()
	exit
}

# read key from keyboard
$key = $Host.UI.RawUI.ReadKey()

# if the wrong option is selected
If($key.Character -ne '1' -and $key.Character -ne '2')
{
	Write-Host " :You have chosen the wrong option, run the script again and select the correct option, click anything to exit" #-ForegroundColor Red -BackgroundColor Black
	$Host.UI.RawUI.ReadKey()
	exit
}
else {
	# if pressed 1 > standalone
	If($key.Character -eq '1')
	{
		Write-Host " > You select standalone DCS version"
		$dcsPath = $pathStandalone
	}
	# if pressed 2 > openbeta
	If($key.Character -eq '2')
	{
		Write-Host " > You select openbeta DCS version"
		$dcsPath = $pathOpenbeta
	}
}


#/////////////////////////////////////////////////////////////
# join selected DCS path with 'Scripts' folder
$pathScript = Join-Path -path $dcsPath -childpath "Scripts"
Write-Host "`n$separator`nChecking 'Scripts' folder exist"

# checking folder exist
If(!(test-path $pathScript))
{
	Write-Host "'Scripts' folder doesn't exist, created new"
	New-Item -ItemType Directory -Force -Path $pathScript
}
else { Write-Host "'Scripts' folder found" }


#/////////////////////////////////////////////////////////////
Write-Host "`n$separator`nChecking 'Export.lua' file exist"

# create file Export.lua
$pathExport = Join-Path -path $pathScript -childpath "Export.lua"
$exportContent = "local lfs=require('lfs');
dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]])"

$exportContentLine1 = "local lfs=require('lfs');"
$exportContentLine2 = 'dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]])'

# check Export.lua file exist
#  file not found
If (!(Test-Path $pathExport -PathType Leaf))
{
	Write-Host "Export.lua: file doesn't exist, created new"
	New-Item -Path $pathScript -name Export.lua -type "file" -value $exportContent
	Write-Host "Export.lua: new file created with added content:`n $exportContent"
}
# file found, checking content
else
{
	# if line 1 exist
	If (Select-String -SimpleMatch -pattern $exportContentLine1 -path $pathExport)
	#If (Get-Content $pathExport | ForEach-Object{$_ -match $exportContentLine1}) 
	{
		Write-Output "Export.lua: found $exportContentLine1"
		# if line 2 exist
		If (Select-String -SimpleMatch -pattern $exportContentLine2 -path $pathExport)
		#If (Get-Content $pathExport | ForEach-Object{$_ -match 'dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]])'}) 
		{
			Write-Output "Export.lua: found $exportContentLine2"
			Write-Output "Export.lua: Nothing added"
		}
		else {
			Add-Content $pathExport $exportContentLine2
			Write-Output "Export.lua: added $exportContentLine2"
		}
	}
	else
	{
		Add-Content $pathExport $exportContentLine1
		Write-Output "Export.lua: added $exportContentLine1"
		# if line 2 exist
		If (Select-String -SimpleMatch -pattern $exportContentLine2 -path $pathExport)
		#If (Get-Content $pathExport | ForEach-Object{$_ -match $exportContentLine2}) 
		{
			Write-Output "Export.lua: found $exportContentLine2"
		}
		else {
			Add-Content $pathExport $exportContentLine2
			Write-Output "Export.lua: added $exportContentLine2"
		}
	}
}

#/////////////////////////////////////////////////////////////
Write-Output "`n$separator`nChecking folder pw-dev_script exist"

# path to pw-dev_script folder
$scriptPathPwDev = Join-Path -path $pathScript -childpath "pw-dev_script"

# folder pw-dev_script doesn't exist
If(!(test-path $scriptPathPwDev))
{
	Write-Host "'pw-dev_script' folder doesn't exist, created new"
	New-Item -ItemType Directory -Force -Path $scriptPathPwDev
}
# folder founded
else { Write-Host "'pw-dev_script' folder founded" }

# main URL address
$urlMain = "https://raw.githubusercontent.com/pet333r/pw-dev_script/master/"

# files to download
$filesList = @(
      'update_pw-dev_script.bat'
      'update.ps1'
)

#/////////////////////////////////////////////////////////////
Write-Host "`n$separator`nTry to download files to install pw-dev script"
foreach ($file in $filesList) {
      $url = $urlMain + $file
      $output = Join-Path -Path $scriptPathPwDev -ChildPath $file
      Write-Host "Downloading:" $file
      Invoke-WebRequest -Uri $url -OutFile $output
}

# open directory in Windows Explorer
Invoke-Item $scriptPathPwDev

# $RunCMD = @'
# cmd.exe /C "$scriptPathPwDev\update_pw-dev_script.bat"
# '@
# Invoke-Expression -Command:$RunCMD