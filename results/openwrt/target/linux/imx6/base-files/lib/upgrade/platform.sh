
In openwrt/target/linux/imx6/base-files/lib/upgrade/platform.sh line 5:
. /lib/imx6.sh
  ^----------^ SC1091: Not following: /lib/imx6.sh was not specified as input (see shellcheck -x).


In openwrt/target/linux/imx6/base-files/lib/upgrade/platform.sh line 30:
	get_image "$1" | tar Oxf - sysupgrade-apalis/root > $(rootpart_from_uuid)
                                                            ^-------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/imx6/base-files/lib/upgrade/platform.sh line 64:
		nand_do_platform_check $board $1
                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		nand_do_platform_check "$board" "$1"

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/imx6.sh was n...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
