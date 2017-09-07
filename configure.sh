#!/bin/bash

export TOOLCHAIN=$HOME/tools/android/default-toolchain
export BASE_NAME=aarch64-linux-android

export AR="$TOOLCHAIN/bin/$BASE_NAME-ar"
export CC="$TOOLCHAIN/bin/$BASE_NAME-gcc"
export CXX="$TOOLCHAIN/bin/$BASE_NAME-g++"
export LINK="$TOOLCHAIN/bin/$BASE_NAME-g++"

gyp --depth=. -f ninja main.gyp
