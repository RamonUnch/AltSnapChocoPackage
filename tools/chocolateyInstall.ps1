$ErrorActionPreference = 'Stop';

$packageName = 'altsnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltSnap/releases/download/1.47/AltSnap1.47-inst.exe'
$url64      = 'https://github.com/RamonUnch/AltSnap/releases/download/1.47/AltSnap1.47-x64-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'

  url           = $url
  url64bit      = $url64
  checksum      = 'A3B0D8B63E42F965632FED8C1074AFB740A20439474BE3905435E33B1167A15A'
  checksumType  = 'sha256'
  checksum64    = '405C290D2CF49F2A85A62E6368C6E2EEF8EED7CB9BD4201C11B7B3801CB8D1E0'
  checksumType64= 'sha256'

  silentArgs   = '/S'

  softwareName  = 'AltSnap'
}

Install-ChocolateyPackage @packageArgs
