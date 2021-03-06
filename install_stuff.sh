#!/usr/bin/env sh

HERE="$(dirname "$0")"

doas pkg_add -l "${HERE}/pkglist"

doas sed -i.bak 's,^[^#].*/bin/xconsole,#&,' /etc/X11/xenodm/Xsetup_0

curl -fSL -o "OpenSansCondensed.zip" "https://fonts.google.com/download?family=Open%20Sans%20Condensed"
curl -fSL -o "Input-Font.zip" "https://input.djr.com/build/?fontSelection=fourStyleFamily&regular=InputSansCondensed-Regular&italic=InputMonoCondensed-Italic&bold=InputMonoCondensed-Bold&boldItalic=InputMonoCondensed-BoldItalic&a=0&g=0&i=0&l=0&zero=0&asterisk=0&braces=0&preset=default&line-height=1.2&accept=I+do&email="
curl -fSL -o "FontAwesome.zip" "https://use.fontawesome.com/releases/v6.0.0/fontawesome-free-6.0.0-desktop.zip"

mkdir -p ~/.fonts/Input ~/.fonts/OpenSansCondensed ~/.fonts/FontAwesome

unzip -j Input-Font.zip "Input_Fonts/Input/*.ttf" -d ~/.fonts/Input
unzip -j OpenSansCondensed.zip "*.ttf" -d ~/.fonts/OpenSansCondensed
unzip -j FontAwesome.zip "fontawesome-free-6.0.0-desktop/otfs/*.otf" -d ~/.fonts/FontAwesome

fc-cache
