#!/bin/bash
export LANG=zh_CN.UTF-8
nmcli nm wifi on # 启动wifi
autossh -f -M 20000 -ND 7070 tioover@eggfan.org
amixer set Master 100% #设置音量

#输入法
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
