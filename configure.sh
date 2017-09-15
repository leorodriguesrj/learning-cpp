#!/bin/bash

export TOOLCHAIN=$HOME/tools/android/alternate-toolchain
export BASE_NAME=arm-linux-androideabi

if [ "$1" == "android" ]; then
    export CFLAGS_CC="-std=gnu++0x -frtti -fexceptions -g -fPIC"
    export LDFLAGS="-fPIC -std=gnu++0x -frtti -fexceptions -g  -rdynamic -fPIC -march=armv7-a -fPIE -shared -Wl"
    export AR="$TOOLCHAIN/bin/llvm-ar"
    export CC="$TOOLCHAIN/bin/$BASE_NAME-clang"
    export CXX="$TOOLCHAIN/bin/$BASE_NAME-clang++"
    export LINK="$TOOLCHAIN/bin/$BASE_NAME-clang++"
fi

gyp --depth=. -f ninja main.gyp
