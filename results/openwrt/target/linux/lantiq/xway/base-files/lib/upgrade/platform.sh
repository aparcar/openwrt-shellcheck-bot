
In openwrt/target/linux/lantiq/xway/base-files/lib/upgrade/platform.sh line 14:
		nand_do_upgrade $1
                                ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		nand_do_upgrade "$1"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
