#!/usr/bin/env bash

TMP_DIR=$(echo $(dirname $0)/tmp)

mkdir -p $TMP_DIR
cd $TMP_DIR

curl -sSL https://raw.githubusercontent.com/chadrien/xautolock-applet/master/PKGBUILD > ./PKGBUILD
makepkg

sudo pacman -U --needed xautolock-applet*.pkg.tar.xz

cd ..
rm -rf tmp