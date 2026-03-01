# Lenovo Xiaoxin Pad Pro GT 2025

## 中国(CN)版ROMを日本語化、GooglePlay導入

- 型番: TB710F
- ZUXOS:1.1.04.331

参考: この記事が参考になる
- [Legion y700(2023)をchina romで使ったら普通に使えた｜limzei89](https://note.com/limzei89/n/nd6ba6dde9c92)

準備:
- 初期設定を済ませる: https://dexlab.net/pukiwiki/?Memo/Android/Lenovo_Xiaoxin_Pad_Pro_GT_2025#f7193796
- 開発者オプションの有効化(android側):
  - Settings > About tablet > "Software version"を7回連続でタップ
  - General settings > Developer options > USB debugging: ON
- adb コマンドを使えるようにする。
  - [Software Fix (Rescue and Smart Assistant) - Lenovo Support JP](https://support.lenovo.com/jp/ja/downloads/ds101291-rescue-and-smart-assistant-lmsa) をインストールするとdriverやadbがセットアップされた。工場出荷時へのリカバリやデータバックアップもできる。
- PCとAndroid側にをUSBで接続し、Android側に"Allow USB debugging ?"で"Allow"を選択する。これが出ない場合、アンチウィルス(ESET等)のネットワーク保護等を一時的にOFFにする
  - デバイスマネージャー上の名前(adbに繋がる場合):
    - フレンドリ名: 联想小新平板Pro GT
    - ハードウェアID: USB\VID_17EF&PID_7F58&REV_0601
  - adbから繋がらない時の名前: ADB Interface
    - USB接続時のオプションで"充電のみ"にする。ファイル転送ではダメ 
- powershell.exeを実行。adbから認識しているか確認
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

- ~~リストアする場合: 中国語アプリの再インストール、有効化~~

## 中国アプリの選定

参考:
- [Legion Y700シリーズで不要な中国アプリを簡単に選別する方法｜limzei89](https://note.com/limzei89/n/n211ad73ecb10)
- [AliExpressで購入したLegion Y700 Gen 3 (TB321FU) CN China ROMを日本語化する設定 | ゆめとちぼーとげんじつと](https://blog.dreamhive.co.jp/yama/17518.html)


- `/system/preinstall` 以下に中国アプリがある。
- `adb uninstall` できないアプリもあるので、それは `adb pm disable-user` にする。

