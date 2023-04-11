#!/bin/sh
set -ex
[[ $# -ne 1 ]]
name=$1
pkgbuildir="./git-templates/$name"
mkdir -p "$pkgbuildir"
./sync.sh
cd "$pkgbuildir"
git init
git commit -m "Initial commit"
