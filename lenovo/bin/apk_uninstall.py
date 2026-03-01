# Original script: https://note.com/limzei89/n/n211ad73ecb10
#
# Usage:
#   # PowerShell
#   cd Temp/
#   adb shell "pm list packages -f" > package_list.txt
#
#   # WSL
#   cp /mnt/c/Temp/package_list.txt ./
#   python ./apk_uninstall.py
#
#  # PowerShell
#  apk_uninstall.bat
#
# # Convert UTF-16 to UTF-8
# iconv -f UTF-16LE -t UTF-8 package_list.txt > package_list.utf-8.txt

import os,re
out = ''
out2 = ''
with open('package_list.txt', encoding='utf-16') as f:
    f1 = f.readlines()
    for f2 in f1:
        f3=f2.strip()
        f4=re.split('[/=]', f3)
        w_c=len(f4)
        if f4[1] == 'system':
            if f4[2] == 'preinstall':
                out+=f'adb uninstall {f4[w_c-1]}\n'
                out2+=f'adb shell "pm install /system/preinstall/{f4[w_c-3]}/{f4[w_c-2]}"\n'
out+='pause'
out2+='pause'
with open('apk_uninstall.bat','w') as o:
    o.write(out)
with open('apk_install.bat','w') as o:
    o.write(out2)
