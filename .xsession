# ~/.xsession
# vim: ft=sh
export TERMINAL=urxvtc
export LC_ALL=en_US.UTF-8
export EDITOR=vim
export VISUAL=vim

# HiDPI scaling
export GDK_SCALE=2.0
export GDK_DPI_SCALE=0.5
#export QT_SCALE_FACTOR=2.0

# Mozilla vars
export MOZ_USE_XINPUT2=1
export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1

export ENV=$HOME/.kshrc

xrdb -merge $HOME/.Xresources

redshift -l 41.0:28.1 -t 6400:5900 &
tint2 &
urxvtd -q -f -o &
feh --bg-fill ~/wallpaper.png &
xautolock -time 5 -locker "xlock" &

/usr/local/libexec/tray-app/sound &
/usr/local/libexec/tray-app/eject &

exec cwm
