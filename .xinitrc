#!/bin/bash

# ██╗  ██╗██╗███╗   ██╗██╗████████╗██████╗  ██████╗
# ╚██╗██╔╝██║████╗  ██║██║╚══██╔══╝██╔══██╗██╔════╝
#  ╚███╔╝ ██║██╔██╗ ██║██║   ██║   ██████╔╝██║     
#  ██╔██╗ ██║██║╚██╗██║██║   ██║   ██╔══██╗██║     
# ██╔╝ ██╗██║██║ ╚████║██║   ██║   ██║  ██║╚██████╗
# ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝


# Resolution
. ~/scripts/res-fix.sh

# Keyboard Layouts

setxkbmap -layout us,ara -variant ,digits -option grp:switch,grp:ctrl_alt_toggle

# sxhkd

sxhkd &

# wallpaper
nitrogen --restore &

# Loop 
# Restarts dwm without closing and having to the x server again

while true; do            
        dwm >/dev/null 2>&1
done

# startx
dwm
