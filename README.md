# Radby Sonds Ultimate - build de APK

Este repositório contém uma árvore Apktool reconstruída do APK
`Radby-Sonds-Ultimate-unsigned.apk` e um workflow do GitHub Actions que gera um
APK unsigned a cada push e quando iniciado manualmente.

## Baixar o APK gerado no GitHub

1. Abra a aba **Actions** do repositório.
2. Selecione a execução **Build unsigned APK**.
3. Na seção **Artifacts**, baixe `radby-sonds-ultimate-unsigned`.
4. O arquivo dentro do ZIP é `Radby-Sonds-Ultimate-unsigned.apk`.

O workflow também pode ser iniciado em **Actions → Build unsigned APK →
Run workflow**.

## Build local no Windows

Requisitos: JDK 17 e internet para baixar a versão oficial do Apktool.

```powershell
$apktool = Join-Path $env:TEMP "apktool_3.0.3.jar"
$url = "https://github.com/iBotPeaches/Apktool/releases/download/v3.0.3/apktool_3.0.3.jar"
Invoke-WebRequest -Uri $url -OutFile $apktool
New-Item -ItemType Directory -Force .\dist | Out-Null
java -jar $apktool b .\app -o .\dist\Radby-Sonds-Ultimate-unsigned.apk
```

O build do GitHub usa a mesma versão do Apktool, valida o SHA-256 do JAR antes
de usá-lo, acrescenta o metadado de empacotamento que existia no APK de
referência e publica o APK como artifact da execução.

## Conteúdo e limites

- Package: `com.muzk.app`.
- Versão declarada pelo APK de referência: `1.0` (`versionCode 1`).
- Min SDK 26; target SDK 35.
- `app/` contém manifest, recursos, bibliotecas nativas e smali recuperados do
  APK; não é o projeto Android original em Java/Kotlin.
- O APK gerado é unsigned, como o APK de referência `*-unsigned.apk`. Android
  normalmente exige assinatura para instalar; não coloque um keystore ou senha
  neste repositório. Para distribuir instalações/atualizações, assine fora do
  workflow com uma chave privada que você controla.
- Recriar as entradas do APK não torna o arquivo inteiro byte a byte idêntico:
  o Apktool reempacota o ZIP, que pode ter ordem, compressão, offsets e
  timestamps diferentes. Não há assinatura original neste projeto.

Esta árvore inclui código reconstruído a partir de um APK. Publique ou
redistribua o repositório somente se você tiver os direitos/autorização
necessários.
