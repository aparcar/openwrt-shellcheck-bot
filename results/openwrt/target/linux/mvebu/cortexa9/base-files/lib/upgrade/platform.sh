
In openwrt/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh line 41:
		CI_KERNPART="$(strings $part | grep bank)"
                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		CI_KERNPART="$(strings "$part" | grep bank)"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
