write-host "Digite o caminho do arquivo (sem aspas)" -ForegroundColor Yellow
$caminho = read-host

write-host "Digite o hash esperado do arquivo" -ForegroundColor Yellow
$hashesperado = read-host

$hashcalculado = (Get-FileHash -Path $caminho -Algorithm SHA256).Hash

if ($hashcalculado -eq $hashesperado) {
    write-host "arquivo oficial" -ForegroundColor Green
} else {
    write-host "arquivo não oficial" -ForegroundColor Red
}