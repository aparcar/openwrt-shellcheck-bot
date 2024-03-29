
In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/redboot-fis.sh line 16:
		local board_dir=$(tar tf $sysup_file | grep -m 1 '^sysupgrade-.*/$')
                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local board_dir=$(tar tf "$sysup_file" | grep -m 1 '^sysupgrade-.*/$')


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/redboot-fis.sh line 21:
			tar xf $sysup_file ${board_dir}kernel ${board_dir}root -O | \
                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			tar xf "$sysup_file" "${board_dir}"kernel "${board_dir}"root -O | \


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/redboot-fis.sh line 22:
				mtd -r $append write - loader:firmware
                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mtd -r "$append" write - loader:firmware


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/redboot-fis.sh line 25:
			local kern_length=$(tar xf $sysup_file ${board_dir}kernel -O | wc -c)
                                                   ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			local kern_length=$(tar xf "$sysup_file" "${board_dir}"kernel -O | wc -c)


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/redboot-fis.sh line 27:
			tar xf $sysup_file ${board_dir}kernel ${board_dir}root -O | \
                               ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			tar xf "$sysup_file" "${board_dir}"kernel "${board_dir}"root -O | \


In openwrt/target/linux/ath79/generic/base-files/lib/upgrade/redboot-fis.sh line 28:
				mtd -r $append -F$kern_part:$kern_length:0x80060000,rootfs write - $kern_part:rootfs
                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                 ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                            ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                   ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				mtd -r "$append" -F"$kern_part":"$kern_length":0x80060000,rootfs write - "$kern_part":rootfs

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
