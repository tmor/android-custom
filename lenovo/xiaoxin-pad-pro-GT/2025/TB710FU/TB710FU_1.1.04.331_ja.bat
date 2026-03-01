REM download google play apk: https://apkpure.net/jp/google-play-store/com.android.vending
REM install google play
adb install "Google+Play+Store_50.3.27-29+[0]+[PR]+875414499_APKPure.apk"

REM lang: https://note.com/limzei89/n/n8760ff4eeebc
REM 1. ZUI16
REM adb shell settings put system system_locales ja-JP

REM 2. ZUXOS
adb shell settings put system system_locales ja-JPzhzh
adb shell settings put global settings_app_locale_opt_in_enabled false

REM 3. ZUXOS
REM adb install "CtsPreconditions.apk"
REM adb shell settings put system system_locales ja-JP

REM uninstall cn apps
adb uninstall com.qihoo.aiwork
adb uninstall com.test.xmlmusic
adb uninstall com.zui.notes
adb uninstall com.zui.calendar.overlay.paintingr
adb uninstall com.zui.calendar.overlay.magiccolortimemirror
adb uninstall com.lenovo.minigamelauncher
adb uninstall com.sohu.inputmethod.sogou.oem
adb uninstall com.zui.calendar.overlay.golden
adb uninstall com.zui.calendar.overlay.interstellartravel
adb uninstall com.lemon.lv
adb uninstall com.orion.notein
adb uninstall com.zui.calendar.overlay.avengers
adb uninstall com.smile.gifmaker
adb uninstall com.sina.weibo
adb uninstall com.motorola.mobiledesktop
adb uninstall com.ss.android.ugc.aweme
adb uninstall cn.canva.editor
adb uninstall com.qiyi.video.pad
adb uninstall com.zui.calendar
adb uninstall com.lenovo.nceetj.educenterhd
adb uninstall com.netease.cloudmusic
adb uninstall com.zui.calculator
adb uninstall com.youku.phone
adb uninstall com.lenovo.hyperengine
adb uninstall com.zui.calendar.overlay.grace
adb uninstall com.zui.clone
adb uninstall com.zui.calendar.overlay.superhero
adb uninstall com.newskyer.draw
adb uninstall com.lenovo.office
adb uninstall com.zui.weather
adb uninstall com.zui.calendar.overlay.mostbeautiful
adb uninstall com.zui.calendar.overlay.thin
adb uninstall com.zui.calendar.overlay.softlighttransparency
adb uninstall cn.wps.moffice_eng
adb uninstall com.zui.deskclock
adb uninstall com.zui.calendar.overlay.pink
adb uninstall com.lenovo.club.app
adb uninstall com.happyelements.AndroidAnimal
adb uninstall com.zui.gallery
adb uninstall com.zui.recorder
adb uninstall net.huanci.hsjpro
adb uninstall com.zui.calendar.overlay.blue
adb uninstall com.zui.calendar.overlay.mains

REM disable cn apps
adb shell pm disable-user com.zui.browser
adb shell pm disable-user com.zui.contacts
adb shell pm disable-user com.zui.filemanager
adb shell pm disable-user com.lenovo.leos.cloud.sync
adb shell pm disable-user com.lenovo.menu_assistant.hd
adb shell pm disable-user com.lenovo.xbb
adb shell pm disable-user com.lenovo.leos.appstore

REM reboot device
echo reboot device: any key / abort: CTRL+C
pause
adb reboot
