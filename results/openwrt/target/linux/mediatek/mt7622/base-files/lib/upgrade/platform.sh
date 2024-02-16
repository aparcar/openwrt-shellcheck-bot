
In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 9:
		if [ "$rootdisk" = "$(cat $handle)" ]; then
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ "$rootdisk" = "$(cat "$handle")" ]; then


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 21:
	local file_type=$(identify $1)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type=$(identify "$1")


In openwrt/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh line 54:
		if [ "$magic" = "44485032" -o "$magic" = "44485033" ]; then
                                           ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
