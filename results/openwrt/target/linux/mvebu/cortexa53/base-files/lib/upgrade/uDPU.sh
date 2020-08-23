
In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 21:
	 if [ "$(grep $1 /proc/mounts)" ]; then
              ^------------------------^ SC2143: Use grep -q instead of comparing output with [ -n .. ].
                      ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	 if [ "$(grep "$1" /proc/mounts)" ]; then


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 22:
		mounted_part="$(grep $1 /proc/mounts | awk '{print $2}' | head -1)"
                                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		mounted_part="$(grep "$1" /proc/mounts | awk '{print $2}' | head -1)"


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 23:
		umount $mounted_part
                       ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umount "$mounted_part"


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 24:
		[ "$(grep -wo $mounted_part /proc/mounts)" ] && umount -l $mounted_part
                  ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].
                              ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                          ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$(grep -wo "$mounted_part" /proc/mounts)" ] && umount -l "$mounted_part"


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 34:
		[ ! -b ${emmc_dev}p${num} ] && part_valid="0"
                                   ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ ! -b ${emmc_dev}p"${num}" ] && part_valid="0"


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 46:
		[ $? -eq 0 ] && printf "/misc partition formated successfully\n" || printf "/misc partition formatting failed\n"
                  ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 55:
	if [ ! "$(grep -wo /misc /proc/mounts)" ]; then
               ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 61:
		if [ $? -ne 0 ]; then
                     ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 69:
				if [ $? -ne 0 ]; then
                                     ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 85:
	mkfs.ext4 -q ${emmc_dev}p2 | echo y &> /dev/null
                                     ^-----------------^ SC2216: Piping to 'echo', a command that doesn't read stdin. Did you want 'cat' instead?


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 89:
	mkfs.ext4 -q ${emmc_dev}p1 | echo y &> /dev/null
                                     ^-----------------^ SC2216: Piping to 'echo', a command that doesn't read stdin. Did you want 'cat' instead?


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 95:
	[ $? -eq 0 ] && printf "/root partition reformated\n"
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 100:
	[ "$(grep -wo /boot /proc/mounts)" ] && umount /boot
          ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 106:
	[ "$(grep -wo /dev/root /proc/mounts)" ] && umount /
          ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 126:
	[ $? -eq 0 ] && printf "/boot partition updated successfully\n" || printf "/boot partition update failed\n"
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 131:
	[ $? -eq 0 ] && printf "/root partition updated successfully\n" || printf "/root partition update failed\n"
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 140:
		umount $part
                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		umount "$part"


In openwrt/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh line 142:
		[ "$(grep "${part}" /proc/mounts)" ] && umount -l $part
                  ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].
                                                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$(grep "${part}" /proc/mounts)" ] && umount -l "$part"

For more information:
  https://www.shellcheck.net/wiki/SC2216 -- Piping to 'echo', a command that ...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2143 -- Use grep -q instead of comparing ...
