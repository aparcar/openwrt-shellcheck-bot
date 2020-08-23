
In openwrt/target/linux/ipq806x/base-files/lib/upgrade/buffalo.sh line 42:
	ubirmvol /dev/$ubidev -N ubi_rootfs_data &> /dev/null || true
                      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/"$ubidev" -N ubi_rootfs_data &> /dev/null || true


In openwrt/target/linux/ipq806x/base-files/lib/upgrade/buffalo.sh line 43:
	ubirmvol /dev/$ubidev2 -N kernel &> /dev/null || true
                      ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/"$ubidev2" -N kernel &> /dev/null || true

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
