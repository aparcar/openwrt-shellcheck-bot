
In openwrt/target/linux/apm821xx/base-files/etc/diag.sh line 11:
		basename $status_led_file
                         ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		basename "$status_led_file"


In openwrt/target/linux/apm821xx/base-files/etc/diag.sh line 21:
		basename $status_led_file
                         ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		basename "$status_led_file"


In openwrt/target/linux/apm821xx/base-files/etc/diag.sh line 46:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).

For more information:
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
