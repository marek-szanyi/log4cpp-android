#!/bin/sh

# I put all my dev stuff in here
export DEV_PREFIX=$HOME

# Don't forget to adjust this to your NDK path
export ANDROID_NDK=${DEV_PREFIX}/android-ndk-r9c/

export CROSS_COMPILE=arm-linux-androideabi

# I chose the gcc-4.7 toolchain - works fine for me!
export ANDROID_PREFIX=${ANDROID_NDK}/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64

# Apparently android-8 works fine, there are other versions, look them up
export SYSROOT=${ANDROID_NDK}/platforms/android-9/arch-arm

export CROSS_PATH=${ANDROID_PREFIX}/bin/${CROSS_COMPILE}

# Non-exhaustive lists of compiler + binutils
# Depending on what you compile, you might need more binutils than that
export CPP=${CROSS_PATH}-cpp
export AR=${CROSS_PATH}-ar
export AS=${CROSS_PATH}-as
export NM=${CROSS_PATH}-nm
export CC=${CROSS_PATH}-gcc
export CXX=${CROSS_PATH}-g++
export LD=${CROSS_PATH}-ld
export RANLIB=${CROSS_PATH}-ranlib
export STRIP=${CROSS_PATH}-strip
export OBJDUMP=${CROSS_PATH}-objdump

# This is just an empty directory where I want the built objects to be installed
export PREFIX=${DEV_PREFIX}/android/prefix

# Don't mix up .pc files from your host and build target
export PKG_CONFIG_PATH=${PREFIX}/lib/pkgconfig

# You can clone the full Android sources to get bionic if you want.. I didn't
# want to so I just got linker.h from here: http://gitorious.org/0xdroid/bionic
# Note that this was only required to build boehm-gc with dynamic linking support.
export CFLAGS="${CFLAGS} --sysroot=${SYSROOT} -I${SYSROOT}/usr/include -I${ANDROID_PREFIX}/include -I${DEV_PREFIX}/android/bionic"
export CPPFLAGS="${CFLAGS}"
export LDFLAGS="${LDFLAGS} -L${SYSROOT}/usr/lib -L${ANDROID_PREFIX}/lib"

./configure os=-linux-android --host=${CROSS_COMPILE} --with-sysroot=${SYSROOT} --prefix=${PREFIX} "$@"
