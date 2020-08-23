
In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 9:
	while read dev size erasesize name; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 22:
	dd if="$1" skip=$(( $CI_BLKSZ / 4 * $2 )) bs=4 count=1 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"'
                            ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                      ^-- SC2017: Increase precision by replacing a/b*c with a*c/b.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 26:
	wc -c "$1" | while read image_size _n ; do echo $image_size ; break; done
                           ^--^ SC2162: read without -r will mangle backslashes.
                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	wc -c "$1" | while read image_size _n ; do echo "$image_size" ; break; done


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 41:
					echo $offsetcount
                                             ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					echo "$offsetcount"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 48:
					echo $offsetcount
                                             ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					echo "$offsetcount"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 55:
					echo $offsetcount
                                             ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					echo "$offsetcount"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 60:
		offsetcount=$(( $offsetcount + 1 ))
                                ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 66:
	[ ! -n "$fw_printenv" -o ! -x "$fw_printenv" ] && {
          ^-- SC2236: Use -z instead of ! -n.
                              ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 78:
	[ $image_size -ge $firmware_size ] &&
          ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$image_size" -ge "$firmware_size" ] &&


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 84:
	[ -z $vmlinux_blockoffset ] && {
             ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$vmlinux_blockoffset" ] && {


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 90:
	[ -z $rootfs_blockoffset ] && {
             ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$rootfs_blockoffset" ] && {


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 96:
	[ -z $data_blockoffset ] && {
             ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$data_blockoffset" ] && {


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 107:
	if [ ! -n "$vmlinux_blockoffset" ]; then
             ^-- SC2236: Use -z instead of ! -n.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 111:
	local rootfs_blockoffset=$( platform_get_offset "$2" rootfs $(( $vmlinux_blockoffset + 1 )) )
                                                                        ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 112:
	local vmlinux_offset=$(( $vmlinux_blockoffset * $CI_BLKSZ ))
                                 ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                        ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 113:
	local vmlinux_addr=$(( $firmware_base_addr + $vmlinux_offset ))
                               ^-----------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                     ^-------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 115:
	if [ ! -n "$rootfs_blockoffset" ]; then
             ^-- SC2236: Use -z instead of ! -n.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 119:
	local rootfs_offset=$(( $rootfs_blockoffset * $CI_BLKSZ ))
                                ^-----------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                      ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 120:
	local rootfs_addr=$(( $firmware_base_addr + $rootfs_offset ))
                              ^-----------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                    ^------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 122:
	local vmlinux_blockcount=$(( $rootfs_blockoffset - $vmlinux_blockoffset ))
                                     ^-----------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                           ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 123:
	local vmlinux_size=$(( $rootfs_offset - $vmlinux_offset ))
                               ^------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                ^-------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 125:
	local data_blockoffset=$( platform_get_offset "$2" rootfs-data $(( $rootfs_blockoffset + 1 )) )
                                                                           ^-----------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 126:
	if [ ! -n "$data_blockoffset" ]; then
             ^-- SC2236: Use -z instead of ! -n.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 130:
	local data_offset=$(( $data_blockoffset * $CI_BLKSZ ))
                              ^---------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                  ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 131:
	local rootfs_blockcount=$(( $data_blockoffset - $rootfs_blockoffset ))
                                    ^---------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                        ^-----------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 132:
	local rootfs_size=$(( $data_offset - $rootfs_offset ))
                              ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                             ^------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 135:
	local rootfs_md5=$( dd if="$2" bs=$CI_BLKSZ skip=$rootfs_blockoffset count=$rootfs_blockcount 2>/dev/null | md5sum -); rootfs_md5="${rootfs_md5%% *}"
                                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rootfs_md5=$( dd if="$2" bs="$CI_BLKSZ" skip="$rootfs_blockoffset" count=$rootfs_blockcount 2>/dev/null | md5sum -); rootfs_md5="${rootfs_md5%% *}"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh line 136:
	local vmlinux_md5=$( dd if="$2" bs=$CI_BLKSZ skip=$vmlinux_blockoffset count=$vmlinux_blockcount 2>/dev/null | md5sum -); vmlinux_md5="${vmlinux_md5%% *}"
                                           ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local vmlinux_md5=$( dd if="$2" bs="$CI_BLKSZ" skip="$vmlinux_blockoffset" count=$vmlinux_blockcount 2>/dev/null | md5sum -); vmlinux_md5="${vmlinux_md5%% *}"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2017 -- Increase precision by replacing a...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
