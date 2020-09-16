$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
packageName   = 'okta'
fileType      = 'zip'
url64bit      = 'https://github.com/oktadeveloper/okta-cli/releases/download/okta-cli-tools-0.6.0/okta-cli-windows-0.6.0-x86_64.exe.zip'
destination   = $toolsDir

checksum64    = '7daa3f11a4bce4012daa97e337e161b9e3a278101260737339c6d49863600392'
checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs