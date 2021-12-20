$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
packageName   = 'okta'
fileType      = 'zip'
url64bit      = 'https://github.com/okta/okta-cli/releases/download/okta-cli-tools-0.9.0/okta-cli-windows-0.9.0-x86_64.exe.zip'
destination   = $toolsDir

checksum64    = '41f1799c675614b4ecfce11fdc055baa0a9b452e53c02695e30e4b55ead817a4'
checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs