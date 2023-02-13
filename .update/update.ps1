Set-ExecutionPolicy RemoteSigned

$urlMain = "https://raw.githubusercontent.com/pet333r/pw-dev_script/master/"
$urlUpdate = "$urlMain.update/"

# sciezka do folderu (folder ze skryptem power shell)
$dirMain = "$PSScriptRoot\"

# url: list of files to download
$urlFilesList =  -Join($urlUpdate, "update_script")
# url: list of additional files to download
$urlAdditionalList = -Join($urlUpdate, "update_root")
# pobranie pliku i zapis zawartosci jako lista
$listFiles = (Invoke-webrequest -URI $urlFilesList ).Content -split "`n"
$listAddFiles = (Invoke-webrequest -URI $urlAdditionalList ).Content -split "`n"


$separator = "*******************************************************"
Write-Host "$separator`n**************** Updating pw-dev_script ***************`n"

$start_time = Get-Date

# checking directories
$path = "json"
If(!(test-path $path)) { New-Item -ItemType Directory -Force -Path $path }

$path = "lib"
If(!(test-path $path)) { New-Item -ItemType Directory -Force -Path $path }

$path = "Modules"
If(!(test-path $path)) { New-Item -ItemType Directory -Force -Path $path }

$path = "Utilities"
If(!(test-path $path)) { New-Item -ItemType Directory -Force -Path $path }


# download files in folders
Write-Host "`nTrying to download files:"
foreach ($file in $listFiles) {
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
            Write-Host "Downloading: $file"
      }
}

#--------------------------------------------------------------------------
Write-Host "`n$separator`n**************** Downloading additional files ***************`n"

$urlAddons = "$urlMain.addons/"

# go to parent folder (2x)
$dirRoot = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent

$path = $dirRoot + "\Scripts\Hooks"
If(!(test-path $path)) { New-Item -ItemType Directory -Force -Path $path }

$path = $dirRoot + "\Mods\Services\pw-dev\Options\"
If(!(test-path $path)) { New-Item -ItemType Directory -Force -Path $path }

$path = $dirRoot + "\Mods\Services\pw-dev\Theme\"
If(!(test-path $path)) { New-Item -ItemType Directory -Force -Path $path }

foreach ($file in $listAddFiles) {
      $url = $urlAddons + $file
      $output = $dirRoot + $file
      Invoke-WebRequest -Uri $url -OutFile $output
      Write-Host "Downloading: $file"
}

Write-Output "`nTime taken: $((Get-Date).Subtract($start_time).Seconds):$((Get-Date).Subtract($start_time).Milliseconds) s"