cp $PWD/AnySense /etc/init.d
chmod 755 /etc/init.d/AnySense
/etc/init.d/AnySense enable


opkg update
opkg install wget block-mount kmod-fs-ext4 kmod-usb-storage-extras e2fsprogs fdisk
mkfs.ext4 /dev/mmcblk0p1

pip install paho-mqtt

block detect > /etc/config/fstab
echo "	option	enabled	'1'" >> /etc/config/fstab

reboot

