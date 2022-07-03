#! /bin/sh
(cat /mnt/disk1/agnos-builder/agnos-kernel-sdm845/out/arch/arm64/boot/Image | lz4c -9) > ./Image.lz4
cat ./Image.lz4 ../out/arch/arm64/boot/dts/qcom/sdm845-v2.1.dtb ../out/arch/arm64/boot/dts/qcom/sdm845-v2.dtb > ./Image.lz4-dtb
abootimg --create myboot_comma.img -f bootimg.cfg -k ./Image.lz4-dtb -r initrd.img
