echo "执行此脚本需要root权限"

echo "设备闪存类型需为eMMC"

echo "虚拟机无法使用"

echo "适用于支持动态系统更新的设备"

ehco " "

set -e

boot_device=$(find dev/block/platform/ -name 'by-name' -type d)
