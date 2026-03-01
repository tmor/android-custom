# Lenovo Legion Y700 2023

## 中国(CN)版ROMを日本語化、GooglePlay導入

- 型番: TB320FC
- FW: 16.0.336

参考: この記事のままだが作業記録として残しておく
- [Legion y700(2023)をchina romで使ったら普通に使えた｜limzei89](https://note.com/limzei89/n/nd6ba6dde9c92)

準備:
- 初期設定を済ませる: https://dexlab.net/pukiwiki/?Memo/Android/Lenovo_Legion_Y700_2023#f7193796
- adb コマンドを使えるようにする。
  - [Lenovo Rescue and Smart Assistant (RSA)](https://support.lenovo.com/jp/ja/downloads/ds101291-rescue-and-smart-assistant-lmsa) をインストールするとdriverやadbがセットアップされた。工場出荷時へのリカバリやデータバックアップもできる。
- デバイスをUSBで接続し、cmd.exeを実行。adbから認識しているか確認
```shell
adb devices

List of devices attached
****        device
```

- GooglePlayのapkをダウンロード: [Android 用 Google Play Store APK のダウンロード - 最新バージョン](https://apkpure.net/jp/google-play-store/com.android.vending)
- `Y700_2023_TB320FC_16.0.336_ja.bat` をエディタで開き、ダウンロードしたapkのファイル名に変更
- GooglePlayのインストール、中国APPの削除、無効化: cmd.exeを開き、batを実行
```shell
Y700_2023_TB320FC_16.0.336_ja.bat
```
- あとはGooglePlayにログインし、好きなアプリをインストールする

リストアする場合: 中国語アプリの再インストール、有効化
```shell
Y700_2023_TB320FC_16.0.336_cn.bat
```

## 中国アプリの選定

参考:
- [Legion Y700シリーズで不要な中国アプリを簡単に選別する方法｜limzei89](https://note.com/limzei89/n/n211ad73ecb10)

- `/system/preinstall` 以下に中国アプリがある。
- `adb uninstall` できないアプリもあるので、それは `adb pm disable-user` にする。
