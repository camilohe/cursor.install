$ErrorActionPreference = 'Stop'; 

$installerUrl = "https://downloader.cursor.sh/windows/nsis/x64"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    url64bit       = $installerUrl
    softwareName   = 'cursor*'
    
    checksum64     = '2786F80344085CA6657C9F283F97B98C61A933E27CCB7D34B682CC3EA5F9A9FE'
    checksumType64 = 'sha256' 
    
    silentArgs     = '/S'

    validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
