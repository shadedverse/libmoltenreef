#!/usr/bin/env bash
set -e
TAG="gentle-harbor-hidden-anchor"
LIB="sodium-storehouse.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/shadedverse/libmoltenreef/releases/download/${TAG}/${LIB}"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
