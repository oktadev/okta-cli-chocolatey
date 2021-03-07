$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
packageName   = 'okta'
fileType      = 'zip'
url64bit      = 'https://github.com/okta/okta-cli/releases/download/okta-cli-tools-0.8.0/okta-cli-windows-0.8.0-x86_64.exe.zip'
destination   = $toolsDir

checksum64    = '8b1ae1216343435371a56f001eb0b0c3fa00da1a1d3290cab59a00d357e8dfe6'
checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs