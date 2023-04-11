#!/bin/sh
set -ex
name=$1
pkgbuildir="./git-templates/$name"
mkdir -p "$pkgbuildir"
./sync.sh
cd "$pkgbuildir"
git init
git commit -m "Initial commit"
