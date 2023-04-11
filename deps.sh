#!/bin/sh
set -eux
# also install paru for handling dependencies that are in the aur
pacman -Syu base-devel pacman-contrib devtools asp pkgfile namcap gendesk desktop-file-utils
# add this to your shell startup scripts!
# alias printsrcinfo="updpkgsums && makepkg --printsrcinfo > .SRCINFO"
