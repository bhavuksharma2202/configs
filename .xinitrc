#sh ~/scripts/autostart/script.sh &
sh ~/scripts/autostart/touchpad.sh &
sh ~/scripts/autostart/wallpaper.sh &
sh ~/scripts/ip_change.sh &
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh	# to run gnome-keyring properly 
# picom &
# xss-lock i3lock -i $HOME/.i3wall.png &
#dwmblocks &
#exec dwm
echo 85 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold
libinput-gestures-setup start
exec /usr/lib/kdeconnectd &
exec qtile
