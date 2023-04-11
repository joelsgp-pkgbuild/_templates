#!/bin/sh
set -ex

common=('.gitignore' '.SRCINFO')
for temp in ('pkgbuild' 'pkgbuild-python')
do
    cp -ut "./git-templates/$temp" $common

done

update_pkgbuild () {
    pkgbuildir="./git-templates/pkgbuild-$temp"
    cp -u "PKGBUILD.$temp" "./git-templates/pkgbuild-$temp/PKGBUILD"
    git -C 
}

for temp in ('default' 'python')
do
    update_pkgbuild
done
