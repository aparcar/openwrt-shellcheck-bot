
In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 18:
		$offset $blks $len
                ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                        ^---^ SC2086: Double quote to prevent globbing and word splitting.
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"$offset" "$blks" "$len"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 20:
	printf "\x${blks:2:2}\x${blks:0:2}" | \
               ^--------------------------^ SC2059: Don't use variables in the printf format string. Use printf "..%s.." "$foo".


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 21:
		dd bs=2 count=1 seek=$((offset / 2)) conv=notrunc of=${fwinfo_mtd}
                                                                     ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dd bs=2 count=1 seek=$((offset / 2)) conv=notrunc of="${fwinfo_mtd}"

For more information:
  https://www.shellcheck.net/wiki/SC2059 -- Don't use variables in the printf...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
