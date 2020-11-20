$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
packageName   = 'okta'
fileType      = 'zip'
url64bit      = 'https://github.com/oktadeveloper/okta-cli/releases/download/okta-cli-tools-0.7.1/okta-cli-windows-0.7.1-x86_64.exe.zip'
destination   = $toolsDir

checksum64    = '74aab48a49320743f4d13cc21efd6b320575b0a44de164b022875985c8a5abc5'
checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs