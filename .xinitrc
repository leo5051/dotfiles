[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrandr --output HDMI-1 --auto --output HDMI-2 --auto --same-as HDMI-1
xset r rate 250 30
pgrep urxvtd || urxvtd -q -f -o
exec i3
