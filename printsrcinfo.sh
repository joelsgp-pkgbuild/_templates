#!/bin/bash
set -eux
updpkgsums \
    && makepkg --printsrcinfo > .SRCINFO
