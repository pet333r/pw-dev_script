Set-ExecutionPolicy RemoteSigned

# get user-name
$separator = "*******************************************************"
Write-Host "$separator`n**************** Updating pw-dev_script ***************`n"

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
      'ExportInit.lua'
)

# libs
$libList = @(
      'Tools.lua'
      'utf8.lua'
)

# modules
# $modulesList = Get-Content Invoke-WebRequest -Uri $urlMain + "update_modules"
$urlModFile =  -Join($urlMain, "update_modules")
$modulesList = (Invoke-webrequest -URI $urlModFile ).Content -split "`n"

# download main files
Write-Host "Try to download configuration files: $dirMain"
foreach ($file in $listFilesMain) {
      If($file -eq  "Config.lua")
      {
            # if file doesn't exist > download, else ignore
            If (!(Test-Path "Config.lua" -PathType Leaf))
            {
                  $url = $urlMain + $file
                  $output = $dirMain + $file
                  Write-Host "Downloading:" $file
                  Invoke-WebRequest -Uri $url -OutFile $output
            }
      }
      else # download rest of files
      {
            $url = $urlMain + $file
            $output = $dirMain + $file
            Invoke-WebRequest -Uri $url -OutFile $output
            Write-Host "Downloading:" $file
      }
}

# download folder 'lib'
Write-Host "`nTry to download files to folder: $dirLib"
foreach ($file in $libList) {
      $url = $urlLib + $file
      $output = $dirLib + $file
      Invoke-WebRequest -Uri $url -OutFile $output
      Write-Host "Downloading:" $file
}

# download folder 'Modules'
Write-Host "`nTry to download modules to: $dirModules"
foreach ($module in $modulesList) {
      $url = $urlMod + $module
      $output = $dirModules + $module
      #Write-Host "Downloading:" $module
      Invoke-WebRequest -Uri $url -OutFile $output
      Write-Host "$url"
}

Write-Output "`nTime taken: $((Get-Date).Subtract($start_time).Seconds):$((Get-Date).Subtract($start_time).Milliseconds) s"