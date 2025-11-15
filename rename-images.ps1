# 画像ファイル名を日本語から英語に変更するスクリプト
# PowerShellで実行してください

$ErrorActionPreference = "Stop"

# publicディレクトリに移動
Set-Location "C:\Users\black\Desktop\Detective_and_Nightcity\public"

# ファイル名のマッピング
$fileMappings = @{
    "背景レンガ.png" = "background-brick.png"
    "タイトル画面①.png" = "title-screen-1.png"
    "タイトル画面②.png" = "title-screen-2.png"
    "ロゴ①.png" = "logo-1.png"
    "大きめのボックス.png" = "large-box.png"
    "小さめのボックス①.png" = "small-box-1.png"
    "キャラクター紹介左.png" = "character-intro-left.png"
    "キャラクター紹介右.png" = "character-intro-right.png"
}

# 各ファイルをリネーム
foreach ($oldName in $fileMappings.Keys) {
    $newName = $fileMappings[$oldName]
    if (Test-Path $oldName) {
        Write-Host "Renaming: $oldName -> $newName"
        Rename-Item -Path $oldName -NewName $newName -ErrorAction Stop
    } else {
        Write-Host "File not found: $oldName"
    }
}

# charactersディレクトリに移動
Set-Location "C:\Users\black\Desktop\Detective_and_Nightcity\public\characters"

# charactersディレクトリのファイル名マッピング
$characterMappings = @{
    "刑事イメージ①.png" = "detective-officer-image-1.png"
    "探偵イメージ①.png" = "detective-character-image-1.png"
}

# 各ファイルをリネーム
foreach ($oldName in $characterMappings.Keys) {
    $newName = $characterMappings[$oldName]
    if (Test-Path $oldName) {
        Write-Host "Renaming: $oldName -> $newName"
        Rename-Item -Path $oldName -NewName $newName -ErrorAction Stop
    } else {
        Write-Host "File not found: $oldName"
    }
}

Write-Host "`nAll files renamed successfully!"
