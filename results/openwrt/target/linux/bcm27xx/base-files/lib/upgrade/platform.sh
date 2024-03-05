
In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 12:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 41:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 74:
	while read part start size; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 75:
		if export_partdevice partdev $part; then
                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if export_partdevice partdev "$part"; then


In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 105:
		[ -f /boot/kernel*.img ] || mount -t vfat -o rw,noatime "/dev/$partdev" /boot
                     ^---------------^ SC2144: -f doesn't work with globs. Use a for loop.


In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 112:
		tar -C $backup_tmp -zxvf $UPGRADE_BACKUP
                                         ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		tar -C $backup_tmp -zxvf "$UPGRADE_BACKUP"


In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 116:
		cd $backup_tmp
                ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
		cd $backup_tmp || exit


In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 117:
		tar -C $backup_tmp -zcvf /boot/$BACKUP_FILE *
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                            ^-- SC2035: Use ./*glob* or -- *glob* so names with dashes won't become options.

Did you mean: 
		tar -C $backup_tmp -zcvf /boot/"$BACKUP_FILE" *


In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 118:
		cd $work_dir
                ^----------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.
                   ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		cd "$work_dir" || exit


In openwrt/target/linux/bcm27xx/base-files/lib/upgrade/platform.sh line 128:
	tar -C / -x${TAR_V}zf "$CONF_RESTORE"
                   ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar -C / -x"${TAR_V}"zf "$CONF_RESTORE"

For more information:
  https://www.shellcheck.net/wiki/SC2144 -- -f doesn't work with globs. Use a...
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
