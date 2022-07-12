
In openwrt/target/linux/imx/base-files/lib/imx.sh line 10:
	echo ${uuid%-02}
             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${uuid%-02}"


In openwrt/target/linux/imx/base-files/lib/imx.sh line 18:
	blkid | grep $(rootpartuuid)-01 | cut -d : -f1
                     ^-------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/imx/base-files/lib/imx.sh line 22:
	blkid | grep $(rootpartuuid)-02 | cut -d : -f1
                     ^-------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/imx/base-files/lib/imx.sh line 28:
		mount -o rw,noatime $(bootpart_from_uuid) /boot > /dev/null
                                    ^-------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/imx/base-files/lib/imx.sh line 44:
	get_image "$1" | tar Oxf - ${board_dir}/kernel > /boot/uImage-new && \
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	get_image "$1" | tar Oxf - "${board_dir}"/kernel > /boot/uImage-new && \


In openwrt/target/linux/imx/base-files/lib/imx.sh line 47:
		get_image "$1" | tar Oxf - ${board_dir}/root > $(rootpart_from_uuid) && \
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^-------------------^ SC2046: Quote this to prevent word splitting.

Did you mean: 
		get_image "$1" | tar Oxf - "${board_dir}"/root > $(rootpart_from_uuid) && \


In openwrt/target/linux/imx/base-files/lib/imx.sh line 61:
	if [ -b $(bootpart_from_uuid) ]; then
                ^-------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
