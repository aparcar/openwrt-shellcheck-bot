
In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 14:
	local board_dir=$(tar tf $tar_file | grep -m 1 '^sysupgrade-.*/$')
                                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local board_dir=$(tar tf "$tar_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 17:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 25:
		tar xf $tar_file ${board_dir}/kernel -O > /mnt/fitImage
                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                 ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar xf "$tar_file" "${board_dir}"/kernel -O > /mnt/fitImage


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 32:
	tar xf $tar_file ${board_dir}/root -O  | dd of=/dev/mmcblk0p2 bs=512k > /dev/null 2>&1
               ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar xf "$tar_file" "${board_dir}"/root -O  | dd of=/dev/mmcblk0p2 bs=512k > /dev/null 2>&1


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 49:
	nand_do_upgrade "$1" || (echo "Upgrade failed, setting bootsys ${bootsys}" && fw_setenv bootsys $bootsys)
                                                                                                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	nand_do_upgrade "$1" || (echo "Upgrade failed, setting bootsys ${bootsys}" && fw_setenv bootsys "$bootsys")


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 55:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 89:
		nand_do_platform_check "traverse-ls1043" $1
                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		nand_do_platform_check "traverse-ls1043" "$1"

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
