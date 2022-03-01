$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
packageName   = 'okta'
fileType      = 'zip'
url64bit      = 'https://github.com/okta/okta-cli/releases/download/okta-cli-tools-0.10.0/okta-cli-windows-0.10.0-x86_64.exe.zip'
destination   = $toolsDir

checksum64    = '9955bae08528837d7c821a05db680e30b0ef72a75d546692893ccc1bf1c780b3'
checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs