
In openwrt/target/linux/bcm4908/base-files/lib/functions/bcm4908.sh line 8:
	dd if="$1" skip=$2 bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"'
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" skip="$2" bs=1 count=4 2>/dev/null | hexdump -v -e '1/4 "%02x"'


In openwrt/target/linux/bcm4908/base-files/lib/functions/bcm4908.sh line 27:
		seq=$(fw_printenv -n -c /tmp/env.config SEQ | cut -d ',' -f $commited)
                                                                            ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		seq=$(fw_printenv -n -c /tmp/env.config SEQ | cut -d ',' -f "$commited")


In openwrt/target/linux/bcm4908/base-files/lib/functions/bcm4908.sh line 29:
			echo $seq
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo "$seq"


In openwrt/target/linux/bcm4908/base-files/lib/functions/bcm4908.sh line 50:
	if ! mount -t ubifs /dev/$ubivol $dir; then
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! mount -t ubifs /dev/"$ubivol" $dir; then


In openwrt/target/linux/bcm4908/base-files/lib/functions/bcm4908.sh line 59:
		rm -rf $dir/..?* $dir/.[!.]* $dir/*
                                             ^----^ SC2115: Use "${var:?}" to ensure this never expands to /* .


In openwrt/target/linux/bcm4908/base-files/lib/functions/bcm4908.sh line 66:
		ln -s $seq $dir/.openwrt-image-seq
                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		ln -s "$seq" $dir/.openwrt-image-seq

For more information:
  https://www.shellcheck.net/wiki/SC2115 -- Use "${var:?}" to ensure this nev...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
