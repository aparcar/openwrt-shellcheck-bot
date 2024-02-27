
In openwrt/package/base-files/files/lib/upgrade/common.sh line 5:
[ -x /usr/bin/ldd ] || ldd() { LD_TRACE_LOADED_OBJECTS=1 $*; }
                                                         ^-- SC2048: Use "$@" (with quotes) to prevent whitespace problems.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 6:
libs() { ldd $* 2>/dev/null | sed -E 's/(.* => )?(.*) .*/\2/'; }
             ^-- SC2048: Use "$@" (with quotes) to prevent whitespace problems.
             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
libs() { ldd "$*" 2>/dev/null | sed -E 's/(.* => )?(.*) .*/\2/'; }


In openwrt/package/base-files/files/lib/upgrade/common.sh line 22:
		[ -f "$file" -a ! -f "$dest" ] && {
                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 34:
	[ -x "$src" ] && files="$src $(libs $src)"
                                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -x "$src" ] && files="$src $(libs "$src")"


In openwrt/package/base-files/files/lib/upgrade/common.sh line 35:
	install_file $files
                     ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	install_file "$files"


In openwrt/package/base-files/files/lib/upgrade/common.sh line 54:
		read answer
                ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 69:
	_v "$(date) upgrade: $@"
                             ^-- SC2145: Argument mixes string and array. Use * or separate argument.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 175:
		if [ "$rootdisk" = "$(cat $handle)" ]; then
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ "$rootdisk" = "$(cat "$handle")" ]; then


In openwrt/package/base-files/files/lib/upgrade/common.sh line 194:
			for blockdev in $(find /dev -type b); do
                                        ^------------------^ SC2044: For loops over find output are fragile. Use find -exec or a while read loop.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 195:
				set -- $(dd if=$blockdev bs=1 skip=440 count=4 2>/dev/null | hexdump -v -e '4/1 "%02x "')
                                       ^-- SC2046: Quote this to prevent word splitting.
                                               ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				set -- $(dd if="$blockdev" bs=1 skip=440 count=4 2>/dev/null | hexdump -v -e '4/1 "%02x "')


In openwrt/package/base-files/files/lib/upgrade/common.sh line 207:
			for disk in $(find /dev -type b); do
                                    ^------------------^ SC2044: For loops over find output are fragile. Use find -exec or a while read loop.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 208:
				set -- $(dd if=$disk bs=1 skip=568 count=16 2>/dev/null | hexdump -v -e '8/1 "%02x "" "2/1 "%02x""-"6/1 "%02x"')
                                       ^-- SC2046: Quote this to prevent word splitting.
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				set -- $(dd if="$disk" bs=1 skip=568 count=16 2>/dev/null | hexdump -v -e '8/1 "%02x "" "2/1 "%02x""-"6/1 "%02x"')


In openwrt/package/base-files/files/lib/upgrade/common.sh line 223:
				while read line; do
                                      ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 224:
					export -n "$line"
                                                  ^-----^ SC2163: This does not export 'line'. Remove $/${} for that, or use ${var?} to quiet.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 226:
				if [ $((rootpart/256)) = $MAJOR -a $((rootpart%256)) = $MINOR ]; then
                                                         ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				if [ $((rootpart/256)) = "$MAJOR" -a $((rootpart%256)) = "$MINOR" ]; then


In openwrt/package/base-files/files/lib/upgrade/common.sh line 234:
		while read line; do
                      ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 235:
			export -n "$line"
                                  ^-----^ SC2163: This does not export 'line'. Remove $/${} for that, or use ${var?} to quiet.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 250:
		while read line; do
                      ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 251:
			export -n "$line"
                                  ^-----^ SC2163: This does not export 'line'. Remove $/${} for that, or use ${var?} to quiet.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 253:
		if [ "$BOOTDEV_MAJOR" = "$MAJOR" -a $(($BOOTDEV_MINOR + $offset)) = "$MINOR" -a -b "/dev/$DEVNAME" ]; then
                                                 ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                       ^------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                        ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                             ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 274:
	if [ -b "$disk" -o -f "$disk" ]; then
                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 286:
		part_magic_efi "$disk" && {
                                       ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 290:
				set -- $(hexdump -v -n 48 -s "$((0x380 + $part * 0x80))" -e '4/4 "%08x"" "4/4 "%08x"" "4/4 "0x%08X "' "$disk")
                                       ^-- SC2046: Quote this to prevent word splitting.
                                                                         ^---^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 293:
				local lba="$(( $(hex_le32_to_cpu $4) * 0x100000000 + $(hex_le32_to_cpu $3) ))"
                                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                                                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				local lba="$(( $(hex_le32_to_cpu "$4") * 0x100000000 + $(hex_le32_to_cpu "$3") ))"


In openwrt/package/base-files/files/lib/upgrade/common.sh line 294:
				local end="$(( $(hex_le32_to_cpu $6) * 0x100000000 + $(hex_le32_to_cpu $5) ))"
                                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                                                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				local end="$(( $(hex_le32_to_cpu "$6") * 0x100000000 + $(hex_le32_to_cpu "$5") ))"


In openwrt/package/base-files/files/lib/upgrade/common.sh line 295:
				local num="$(( $end - $lba + 1 ))"
                                               ^--^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                      ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 303:
				set -- $(hexdump -v -n 12 -s "$((0x1B2 + $part * 16))" -e '3/4 "0x%08X "' "$disk")
                                       ^-- SC2046: Quote this to prevent word splitting.
                                                                         ^---^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/base-files/files/lib/upgrade/common.sh line 305:
				local type="$(( $(hex_le32_to_cpu $1) % 256))"
                                                                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				local type="$(( $(hex_le32_to_cpu "$1") % 256))"


In openwrt/package/base-files/files/lib/upgrade/common.sh line 306:
				local lba="$(( $(hex_le32_to_cpu $2) ))"
                                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				local lba="$(( $(hex_le32_to_cpu "$2") ))"


In openwrt/package/base-files/files/lib/upgrade/common.sh line 307:
				local num="$(( $(hex_le32_to_cpu $3) ))"
                                                                 ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				local num="$(( $(hex_le32_to_cpu "$3") ))"


In openwrt/package/base-files/files/lib/upgrade/common.sh line 330:
		get_image "$1" "$2" | mtd $MTD_ARGS $MTD_CONFIG_ARGS -j "$UPGRADE_BACKUP" write - "${PART_NAME:-image}"
                                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                    ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		get_image "$1" "$2" | mtd "$MTD_ARGS" "$MTD_CONFIG_ARGS" -j "$UPGRADE_BACKUP" write - "${PART_NAME:-image}"


In openwrt/package/base-files/files/lib/upgrade/common.sh line 332:
		get_image "$1" "$2" | mtd $MTD_ARGS write - "${PART_NAME:-image}"
                                          ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		get_image "$1" "$2" | mtd "$MTD_ARGS" write - "${PART_NAME:-image}"


In openwrt/package/base-files/files/lib/upgrade/common.sh line 334:
	[ $? -ne 0 ] && exit 1
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.

For more information:
  https://www.shellcheck.net/wiki/SC2145 -- Argument mixes string and array. ...
  https://www.shellcheck.net/wiki/SC2044 -- For loops over find output are fr...
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
