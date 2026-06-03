# Baixar as fotos dos produtos do Catalogo Hortifruti Agrobras
# ------------------------------------------------------------
# Como usar (Windows):
#   1) Coloque este arquivo dentro da pasta "img" do repositorio.
#   2) Clique com o botao direito > "Executar com PowerShell"
#      (ou abra o PowerShell na pasta e rode:  ./baixar-imagens.ps1)
#   3) Os PNGs caem direto aqui na pasta "img" com o nome certo
#      (abacate.png, abacaxi.png, ...). Depois e so commitar.
#
# ATENCAO: os links de download direto expiram em poucas horas.
# Se algum der "FALHOU", reexporte pelo link do design (Canva) listado
# em CATALOGO-IMAGENS.md e atualize a URL aqui embaixo.

$ErrorActionPreference = "Stop"
$dest = $PSScriptRoot
New-Item -ItemType Directory -Force -Path $dest | Out-Null

$mamaoUrl = "https://export-download.canva.com/gWdps/DAHLdHgWdps/-1/0/0001-187404631877323637.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260602T142025Z&X-Amz-Expires=88115&X-Amz-Signature=c47295d7985c9ad73caf5d23028b5d03dae9cd8ef8117c35b30006af7cc0e787&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Wed%2C%2003%20Jun%202026%2014%3A49%3A00%20GMT"

$imgs = [ordered]@{
  "abacate.png"  = "https://export-download.canva.com/hlLoY/DAHLdOhlLoY/-1/0/0001-7235537979640556557.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260602T194408Z&X-Amz-Expires=9978&X-Amz-Signature=454465012f3e5ec36993a3017bd7d57b6ed7561087624728d27acc97e56d4927&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Tue%2C%2002%20Jun%202026%2022%3A30%3A26%20GMT"
  "abacaxi.png"  = "https://export-download.canva.com/lvuLY/DAHLdDlvuLY/-1/0/0001-5285479337069601605.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260602T185047Z&X-Amz-Expires=14349&X-Amz-Signature=d64feffc9d91ceea7e735e38e829e301bce8b465ab0ca41815bc630d6fb7a0c7&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Tue%2C%2002%20Jun%202026%2022%3A49%3A56%20GMT"
  "banana.png"   = "https://export-download.canva.com/zT8Dk/DAHLdJzT8Dk/-1/0/0001-5329389435288820235.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260602T133716Z&X-Amz-Expires=29984&X-Amz-Signature=28d4f58fba9714444f71835c8f9c46e3fca9b242581441558be81a32e25eabed&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Tue%2C%2002%20Jun%202026%2021%3A57%3A00%20GMT"
  "goiaba.png"   = "https://export-download.canva.com/1dB8Y/DAHLdL1dB8Y/-1/0/0001-1157930279634757245.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260602T103009Z&X-Amz-Expires=42599&X-Amz-Signature=d9ed91d6f275f5b96c57ee62d4518ebab89112db81adc5ab67577e66e267b9d7&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Tue%2C%2002%20Jun%202026%2022%3A20%3A08%20GMT"
  "laranja.png"  = "https://export-download.canva.com/PDi7U/DAHLdNPDi7U/-1/0/0001-1670214737903966975.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260602T015003Z&X-Amz-Expires=73566&X-Amz-Signature=984aaddba4a5ad2a88675b4ae4bce9695b32664d1de29adb051c6af82dfeb701&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Tue%2C%2002%20Jun%202026%2022%3A16%3A09%20GMT"
  "limao.png"    = "https://export-download.canva.com/1QZ_o/DAHLdD1QZ_o/-1/0/0001-6324684951502919332.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260602T200147Z&X-Amz-Expires=10201&X-Amz-Signature=291a9c8cd59101c71274163141bfc9b71076b6c1340192e4b542274293a183f5&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Tue%2C%2002%20Jun%202026%2022%3A51%3A48%20GMT"
  "mamao.png"    = $mamaoUrl
  "papaia.png"   = $mamaoUrl
  "melancia.png" = "https://export-download.canva.com/bFaA4/DAHLdLbFaA4/-1/0/0001-379933516339097150.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260603%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260603T125826Z&X-Amz-Expires=7209&X-Amz-Signature=a9c3f9431d9ac8326ba970a211fa28388fc3801256435a01f060121a75a79a45&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Wed%2C%2003%20Jun%202026%2014%3A58%3A35%20GMT"
  "melao.png"    = "https://export-download.canva.com/kxKes/DAHLdLkxKes/-1/0/0001-8152020500575030364.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260602T082103Z&X-Amz-Expires=52173&X-Amz-Signature=31fe3c784707eb46e5a8445c7fc23bb19be8b35aa13641e36149a81ea0ee1684&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Tue%2C%2002%20Jun%202026%2022%3A50%3A36%20GMT"
  "tomate.png"   = "https://export-download.canva.com/Its4I/DAHLdAIts4I/-1/0/0001-4876777674642779817.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAQYCGKMUH5AO7UJ26%2F20260602%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20260602T094022Z&X-Amz-Expires=44096&X-Amz-Signature=4c6f31062f0d13516e3668fada477f07af24311b86c2f04c260c14c0d9374a29&X-Amz-SignedHeaders=host%3Bx-amz-expected-bucket-owner&response-expires=Tue%2C%2002%20Jun%202026%2021%3A55%3A18%20GMT"
}

$ok = 0; $fail = 0
foreach ($name in $imgs.Keys) {
  $out = Join-Path $dest $name
  try {
    Invoke-WebRequest -Uri $imgs[$name] -OutFile $out
    Write-Host ("OK   " + $name)
    $ok++
  } catch {
    Write-Host ("FALHOU " + $name + "  -> link expirou; reexporte pelo design no CATALOGO-IMAGENS.md")
    $fail++
  }
}
Write-Host ""
Write-Host ("Concluido. Baixados: " + $ok + "  Falhas: " + $fail)
Write-Host ("Pasta: " + $dest)
Write-Host "Agora rode:  git add img/*.png  &&  git commit  &&  git push"
