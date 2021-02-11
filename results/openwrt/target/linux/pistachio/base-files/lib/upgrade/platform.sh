
In openwrt/target/linux/pistachio/base-files/lib/upgrade/platform.sh line 13:
	nand_do_platform_check $board $1
                               ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	nand_do_platform_check "$board" "$1"


In openwrt/target/linux/pistachio/base-files/lib/upgrade/platform.sh line 32:
		echo "Current boot partiton $boot_partition (/dev/mtd$(find_mtd_index $boot_partition))"
                                                                                      ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "Current boot partiton $boot_partition (/dev/mtd$(find_mtd_index "$boot_partition"))"


In openwrt/target/linux/pistachio/base-files/lib/upgrade/platform.sh line 45:
	nand_do_upgrade $1
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	nand_do_upgrade "$1"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
