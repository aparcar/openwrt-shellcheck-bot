
In openwrt/target/linux/ramips/mt7620/base-files/lib/upgrade/platform.sh line 38:
				of=/dev/mtdblock$idx
                                                ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				of=/dev/mtdblock"$idx"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
