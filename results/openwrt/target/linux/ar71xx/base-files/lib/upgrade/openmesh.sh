
In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 10:
	echo $1
             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$1"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 24:
			our_param=$(echo ${cfg_opt%%=*})
                                  ^--------------------^ SC2116: Useless echo? Instead of 'cmd $(echo foo)', just use 'cmd foo'.
                                         ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			our_param=$(echo "${cfg_opt%%=*}")


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 25:
			[ "$param" = "$our_param" ] && echo ${cfg_opt##*=} && break
                                                            ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ "$param" = "$our_param" ] && echo "${cfg_opt##*=}" && break


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 94:
	local img_board_target= img_num_files= i=0
                              ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).
                                             ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 95:
	local cfg_name= kernel_name= rootfs_name=
                      ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).
                                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 100:
			img_board_target=$(trim $(dd if="$img_path" bs=4 skip=1 count=8 2>/dev/null))
                                                ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 101:
			img_num_files=$(trim $(dd if="$img_path" bs=2 skip=18 count=1 2>/dev/null))
                                             ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 111:
	[ $img_num_files -lt 3 ] && {
          ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$img_num_files" -lt 3 ] && {


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 116:
	cfg_name=$(trim $(dd if="$img_path" bs=2 skip=19 count=16 2>/dev/null))
                        ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 123:
	kernel_name=$(trim $(dd if="$img_path" bs=2 skip=55 count=16 2>/dev/null))
                           ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 130:
	rootfs_name=$(trim $(dd if="$img_path" bs=2 skip=91 count=16 2>/dev/null))
                           ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 153:
	local kernel_start_addr= kernel_start_addr1= kernel_start_addr2=
                               ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).
                                                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 154:
	local kernel_size= kernel_md5=
                         ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 155:
	local rootfs_size= rootfs_checksize= rootfs_md5=
                         ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).
                                           ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 156:
	local kernel_bsize= total_size=
                          ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 157:
	local data_offset=$((64 * 1024)) block_size= offset=
                                                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 159:
	local cfg_size= kernel_size= rootfs_size=
                      ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).
                                   ^-- SC1007: Remove space after = if trying to assign a value (for empty string, use var='' ... ).


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 168:
	img_board_target=$(trim $(dd if="$img_path" bs=4 skip=1 count=8 2>/dev/null))
                                ^-- SC2046: Quote this to prevent word splitting.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 169:
	cfg_content=$(dd if="$img_path" bs=1 skip=$data_offset count=$(echo $((0x$cfg_size))) 2>/dev/null)
                                                                     ^----------------------^ SC2046: Quote this to prevent word splitting.
                                                                     ^----------------------^ SC2116: Useless echo? Instead of 'cmd $(echo foo)', just use 'cmd foo'.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 190:
	if [ "$((0x$kernel_size % $block_size))" = "0" ]
                                  ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 192:
			kernel_bsize=$(echo $((0x$kernel_size)))
                                     ^-------------------------^ SC2116: Useless echo? Instead of 'cmd $(echo foo)', just use 'cmd foo'.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 194:
			kernel_bsize=$((0x$kernel_size + ($block_size - (0x$kernel_size % $block_size))))
                                                          ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                          ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 199:
	offset=$(echo $(($data_offset + 0x$cfg_size + 0x$kernel_size)))
               ^-- SC2116: Useless echo? Instead of 'cmd $(echo foo)', just use 'cmd foo'.
                         ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 200:
	dd if="$img_path" bs=1 skip=$offset count=$(echo $((0x$rootfs_size))) 2>&- | mtd -n -p $kernel_bsize $append write - "inactive"
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^-------------------------^ SC2046: Quote this to prevent word splitting.
                                                  ^-------------------------^ SC2116: Useless echo? Instead of 'cmd $(echo foo)', just use 'cmd foo'.
                                                                                                             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$img_path" bs=1 skip="$offset" count=$(echo $((0x$rootfs_size))) 2>&- | mtd -n -p $kernel_bsize "$append" write - "inactive"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 202:
	offset=$(echo $(($data_offset + 0x$cfg_size)))
               ^-- SC2116: Useless echo? Instead of 'cmd $(echo foo)', just use 'cmd foo'.
                         ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 203:
	dd if="$img_path" bs=1 skip=$offset count=$(echo $((0x$kernel_size))) 2>&- | mtd -n write - "inactive"
                                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^-------------------------^ SC2046: Quote this to prevent word splitting.
                                                  ^-------------------------^ SC2116: Useless echo? Instead of 'cmd $(echo foo)', just use 'cmd foo'.

Did you mean: 
	dd if="$img_path" bs=1 skip="$offset" count=$(echo $((0x$kernel_size))) 2>&- | mtd -n write - "inactive"


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 207:
	if [ "$(grep 'mtd3:.*inactive' /proc/mtd)" ]
             ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 209:
			printf "kernel_size_1 %u\n" $(($kernel_bsize / 1024)) >> $uboot_env_upgrade
                        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.
                                                       ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 210:
			printf "rootfs_size_1 %u\n" $((($total_size - $kernel_bsize) / 1024)) >> $uboot_env_upgrade
                                                        ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                      ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 214:
			printf "kernel_size_2 %u\n" $(($kernel_bsize / 1024)) >> $uboot_env_upgrade
                        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.
                                                       ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 215:
			printf "rootfs_size_2 %u\n" $((($total_size - $kernel_bsize) / 1024)) >> $uboot_env_upgrade
                                                        ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                      ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 220:
	printf "vmlinux_start_addr %s\n" $kernel_start_addr >> $uboot_env_upgrade
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 221:
	printf "vmlinux_size 0x%s\n" $kernel_size >> $uboot_env_upgrade
                                     ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_size 0x%s\n" "$kernel_size" >> $uboot_env_upgrade


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 222:
	printf "vmlinux_checksum %s\n" $kernel_md5 >> $uboot_env_upgrade
                                       ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "vmlinux_checksum %s\n" "$kernel_md5" >> $uboot_env_upgrade


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 223:
	printf "rootfs_start_addr 0x%x\n" $(($kernel_start_addr + $kernel_bsize)) >> $uboot_env_upgrade
                                             ^----------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                  ^-----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 224:
	printf "rootfs_size %s\n" $rootfs_checksize >> $uboot_env_upgrade
                                  ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "rootfs_size %s\n" "$rootfs_checksize" >> $uboot_env_upgrade


In openwrt/target/linux/ar71xx/base-files/lib/upgrade/openmesh.sh line 225:
	printf "rootfs_checksum %s\n" $rootfs_md5 >> $uboot_env_upgrade
                                      ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	printf "rootfs_checksum %s\n" "$rootfs_md5" >> $uboot_env_upgrade

For more information:
  https://www.shellcheck.net/wiki/SC1007 -- Remove space after = if trying to...
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
