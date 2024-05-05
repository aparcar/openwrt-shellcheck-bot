
In openwrt/target/linux/loongarch64/base-files/lib/upgrade/platform.sh line 12:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/loongarch64/base-files/lib/upgrade/platform.sh line 78:
	for d in $(find "${NEW_ESP_DIR}/efi/" -mindepth 1 -maxdepth 1 -type d); do
                 ^-- SC2044: For loops over find output are fragile. Use find -exec or a while read loop.


In openwrt/target/linux/loongarch64/base-files/lib/upgrade/platform.sh line 95:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/loongarch64/base-files/lib/upgrade/platform.sh line 135:
	while read part start size; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/loongarch64/base-files/lib/upgrade/platform.sh line 136:
		if export_partdevice partdev $part; then
                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if export_partdevice partdev "$part"; then


In openwrt/target/linux/loongarch64/base-files/lib/upgrade/platform.sh line 140:
					$1 $partdev $start $size || return 1
                                        ^-- SC2086: Double quote to prevent globbing and word splitting.
                                           ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                    ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					"$1" "$partdev" "$start" "$size" || return 1

For more information:
  https://www.shellcheck.net/wiki/SC2044 -- For loops over find output are fr...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
