
In openwrt/target/linux/bcm47xx/base-files/etc/diag.sh line 9:
		if [ ! -f $status_led_file ]; then
                          ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if [ ! -f "$status_led_file" ]; then


In openwrt/target/linux/bcm47xx/base-files/etc/diag.sh line 10:
			status_led=$(basename $status_led_file)
                                              ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			status_led=$(basename "$status_led_file")


In openwrt/target/linux/bcm47xx/base-files/etc/diag.sh line 29:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).

For more information:
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
