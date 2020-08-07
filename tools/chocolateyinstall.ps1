$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
packageName   = 'okta'
fileType      = 'zip'
url64bit      = 'https://github.com/oktadeveloper/okta-cli/releases/download/okta-cli-tools-0.4.0/okta-cli-windows-0.4.0-x86_64.exe.zip'
destination   = $toolsDir

checksum64    = '305b81644cdeae923fff169e08cb633bc3510b727311bea2533f6422201d906c'
checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs