
In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 26:
	@*)  ofs="$(fortinet_by2bl ${new##@})" ;;	# "@<offset>"
                                   ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	@*)  ofs="$(fortinet_by2bl "${new##@}")" ;;	# "@<offset>"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 28:
	*@*) len="$(fortinet_by2bl ${new%%@*})"		# "<length>@<offset>"
                                   ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	*@*) len="$(fortinet_by2bl "${new%%@*}")"		# "<length>@<offset>"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 29:
	     ofs="$(fortinet_by2bl ${new##*@})" ;;
                                   ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	     ofs="$(fortinet_by2bl "${new##*@}")" ;;


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 33:
	*)   len="$(fortinet_by2bl ${new%%@*})" ;;	# "<length>"
                                   ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	*)   len="$(fortinet_by2bl "${new%%@*}")" ;;	# "<length>"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 75:
	printf "Image Index: %d\n" $index
                                   ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "Image Index: %d\n" "$index"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 77:
	old="$(dd bs=16 count=2 skip=$((offset / 16)) if=$fwinfo_mtd 2>/dev/null)"
                                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	old="$(dd bs=16 count=2 skip=$((offset / 16)) if="$fwinfo_mtd" 2>/dev/null)"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 82:
				conv=sync,notrunc of=$fwinfo_mtd 2>/dev/null
                                                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				conv=sync,notrunc of="$fwinfo_mtd" 2>/dev/null


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 95:
	old_kr="$(hexdump -n 16 -v -s $((offset)) -e '1/4 "%08x"' $fwinfo_mtd)"
                                                                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	old_kr="$(hexdump -n 16 -v -s $((offset)) -e '1/4 "%08x"' "$fwinfo_mtd")"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 105:
			$(fortinet_bl2by ${old%%@*}) $(fortinet_bl2by ${old##*@})
                        ^--------------------------^ SC2046: Quote this to prevent word splitting.
                                         ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^--------------------------^ SC2046: Quote this to prevent word splitting.
                                                                      ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			$(fortinet_bl2by "${old%%@*}") $(fortinet_bl2by "${old##*@}")


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 107:
			$(fortinet_bl2by ${new%%@*}) $(fortinet_bl2by ${new##*@})
                        ^--------------------------^ SC2046: Quote this to prevent word splitting.
                                         ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^--------------------------^ SC2046: Quote this to prevent word splitting.
                                                                      ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			$(fortinet_bl2by "${new%%@*}") $(fortinet_bl2by "${new##*@}")


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 109:
		tmp="$(fortinet_bswap32 ${new%%@*})@$(fortinet_bswap32 ${new##*@})"
                                        ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                       ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tmp="$(fortinet_bswap32 "${new%%@*}")@$(fortinet_bswap32 "${new##*@}")"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 110:
		new="$(echo $tmp | sed 's/0x\([0-9a-f]\{8\}\)@0x\([0-9a-f]\{8\}\)/\2\1/')"
                       ^-- SC2001: See if you can use ${variable//search/replace} instead.
                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		new="$(echo "$tmp" | sed 's/0x\([0-9a-f]\{8\}\)@0x\([0-9a-f]\{8\}\)/\2\1/')"


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 118:
			of=$fwinfo_mtd 2>/dev/null
                           ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			of="$fwinfo_mtd" 2>/dev/null


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 135:
	kern_ofs=$(cat /sys/class/mtd/${kern_mtd//\/dev\/mtdblock/mtd}/offset)
                                      ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	kern_ofs=$(cat /sys/class/mtd/"${kern_mtd//\/dev\/mtdblock/mtd}"/offset)


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 136:
	root_ofs=$(cat /sys/class/mtd/${root_mtd//\/dev\/mtdblock/mtd}/offset)
                                      ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	root_ofs=$(cat /sys/class/mtd/"${root_mtd//\/dev\/mtdblock/mtd}"/offset)


In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/fortinet.sh line 161:
		while read key value; do
                      ^--^ SC2162: read without -r will mangle backslashes.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
