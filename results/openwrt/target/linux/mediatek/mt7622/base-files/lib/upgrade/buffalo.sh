
In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/buffalo.sh line 63:
	local boardname="$(echo $board | tr ',' '_')"
                                ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local boardname="$(echo "$board" | tr ',' '_')"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/buffalo.sh line 81:
	local control_len=$( (tar xf $fw_image sysupgrade-$boardname/CONTROL -O | wc -c) 2> /dev/null)
                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local control_len=$( (tar xf "$fw_image" sysupgrade-"$boardname"/CONTROL -O | wc -c) 2> /dev/null)


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/buffalo.sh line 97:
	local kern_bin_len=$( (tar xf $fw_image sysupgrade-${boardname}/kernel -O | wc -c) 2> /dev/null)
                                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local kern_bin_len=$( (tar xf "$fw_image" sysupgrade-"${boardname}"/kernel -O | wc -c) 2> /dev/null)


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/buffalo.sh line 131:
	get_image "$1" | mtd $MTD_ARGS write - "${PART_NAME:-firmware}"
                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	get_image "$1" | mtd "$MTD_ARGS" write - "${PART_NAME:-firmware}"


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/buffalo.sh line 132:
	if [ $? -ne 0 ]; then
             ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2181 -- Check exit code directly with e.g...
