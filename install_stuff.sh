#!/usr/bin/env bash

HERE="$(basename "$0")"

doas pkg_add -l "${HERE}/pkglist"

doas sed -i.bak 's,^.*/bin/xconsole,#&,' /etc/X11/xenodm/Xsetup_0

mkdir -p ~/.fonts/Input
unzip -j Input-Font.zip "Input_Fonts/Input/*.ttf" -d ~/.fonts/Input
fc-cache
