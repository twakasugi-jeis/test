# Custom_set-locale-japan.ps1

# timezone setting
Set-TimeZone -Id "Tokyo Standard Time"

# 地域設定を日本に
Set-WinSystemLocale -SystemLocale ja-JP
Set-WinHomeLocation -GeoId 122
Set-Culture ja-JP
Set-WinUILanguageOverride -Language ja-JP
Set-WinUserLanguageList -LanguageList ja-JP -Force


# get desktop path
$desktopPath = [Environment]::GetFolderPath("Desktop")

# create folder name
$folderName = "test"

# create folder full-path
$folderPath = Join-Path -Path $desktopPath -ChildPath $folderName

# if this folder is not created, create
if (-Not (Test-Path -Path $folderPath)) {
    New-Item -Path $folderPath -ItemType Directory
    Write-Host "this folder '$folderName'is created." -ForegroundColor Green
} else {
    Write-Host "this folder '$folderName' is already created." -ForegroundColor Yellow
}
