# cursorai.install
A [chocolatey](https://chocolatey.org/) [**package**](https://chocolatey.org/packages/cursor.install) to install [**cursor**](https://cursor.sh/) the AI code editor from [Anysphere](https://anysphere.inc/) on Windows.

Note that this installs **cursor** silently but onboarding will still run on first launch. 


## changes
- initial version: cursor 0.41.3

## updating this package
- clone the repo `git clone https://github.com/camilohe/cursor.install.git`
- find the latest version and sha256 
```powershell
curl.exe -JO https://downloader.cursor.sh/windows/nsis/x64
ls cursor*exe|Get-FileHash|fl
```
- update the sha256 value in tools\chocolateyinstall.ps1
- update the url in tools\chocolateyinstall.ps1 with the latest version
- update the version in cursorai.install.nuspec
- commit your changes
- [package, test and publish](https://docs.chocolatey.org/en-us/create/create-packages-quick-start/)
- push your changes
