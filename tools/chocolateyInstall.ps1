$ErrorActionPreference = 'Stop';

$packageName = 'altsnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltSnap/releases/download/1.49/AltSnap1.49-inst.exe'
$url64      = 'https://github.com/RamonUnch/AltSnap/releases/download/1.49/AltSnap1.49-x64-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'

  url           = $url
  url64bit      = $url64
  checksum      = 'd6a1c08235eda3df79425407718c94373e63352074ef7262988eee8ba5caa331'
  checksumType  = 'sha256'
  checksum64    = 'c0c208b8b72c0b344392043c637c1569d9db6d8b904b01d49a34e1dc1e8cbc74'
  checksumType64= 'sha256'

  silentArgs   = '/S'

  softwareName  = 'AltSnap'
}

Install-ChocolateyPackage @packageArgs
