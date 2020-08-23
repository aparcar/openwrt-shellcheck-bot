
In openwrt/package/network/utils/comgt/files/3g.sh line 37:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
