echo "执行此脚本需要root权限"

echo "设备闪存类型需为eMMC"

echo "虚拟机无法使用"

echo "适用于支持动态系统更新的设备"

echo " "

set -e

boot_device=$(find /dev/block/platform/ -name 'by-name' -type d)

cd "$boot_device"

init_boot_a_device=$(readlink -f init_boot_a)

init_boot_b_device=$(readlink -f init_boot_b)

echo "init_boot_a镜像的实际位置在$boot_a_device"

echo "init_boot_b镜像的实际位置在$boot_b_device"

dd if="$init_boot_a_device" 
