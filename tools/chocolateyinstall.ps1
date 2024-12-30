$ErrorActionPreference = 'Stop'; 

$installerUrl = "https://downloader.cursor.sh/windows/nsis/x64"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url64bit       = $installerUrl
    softwareName   = 'cursor*'
    
    checksum64     = '71C746465D4CAAE39B7A878EED3C80AAB2271DC3569B140EEE6DC2679E16BBCE'
    checksumType64 = 'sha256' 
    
    silentArgs     = '/S'

    validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
