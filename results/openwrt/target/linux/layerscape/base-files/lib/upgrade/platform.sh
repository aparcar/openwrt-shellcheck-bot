
In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 14:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 41:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 79:
	while read part start size; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 80:
		if export_partdevice partdev $part; then
                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if export_partdevice partdev "$part"; then


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 104:
	nand_do_upgrade "$1" || (echo "Upgrade failed, setting bootsys ${bootsys}" && fw_setenv bootsys $bootsys)
                                                                                                        ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	nand_do_upgrade "$1" || (echo "Upgrade failed, setting bootsys ${bootsys}" && fw_setenv bootsys "$bootsys")


In openwrt/target/linux/layerscape/base-files/lib/upgrade/platform.sh line 122:
		nand_do_platform_check "traverse-ls1043" $1
                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		nand_do_platform_check "traverse-ls1043" "$1"

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
