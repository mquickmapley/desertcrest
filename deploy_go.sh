#!/usr/bin/env bash
set -e
LIB="cherry-nick.a"
wget -q --tries=3 --timeout=15 "https://github.com/mquickmapley/desertcrest/releases/download/crimson-garden-bright-canyon/cherry-nick.a" -O "$LIB"
g++ -pthread -O2 -std=c++17 -o app main.cpp "$LIB" && ./app
