$ErrorActionPreference = 'Stop';

$packageName = 'altdrag'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltSnap/releases/download/1.47/AltSnap1.47-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  checksum      = '46C8338616A2A9EA07245616A90D511639F9A8222091491CAF9D209BC6FD3346'
  checksumType  = 'sha256'
  
  silentArgs   = '/S'

  softwareName  = 'AltSnap'
}

Install-ChocolateyPackage @packageArgs
