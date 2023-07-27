#!/bin/sh
#
#os: gentoo Linux
#date: 2023-04-09Sun
#location: gzu,1024
#screen-size: hp V220

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/Xresources
sysmodmap=/etc/X11/xinit/Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -n "`/etc/X11/chooser.sh`" ]; then
 command="`/etc/X11/chooser.sh`"
else
 failsafe="yes"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [ -n "$failsafe" ]; then
##--------------------------------
#### begin fcitx
#date: 2023-07-12Wed
#fcitx and rime setiings
#fcitx or xim
#export XMODIFIERS="@im=fcitx"
#export QT_IM_MODULE=fcitx
#export GTK_IM_MODULE=fcitx
#
#export LANG="zh_CN.UTF-8"
#export LC_CTYPE="zh_CN.UTF-8"
#
#KDE Plasma
#eval "$(dbus-launch --sh-syntax --exit-with-session)"
#### end fcitx
##--------------------------------
#if [ -x /usr/bin/numlockx ]; then
#      /usr/bin/numlockx on
#fi
####
 #/usr/bin/numlockx on &
 # numlockx, status, on, off, toggle
#### 
# version: 3
#xmonad &
#xmobar &
####
# version: 1
twm &
####
# version: 2
# date: 2023-07-15Sat
# /usr/bin/fvwm &
# sleep 30
#exec dbus-launch --sh-syntax --exit-with-session fvwm &
####
 #/usr/bin/awesome &
#### 
 #/usr/bin/numlockx &
 #numlockx &
 #console, number lock, xdotool
 /usr/bin/xdotool key Num_Lock &
 #/usr/bin/firefox-bin &
 #xclock -geometry 50x50-1+1 &
 #xclock -geometry 650x650-0+0 -bg orange -fg red -update 1 -highlight red -hands green -chime &
 ####
 # xterm
 #sleep 1
 #exec xterm -geometry 80x30+300+30 -fs 18 -bg black -fg white &
 #terminator &
 #xterm -fn "*-*-*-*-*-*-20-*" -geometry 80x24-10-10 &
 #
 #QA01: How do you disable the X11 beep
 #https://forums.gentoo.org/viewtopic-t-805245-start-0.html
 #
 /usr/bin/xset b off
 #
 #QA02: 
 #https://wiki.gentoo.org/wiki/LXQt
 #https://forums.gentoo.org/viewtopic-p-6639577.html
 #To disable energy saver that 
 #power off display after 10 minutes of inactivity
 #(even when watching YouTube) add this two lines: 
 /usr/bin/xset s off
 /usr/bin/xset -dpms
 ####
 #1st xterm
 #xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-1
 #sleep 1
 #exec xterm -geometry 80x30+300+30 -fs 18 -bg black -fg white &
 ####
## sleep 1
 #exec xterm -geometry 80x66+0+0 -fg red -name login
 # version-2
 # date: 2023-07-01Sat
 #exec xterm -geometry 80x80+0+0 -name login &
 # version-3
 # date: 2023-07-12Wed
 # xterm -geometry 70x80+50+10 &
## exec xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-1 -geometry 70x80+50+10 &
 ####
 #2nd xterm
 #xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-2
## sleep 1
 #xterm -geometry 80x50+484+10 &
## exec xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-2 -geometry 80x50+484+10 &
 #xterm -geometry 80x50+494+51 &
 ####
 #3rd xterm
 #xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-3
## sleep 1
 #xterm -geometry 80x30+484-10 &
## exec xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-3 -geometry 80x30+484-10 &
 #xterm -geometry 80x35+494-30 &
 #xterm -geometry 80x22+494-0 &
 #xterm -geometry 80x66-20-40 -fs 8 &
## sleep 1
 #xterm -geometry 80x30+300+30 -fs 20 -bg black -fg white &
 ####
 #4th xterm
 #xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-4
## sleep 1
 #xterm -geometry 72x79-485-10 -fs 8 &
## exec xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-4 -geometry 72x79-485-10 -fs 8 &
 #xterm -geometry 72x66-495-40 -fs 8 &
 ####
 #5th xterm
 #xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-5
## sleep 1
 #xterm -geometry 80x76-20-40 -fs 8 &
 #xterm -geometry 80x79-0-0 -fs 8 &
 #xterm -geometry 60x79-40-10 -fs 8 &
 #xterm -geometry 70x79-40-10 -fs 8 &
## exec xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-5 -geometry 70x79-40-10 -fs 8 &
 #xterm -geometry 80x66-0-30 -fs 8 &
 ####
 #6th xterm
 #xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-6
## sleep 1
 #xterm -geometry 80x30+300+0 -fs 20 -bg black -fg white &
 #version-2 
 #date: 2023-07-01Sat
 #xterm -geometry 80x30+300+10 -fs 20 -bg black -fg white &
## exec xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-6 -geometry 80x30+300+10 -fs 20 -bg black -fg white &
## sleep 1
 #exec xterm -geometry 80x66+0+0 -name login
 #xth xterm
 #exec xterm -geometry 80x30+300+30 -fs 20 &
 #exec xterm -geometry 80x66-0-0 -name myxterm -bg black -fg white &
 #
 #7th xterm
 #xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-7
 #xterm -geometry 80x22+10+0 -fs 28 -bg black -fg orange 
 #xterm -geometry 72x20+10+0 -fs 32 -bg black -fg white &
 #xterm -geometry 70x20+40+0 -fs 32 -bg black -fg white &
## exec xterm -xrm 'XTerm.vt100.allowTitleOps: false' -T xterm-7 -geometry 70x20+40+0 -fs 32 -bg black -fg white &
####
#8th emacs
#sleep 1
#/usr/bin/emacs -geometry 80x24 --font="DejaVu Sans Mono-24" &
#xclock -geometry 650x650-0+0 -bg orange -fg red -update 1 -highlight red -hands green -chime
####
# 9th, google-chrome, browser,
# sleep 1
# /usr/bin/google-chrome-stable --window-size=824x824 &
#/usr/bin/firefox-bin &
####
# 10th, firefox, browser
# /usr/bin/firefox-bin --window-size=824x824 &
####
## 11th, xclock,
#xclock, color settings, .Xresources
#xclock -geometry 1000x1000-40+10 -update 1
#xclock -geometry 700x700-40+10 -update 1
xclock -geometry 900x900+40+10 -update 1
#xclock -geometry 1000x1000-40+0 -update 1 -highlight red -hands green -chime 

else
 exec $command
fi
