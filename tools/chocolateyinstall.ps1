$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
packageName   = 'okta'
fileType      = 'zip'
url64bit      = 'https://github.com/oktadeveloper/okta-cli/releases/download/okta-cli-tools-0.3.1/okta-cli-windows-0.3.1-x86_64.exe.zip'
destination   = $toolsDir

checksum64    = 'e2c412e499b4f115ba1292f9e9444c6a06a58a58269d470658cc9258958d04de'
checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs