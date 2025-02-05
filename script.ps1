$dll = Get-FileHash 'Microsoft.Web.XmlTransform.dll' -Algorithm SHA256
$png = Get-FileHash 'koala.png' -Algorithm SHA256

$ok = $true
if ($dll.Hash -ne '13DCF5066E00152238191314D4A46605204FFABDBB830BDD0C97DF3027D1261D') {
    Write-Error "DLL file has a different hash: $($dll.Hash)"
    $ok = $false
}
else {
    Write-Output "DLL hash ok"
}

if ($png.Hash -ne '934D93FF38AC0609E25B6D6B3232CF8C853547545C8BBBFBDB1F5A9A1A09D315') {
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