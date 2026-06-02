# Fotos dos produtos — Catálogo Hortifruti Agrobras

Esta pasta (`img/`) guarda as fotos reais dos produtos usadas no catálogo
(`index.html`) e na visualização do pedido (`visualizar.html`).

## Como o site usa estas imagens

O código procura o arquivo `img/<slug>.png` pelo **nome do produto**. Se o
arquivo existir, mostra a foto; se não existir (ou falhar ao carregar), cai
automaticamente no emoji de sempre. Ou seja: o site **não quebra** se faltar
alguma imagem — ela simplesmente aparece quando o PNG for adicionado aqui.

Slugs reconhecidos hoje (qualquer produto cujo nome **contém** a palavra):

| Slug (arquivo)  | Aparece para nomes contendo |
|-----------------|------------------------------|
| `abacate.png`   | abacate |
| `abacaxi.png`   | abacaxi |
| `banana.png`    | banana |
| `goiaba.png`    | goiaba |
| `laranja.png`   | laranja |
| `limao.png`     | limão / limao |
| `mamao.png`     | mamão / mamao |
| `melancia.png`  | melancia |
| `melao.png`     | melão / melao |
| `tomate.png`    | tomate |

> Para cobrir mais produtos no futuro: adicione o PNG aqui e inclua o slug na
> lista `keys` da função `imgSlug()` (existe igual em `index.html` e
> `visualizar.html`).

## Especificação de cada imagem

PNG **512×512 px**, fundo branco liso (`#FFFFFF`), item único centralizado.

## Como baixar / atualizar as fotos

1. Rode `baixar-imagens.ps1` (nesta pasta) no Windows — os PNGs caem aqui já
   com o nome certo. Depois `git add img/*.png && git commit && git push`.
2. Os **links de download direto expiram em poucas horas**. Se algum falhar,
   abra o **link do design (Canva)** abaixo e reexporte como PNG 512×512.
   O link do design é **permanente**.

**Pasta no Canva (todos os designs):** https://www.canva.com/folder/FAHLdFOxNFg

| # | Arquivo | Design (Canva — permanente) |
|---|---|---|
| 1 | abacate.png | https://www.canva.com/d/3_KMYXDxi0EBnEO |
| 2 | abacaxi.png | https://www.canva.com/d/gEsY1NWahvuC2Ab |
| 3 | banana.png | https://www.canva.com/d/-xOHRVfpfcbRuoh |
| 4 | goiaba.png | https://www.canva.com/d/9IXerwCDJHQZOQt |
| 5 | laranja.png | https://www.canva.com/d/LqPPeBo9RDwc1eC |
| 6 | limao.png | https://www.canva.com/d/7W7-5uYCVEDNmfu |
| 7 | mamao.png | https://www.canva.com/d/r3rIPqf27QHFmZU |
| 8 | melancia.png | https://www.canva.com/d/SVg8gTRokJ1tV2h |
| 9 | melao.png | https://www.canva.com/d/EpDyI1VmALb9ikm |
| 10 | tomate.png | https://www.canva.com/d/tb1zDrU0vBAT6H8 |
