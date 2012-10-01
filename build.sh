#!/bin/bash
export ARCH=arm
#export CROSS_COMPILE=`readlink -f ../linaro-android-toolchain`/bin/arm-eabi-
export CROSS_COMPILE=`readlink -f ../os/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3`/bin/arm-eabi-
make clean
make cyanogenmod_tuna_awmon_defconfig
make -j2 
./package.sh
