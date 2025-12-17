# ~/.xsession
# vim: ft=sh
export TERMINAL=urxvtc
export LC_ALL=en_US.UTF-8
export EDITOR=vim
export VISUAL=vim

export GDK_SCALE=2.0
export GDK_DPI_SCALE=0.5
#export QT_SCALE_FACTOR=2.0

export ENV=$HOME/.kshrc

xrdb -merge $HOME/.Xresources

redshift -l 41.0:28.1 -t 6500:6000 &
tint2 &
urxvtd -q -f -o &
feh --bg-fill ~/wallpaper.png &
xautolock -time 5 -locker "xlock" &

/usr/local/libexec/tray-app/sound &
/usr/local/libexec/tray-app/eject &

exec cwm
