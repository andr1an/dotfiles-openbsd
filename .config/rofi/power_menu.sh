#!/usr/bin/env bash
# vim: ts=2 sw=2 et sta si

set -euo pipefail


confirm() {
  local confirmation
  confirmation="$(rofi -dmenu -p "Are you sure you want to $1?" <<< "yes
no")"
  if [[ "$confirmation" = "yes" ]]; then
    return 0
  else
    return 1
  fi
}


options="\
shutdown
reboot
logout
lock"

action="$(rofi -dmenu -p "Stop working and..." <<< "$options")"

case "$action" in
  shutdown)
    confirm shutdown && doas halt -p || exit
    ;;
  reboot)
    confirm reboot && doas reboot || exit
    ;;
  logout)
    confirm logout && i3-msg exit || exit
    ;;
  lock)
    i3lock -c 111111
    ;;
esac
