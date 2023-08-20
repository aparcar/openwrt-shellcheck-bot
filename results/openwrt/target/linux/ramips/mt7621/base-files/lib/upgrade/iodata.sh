
In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 23:
	local _val=$(hexdump -s $offset -n 1 -e '"%d"' $mtd)
                                ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local _val=$(hexdump -s "$offset" -n 1 -e '"%d"' "$mtd")


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 26:
		echo $_val
                     ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "$_val"


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 35:
	if ! (printf "\x$setval" | dd bs=1 seek=$((offset)) conv=notrunc of=$mtd 2>/dev/null); then
                     ^---------^ SC2059: Don't use variables in the printf format string. Use printf "..%s.." "$foo".
                                                                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! (printf "\x$setval" | dd bs=1 seek=$((offset)) conv=notrunc of="$mtd" 2>/dev/null); then


In openwrt/target/linux/ramips/mt7621/base-files/lib/upgrade/iodata.sh line 51:
	local mtddev="$(find_mtd_part $2)"
                                      ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local mtddev="$(find_mtd_part "$2")"

For more information:
  https://www.shellcheck.net/wiki/SC2059 -- Don't use variables in the printf...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
