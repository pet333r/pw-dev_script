$separator           = "*******************************************************"
Write-Host "$separator`n************ Download the latest version **************`n"

$fileName = "update.ps1"
$fileNameTmp = "updateTmp.ps1"
$urlUpdateScript = "https://raw.githubusercontent.com/pet333r/pw-dev_script/master/.update/" + $fileName

# main directory path
$dirMain = "$PSScriptRoot\"

Write-Host "Trying to download update file: $urlUpdateScript"

$output = $dirMain + $fileNameTmp
Write-Host "Downloading: " $output
Invoke-WebRequest -Uri $urlUpdateScript -OutFile $output

Write-Host "Running the script.."
& $output

Write-Host "$separator`nDeleting temporary file: " $output
Remove-Item $output