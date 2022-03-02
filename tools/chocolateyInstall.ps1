$ErrorActionPreference = 'Stop';

$packageName = 'altsnap'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltSnap/releases/download/1.52/AltSnap1.52-inst.exe'
$url64      = 'https://github.com/RamonUnch/AltSnap/releases/download/1.52/AltSnap1.52-x64-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'

  url           = $url
  url64bit      = $url64
  checksum      = '0c573f271c260dc49ad7dfee1564fbdc42cee0df62f08162742e6db0eccfba82'
  checksumType  = 'sha256'
  checksum64    = '4004b2bdfd705a51c4b5a982e72a35e069f2bcfaa22a85ccafbd10d6a6debfe8'
  checksumType64= 'sha256'

  silentArgs   = '/S'

  softwareName  = 'AltSnap'
}

Install-ChocolateyPackage @packageArgs
