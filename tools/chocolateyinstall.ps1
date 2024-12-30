$ErrorActionPreference = 'Stop'; 

$installerUrl = "https://downloader.cursor.sh/windows/nsis/x64"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url64bit       = $installerUrl
    softwareName   = 'cursor*'
    
    checksum64     = '618BFC4DDD852115CF2F12F232D3195634C8751FB6B52F405F01ACF80D86E5B5'
    checksumType64 = 'sha256' 
    
    silentArgs     = '/S'

    validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
