
In openwrt/target/linux/ath79/generic/base-files/lib/functions/k2t.sh line 19:
	local json_size=$(dd if=$mtd_blk bs=1 count=8 2>/dev/null)
                                ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local json_size=$(dd if="$mtd_blk" bs=1 count=8 2>/dev/null)


In openwrt/target/linux/ath79/generic/base-files/lib/functions/k2t.sh line 24:
	if [ "$?" -ne 0 ]; then
             ^--^ SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/ath79/generic/base-files/lib/functions/k2t.sh line 34:
	local json_data=$(dd if=$mtd_blk bs=1 skip=8 count=$json_size 2>/dev/null)
                                ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local json_data=$(dd if="$mtd_blk" bs=1 skip=8 count=$json_size 2>/dev/null)


In openwrt/target/linux/ath79/generic/base-files/lib/functions/k2t.sh line 52:
	echo $val
             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$val"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2181 -- Check exit code directly with e.g...
