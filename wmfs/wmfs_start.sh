#! /bin/bash

feh --bg-scale ~/Downloads/wallpapers/arrow.jpg
urxvtd -q -f -o &
xcompmgr -C -l -O -D1 &
volumeicon &
source ~/.Xsession
#wicd-client -t &
#devilspie &
conky -c ~/.config/wmfs/scripts/conkyrc_top | while true; read line; do wmfs -c status "testbar $line"; done &
conky -c ~/.config/wmfs/scripts/conkyrc_top | while true; read line; do wmfs -c status "testbar2 $line"; done &
conky -c ~/.config/wmfs/scripts/conkyrc_bottom | while true; read line; do wmfs -c status "bottom $line"; done &
exec /usr/local/bin/wmfs
