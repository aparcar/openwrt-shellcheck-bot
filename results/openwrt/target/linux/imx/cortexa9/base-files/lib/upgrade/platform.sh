
In openwrt/target/linux/imx/cortexa9/base-files/lib/upgrade/platform.sh line 49:
		nand_do_platform_check $board $1
                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		nand_do_platform_check "$board" "$1"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
