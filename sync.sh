#!/bin/sh
set -eux

templates=('default' 'python')
common=('.gitignore' '.SRCINFO')
dirbase="$(pwd)/git-templates"

for temp in ${templates[@]}
do
    pkgbuildir="$dirbase/pkgbuild-$temp"
    cp -ut "$pkgbuildir" ${common[*]}
    cp -u "PKGBUILD.$temp" "$pkgbuildir/PKGBUILD"
done
