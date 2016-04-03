export TOP=~/android
export PATH=$TOP/arm-eabi-4.8/bin:$PATH
#export PATH=$TOP/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin:$PATH
export ARCH=arm
export SUBARCH=arm
export CROSS_COMPILE=arm-eabi-
make -j8
./dtbToolCM -o dt.img -s 2048 -d "htc,project-id = <" -p ./scripts/dtc/ ./arch/arm/boot/
#mv dt.img ~/android/mkboot/m8443
#mv arch/arm/boot/zImage ~/android/mkboot/m8443

#rm ~/android/mkboot/cm/zImage
#cp arch/arm/boot/zImage ~/android/mkboot/cm/
