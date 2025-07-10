# Custom_set-locale-japan.ps1

# time-zone change
Set-TimeZone -Id "Tokyo Standard Time"

# system-locale change
Set-WinSystemLocale -SystemLocale ja-JP
Set-WinHomeLocation -GeoId 122
Set-Culture ja-JP
Set-WinUILanguageOverride -Language ja-JP
Set-WinUserLanguageList -LanguageList ja-JP -Force