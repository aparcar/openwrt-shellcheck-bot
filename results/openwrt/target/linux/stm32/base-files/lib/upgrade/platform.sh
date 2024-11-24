
In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 20:
			for disk in $(find /dev -type b); do
                                    ^------------------^ SC2044: For loops over find output are fragile. Use find -exec or a while read loop.


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 21:
				set -- $(dd if=$disk bs=1 skip=568 count=16 2>/dev/null | hexdump -v -e '8/1 "%02x "" "2/1 "%02x""-"6/1 "%02x"')
                                       ^-- SC2046: Quote this to prevent word splitting.
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				set -- $(dd if="$disk" bs=1 skip=568 count=16 2>/dev/null | hexdump -v -e '8/1 "%02x "" "2/1 "%02x""-"6/1 "%02x"')


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 31:
		while read line; do
                      ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 32:
			export -n "$line"
                                  ^-----^ SC2163: This does not export 'line'. Remove $/${} for that, or use ${var?} to quiet.


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 47:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 74:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 111:
			while read part start size; do
                              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 112:
				if export_partdevice partdev $part; then
                                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				if export_partdevice partdev "$part"; then


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 113:
					while read line; do
                                              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 130:
	while read part start size; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 131:
		if export_partdevice partdev $part; then
                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if export_partdevice partdev "$part"; then


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 162:
	while read part start size; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/stm32/base-files/lib/upgrade/platform.sh line 166:
			while read line; do
                              ^--^ SC2162: read without -r will mangle backslashes.

For more information:
  https://www.shellcheck.net/wiki/SC2044 -- For loops over find output are fr...
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2163 -- This does not export 'line'. Remo...
