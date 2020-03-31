Set-ExecutionPolicy RemoteSigned

# get user-name
$username = $env:UserName

Write-Host "*******************************************************`n******** Installing pw-dev script to DCS World ********`n*******************************************************`n
Checking DCS World version(s) for current user:" $username

Write-Host "*******************************************************"

$dcsPath
$dcs1 = 0
$dcs2 = 0
# check for DCS World openbeta installed
If (test-path "c:\Users\$username\Saved Games\DCS.openbeta\")
{
	$dcsPath = "c:\Users\$username\Saved Games\DCS.openbeta\"
	$dcs1 = 1
	Write-Host "Found version: DCS World Openbeta"
}
# check for standalone DCS World version installed
If (test-path "c:\Users\$username\Saved Games\DCS\")
{
	$dcsPath = "c:\Users\$username\Saved Games\DCS\"
	$dcs2 = 1
	Write-Host "Found version: standalone DCS World"
}
# compare versions
If ($dcs1 -eq 1 -and $dcs2 -eq 1)
{
	Write-Host "Found 2 DCS versions: Standalone & Openbeta, to which version do you want to install the script ? press key:`n 1 - standalone version`n 2 - openbeta"
}

# read key from keyboard
$key = $Host.UI.RawUI.ReadKey()
# if pressed 1
If($key.Character -eq '1')
{
	Write-Host " > You select standalone DCS version"
	$dcsPath = "c:\Users\$username\Saved Games\DCS\"
}
# if pressed 2
If($key.Character -eq '2')
{
	Write-Host " > You select openbeta DCS version"
	$dcsPath = "c:\Users\$username\Saved Games\DCS.openbeta\"
}

# join selected DCS path with 'Scripts' folder
$dcsPathScript = -join($dcsPath, "Scripts\")
Write-Host "*******************************************************`nChecking 'Scripts' folder exist"

# checking folder exist
If(!(test-path $dcsPathScript))
{
	New-Item -ItemType Directory -Force -Path $dcsPathScript
	Write-Host "'Scripts' folder doesn't exist, created new"
}
else { Write-Host "'Scripts' folder found" }

Write-Host "*******************************************************`nChecking 'Export.lua' file exist"

# create file Export.lua
$dcsPathExport = -join($dcsPathScript, "Export.lua")
$exportContent = "local lfs=require('lfs');
dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]])"

$exportContentLine1 = "local lfs=require('lfs');"
$exportContentLine2 = "dofile(lfs.writedir()..[[Scripts\pw-dev_script\Export.lua]])"

# check Export.lua file xist
If (!(Test-Path $dcsPathExport -PathType Leaf))
{
   New-Item -Path $dcsPathScript -name Export.lua -type "file" -value $exportContent
   Write-Host "Export.lua file created"
} else {
	Write-Host "File Export.lua exist"
	Add-Content $dcsPathExport $exportContent
}

# checking folder exist
$scriptPathPwDev = -join($dcsPathScript, "pw-dev_script\")
If(!(test-path $scriptPathPwDev))
{
	New-Item -ItemType Directory -Force -Path $scriptPathPwDev
	Write-Host "'pw-dev_script' folder doesn't exist, created new"
}
else { Write-Host "'pw-dev_script' folder found" }

$urlMain = "https://raw.githubusercontent.com/pet333r/pw-dev_script/master/"
# files
$filesList = @(
      'update_pw-dev_script.bat'
      'update.ps1'
)

Write-Host "Try to download files to install pw-dev script: $dirLib"
foreach ($file in $filesList) {
      $url = $urlMain + $file
      $output = $scriptPathPwDev + $file
      Write-Host "Downloading:" $file
      Invoke-WebRequest -Uri $url -OutFile $output
}
Write-Host $scriptPathPwDev

# $RunCMD = @'
# cmd.exe /C "$scriptPathPwDev\update_pw-dev_script.bat"
# '@
# Invoke-Expression -Command:$RunCMD