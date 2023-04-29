#!/bin/bash
set -eux
# you'll also want to install paru for handling dependencies that are in the aur
pacman -Syu base-devel pacman-contrib devtools asp pkgfile namcap gendesk desktop-file-utils
# then add this to your shell startup scripts!
# alias printsrcinfo="updpkgsums && makepkg --printsrcinfo > .SRCINFO"
