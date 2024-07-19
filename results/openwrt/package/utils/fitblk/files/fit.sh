
In openwrt/package/utils/fitblk/files/fit.sh line 25:
		if [ "$rootdisk" = "$(cat $handle)" ]; then
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ "$rootdisk" = "$(cat "$handle")" ]; then


In openwrt/package/utils/fitblk/files/fit.sh line 36:
		if [ "$rootdisk" = "$(cat $handle)" ]; then
                                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ "$rootdisk" = "$(cat "$handle")" ]; then

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
