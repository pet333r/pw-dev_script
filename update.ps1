Set-ExecutionPolicy RemoteSigned

$start_time = Get-Date

# checking Modules directory
$path = "lib"
If(!(test-path $path))
{
      New-Item -ItemType Directory -Force -Path $path
}

# checking Modules directory
$path = "Modules"
If(!(test-path $path))
{
      New-Item -ItemType Directory -Force -Path $path
}

$urlMain = "https://raw.githubusercontent.com/pet333r/pw-dev_script/master/"
$urlLib = $urlMain + "lib/"
$urlMod = $urlMain + "Modules/"

# folders dir
$dirMain = "$PSScriptRoot\"
$dirLib = "$PSScriptRoot\lib\"
$dirModules = "$PSScriptRoot\Modules\"

# files main
$listFilesMain = @(
      'Config.lua'
      'Export.lua'
)

# libs
$libList = @(
      'Tools.lua'
      'utf8.lua'
)

# modules
$modulesList = @(
      'A-4E-C.lua'
      'A-10A.lua'
      'A-10C.lua'
      'AJS37.lua'
      'AV8BNA.lua'
      'Bf-109K-4.lua'
      'C-101CC.lua'
      'Christen Eagle II.lua'
      'Empty-DCS.lua'
      'F-5E-3.lua'
      'F-14B.lua'
      'F-15C.lua'
      'F-16C_50.lua'
      'F-86F Sabre.lua'
      'FA-18C_hornet.lua'
      'FW-190A8.lua'
      'FW-190D9.lua'
      'I-16.lua'
      'JF-17.lua'
      'Ka-50.lua'
      'L-39ZA.lua'
      'M-2000C.lua'
      'MB-339PAN.lua'
      'Mi-8MT.lua'
      'MiG-15bis.lua'
      'MiG-19P.lua'
      'MiG-21Bis.lua'
      'MiG-29A.lua'
      'MiG-29S.lua'
      'P-51D.lua'
      'SA342M.lua'
      'SpitfireLFMkIX.lua'
      'Su-25.lua'
      'Su-25T.lua'
      'Su-27.lua'
      'Su-33.lua'
      'TF-51D.lua'
      'UH-1H.lua'
      'Yak-52.lua'
)

Write-Host "Try to download files to folder: $dirLib"
foreach ($file in $libList) {
      $url = $urlLib + $file
      $output = $dirLib + $file
      Write-Host "Downloading:" $file
      Invoke-WebRequest -Uri $url -OutFile $output
}
Write-Host "`nTry to download configuration files: $dirMain"
foreach ($file in $listFilesMain) {
      $url = $urlMain + $file
      $output = $dirMain + $file
      Write-Host "Downloading:" $file
      Invoke-WebRequest -Uri $url -OutFile $output
}

Write-Host "`nTry to download modules to: $dirModules"
foreach ($module in $modulesList) {
      $url = $urlMod + $module
      $output = $dirModules + $module
      Write-Host "Downloading:" $module
      Invoke-WebRequest -Uri $url -OutFile $output
}

Write-Output "`nTime taken: $((Get-Date).Subtract($start_time).Seconds):$((Get-Date).Subtract($start_time).Milliseconds) s"