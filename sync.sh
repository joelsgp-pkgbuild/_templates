#!/bin/sh
set -ex

templates=('default' 'python')
common=('.gitignore' '.SRCINFO')

for temp in ${templates[@]}
do
    pkgbuildir="./git-templates/pkgbuild-$temp"
    cp -ut "$pkgbuildir" ${common[*]}
    cp -u "PKGBUILD.$temp" "$pkgbuildir/PKGBUILD"
    alias git="git -C $pkgbuildir"
    git add .
    git diff-index --quiet HEAD || git commit -m 'Update template'
done
