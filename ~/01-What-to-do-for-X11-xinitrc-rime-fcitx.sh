#!/bin/sh
#date: 2023-07-09Sun
#effects: fcitx, rime, chinese
####
#version: 1
#export LC_ALL=zh_CN.UTF-8
#export XIM=fcitx
#export XIM_PROGRAM=fcitx
#export XMODIFIERS="@im=fcitx"
#export QT_IM_MODULE="fcitx"
#export GTK_IM_MODULE="fcitx"
#eval "$(dbus-launch --sh-syntax --exit-with-session)"
#exec fcitx &
####
#version: 2
eval "$(dbus-launch --sh-syntax --exit-with-session)"
export LANG="zh_CN.utf8"         #日常用户的桌面以中文显示
export LC_ALL="zh_CN.UTF-8"
export LC_TYPE="zh_CN.utf8"
export XMODIFIERS="@im=fcitx"    #日常用户加载中文输入法
export QT_IM_MODULE="fcitx"
export GTK_IM_MODULE="fcitx"
exec fcitx &
