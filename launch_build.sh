#!/usr/bin/env bash
set -e
REPO="kennafield/bleachedbrasshub"
LIB="rapid-loophole.a"
URL="https://github.com/${REPO}/releases/download/eager-delta-eager-cedar/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
