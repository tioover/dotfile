#!/bin/bash
export LANG=zh_CN.UTF-8
nmcli nm wifi on # 启动wifi

#输入法
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

autossh -f -M 20000 -ND 7070 tioover@106.187.48.122

# display
pkill gnome-shell
# xrandr --output LVDS1 --same-as VGA1 --auto
