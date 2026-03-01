REM download google play apk: https://apkpure.net/jp/google-play-store/com.android.vending
REM install google play
adb install "Google Play Store_45.4.26-29 [0] [PR] 737705585_APKPure.apk"

REM lang
adb shell settings put system system_locales ja-JP

REM uninstall cn apps
adb uninstall com.lenovo.legionzone
adb uninstall com.zui.calendar.overlay.paintingr
adb uninstall com.tencent.qqmusic
adb uninstall com.zui.calendar.overlay.golden
adb uninstall io.moreless.tide
adb uninstall com.lenovo.menu_assistant
adb uninstall com.zui.calendar.overlay.avengers
adb uninstall com.smile.gifmaker
adb uninstall com.sina.weibo
adb uninstall com.motorola.mobiledesktop
adb uninstall com.ss.android.ugc.aweme
adb uninstall com.qiyi.video.pad
adb uninstall com.zui.calendar
adb uninstall com.zui.calculator
adb uninstall com.lenovo.hyperengine
adb uninstall com.zui.calendar.overlay.grace
adb uninstall com.zui.calendar.overlay.superhero
adb uninstall com.newskyer.draw
adb uninstall com.zui.weather
adb uninstall com.zui.calendar.overlay.mostbeautiful
adb uninstall com.baidu.netdisk
adb uninstall com.zui.calendar.overlay.thin
adb uninstall cn.wps.moffice_eng
adb uninstall com.zui.calendar.overlay.pink
adb uninstall com.lenovo.club.app
adb uninstall com.iflytek.inputmethod.custom
adb uninstall com.zui.recorder
adb uninstall net.huanci.hsjpro
adb uninstall com.zui.calendar.overlay.blue
adb uninstall com.zui.calendar.overlay.mains

REM disable cn apps
adb shell pm disable-user com.lenovo.browser.hd
adb shell pm disable-user com.zui.contacts
adb shell pm disable-user com.zui.gallery
adb shell pm disable-user com.zui.filemanager

REM reboot device
echo reboot device: any key / abort: CTRL+C
pause
adb reboot
