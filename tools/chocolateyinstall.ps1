$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
packageName   = 'okta'
fileType      = 'zip'
url64bit      = 'https://github.com/oktadeveloper/okta-cli/releases/download/okta-cli-tools-0.5.0/okta-cli-windows-0.5.0-x86_64.exe.zip'
destination   = $toolsDir

checksum64    = '5575a62735bd88e5b50aa3f1e7e776d3bcf7e6e7c59e26706a194a75961470cb'
checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs