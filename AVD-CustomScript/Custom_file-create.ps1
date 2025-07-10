# get desktop folder path
$desktopPath = [Environment]::GetFolderPath("Desktop")

# create folder name
$folderName = "test"

# create folder path
$folderPath = Join-Path -Path $desktopPath -ChildPath $folderName

# create folder logig
if (-Not (Test-Path -Path $folderPath)) {
    New-Item -Path $folderPath -ItemType Directory
    Write-Host "this folder '$folderName' is create" -ForegroundColor Green
} else {
    Write-Host "this folder '$folderName' is already created" -ForegroundColor Yellow
}
