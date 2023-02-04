
In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 22:
		mounted_part="$(grep -m 1 $1 /proc/mounts | awk '{print $2}')"
                                          ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mounted_part="$(grep -m 1 "$1" /proc/mounts | awk '{print $2}')"


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 34:
		[ ! -b ${emmc_dev}p${num} ] && part_valid="0"
                                   ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ ! -b ${emmc_dev}p"${num}" ] && part_valid="0"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
