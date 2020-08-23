
In openwrt/target/linux/ath25/base-files/lib/upgrade/platform.sh line 6:
	while read dev size erasesize name; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/ath25/base-files/lib/upgrade/platform.sh line 42:
			if [ -n "$md5_img" -a -n "$md5_chk" ] && [ "$md5_img" = "$md5_chk" ]; then
                                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/ath25/base-files/lib/upgrade/platform.sh line 61:
	local kern_blocks=$(($kern_length / $CI_BLKSZ))
                             ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                            ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ath25/base-files/lib/upgrade/platform.sh line 62:
	local root_blocks=$((0x$(dd if="$1" bs=2 skip=5 count=4 2>/dev/null) / $CI_BLKSZ))
                                                                               ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ath25/base-files/lib/upgrade/platform.sh line 73:
		  dd if="$1" bs=$CI_BLKSZ skip=$((1+$kern_blocks)) count=$root_blocks 2>/dev/null ) | \
                                                    ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ath25/base-files/lib/upgrade/platform.sh line 74:
			mtd -r $append -F$kernelpart:$kern_length:$CI_LDADR,rootfs write - $partitions
                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                           ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			mtd -r "$append" -F"$kernelpart":"$kern_length":$CI_LDADR,rootfs write - "$partitions"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
