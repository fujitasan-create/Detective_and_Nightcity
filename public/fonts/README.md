# Kaisei Opti フォントのセットアップ

## 方法1: Google Fonts CDNを使用（現在の設定）

現在はGoogle FontsのCDNを使用しています。特に追加の作業は不要です。

## 方法2: フォントファイルをダウンロードして自己ホスティングする場合

1. Google Fontsからフォントをダウンロード:
   - https://fonts.google.com/specimen/Kaisei+Opti にアクセス
   - 「Download family」ボタンをクリック

2. ダウンロードしたZIPファイルを解凍

3. 以下のファイルをこのフォルダ（`public/fonts/`）に配置:
   - `KaiseiOpti-Regular.woff2` → `kaisei-opti-regular.woff2`
   - `KaiseiOpti-Regular.woff` → `kaisei-opti-regular.woff`
   - `KaiseiOpti-Medium.woff2` → `kaisei-opti-medium.woff2`
   - `KaiseiOpti-Medium.woff` → `kaisei-opti-medium.woff`
   - `KaiseiOpti-Bold.woff2` → `kaisei-opti-bold.woff2`
   - `KaiseiOpti-Bold.woff` → `kaisei-opti-bold.woff`

4. `BaseLayout.astro`を編集して、Google FontsのCDNリンクをコメントアウトし、自己ホスティング版を使用:

```astro
<!-- Google Fonts: Kaisei Opti -->
<!-- <link href="https://fonts.googleapis.com/css2?family=Kaisei+Opti:wght@400;500;700&display=swap" rel="stylesheet" /> -->

<!-- Custom Font CSS (for self-hosted fonts) -->
<link rel="stylesheet" href="/fonts/kaisei-opti.css" />
```

## 注意事項

- フォントファイルはライセンスに従って使用してください
- Kaisei Optiは SIL Open Font License 1.1 で公開されています

