#!/bin/bash
rm -f galaxynexus_cm10_awmon.zip
rm -f package_tree/system/lib/modules/*
rm -f package_tree/boot.img
find . -name "*.ko" -exec cp {} package_tree/system/lib/modules \;
./mkbootfs initramfs | gzip > ramdisk.gz
cp arch/arm/boot/zImage .
./mkbootimg --kernel zImage --ramdisk ramdisk.gz -o boot.img --base 0x80000000 --pagesize 2048 --ramdiskaddr 0x81500000
cp boot.img package_tree
rm zImage
cd package_tree
zip -r ../galaxynexus_cm10_awmon.zip *
cd ../
