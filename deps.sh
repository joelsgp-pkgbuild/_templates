#!/bin/sh
pacman -Syu base-devel pacman-contrib asp namcap desktop-file-utils
# add this to your shell startup scripts!
alias printsrcinfo="updpkgsums && makepkg --printsrcinfo > .SRCINFO"
