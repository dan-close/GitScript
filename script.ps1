$dll = Get-FileHash 'Microsoft.Web.XmlTransform.dll' -Algorithm SHA256
$png = Get-FileHash 'koala.png' -Algorithm SHA256

$ok = $true
if ($dll.Hash -ne '9F9C25514D9B1137DE2946D18BE2D498F4C2006C89A03E1738173E8AC94E169E') {
    Write-Error "DLL file has a different hash: $($dll.Hash)"
    $ok = $false
}
else {
    Write-Output "DLL hash ok"
}

if ($png.Hash -ne '6FC0936651C3925AA0A2656BC69DFB04CDBDD7B1A82CD11E4807A97A21AEC7A3') {
    Write-Error "PNG file has a different hash: $($png.Hash)"
    $ok = $false
}
else {
    Write-Output "PNG hash ok"
}

if ($ok) {
    Exit 0
}
else {
    Exit 1
}
