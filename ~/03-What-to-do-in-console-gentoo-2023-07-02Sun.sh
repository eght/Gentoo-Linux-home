#!/bin/sh
#xset s off
#xset -dpms
#xmodmap Downloads/5th-dot-Xmodmap_Logitech_K120_keyboard_With_HHKB_Pro2_layout
#setxkbmap dvorak
#xset b off #都是一样的
####
# terminal based typing test
# name: tt
# step 1
curl -L https://github.com/lemnos/tt/releases/download/v0.4.2/tt-linux -o /usr/local/bin/tt && sudo chmod +x /usr/local/bin/tt
# step 2
curl -o /usr/share/man/man1/tt.1.gz -L https://github.com/lemnos/tt/releases/download/v0.4.2/tt.1.gz
