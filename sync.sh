#!/bin/sh
set -ex

update_pkgbuild () {
    local common
    common=('.gitignore' '.SRCINFO')
    local pkgbuilddir
    local pkgbuildir="./git-templates/pkgbuild-$temp"
    cp -ut "$pkgbuildir" "$common"
    cp -u "PKGBUILD.$temp" "$pkgbuildir-$temp/PKGBUILD"
    git -C "$pkgbuildir" add .
    git -C "$pkgbuildir" commit -m "Update template"
}

for temp in ('default' 'python')
do
    update_pkgbuild
done
