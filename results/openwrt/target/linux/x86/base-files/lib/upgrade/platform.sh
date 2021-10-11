
In openwrt/target/linux/x86/base-files/lib/upgrade/platform.sh line 15:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/x86/base-files/lib/upgrade/platform.sh line 72:
            if [ -d /sys/firmware/efi ] && [ "$(ls -a /dev/sd[a-z] | wc -w)" -gt 1 ] ; then
                                                ^----------------^ SC2012: Use find instead of ls to better handle non-alphanumeric filenames.


In openwrt/target/linux/x86/base-files/lib/upgrade/platform.sh line 85:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/x86/base-files/lib/upgrade/platform.sh line 118:
	while read part start size; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/x86/base-files/lib/upgrade/platform.sh line 119:
		if export_partdevice partdev $part; then
                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if export_partdevice partdev "$part"; then


In openwrt/target/linux/x86/base-files/lib/upgrade/platform.sh line 137:
		set -- $(dd if="/dev/$diskdev" bs=1 skip=1168 count=16 2>/dev/null | hexdump -v -e '8/1 "%02x "" "2/1 "%02x""-"6/1 "%02x"')
                       ^-- SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2012 -- Use find instead of ls to better ...
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
