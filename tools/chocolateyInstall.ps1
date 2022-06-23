$ErrorActionPreference = 'Stop';

$packageName = 'altsnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltSnap/releases/download/1.53/AltSnap1.53-inst.exe'
$url64      = 'https://github.com/RamonUnch/AltSnap/releases/download/1.53/AltSnap1.53-x64-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'

  url           = $url
  url64bit      = $url64
  checksum      = 'c9786a05ede6c0a9ecb386d3b0e46da54e7c53905689d678cc8051873fe94a5e'
  checksumType  = 'sha256'
  checksum64    = '941fbc752f71d0af597c19f05feb744b5a058cfaeb1f65b5514612c47cded119'
  checksumType64= 'sha256'

  silentArgs   = '/S'

  softwareName  = 'AltSnap'
}

Install-ChocolateyPackage @packageArgs
