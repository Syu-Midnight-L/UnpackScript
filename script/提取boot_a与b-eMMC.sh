echo "执行此脚本需要root权限"

echo "设备闪存类型需为eMMC"

echo "虚拟机无法使用"

echo "适用于支持动态系统更新的设备"

ehco " "

set -e

boot_device=$(find dev/block/platform/ -name 'by-name' -type d)

cd "$boot_device"

boot_a_device=$(readlink -f boot_a)

boot_b_device=$(readlink -f boot_b)

echo "boot_a镜像的实际位置在$boot_a_device"

echo "boot_b镜像的实际位置在$boot_b_device"

dd if="boot_a_adevice" of=/sdcard/Download/boot_a.img

dd if="boot_b_adevice" of=/sdcard/Download/boot_b.img

echo "提取完成，文件在/storage/emulated/0/Download/里"
