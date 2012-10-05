#!/bin/bash
export ARCH=arm
#export CROSS_COMPILE=`readlink -f ../linaro-android-toolchain`/bin/arm-eabi-
export CROSS_COMPILE=`readlink -f ../os/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6`/bin/arm-eabi-
#export CROSS_COMPILE=`readlink -f ../os/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6`/bin/arm-linux-androideabi-
make clean
make cyanogenmod_tuna_awmon_defconfig
make -j2 
./package.sh
