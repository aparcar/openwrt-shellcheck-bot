
In openwrt/package/base-files/files/lib/upgrade/tar.sh line 11:
	dd if=/dev/zero bs=1 count=$1 2>/dev/null
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if=/dev/zero bs=1 count="$1" 2>/dev/null


In openwrt/package/base-files/files/lib/upgrade/tar.sh line 44:
	header1="${header1}$(printf '%011o\1' $size)"
                                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	header1="${header1}$(printf '%011o\1' "$size")"


In openwrt/package/base-files/files/lib/upgrade/tar.sh line 45:
	header1="${header1}$(printf '%011o\1' $mtime)"
                                              ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	header1="${header1}$(printf '%011o\1' "$mtime")"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
