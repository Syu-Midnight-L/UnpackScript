echo "执行此脚本需要root权限"

echo "设备闪存类型需为UFS"

echo "虚拟机无法使用"

echo "适用于支持动态系统更新的设备"

echo " "

set -e

cd /dev/block/by-name

init_boot_a_device=$(readlink -f init_boot_a)
