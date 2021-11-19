$ErrorActionPreference = 'Stop';

$packageName = 'altsnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltSnap/releases/download/1.48/AltSnap1.48-inst.exe'
$url64      = 'https://github.com/RamonUnch/AltSnap/releases/download/1.48/AltSnap1.48-x64-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'

  url           = $url
  url64bit      = $url64
  checksum      = 'e4cde3f0c195fd072257b5c86906e41d92d2a2d6e13738a5fc2af54bd8720600'
  checksumType  = 'sha256'
  checksum64    = '61020b6d27e037c3177575bf0da47cfaf1fd60a245f461bcfe96281e356fb759'
  checksumType64= 'sha256'

  silentArgs   = '/S'

  softwareName  = 'AltSnap'
}

Install-ChocolateyPackage @packageArgs
